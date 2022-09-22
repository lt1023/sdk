//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.applovin.mediation.adapters;

import android.app.Activity;
import android.content.Context;

import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapter.InitializationStatus;
import com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.sdk.AppLovinSdk;
import com.mbridge.msdk.out.MBConfiguration;

import java.util.concurrent.atomic.AtomicBoolean;

public class MintegralMediationAdapter extends MediationAdapterBase implements MaxInterstitialAdapter, MaxRewardedAdapter, MaxAdViewAdapter, MaxSignalProvider {
    private static final String APP_ID_PARAMETER = "app_id";
    private static final String APP_KEY_PARAMETER = "app_key";
    private static final String BAD_REQUEST = "request parameter is null";
    private static final int DEFAULT_IMAGE_TASK_TIMEOUT_SECONDS = 5;
    private static final String EXCEPTION_APP_ID_EMPTY = "EXCEPTION_APP_ID_EMPTY";
    private static final String EXCEPTION_APP_NOT_FOUND = "EXCEPTION_APP_NOT_FOUND";
    private static final String EXCEPTION_IV_RECALLNET_INVALIDATE = "EXCEPTION_IV_RECALLNET_INVALIDATE";
    private static final String EXCEPTION_RETURN_EMPTY = "EXCEPTION_RETURN_EMPTY";
    private static final String EXCEPTION_SIGN_ERROR = "EXCEPTION_SIGN_ERROR";
    private static final String EXCEPTION_TIMEOUT = "EXCEPTION_TIMEOUT";
    private static final String EXCEPTION_UNIT_ADTYPE_ERROR = "EXCEPTION_UNIT_ADTYPE_ERROR";
    private static final String EXCEPTION_UNIT_ID_EMPTY = "EXCEPTION_UNIT_ID_EMPTY";
    private static final String EXCEPTION_UNIT_NOT_FOUND = "EXCEPTION_UNIT_NOT_FOUND";
    private static final String EXCEPTION_UNIT_NOT_FOUND_IN_APP = "EXCEPTION_UNIT_NOT_FOUND_IN_APP";
    private static final String NETWORK_ERROR = "network exception";
    private static final String NETWORK_IO_ERROR = "Network error,I/O exception";
    private static final String NOT_INITIALIZED = "init error";
    private static final String NO_FILL_1 = "no ads available can show";
    private static final String NO_FILL_2 = "no ads available";
    private static final String NO_FILL_3 = "no server ads available";
    private static final String NO_FILL_4 = "no ads source";
    private static final String NO_FILL_5 = "load no ad";
    private static final String TIMEOUT = "load timeout";
    private static final String UNIT_ID_EMPTY = "UnitId is null";
    private static final AtomicBoolean initialized = new AtomicBoolean();

    public MintegralMediationAdapter(AppLovinSdk var1) {
        super(var1);
    }

    private Context getContext(Activity var1) {
        Context var2;
        if (var1 != null) {
            var2 = var1.getApplicationContext();
        } else {
            var2 = this.getApplicationContext();
        }

        return var2;
    }

    private Boolean getPrivacySetting(String var1, MaxAdapterParameters var2) {
        try {
            Boolean var7 = (Boolean)var2.getClass().getMethod(var1).invoke(var2);
            return var7;
        } catch (Exception var4) {
            StringBuilder var6 = new StringBuilder();
            var6.append("Error getting privacy setting ");
            var6.append(var1);
            var6.append(" with exception: ");
            this.log(var6.toString(), var4);
            Boolean var5;
            if (AppLovinSdk.VERSION_CODE >= 9140000) {
                var5 = null;
            } else {
                var5 = false;
            }

            return var5;
        }
    }


