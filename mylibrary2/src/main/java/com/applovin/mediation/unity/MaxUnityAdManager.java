package com.applovin.mediation.unity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import com.anygames.sdk.AdsCallBack;
import com.anygames.sdk.SDK;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.applovin.mediation.ads.MaxRewardedInterstitialAd;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinUserService;
import com.applovin.sdk.AppLovinVariableService;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.player.UnityPlayer;

import org.json.JSONArray;
import org.json.JSONObject;

import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public class MaxUnityAdManager implements MaxAdListener, MaxAdViewAdListener, MaxRewardedAdListener, MaxAdRevenueListener, AppLovinVariableService.OnVariablesUpdateListener, AppLovinUserService.OnConsentDialogDismissListener {
    private static final String DEFAULT_AD_VIEW_POSITION = "top_left";
    private static final String SDK_TAG = "AppLovinSdk";
    private static final String TAG = "MaxUnityAdManager";
    private static final String VERSION = "5.3.0";
    private static BackgroundCallback backgroundCallback;
    private static WeakReference<Activity> currentActivity;
    private static MaxUnityAdManager instance;
    private final Map<String, MaxAd> mAdInfoMap;
    private final Object mAdInfoMapLock;
    private final List<String> mAdUnitIdsToShowAfterCreate;
    private final Map<String, MaxAdFormat> mAdViewAdFormats;
    private final Map<String, String> mAdViewCustomDataToSetAfterCreate;
    private final Map<String, Map<String, String>> mAdViewExtraParametersToSetAfterCreate;
    private final Map<String, Map<String, Object>> mAdViewLocalExtraParametersToSetAfterCreate;
    private final Map<String, Point> mAdViewOffsets;
    private final Map<String, String> mAdViewPositions;
    private final Map<String, Integer> mAdViewWidths;
    private final Map<String, MaxAdView> mAdViews;
    private final Map<String, Integer> mCrossPromoAdViewHeights;
    private final Map<String, Integer> mCrossPromoAdViewRotations;
    private final Set<String> mDisabledAdaptiveBannerAdUnitIds;
    private final Map<String, MaxInterstitialAd> mInterstitials;
    private Integer mPublisherBannerBackgroundColor;
    private final Map<String, MaxRewardedAd> mRewardedAds;
    private final Map<String, MaxRewardedInterstitialAd> mRewardedInterstitialAds;
    private View mSafeAreaBackground;
    private AppLovinSdk sdk;
    private static final Point DEFAULT_AD_VIEW_OFFSET = new Point(0, 0);
    private static final ScheduledThreadPoolExecutor sThreadPoolExecutor = new ScheduledThreadPoolExecutor(3, new SdkThreadFactory());

    /* loaded from: classes.dex */
    public interface BackgroundCallback {
        void onEvent(String str);
    }

    /* loaded from: classes.dex */
    public interface Listener {
        void onSdkInitializationComplete(AppLovinSdkConfiguration appLovinSdkConfiguration);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoCompleted(MaxAd maxAd) {
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoStarted(MaxAd maxAd) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Insets {
        int bottom;
        int left;
        int right;
        int top;

        private Insets() {
        }
    }

    public MaxUnityAdManager() {
        this(null);
    }

    private MaxUnityAdManager(Activity activity) {
        this.mPublisherBannerBackgroundColor = null;
        currentActivity = new WeakReference<>(activity);
        this.mInterstitials = new HashMap(2);
        this.mRewardedAds = new HashMap(2);
        this.mRewardedInterstitialAds = new HashMap(2);
        this.mAdViews = new HashMap(2);
        this.mAdViewAdFormats = new HashMap(2);
        this.mAdViewPositions = new HashMap(2);
        this.mAdViewOffsets = new HashMap(2);
        this.mAdViewWidths = new HashMap(2);
        this.mCrossPromoAdViewHeights = new HashMap(2);
        this.mCrossPromoAdViewRotations = new HashMap(2);
        this.mAdInfoMap = new HashMap();
        this.mAdInfoMapLock = new Object();
        this.mAdViewExtraParametersToSetAfterCreate = new HashMap(1);
        this.mAdViewLocalExtraParametersToSetAfterCreate = new HashMap(1);
        this.mAdViewCustomDataToSetAfterCreate = new HashMap(1);
        this.mAdUnitIdsToShowAfterCreate = new ArrayList(2);
        this.mDisabledAdaptiveBannerAdUnitIds = new HashSet(2);
        getCurrentActivity().runOnUiThread(new Runnable() { // from class: com.applovin.mediation.unity.MaxUnityAdManager.1
            @Override // java.lang.Runnable
            public void run() {
                MaxUnityAdManager.this.mSafeAreaBackground = new View(MaxUnityAdManager.getCurrentActivity());
                MaxUnityAdManager.this.mSafeAreaBackground.setVisibility(8);
                MaxUnityAdManager.this.mSafeAreaBackground.setBackgroundColor(0);
                MaxUnityAdManager.this.mSafeAreaBackground.setClickable(false);
                FrameLayout frameLayout = new FrameLayout(MaxUnityAdManager.getCurrentActivity());
                frameLayout.addView(MaxUnityAdManager.this.mSafeAreaBackground, new FrameLayout.LayoutParams(0, 0));
                MaxUnityAdManager.getCurrentActivity().addContentView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
            }
        });
        getCurrentActivity().getWindow().getDecorView().getRootView().addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.applovin.mediation.unity.MaxUnityAdManager.2
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (!((i == i5 && i3 == i7 && i4 == i8 && i2 == i6) ? false : true)) {
                    return;
                }
                for (Map.Entry entry : MaxUnityAdManager.this.mAdViewAdFormats.entrySet()) {
                    MaxUnityAdManager.this.positionAdView((String) entry.getKey(), (MaxAdFormat) entry.getValue());
                }
            }
        });
    }

    public static MaxUnityAdManager getInstance(Activity activity) {
        if (instance == null) {
            instance = new MaxUnityAdManager(activity);
        } else {
            currentActivity = new WeakReference<>(activity);
        }
        return instance;
    }

    public AppLovinSdk initializeSdkWithCompletionHandler(String str, String str2, String str3, BackgroundCallback backgroundCallback2, final Listener listener) {
        backgroundCallback = backgroundCallback2;
        Activity currentActivity2 = getCurrentActivity();
        AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(str, generateSdkSettings(str2, str3, currentActivity2), currentActivity2);
        this.sdk = appLovinSdk;
        appLovinSdk.getVariableService().setOnVariablesUpdateListener(this);
        this.sdk.setPluginVersion("Max-Unity-5.3.0");
        this.sdk.setMediationProvider(AppLovinMediationProvider.MAX);
//        this.sdk.initializeSdk(new AppLovinSdk.SdkInitializationListener() { // from class: com.applovin.mediation.unity.MaxUnityAdManager.3
//            @Override // com.applovin.sdk.AppLovinSdk.SdkInitializationListener
//            public void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration) {
//
//            }
//        });
        listener.onSdkInitializationComplete(new AppLovinSdkConfiguration() {
            @Override
            public ConsentDialogState getConsentDialogState() {
                return ConsentDialogState.UNKNOWN;
            }

            @Override
            public String getCountryCode() {
                return "CN";
            }
        });
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "name", "OnSdkInitializedEvent");
        JsonUtils.putString(jSONObject, "consentDialogState", "2");
        JsonUtils.putString(jSONObject, "countryCode", "CN");
        JsonUtils.putString(jSONObject, "isSuccessfullyInitialized", String.valueOf(MaxUnityAdManager.this.sdk.isInitialized()));
        MaxUnityAdManager.forwardUnityEvent(jSONObject);
        return this.sdk;
    }

    public void createBanner(String str, String str2) {
    }

    public void createBanner(String str, float f, float f2) {
    }

    public void setBannerPlacement(String str, String str2) {
    }

    public void startBannerAutoRefresh(String str) {
    }

    public void stopBannerAutoRefresh(String str) {
    }

    public void setBannerWidth(String str, int i) {
    }

    public void updateBannerPosition(String str, String str2) {
    }

    public void updateBannerPosition(String str, float f, float f2) {
    }

    public void showBanner(String str) {
    }

    public void hideBanner(String str) {
    }

    public void destroyBanner(String str) {
    }

    public void setBannerBackgroundColor(String str, String str2) {
    }

    public void setBannerExtraParameter(String str, String str2, String str3) {
    }

    public void setBannerLocalExtraParameter(String str, String str2, Object obj) {
    }

    public void setBannerCustomData(String str, String str2) {
    }

    public String getBannerLayout(String str) {
        return getAdViewLayout(str, getAdViewAdFormat(str));
    }

    public static float getAdaptiveBannerHeight(float f) {
        return getDeviceSpecificAdViewAdFormat().getAdaptiveSize((int) f, getCurrentActivity()).getHeight();
    }

    public void createMRec(String str, String str2) {
    }

    public void createMRec(String str, float f, float f2) {
    }

    public void setMRecPlacement(String str, String str2) {
    }

    public void startMRecAutoRefresh(String str) {
    }

    public void stopMRecAutoRefresh(String str) {
    }

    public void updateMRecPosition(String str, String str2) {
    }

    public void updateMRecPosition(String str, float f, float f2) {
    }

    public void showMRec(String str) {
    }

    public void hideMRec(String str) {
    }

    public void setMRecExtraParameter(String str, String str2, String str3) {
    }

    public void setMRecLocalExtraParameter(String str, String str2, Object obj) {
    }

    public void setMRecCustomData(String str, String str2) {
    }

    public String getMRecLayout(String str) {
        return getAdViewLayout(str, MaxAdFormat.MREC);
    }

    public void destroyMRec(String str) {
    }

    public void createCrossPromoAd(String str, float f, float f2, int i, int i2, int i3) {
        this.mAdViewWidths.put(str, Integer.valueOf(i));
        this.mCrossPromoAdViewHeights.put(str, Integer.valueOf(i2));
        this.mCrossPromoAdViewRotations.put(str, Integer.valueOf(i3));
    }

    public void setCrossPromoAdPlacement(String str, String str2) {
    }

    public void updateCrossPromoAdPosition(String str, float f, float f2, int i, int i2, int i3) {
        this.mAdViewWidths.put(str, Integer.valueOf(i));
        this.mCrossPromoAdViewHeights.put(str, Integer.valueOf(i2));
        this.mCrossPromoAdViewRotations.put(str, Integer.valueOf(i3));
    }

    public void showCrossPromoAd(String str) {
    }

    public void hideCrossPromoAd(String str) {
    }

    public String getCrossPromoAdLayout(String str) {
        return getAdViewLayout(str, MaxAdFormat.CROSS_PROMO);
    }

    public void destroyCrossPromoAd(String str) {
    }

    public void loadInterstitial(String str) {
    }

    public boolean isInterstitialReady(String str) {
        return false;
    }

    public void showInterstitial(String str, String str2, String str3) {
    }

    public void setInterstitialExtraParameter(String str, String str2, String str3) {
    }

    public void setInterstitialLocalExtraParameter(String str, String str2, Object obj) {
    }
    private void OnRewardedAdLoadedEvent(String str){
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("adUnitId", str);
            jsonObject.put("name", "OnRewardedAdLoadedEvent");
            jsonObject.put("adFormat", "");
            jsonObject.put("networkName", "IronSource");
            jsonObject.put("networkPlacement", "");
            jsonObject.put("creativeId", "");
            jsonObject.put("placement", "");
            jsonObject.put("revenue", "0.0001");
            jsonObject.put("revenuePrecision", "");
            jsonObject.put("waterfallInfo", new JSONObject());
            forwardUnityEvent(jsonObject);
        }catch (Exception e){}
    }

    private void OnRewardedAdDisplayedEvent(String str){
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("adUnitId", str);
            jsonObject.put("name", "OnRewardedAdDisplayedEvent");
            jsonObject.put("adFormat", "");
            jsonObject.put("networkName", "IronSource");
            jsonObject.put("networkPlacement", "");
            jsonObject.put("creativeId", "");
            jsonObject.put("placement", "");
            jsonObject.put("revenue", "0.0001");
            jsonObject.put("revenuePrecision", "");
            jsonObject.put("waterfallInfo", new JSONObject());
            forwardUnityEvent(jsonObject);
        }catch (Exception e){}
    }
    private void OnRewardedAdHiddenEvent(String str){
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("adUnitId", str);
            jsonObject.put("name", "OnRewardedAdHiddenEvent");
            jsonObject.put("adFormat", "");
            jsonObject.put("networkName", "IronSource");
            jsonObject.put("networkPlacement", "");
            jsonObject.put("creativeId", "");
            jsonObject.put("placement", "");
            jsonObject.put("revenue", "0.0001");
            jsonObject.put("revenuePrecision", "");
            jsonObject.put("waterfallInfo", new JSONObject());
            forwardUnityEvent(jsonObject);
        }catch (Exception e){}
    }

    private void OnRewardedAdFailedToDisplayEvent(String str){
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("adUnitId", str);
            jsonObject.put("name", "OnRewardedAdFailedToDisplayEvent");
            jsonObject.put("adFormat", "");
            jsonObject.put("networkName", "IronSource");
            jsonObject.put("networkPlacement", "");
            jsonObject.put("creativeId", "");
            jsonObject.put("placement", "");
            jsonObject.put("revenue", "0.0001");
            jsonObject.put("revenuePrecision", "");
            jsonObject.put("errorCode", "204");
            jsonObject.put("errorMessage", "unknown");
            jsonObject.put("waterfallInfo", new JSONObject());
            forwardUnityEvent(jsonObject);
        }catch (Exception e){}
    }
    private void OnRewardedAdReceivedRewardEvent(String str){
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("adUnitId", str);
            jsonObject.put("name", "OnRewardedAdReceivedRewardEvent");
            jsonObject.put("adFormat", "");
            jsonObject.put("networkName", "IronSource");
            jsonObject.put("networkPlacement", "");
            jsonObject.put("creativeId", "");
            jsonObject.put("placement", "");
            jsonObject.put("revenue", "0.0001");
            jsonObject.put("revenuePrecision", "");
            jsonObject.put("rewardLabel", "");
            jsonObject.put("rewardAmount", "1");
            jsonObject.put("waterfallInfo", new JSONObject());
            forwardUnityEvent(jsonObject);
        }catch (Exception e){}
    }


    public void loadRewardedAd(String str) {
        OnRewardedAdLoadedEvent(str);
    }

    public boolean isRewardedAdReady(String str) {
        return true;
    }

    private boolean isEarned = false;
    public void showRewardedAd(String str, String str2, String str3) {
        isEarned = false;

        OnRewardedAdDisplayedEvent(str);
        OnRewardedAdReceivedRewardEvent(str);
        OnRewardedAdHiddenEvent(str);

        if (!str.isEmpty())return;


        SDK.showRewardedVideo(new AdsCallBack() {
            @Override
            public void onAdsStarted() {
                OnRewardedAdDisplayedEvent(str);
            }

            @Override
            public void onAdsRewarded() {
                isEarned = true;
            }

            @Override
            public void onAdsClosed() {
                if (isEarned){
                    OnRewardedAdReceivedRewardEvent(str);
                    OnRewardedAdHiddenEvent(str);
                }else {
                    onAdsFailed();
                }
            }

            @Override
            public void onAdsFailed() {
                OnRewardedAdFailedToDisplayEvent(str);
            }
        });
    }


    public void setRewardedAdExtraParameter(String str, String str2, String str3) {
    }

    public void setRewardedAdLocalExtraParameter(String str, String str2, Object obj) {
    }

    public void loadRewardedInterstitialAd(String str) {
    }

    public boolean isRewardedInterstitialAdReady(String str) {
        return false;
    }

    public void showRewardedInterstitialAd(String str, String str2, String str3) {
    }

    public void setRewardedInterstitialAdExtraParameter(String str, String str2, String str3) {
    }

    public void setRewardedInterstitialAdLocalExtraParameter(String str, String str2, Object obj) {
    }

    public void trackEvent(String str, String str2) {
    }

    @Deprecated
    public void loadVariables() {
        this.sdk.getVariableService().loadVariables();
    }

    @Override // com.applovin.sdk.AppLovinVariableService.OnVariablesUpdateListener
    public void onVariablesUpdate(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "name", "OnVariablesUpdatedEvent");
        forwardUnityEvent(jSONObject);
    }

    @Override // com.applovin.sdk.AppLovinUserService.OnConsentDialogDismissListener
    public void onDismiss() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "name", "OnSdkConsentDialogDismissedEvent");
        forwardUnityEvent(jSONObject);
    }

    public String getAdInfo(String str) {
        MaxAd ad;
        return (!TextUtils.isEmpty(str) && (ad = getAd(str)) != null) ? getAdInfo(ad).toString() : "";
    }

    private JSONObject getAdInfo(MaxAd maxAd) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "adUnitId", maxAd.getAdUnitId());
        JsonUtils.putString(jSONObject, "adFormat", maxAd.getFormat().getLabel());
        JsonUtils.putString(jSONObject, "networkName", maxAd.getNetworkName());
        JsonUtils.putString(jSONObject, "networkPlacement", maxAd.getNetworkPlacement());
        String str = "";
        JsonUtils.putString(jSONObject, "creativeId", !TextUtils.isEmpty(maxAd.getCreativeId()) ? maxAd.getCreativeId() : str);
        if (!TextUtils.isEmpty(maxAd.getPlacement())) {
            str = maxAd.getPlacement();
        }
        JsonUtils.putString(jSONObject, "placement", str);
        JsonUtils.putString(jSONObject, "revenue", String.valueOf(maxAd.getRevenue()));
        JsonUtils.putString(jSONObject, "revenuePrecision", maxAd.getRevenuePrecision());
        JsonUtils.putJSONObject(jSONObject, "waterfallInfo", createAdWaterfallInfo(maxAd.getWaterfall()));
        return jSONObject;
    }

    private JSONObject createAdWaterfallInfo(MaxAdWaterfallInfo maxAdWaterfallInfo) {
        JSONObject jSONObject = new JSONObject();
        if (maxAdWaterfallInfo == null) {
            return jSONObject;
        }
        JsonUtils.putString(jSONObject, "name", maxAdWaterfallInfo.getName());
        JsonUtils.putString(jSONObject, "testName", maxAdWaterfallInfo.getTestName());
        JSONArray jSONArray = new JSONArray();
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : maxAdWaterfallInfo.getNetworkResponses()) {
            jSONArray.put(createNetworkResponseInfo(maxNetworkResponseInfo));
        }
        JsonUtils.putJsonArray(jSONObject, "networkResponses", jSONArray);
        JsonUtils.putString(jSONObject, "latencyMillis", String.valueOf(maxAdWaterfallInfo.getLatencyMillis()));
        return jSONObject;
    }

    private JSONObject createNetworkResponseInfo(MaxNetworkResponseInfo maxNetworkResponseInfo) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "adLoadState", Integer.toString(maxNetworkResponseInfo.getAdLoadState().ordinal()));
        if (maxNetworkResponseInfo.getMediatedNetwork() != null) {
            JSONObject jSONObject2 = new JSONObject();
            JsonUtils.putString(jSONObject2, "name", maxNetworkResponseInfo.getMediatedNetwork().getName());
            JsonUtils.putString(jSONObject2, "adapterClassName", maxNetworkResponseInfo.getMediatedNetwork().getAdapterClassName());
            JsonUtils.putString(jSONObject2, "adapterVersion", maxNetworkResponseInfo.getMediatedNetwork().getAdapterVersion());
            JsonUtils.putString(jSONObject2, "sdkVersion", maxNetworkResponseInfo.getMediatedNetwork().getSdkVersion());
            JsonUtils.putJSONObject(jSONObject, "mediatedNetwork", jSONObject2);
        }
        JsonUtils.putJSONObject(jSONObject, "credentials", BundleUtils.toJSONObject(maxNetworkResponseInfo.getCredentials()));
        MaxError error = maxNetworkResponseInfo.getError();
        if (error != null) {
            JSONObject jSONObject3 = new JSONObject();
            JsonUtils.putString(jSONObject3, "errorMessage", error.getMessage());
            JsonUtils.putString(jSONObject3, "adLoadFailureInfo", error.getAdLoadFailureInfo());
            JsonUtils.putString(jSONObject3, IronSourceConstants.EVENTS_ERROR_CODE, Integer.toString(error.getCode()));
            JsonUtils.putJSONObject(jSONObject, "error", jSONObject3);
        }
        JsonUtils.putString(jSONObject, "latencyMillis", String.valueOf(maxNetworkResponseInfo.getLatencyMillis()));
        return jSONObject;
    }

    public String getAdValue(String str, String str2) {
        MaxAd ad;
        return (!TextUtils.isEmpty(str) && (ad = getAd(str)) != null) ? ad.getAdValue(str2) : "";
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(MaxAd maxAd) {
        String str;
        MaxAdFormat format = maxAd.getFormat();
        if (format.isAdViewAd()) {
            if (MaxAdFormat.MREC == format) {
                str = "OnMRecAdLoadedEvent";
            } else {
                str = MaxAdFormat.CROSS_PROMO == format ? "OnCrossPromoAdLoadedEvent" : "OnBannerAdLoadedEvent";
            }
            positionAdView(maxAd);
            MaxAdView retrieveAdView = retrieveAdView(maxAd.getAdUnitId(), format);
            if (retrieveAdView != null && retrieveAdView.getVisibility() != 0) {
                retrieveAdView.stopAutoRefresh();
            }
        } else if (MaxAdFormat.INTERSTITIAL == format) {
            str = "OnInterstitialLoadedEvent";
        } else if (MaxAdFormat.REWARDED == format) {
            str = "OnRewardedAdLoadedEvent";
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL != format) {
            logInvalidAdFormat(format);
            return;
        } else {
            str = "OnRewardedInterstitialAdLoadedEvent";
        }
        synchronized (this.mAdInfoMapLock) {
            this.mAdInfoMap.put(maxAd.getAdUnitId(), maxAd);
        }
        forwardUnityEvent(getDefaultAdEventParameters(str, maxAd));
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(String str, MaxError maxError) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            logStackTrace(new IllegalArgumentException("adUnitId cannot be null"));
            return;
        }
        if (this.mAdViews.containsKey(str)) {
            MaxAdFormat maxAdFormat = this.mAdViewAdFormats.get(str);
            if (MaxAdFormat.MREC == maxAdFormat) {
                str2 = "OnMRecAdLoadFailedEvent";
            } else {
                str2 = MaxAdFormat.CROSS_PROMO == maxAdFormat ? "OnCrossPromoAdLoadFailedEvent" : "OnBannerAdLoadFailedEvent";
            }
        } else if (this.mInterstitials.containsKey(str)) {
            str2 = "OnInterstitialLoadFailedEvent";
        } else if (this.mRewardedAds.containsKey(str)) {
            str2 = "OnRewardedAdLoadFailedEvent";
        } else if (!this.mRewardedInterstitialAds.containsKey(str)) {
            logStackTrace(new IllegalStateException("invalid adUnitId: " + str));
            return;
        } else {
            str2 = "OnRewardedInterstitialAdLoadFailedEvent";
        }
        synchronized (this.mAdInfoMapLock) {
            this.mAdInfoMap.remove(str);
        }
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "name", str2);
        JsonUtils.putString(jSONObject, "adUnitId", str);
        JsonUtils.putString(jSONObject, IronSourceConstants.EVENTS_ERROR_CODE, Integer.toString(maxError.getCode()));
        JsonUtils.putString(jSONObject, "errorMessage", maxError.getMessage());
        JsonUtils.putJSONObject(jSONObject, "waterfallInfo", createAdWaterfallInfo(maxError.getWaterfall()));
        String adLoadFailureInfo = maxError.getAdLoadFailureInfo();
        if (TextUtils.isEmpty(adLoadFailureInfo)) {
            adLoadFailureInfo = "";
        }
        JsonUtils.putString(jSONObject, "adLoadFailureInfo", adLoadFailureInfo);
        forwardUnityEvent(jSONObject);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(MaxAd maxAd) {
        String str;
        MaxAdFormat format = maxAd.getFormat();
        if (MaxAdFormat.BANNER == format || MaxAdFormat.LEADER == format) {
            str = "OnBannerAdClickedEvent";
        } else if (MaxAdFormat.MREC == format) {
            str = "OnMRecAdClickedEvent";
        } else if (MaxAdFormat.CROSS_PROMO == format) {
            str = "OnCrossPromoAdClickedEvent";
        } else if (MaxAdFormat.INTERSTITIAL == format) {
            str = "OnInterstitialClickedEvent";
        } else if (MaxAdFormat.REWARDED == format) {
            str = "OnRewardedAdClickedEvent";
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL != format) {
            logInvalidAdFormat(format);
            return;
        } else {
            str = "OnRewardedInterstitialAdClickedEvent";
        }
        forwardUnityEvent(getDefaultAdEventParameters(str, maxAd));
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(MaxAd maxAd) {
        String str;
        MaxAdFormat format = maxAd.getFormat();
        if (!format.isFullscreenAd()) {
            return;
        }
        if (MaxAdFormat.INTERSTITIAL == format) {
            str = "OnInterstitialDisplayedEvent";
        } else {
            str = MaxAdFormat.REWARDED == format ? "OnRewardedAdDisplayedEvent" : "OnRewardedInterstitialAdDisplayedEvent";
        }
        forwardUnityEvent(getDefaultAdEventParameters(str, maxAd));
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        String str;
        MaxAdFormat format = maxAd.getFormat();
        if (!format.isFullscreenAd()) {
            return;
        }
        if (MaxAdFormat.INTERSTITIAL == format) {
            str = "OnInterstitialAdFailedToDisplayEvent";
        } else {
            str = MaxAdFormat.REWARDED == format ? "OnRewardedAdFailedToDisplayEvent" : "OnRewardedInterstitialAdFailedToDisplayEvent";
        }
        JSONObject defaultAdEventParameters = getDefaultAdEventParameters(str, maxAd);
        JsonUtils.putString(defaultAdEventParameters, IronSourceConstants.EVENTS_ERROR_CODE, Integer.toString(maxError.getCode()));
        JsonUtils.putString(defaultAdEventParameters, "errorMessage", maxError.getMessage());
        JsonUtils.putJSONObject(defaultAdEventParameters, "waterfallInfo", createAdWaterfallInfo(maxError.getWaterfall()));
        forwardUnityEvent(defaultAdEventParameters);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(MaxAd maxAd) {
        String str;
        MaxAdFormat format = maxAd.getFormat();
        if (!format.isFullscreenAd()) {
            return;
        }
        if (MaxAdFormat.INTERSTITIAL == format) {
            str = "OnInterstitialHiddenEvent";
        } else {
            str = MaxAdFormat.REWARDED == format ? "OnRewardedAdHiddenEvent" : "OnRewardedInterstitialAdHiddenEvent";
        }
        forwardUnityEvent(getDefaultAdEventParameters(str, maxAd));
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(MaxAd maxAd) {
        String str;
        MaxAdFormat format = maxAd.getFormat();
        if (!format.isAdViewAd()) {
            logInvalidAdFormat(format);
            return;
        }
        if (MaxAdFormat.MREC == format) {
            str = "OnMRecAdCollapsedEvent";
        } else {
            str = MaxAdFormat.CROSS_PROMO == format ? "OnCrossPromoAdCollapsedEvent" : "OnBannerAdCollapsedEvent";
        }
        forwardUnityEvent(getDefaultAdEventParameters(str, maxAd));
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(MaxAd maxAd) {
        String str;
        MaxAdFormat format = maxAd.getFormat();
        if (!format.isAdViewAd()) {
            logInvalidAdFormat(format);
            return;
        }
        if (MaxAdFormat.MREC == format) {
            str = "OnMRecAdExpandedEvent";
        } else {
            str = MaxAdFormat.CROSS_PROMO == format ? "OnCrossPromoAdExpandedEvent" : "OnBannerAdExpandedEvent";
        }
        forwardUnityEvent(getDefaultAdEventParameters(str, maxAd));
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
        MaxAdFormat format = maxAd.getFormat();
        if (format != MaxAdFormat.REWARDED && format != MaxAdFormat.REWARDED_INTERSTITIAL) {
            logInvalidAdFormat(format);
            return;
        }
        String label = maxReward != null ? maxReward.getLabel() : "";
        String num = Integer.toString(maxReward != null ? maxReward.getAmount() : 0);
        JSONObject defaultAdEventParameters = getDefaultAdEventParameters(format == MaxAdFormat.REWARDED ? "OnRewardedAdReceivedRewardEvent" : "OnRewardedInterstitialAdReceivedRewardEvent", maxAd);
        JsonUtils.putString(defaultAdEventParameters, "rewardLabel", label);
        JsonUtils.putString(defaultAdEventParameters, IronSourceConstants.EVENTS_REWARD_AMOUNT, num);
        forwardUnityEvent(defaultAdEventParameters);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(MaxAd maxAd) {
        String str;
        MaxAdFormat format = maxAd.getFormat();
        if (MaxAdFormat.BANNER == format || MaxAdFormat.LEADER == format) {
            str = "OnBannerAdRevenuePaidEvent";
        } else if (MaxAdFormat.MREC == format) {
            str = "OnMRecAdRevenuePaidEvent";
        } else if (MaxAdFormat.CROSS_PROMO == format) {
            str = "OnCrossPromoAdRevenuePaidEvent";
        } else if (MaxAdFormat.INTERSTITIAL == format) {
            str = "OnInterstitialAdRevenuePaidEvent";
        } else if (MaxAdFormat.REWARDED == format) {
            str = "OnRewardedAdRevenuePaidEvent";
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL != format) {
            logInvalidAdFormat(format);
            return;
        } else {
            str = "OnRewardedInterstitialAdRevenuePaidEvent";
        }
        forwardUnityEvent(getDefaultAdEventParameters(str, maxAd), format.isFullscreenAd());
    }

    private JSONObject getDefaultAdEventParameters(String str, MaxAd maxAd) {
        JSONObject adInfo = getAdInfo(maxAd);
        JsonUtils.putString(adInfo, "name", str);
        return adInfo;
    }

    private void createAdView(final String str, final MaxAdFormat maxAdFormat, final String str2, final Point point) {
    }

    private void setAdViewPlacement(final String str, final MaxAdFormat maxAdFormat, final String str2) {
    }

    private void startAdViewAutoRefresh(final String str, final MaxAdFormat maxAdFormat) {
    }

    private void stopAdViewAutoRefresh(final String str, final MaxAdFormat maxAdFormat) {
    }

    private void setAdViewWidth(final String str, final int i, final MaxAdFormat maxAdFormat) {
    }

    private void updateAdViewPosition(final String str, final String str2, final Point point, final MaxAdFormat maxAdFormat) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAdView(final String str, final MaxAdFormat maxAdFormat) {
    }

    private void hideAdView(final String str, final MaxAdFormat maxAdFormat) {
    }

    private String getAdViewLayout(String str, MaxAdFormat maxAdFormat) {
        d("Getting " + maxAdFormat.getLabel() + " absolute position with ad unit id \"" + str + "\"");
        MaxAdView retrieveAdView = retrieveAdView(str, maxAdFormat);
        if (retrieveAdView == null) {
            e(maxAdFormat.getLabel() + " does not exist");
            return "";
        }
        int[] iArr = new int[2];
        retrieveAdView.getLocationOnScreen(iArr);
        int pxToDp = AppLovinSdkUtils.pxToDp(getCurrentActivity(), iArr[0]);
        int pxToDp2 = AppLovinSdkUtils.pxToDp(getCurrentActivity(), iArr[1]);
        int pxToDp3 = AppLovinSdkUtils.pxToDp(getCurrentActivity(), retrieveAdView.getWidth());
        int pxToDp4 = AppLovinSdkUtils.pxToDp(getCurrentActivity(), retrieveAdView.getHeight());
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "origin_x", String.valueOf(pxToDp));
        JsonUtils.putString(jSONObject, "origin_y", String.valueOf(pxToDp2));
        JsonUtils.putString(jSONObject, "width", String.valueOf(pxToDp3));
        JsonUtils.putString(jSONObject, "height", String.valueOf(pxToDp4));
        return jSONObject.toString();
    }

    private void destroyAdView(final String str, final MaxAdFormat maxAdFormat) {
    }

    private void setAdViewBackgroundColor(final String str, final MaxAdFormat maxAdFormat, final String str2) {
    }

    private void setAdViewExtraParameter(final String str, final MaxAdFormat maxAdFormat, final String str2, final String str3) {
    }

    private void setAdViewLocalExtraParameter(final String str, final MaxAdFormat maxAdFormat, final String str2, final Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandleExtraParameterChanges(String str, MaxAdFormat maxAdFormat, String str2, String str3) {
    }

    private void setAdViewCustomData(final String str, final MaxAdFormat maxAdFormat, final String str2) {
    }

    private void logInvalidAdFormat(MaxAdFormat maxAdFormat) {
    }

    private void logStackTrace(Exception exc) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(String str) {
    }

    private MaxInterstitialAd retrieveInterstitial(String str) {
        MaxInterstitialAd maxInterstitialAd = this.mInterstitials.get(str);
        if (maxInterstitialAd == null) {
            MaxInterstitialAd maxInterstitialAd2 = new MaxInterstitialAd(str, this.sdk, getCurrentActivity());
            maxInterstitialAd2.setListener(this);
            maxInterstitialAd2.setRevenueListener(this);
            this.mInterstitials.put(str, maxInterstitialAd2);
            return maxInterstitialAd2;
        }
        return maxInterstitialAd;
    }

    private MaxRewardedAd retrieveRewardedAd(String str) {
        MaxRewardedAd maxRewardedAd = this.mRewardedAds.get(str);
        if (maxRewardedAd == null) {
            MaxRewardedAd maxRewardedAd2 = MaxRewardedAd.getInstance(str, this.sdk, getCurrentActivity());
            maxRewardedAd2.setListener(this);
            maxRewardedAd2.setRevenueListener(this);
            this.mRewardedAds.put(str, maxRewardedAd2);
            return maxRewardedAd2;
        }
        return maxRewardedAd;
    }

    private MaxRewardedInterstitialAd retrieveRewardedInterstitialAd(String str) {
        MaxRewardedInterstitialAd maxRewardedInterstitialAd = this.mRewardedInterstitialAds.get(str);
        if (maxRewardedInterstitialAd == null) {
            MaxRewardedInterstitialAd maxRewardedInterstitialAd2 = new MaxRewardedInterstitialAd(str, this.sdk, getCurrentActivity());
            maxRewardedInterstitialAd2.setListener(this);
            maxRewardedInterstitialAd2.setRevenueListener(this);
            this.mRewardedInterstitialAds.put(str, maxRewardedInterstitialAd2);
            return maxRewardedInterstitialAd2;
        }
        return maxRewardedInterstitialAd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MaxAdView retrieveAdView(String str, MaxAdFormat maxAdFormat) {
        return retrieveAdView(str, maxAdFormat, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MaxAdView retrieveAdView(String str, MaxAdFormat maxAdFormat, String str2, Point point) {
        MaxAdView maxAdView = this.mAdViews.get(str);
        if (maxAdView != null || str2 == null || point == null) {
            return maxAdView;
        }
        MaxAdView maxAdView2 = new MaxAdView(str, maxAdFormat, this.sdk, getCurrentActivity());
        maxAdView2.setListener(this);
        maxAdView2.setRevenueListener(this);
        this.mAdViews.put(str, maxAdView2);
        this.mAdViewPositions.put(str, str2);
        this.mAdViewOffsets.put(str, point);
        return maxAdView2;
    }

    private void positionAdView(MaxAd maxAd) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void positionAdView(final String str, final MaxAdFormat maxAdFormat) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Insets getSafeInsets() {
        Window window;
        WindowInsets rootWindowInsets;
        DisplayCutout displayCutout;
        Insets insets = new Insets();
        if (Build.VERSION.SDK_INT < 28 || (window = getCurrentActivity().getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null) {
            return insets;
        }
        insets.left = displayCutout.getSafeInsetLeft();
        insets.top = displayCutout.getSafeInsetTop();
        insets.right = displayCutout.getSafeInsetRight();
        insets.bottom = displayCutout.getSafeInsetBottom();
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void forwardUnityEvent(JSONObject jSONObject) {
        forwardUnityEvent(jSONObject, false);
    }

    private static void forwardUnityEvent(final JSONObject jSONObject, final boolean z) {
        sThreadPoolExecutor.execute(new Runnable() { // from class: com.applovin.mediation.unity.MaxUnityAdManager.18
            @Override // java.lang.Runnable
            public void run() {
                String jSONObject2 = jSONObject.toString();
                if (z) {
                    MaxUnityAdManager.backgroundCallback.onEvent(jSONObject2);
                } else {
                    UnityPlayer.UnitySendMessage("MaxSdkCallbacks", "ForwardEvent", jSONObject2);
                }
            }
        });
    }

    private static Map<String, String> deserializeParameters(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return JsonUtils.toStringMap(JsonUtils.jsonObjectFromJsonString(str, new JSONObject()));
            } catch (Throwable th) {
                e("Failed to deserialize: (" + str + ") with exception: " + th);
                return Collections.emptyMap();
            }
        }
        return Collections.emptyMap();
    }

    private MaxAdFormat getAdViewAdFormat(String str) {
        if (this.mAdViewAdFormats.containsKey(str)) {
            return this.mAdViewAdFormats.get(str);
        }
        return getDeviceSpecificAdViewAdFormat();
    }

    private static MaxAdFormat getDeviceSpecificAdViewAdFormat() {
        return AppLovinSdkUtils.isTablet(getCurrentActivity()) ? MaxAdFormat.LEADER : MaxAdFormat.BANNER;
    }

    private static AppLovinSdkSettings generateSdkSettings(String str, String str2, Context context) {
        AppLovinSdkSettings appLovinSdkSettings = new AppLovinSdkSettings(context);
        appLovinSdkSettings.setInitializationAdUnitIds(Arrays.asList(str.split(",")));
        Map<String, String> deserializeParameters = deserializeParameters(str2);
        if (AppLovinSdk.VERSION_CODE >= 91201) {
            try {
                Field declaredField = AppLovinSdkSettings.class.getDeclaredField("metaData");
                declaredField.setAccessible(true);
                Map map = (Map) declaredField.get(appLovinSdkSettings);
                for (Map.Entry<String, String> entry : deserializeParameters.entrySet()) {
                    map.put(entry.getKey(), entry.getValue());
                }
            } catch (Exception unused) {
            }
        }
        return appLovinSdkSettings;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Activity getCurrentActivity() {
        return Utils.getCurrentActivity();
    }

    private static Point getOffsetPixels(float f, float f2, Context context) {
        return new Point(AppLovinSdkUtils.dpToPx(context, (int) f), AppLovinSdkUtils.dpToPx(context, (int) f2));
    }

    private MaxAd getAd(String str) {
        MaxAd maxAd;
        synchronized (this.mAdInfoMapLock) {
            maxAd = this.mAdInfoMap.get(str);
        }
        return maxAd;
    }

    /* loaded from: classes.dex */
    private static class SdkThreadFactory implements ThreadFactory {
        private SdkThreadFactory() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:Max-Unity-Plugin:shared");
            thread.setDaemon(true);
            thread.setPriority(10);
            thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.applovin.mediation.unity.MaxUnityAdManager.SdkThreadFactory.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread2, Throwable th) {
                    Log.e(MaxUnityAdManager.TAG, "Caught unhandled exception", th);
                }
            });
            return thread;
        }
    }
}