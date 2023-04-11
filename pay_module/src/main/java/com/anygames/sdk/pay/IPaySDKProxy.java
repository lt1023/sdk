package com.anygames.sdk.pay;

import android.app.Activity;
import android.app.Application;

import com.anygames.sdk.user.OnLoginCallBack;

public interface IPaySDKProxy {
    boolean isVip();
    void setGameActivity(Activity activity);
    Activity getGameActivity();
    void login(OnLoginCallBack callBack);
    void init(Application application, String appKey, String url);
    String getSid();
    String getUid();
    String getChargeUrl();
    void setChargeUrl(String url);
    void setUid(String uid);
    void setSid(String sid);
    void queryVipInfo(OnQueryVipCallBack callBack);
    String queryVipInfo(String uid);
    void queryVipInfo();
    void jumpToCharge();
    void restartApp();
    void onCreate(Activity activity);
    void onStart();
    void onResume();
    void onStop();
    void onPause();
}
