package com.anygames.sdk.pay;

import static android.content.Intent.FLAG_ACTIVITY_CLEAR_TASK;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;

import com.anygames.sdk.game.NormalModuleAdapter;
import com.anygames.sdk.user.OnLoginCallBack;
import com.anygames.sdk.user.VipInfoBean;
import com.anygames.sdk.utils.ScreenUtils;
import com.google.gson.Gson;
import com.meta.android.mpg.account.callback.LoginResultCallback;
import com.meta.android.mpg.account.model.UserInfo;
import com.meta.android.mpg.common.MetaApi;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Timer;
import java.util.TimerTask;

public class PaySDK implements IPaySDKProxy {
    private String sid;
    private String uid;
    private String chargeUrl;
    private Activity mGameActivity;
    private VipInfoBean mVipInfoBean;


    private static PaySDK instance;

    public static PaySDK getInstance() {
        if (instance == null) {
            instance = new PaySDK();
        }
        return instance;
    }

    @Override
    public boolean isVip() {
        queryVipInfo();
        if (mVipInfoBean != null) {
            return mVipInfoBean.isData();
        }
        return false;
    }

    @Override
    public void setGameActivity(Activity activity) {
        mGameActivity = activity;
    }

    @Override
    public Activity getGameActivity() {
        return mGameActivity;
    }

    @Override
    public void login(OnLoginCallBack callBack) {
        if (!TextUtils.isEmpty(getUid())) {
            callBack.onSuccessed();
            return;
        }
        if (mGameActivity == null) {
//            throw new NullPointerException("GameActivity is  Null !");
            return;
        }
        MetaApi.login(mGameActivity, new LoginResultCallback() {
            @Override
            public void loginSuccess(UserInfo userInfo) {
                Log.e("xNative", "loginSuccess: " + new Gson().toJson(userInfo));
                setSid(userInfo.sid);
                setUid(userInfo.uid);
                if (callBack == null) return;
                callBack.onSuccessed();
            }

            @Override
            public void loginFail(int i, String s) {
                Log.e("xNative", "loginFail: " + i + "   " + s);
                if (callBack == null) return;
                callBack.onFailed();
            }
        });
    }

    @Override
    public void init(Application application, String appKey, String url) {
        MetaApi.initMetaSdk(application, appKey, new com.meta.android.mpg.initialize.InitCallback() {
            @Override
            public void onInitializeSuccess() {
//                Log.e("xNative", "onInitSuccess: ");
//                Log.e("xNative", "onInitializeSuccess");

                Timer timer = new Timer();
                timer.scheduleAtFixedRate(new TimerTask() {
                    @Override
                    public void run() {
                        if (mGameActivity != null) {
                            mGameActivity.runOnUiThread(() -> login(new OnLoginCallBack() {
                                @Override
                                public void onSuccessed() {
                                    queryVipInfo();
                                }

                                @Override
                                public void onFailed() {

                                }
                            }));
                            timer.cancel();
                            this.cancel();
                        }
                    }
                }, 3000, 3000);
            }

            @Override
            public void onInitializeFail(int i, String s) {
//                Log.e("xNative", "onInitFailed: code=" + i + ",message:" + s);
            }
        });
//        chargeUrl = url;
        setChargeUrl(url);
    }

    @Override
    public String getSid() {
        return this.sid;
    }

    @Override
    public String getUid() {
        return this.uid;
    }

    @Override
    public String getChargeUrl() {
        return this.chargeUrl;
    }

    @Override
    public void setChargeUrl(String url) {
        this.chargeUrl = url;
    }

    @Override
    public void setUid(String uid) {
        this.uid = uid;
    }

    @Override
    public void setSid(String sid) {
        this.sid = sid;
    }

    @Override
    public void queryVipInfo(OnQueryVipCallBack callBack) {
        if (TextUtils.isEmpty(getUid())) {
            login(new OnLoginCallBack() {
                @Override
                public void onSuccessed() {
                    queryVipInfo();
                }

                @Override
                public void onFailed() {

                }
            });
            return;
        }
        new Thread(() -> {
            String vipInfo = queryVipInfo(uid);
            if (TextUtils.isEmpty(vipInfo)) return;
            try {
                VipInfoBean vipInfoBean = new Gson().fromJson(vipInfo, VipInfoBean.class);
                callBack.onSuccessed(vipInfoBean);
            } catch (Exception e) {
                Log.e("xNative", "queryVipInfo error" + e);
            }
        }).start();
    }

    @Override
    public String queryVipInfo(String uid) {
        if (TextUtils.isEmpty(uid)) return null;
        StringBuffer buffer = new StringBuffer();
        try {
            String online_path = "https://api.233lyly.com/member/v2/af2f5a/a41f3e6?fb3f5cabad=%s";
//            String url_path = String.format("https://pre-api.233lyly.com/member/v2/af2f5a/a41f3e6?fb3f5cabad=%s", uid);
            String url_path = String.format(online_path, uid);
            // 封装了URL对象
            URL url = new URL(url_path);
            // 获取http连接对象
//            Log.e("anygames", url.toString() );
            HttpURLConnection conn = (HttpURLConnection) url
                    .openConnection();
            conn.setRequestMethod("GET");
            // 设置连接超时的时间（单位：毫秒）
            conn.setConnectTimeout(15000);
            //设置读取数据的超时时间
            conn.setReadTimeout(5000);
            try {
                conn.connect();
            } catch (SocketTimeoutException e) {
                return "";
            }
            // 获取状态码
            int code = conn.getResponseCode();
            if (code == 200) {// 请求成功
                // 获取响应消息的实体内容
                InputStreamReader reader = new InputStreamReader(
                        conn.getInputStream());
                char[] charArr = new char[1024 * 8];
                int len = 0;
                while ((len = reader.read(charArr)) != -1) {
                    // 字符数组转字符串
                    String str = new String(charArr, 0, len);
                    // 在结尾追加字符串
                    buffer.append(str);
                }
            }
        } catch (Exception e) {
//            e.printStackTrace();
        }
        return buffer.toString();
    }

    @Override
    public void queryVipInfo() {
        queryVipInfo(bean -> mVipInfoBean = bean);
    }

    @Override
    public void jumpToCharge() {
        try {
            Context context = getGameActivity().getApplicationContext();
            startScheme(context,getChargeUrl());
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void restartApp() {
        Activity context = getGameActivity();
        Intent intent = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK|FLAG_ACTIVITY_CLEAR_TASK);
        context.startActivity(intent);
        context.finish();
        Process.killProcess(Process.myPid());
    }

    @Override
    public void onCreate(Activity activity) {
        PaySDK.getInstance().setGameActivity(activity);
//        ScreenUtils.showFloatView(() -> ScreenUtils.showContentView(new NormalModuleAdapter(new ResourceButtonAndSwitchConfig().getmResourceList())));
    }

    @Override
    public void onStart() {

    }

    @Override
    public void onResume() {
        queryVipInfo();
    }

    @Override
    public void onStop() {

    }

    @Override
    public void onPause() {

    }

    private void startScheme(Context context,String url) throws UnsupportedEncodingException {
//        String url = "https://app-v6.233leyuan.com/diamondmember.html?source=mod&gameid=8066";
        String encode = URLEncoder.encode(url, "utf-8");
        String uri = String.format("metaapp://233xyx/web/web?key_game_pkg=%s&url=%s", context.getPackageName(), encode);
        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(uri));
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context.startActivity(intent);
    }

}
