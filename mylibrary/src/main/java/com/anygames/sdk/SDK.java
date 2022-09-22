package com.anygames.sdk;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Handler;
import android.os.Message;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.anygames.app.GameActivity;
import com.meta.android.mpg.cm.MetaAdApi;
import com.meta.android.mpg.cm.api.IAdCallback;
import com.meta.android.mpg.cm.api.InitCallback;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class SDK {
    public static Controller mHandler = new Controller();
    public static void initSDK(Application application) {
        MetaAdApi.get().init(application, "", new InitCallback() {
            @Override
            public void onInitSuccess() {
                Logger.log("onInitSuccess");
                startAutoPlay();
            }

            @Override
            public void onInitFailed(int errorCode, String errorMsg) {
                Logger.log(String.format("onInitFailed: code: %1d,  msg: %2s", errorCode, errorMsg));
            }
        });
//        inject(application);
    }

    private static boolean isEarned = false;

    private interface IOnShowResult {
        void OnSuccess();
    }

    private static void showRewardedAd() {
        showRewardedVideo(new AdsCallBack() {
            @Override
            public void onAdsStarted() {

            }

            @Override
            public void onAdsRewarded() {

            }

            @Override
            public void onAdsClosed() {

            }

            @Override
            public void onAdsFailed() {

            }
        });
    }
    private static void showRewardedAd(IOnShowResult result) {
        isEarned = false;
        showRewardedVideo(new AdsCallBack() {
            @Override
            public void onAdsStarted() {

            }

            @Override
            public void onAdsRewarded() {
                isEarned = true;
            }

            @Override
            public void onAdsClosed() {
                Log.e("ouzhoukache", "onAdsClosed " + isEarned);
                if (isEarned) {
                    result.OnSuccess();
                }
            }

            @Override
            public void onAdsFailed() {

            }
        });
    }

    private static AlertDialog dialog = null;
    private static int times;
    private static String rewardDesc = "";
//    public static void showTips(int type) {
//        Activity activity = GameActivity.getActivity();
//        SharedPreferences config = activity.getSharedPreferences("config", Context.MODE_PRIVATE);
//        String key = "type_" + type;
//        if (type == 0) {
//            times = config.getInt(key, 1);
//            rewardDesc = "50000现金";
//        } else if (type == 1) {
//            times = config.getInt(key, 2);
//            rewardDesc = "100000现金";
//        } else if (type == 2) {
//            times = config.getInt(key, 3);
//            rewardDesc = "250000现金";
//        } else if (type == 3) {
//            times = config.getInt(key, 4);
//            rewardDesc = "500000现金";
//        } else if (type == 4) {
//            times = config.getInt(key, 5);
//            rewardDesc = "1000000现金";
//        } else if (type == 5) {
//            times = config.getInt(key, 1);
//            rewardDesc = "一个车库";
//        }
//        String desc = String.format("再观看%d次广告可以获得%s", times,rewardDesc);
//        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
//        View view = LayoutInflater.from(activity).inflate(R.layout.tips_dialog, null);
//        builder.setView(view);
//        dialog = builder.create();
//        dialog.show();
//        TextView tv_desc = (TextView) view.findViewById(R.id.desc);
//        tv_desc.setText(desc);
//        view.findViewById(R.id.dismiss).setOnClickListener(v -> dialog.dismiss());
//        view.findViewById(R.id.show).setOnClickListener(v -> {
//            dialog.dismiss();
//            if (times == 1){
////                onRewarded(type);
//            }
//            showRewardedAd(() -> {
//                times -= 1;
//                if (times == 0){
//                    if (type != 5){
//                        if (type == 0) {
//                            config.edit().putInt(key, 1).apply();
//                        } else if (type == 1) {
//                            config.edit().putInt(key, 2).apply();
//                        } else if (type == 2) {
//                            config.edit().putInt(key, 3).apply();
//                        } else if (type == 3) {
//                            config.edit().putInt(key, 4).apply();
//                        } else if (type == 4) {
//                            config.edit().putInt(key, 5).apply();
//                        }
//                    }
//                    activity.runOnUiThread(() -> Toast.makeText(activity, "恭喜您获得" + rewardDesc, Toast.LENGTH_LONG).show());
//                }else {
//                    config.edit().putInt(key, times).apply();
//                }
//            });
//
//        });
//    }


//    Class UnityPlayerClz  = UnityPlayer.class;
//                    try {
//        Field mMainThread = UnityPlayerClz.getDeclaredField("m_MainThread");
//        mMainThread.setAccessible(true);
//        Class MainThread = mMainThread.getType();
//        Method method = MainThread.getDeclaredMethod("d", Runnable.class);
//        method.invoke(GameActivity.mThread, (Runnable) SDK::increase);
//    } catch (NoSuchFieldException | NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
//
//    }

    public static boolean isInited() {
        Activity activity = null;
        SharedPreferences config = activity.getSharedPreferences("config", Context.MODE_PRIVATE);
        String key = "times";
        int times = config.getInt(key, 5);
        return times <= 0;
    }

    public static void startAutoPlay() {
        Logger.log("startAutoPlay");
        mHandler.sendShowMessage();
    }

    public static void showBanner() {
        MetaAdApi.get().showBannerAd(999113302, new IAdCallback() {
            @Override
            public void onAdShow() {
                //广告展示
            }

            @Override
            public void onAdShowFailed(int i, String s) {
                mHandler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        showBanner();
                    }
                }, 3 * 60000);
            }

            @Override
            public void onAdClick() {
                //广告被点击
            }

            @Override
            public void onAdClose() {
                //广告被关闭
                mHandler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        showBanner();
                    }
                }, 3 * 60000);
            }
        });
    }

    public static void showFullScreenVideo() {
        Logger.log("MetaAdApi showFullScreenVideo ");
        mHandler.post(new Runnable() {
            @Override
            public void run() {
                MetaAdApi.get().showVideoAd(999113301, new IAdCallback.IVideoIAdCallback() {
                    @Override
                    public void onAdClickSkip() {

                    }

                    @Override
                    public void onAdReward() {

                    }

                    @Override
                    public void onAdClose(Boolean aBoolean) {

                    }

                    @Override
                    public void onAdShow() {
                        Logger.log("MetaAdApi onAdShow ");
                    }

                    @Override
                    public void onAdShowFailed(int errCode, String errMsg) {
                        Logger.log("MetaAdApi onAdShowFailed " + errCode + "  " + errMsg);

                    }

                    @Override
                    public void onAdClick() {

                    }

                    @Override
                    public void onAdClose() {

                    }
                });
            }
        });
    }

    public static void showInterVideo() {
        Logger.log("MetaAdApi showInterVideo ");
        MetaAdApi.get().showInterstitialAd(999113303, new IAdCallback() {
            @Override
            public void onAdShow() {
                //广告展示
                Logger.log("MetaAdApi onAdShow ");
            }

            @Override
            public void onAdShowFailed(int errCode, String errMsg) {
                //展示失败
                Logger.log("MetaAdApi onAdShowFailed " + errCode + "  " + errMsg);
            }

            @Override
            public void onAdClick() {
                //广告被点击
            }

            @Override
            public void onAdClose() {
                //广告被关闭

            }
        });
    }

    private static class Controller extends Handler {

//        public Controller(Context context){
//
//        }

        public void sendShowMessage() {
            sendEmptyMessageDelayed(0, 60 * 1000 * 10);
        }

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            showFullScreenVideo();
            sendShowMessage();
        }
    }

    public static void showRewardedVideo(AdsCallBack callBack) {
        mHandler.removeCallbacksAndMessages(null);
        MetaAdApi.get().showVideoAd(999113300, new IAdCallback.IVideoIAdCallback() {
            @Override
            public void onAdShow() {
                // 播放成功
                Logger.log("onAdShow");
                callBack.onAdsStarted();
            }

            @Override
            public void onAdShowFailed(int errCode, String errMsg) {
                // 播放失败
//                    Log.d("MetaAdApi", "onAdShowFailed： " + errMsg);
                Logger.log("onAdShowFailed： " + errMsg);
                startAutoPlay();
                callBack.onAdsFailed();
            }

            @Override
            public void onAdClick() {
                //点击广告
                Logger.log("onAdClick： ");

            }

            @Override
            public void onAdClose() {
                //  广告关闭
                Logger.log("onAdClose： ");
                startAutoPlay();
                callBack.onAdsClosed();
            }


            @Override
            public void onAdClickSkip() {
                // 播放点击跳过
                Logger.log("onAdClickSkip： ");

            }

            @Override
            public void onAdReward() {
                Logger.log("onAdReward： ");
                callBack.onAdsRewarded();
            }

            @Override
            public void onAdClose(Boolean aBoolean) {
                Logger.log("onAdClose2： ");
            }
        });
    }


    private static final int GET_SIGNATURES = 64;
    private static String appPkgName = "";
    private static Object base;
    private static byte[][] sign;

    private static void inject(Context context) {
        try {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(Base64.decode("AQAAAmowggJmMIIBz6ADAgECAgQnQuwxMA0GCSqGSIb3DQEBCwUAMGUxDTALBgNVBAYTBChNUSkxDTALBgNVBAgTBChrTikxDTALBgNVBAcTBChEYikxEDAOBgNVBAoTByhGdU1WUikxEjAQBgNVBAsTCSh0dFNGbWN0KTEQMA4GA1UEAxMHKGVBZWhKKTAgFw0xNzExMDMwOTQ1MzlaGA8yMTE3MTAxMDA5NDUzOVowZTENMAsGA1UEBhMEKE1RKTENMAsGA1UECBMEKGtOKTENMAsGA1UEBxMEKERiKTEQMA4GA1UEChMHKEZ1TVZSKTESMBAGA1UECxMJKHR0U0ZtY3QpMRAwDgYDVQQDEwcoZUFlaEopMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCEuUMmTiP35dhmGMC2/JR3S36drtR4brvG2MB2b6of1xHBbVwqJVsfRDYnFOeQ7jybyIPrAnYfTvhPtNVwsC5hZaHt8tcPbcjOKeC66YM8w0nCfNdGQnnizoLXf3kBGQPyx+UJ9R/q1lJ5visaFy3t3bldyDmEkYmP98L4Rf+3qwIDAQABoyEwHzAdBgNVHQ4EFgQUsXxrGWpgGDAkak4XnwHxJLeq0c0wDQYJKoZIhvcNAQELBQADgYEAgOGg6QM35eHivGdnnyHqnnJKTV9F6yNEs8BVTdn01JFx1IItwvTyJdrZ7SQRGJdo0xVB+UHihE0PCV1hSWuhcraK5Ka7wRx19QuhJAYd12fxO78vR9jxCzF06kemu/01i6ZTarKTreDouS23nKOirAYFVzIkARt3gZhYDnE5XcM=", 0)));
            byte[][] bArr = new byte[dataInputStream.read() & 255][];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                bArr[i2] = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr[i2]);
            }
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object invoke = cls.getDeclaredMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("sPackageManager");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(invoke);
            Class<?> cls2 = Class.forName("android.content.pm.IPackageManager");
            base = obj;
            sign = bArr;
            appPkgName = context.getPackageName();
            Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new SDKHandler());
            declaredField.set(invoke, newProxyInstance);
            PackageManager packageManager = context.getPackageManager();
            Field declaredField2 = packageManager.getClass().getDeclaredField("mPM");
            declaredField2.setAccessible(true);
            declaredField2.set(packageManager, newProxyInstance);
//            System.out.println("PmsHook success.");
        } catch (Exception e2) {
//            System.err.println("PmsHook failed.");
//            e2.printStackTrace();
        }
    }


    private static class SDKHandler implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if ("getPackageInfo".equals(method.getName())) {
                String str = (String) objArr[0];
                if (((Integer) objArr[1] & 64) != 0 && appPkgName.equals(str)) {
                    PackageInfo packageInfo = (PackageInfo) method.invoke(base, objArr);
                    packageInfo.signatures = new Signature[sign.length];
                    for (int i2 = 0; i2 < packageInfo.signatures.length; i2++) {
                        packageInfo.signatures[i2] = new Signature(sign[i2]);
                    }
                    return packageInfo;
                }
            }
            return method.invoke(base, objArr);
        }
    }
}