    private static MaxAdapterError toMaxError(String var0) {
        MaxAdapterError var1;
        if (!"init error".equals(var0) && !var0.contains("EXCEPTION_IV_RECALLNET_INVALIDATE")) {
            if (!var0.contains("no ads available can show") && !var0.contains("no ads available") && !var0.contains("no server ads available") && !var0.contains("no ads source") && !var0.contains("load no ad") && !var0.contains("EXCEPTION_RETURN_EMPTY")) {
                if (!"network exception".equalsIgnoreCase(var0) && !var0.contains("Network error,I/O exception")) {
                    if ("request parameter is null".equalsIgnoreCase(var0)) {
                        var1 = MaxAdapterError.BAD_REQUEST;
                    } else if (!"load timeout".equalsIgnoreCase(var0) && !var0.contains("EXCEPTION_TIMEOUT")) {
                        if (!var0.contains("EXCEPTION_SIGN_ERROR") && !var0.contains("EXCEPTION_UNIT_NOT_FOUND") && !var0.contains("EXCEPTION_UNIT_ID_EMPTY") && !var0.contains("EXCEPTION_UNIT_NOT_FOUND_IN_APP") && !var0.contains("EXCEPTION_UNIT_ADTYPE_ERROR") && !var0.contains("EXCEPTION_APP_ID_EMPTY") && !var0.contains("EXCEPTION_APP_NOT_FOUND") && !var0.contains("UnitId is null")) {
                            var1 = MaxAdapterError.UNSPECIFIED;
                        } else {
                            var1 = MaxAdapterError.INVALID_CONFIGURATION;
                        }
                    } else {
                        var1 = MaxAdapterError.TIMEOUT;
                    }
                } else {
                    var1 = MaxAdapterError.NO_CONNECTION;
                }
            } else {
                var1 = MaxAdapterError.NO_FILL;
            }
        } else {
            var1 = MaxAdapterError.NOT_INITIALIZED;
        }

        return new MaxAdapterError(var1.getErrorCode(), var1.getErrorMessage(), 0, var0);
    }

    public void collectSignal(MaxAdapterSignalCollectionParameters var1, Activity var2, MaxSignalCollectionListener var3) {
        this.log("Collecting signal...");
    }

    public String getAdapterVersion() {
        return "16.2.31.0";
    }

    public String getSdkVersion() {
        return getVersionString(MBConfiguration.class, "SDK_VERSION");
    }

    public void initialize(MaxAdapterInitializationParameters var1, Activity var2, OnCompletionListener var3) {
        var3.onCompletion(MaxAdapter.InitializationStatus.DOES_NOT_APPLY, null);

        var1.getAdUnitId();
//        var3.onCompletion(InitializationStatus.INITIALIZED_SUCCESS, null);
    }

    public void loadAdViewAd(MaxAdapterResponseParameters var1, MaxAdFormat var2, Activity var3, final MaxAdViewAdapterListener var4) {

    }

    public void loadInterstitialAd(MaxAdapterResponseParameters var1, Activity var2, MaxInterstitialAdapterListener var3) {
        var3.onInterstitialAdLoadFailed(MaxAdapterError.NO_FILL);
    }

    public void loadNativeAd(MaxAdapterResponseParameters var1, Activity var2, MaxNativeAdAdapterListener var3) {
        var3.onNativeAdLoadFailed(MaxAdapterError.NO_FILL);

    }

    public void loadRewardedAd(MaxAdapterResponseParameters var1, Activity var2, MaxRewardedAdapterListener var3) {
        var3.onRewardedAdLoaded();
    }

    public void onDestroy() {
    }

    public void showInterstitialAd(MaxAdapterResponseParameters var1, Activity var2, MaxInterstitialAdapterListener var3) {

    }

    public void showRewardedAd(MaxAdapterResponseParameters var1, Activity var2, MaxRewardedAdapterListener var3) {
        var3.onRewardedAdVideoStarted();
        var3.onRewardedAdDisplayed();
        var3.onUserRewarded(getReward());
        var3.onRewardedAdVideoCompleted();
        var3.onRewardedAdHidden();
//        var3.onRewardedAdDisplayFailed(MaxAdapterError.NO_FILL);
    }


}
