package com.applovin.sdk;

import android.content.Context;

import com.applovin.impl.sdk.n;

public class AppLovinSdk {
    public final n  coreSdk;

    public AppLovinSdk(n coreSdk) {
        this.coreSdk = coreSdk;
    }
    public interface SdkInitializationListener {
        void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration);
    }

    public static AppLovinSdk getInstance(Context context) {
        return null;
    }

}
