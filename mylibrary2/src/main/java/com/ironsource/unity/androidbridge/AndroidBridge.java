package com.ironsource.unity.androidbridge;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import com.anygames.sdk.AdsCallBack;
import com.anygames.sdk.SDK;
import com.ironsource.adapters.supersonicads.SupersonicConfig;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.IronSourceBannerLayout;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.impressionData.ImpressionData;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.integration.IntegrationHelper;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.BannerListener;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener;
import com.ironsource.mediationsdk.sdk.InitializationListener;
import com.ironsource.mediationsdk.sdk.InterstitialListener;
import com.ironsource.mediationsdk.sdk.LevelPlayBannerListener;
import com.ironsource.mediationsdk.sdk.OfferwallListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoManualListener;
import com.ironsource.mediationsdk.sdk.SegmentListener;
import com.unity3d.player.UnityPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AndroidBridge implements InitializationListener, RewardedVideoManualListener, RewardedVideoListener, ImpressionDataListener, InterstitialListener, ISDemandOnlyInterstitialListener, ISDemandOnlyRewardedVideoListener, SegmentListener, OfferwallListener {
    private static final AndroidBridge mInstance = new AndroidBridge();
    private IronSourceBannerLayout mBanner;
    private FrameLayout mBannerContainer;
    private int mBannerVisibilityState;
    private boolean mIsBannerLoaded;
    private boolean mIsInitBannerCalled;
    private LevelPlayInterstitialWrapper mLevelPlayInterstitialWrapper;
    private LevelPlayRewardedVideoWrapper mLevelPlayRewardedVideoWrapper;
    private Handler mUIHandler;
    private UnityBannerListener mUnityBannerListener;
    private UnityImpressionDataListener mUnityImpressionDataListener;
    private UnityInitializationListener mUnityInitializationListener;
    private UnityInterstitialListener mUnityInterstitialListener;
    private UnityLevelPlayBannerListener mUnityLevelPlayBannerListener;
    private UnityOfferwallListener mUnityOfferwallListener;
    private UnityRewardedVideoListener mUnityRewardedVideoListener;
    private UnityRewardedVideoManualListener mUnityRewardedVideoManualListener;
    private UnitySegmentListener mUnitySegmentListener;

    public static synchronized AndroidBridge getInstance() {
        AndroidBridge androidBridge;
        synchronized (AndroidBridge.class) {
            androidBridge = mInstance;
        }
        return androidBridge;
    }

    private AndroidBridge() {
        IronSource.addImpressionDataListener(this);
        IronSource.setInterstitialListener(this);
        IronSource.setOfferwallListener(this);
        IronSource.setISDemandOnlyRewardedVideoListener(this);
        IronSource.setSegmentListener(this);
        IronSource.setRewardedVideoListener(this);
        this.mLevelPlayRewardedVideoWrapper = new LevelPlayRewardedVideoWrapper();
        this.mLevelPlayInterstitialWrapper = new LevelPlayInterstitialWrapper();
        this.mUIHandler = new Handler(Looper.getMainLooper());
        this.mBannerContainer = null;
        this.mBanner = null;
        this.mIsBannerLoaded = false;
        this.mIsInitBannerCalled = false;
        this.mBannerVisibilityState = 0;
    }

    public void setUnityInitializationListener(UnityInitializationListener unityInitializationListener) {
        this.mUnityInitializationListener = unityInitializationListener;
    }

    public void setUnityRewardedVideoListener(UnityRewardedVideoListener unityRewardedVideoListener) {
        this.mUnityRewardedVideoListener = unityRewardedVideoListener;
    }

    public void setUnityRewardedVideoManualListener(UnityRewardedVideoManualListener unityRewardedVideoManualListener) {
        this.mUnityRewardedVideoManualListener = unityRewardedVideoManualListener;
    }

    public void setUnityRewardedVideoLevelPlayListener(UnityLevelPlayRewardedVideoListener unityLevelPlayRewardedVideoListener) {
        this.mLevelPlayRewardedVideoWrapper.setLevelPlayRewardedVideoListener(unityLevelPlayRewardedVideoListener);
    }

    public void setUnityRewardedVideoManualLevelPlayListener(UnityLevelPlayRewardedVideoManualListener unityLevelPlayRewardedVideoManualListener) {
        this.mLevelPlayRewardedVideoWrapper.setLevelPlayManualRewardedVideoListener(unityLevelPlayRewardedVideoManualListener);
    }

    public void setUnityInterstitialListener(UnityInterstitialListener unityInterstitialListener) {
        this.mUnityInterstitialListener = unityInterstitialListener;
    }

    public void setUnityInterstitialLevelPlayListener(UnityLevelPlayInterstitialListener unityLevelPlayInterstitialListener) {
        this.mLevelPlayInterstitialWrapper.setInterstitialLevelPlaylistener(unityLevelPlayInterstitialListener);
    }

    public void setUnityOfferwallListener(UnityOfferwallListener unityOfferwallListener) {
        this.mUnityOfferwallListener = unityOfferwallListener;
    }

    public void setUnitySegmentListener(UnitySegmentListener unitySegmentListener) {
        this.mUnitySegmentListener = unitySegmentListener;
    }

    public void setUnityBannerListener(UnityBannerListener unityBannerListener) {
        this.mUnityBannerListener = unityBannerListener;
    }

    public void setUnityBannerLevelPlayListener(UnityLevelPlayBannerListener unityLevelPlayBannerListener) {
        this.mUnityLevelPlayBannerListener = unityLevelPlayBannerListener;
    }

    public void setUnityImpressionDataListener(UnityImpressionDataListener unityImpressionDataListener) {
        this.mUnityImpressionDataListener = unityImpressionDataListener;
    }

    @Override // com.ironsource.mediationsdk.impressionData.ImpressionDataListener
    public void onImpressionSuccess(ImpressionData impressionData) {
        UnityImpressionDataListener unityImpressionDataListener = this.mUnityImpressionDataListener;
        if (unityImpressionDataListener != null) {
            unityImpressionDataListener.onImpressionDataReady(AndroidBridgeUtilities.getImpressionDataString(impressionData));
        }
        this.mUnityImpressionDataListener.onImpressionSuccess(AndroidBridgeUtilities.getImpressionDataString(impressionData));
    }

    @Override // com.ironsource.mediationsdk.sdk.InitializationListener
    public void onInitializationComplete() {
        UnityInitializationListener unityInitializationListener = this.mUnityInitializationListener;
        if (unityInitializationListener != null) {
            unityInitializationListener.onSdkInitializationCompleted();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.SegmentListener
    public void onSegmentReceived(String str) {
        UnitySegmentListener unitySegmentListener = this.mUnitySegmentListener;
        if (unitySegmentListener != null) {
            unitySegmentListener.onSegmentRecieved(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallAvailable(boolean z) {
        UnityOfferwallListener unityOfferwallListener = this.mUnityOfferwallListener;
        if (unityOfferwallListener != null) {
            unityOfferwallListener.onOfferwallAvailable(String.valueOf(z));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallOpened() {
        UnityOfferwallListener unityOfferwallListener = this.mUnityOfferwallListener;
        if (unityOfferwallListener != null) {
            unityOfferwallListener.onOfferwallOpened();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallShowFailed(IronSourceError ironSourceError) {
        UnityOfferwallListener unityOfferwallListener = this.mUnityOfferwallListener;
        if (unityOfferwallListener != null) {
            unityOfferwallListener.onOfferwallShowFailed(AndroidBridgeUtilities.parseIronSourceError(ironSourceError));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public boolean onOfferwallAdCredited(int i, int i2, boolean z) {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put(AndroidBridgeConstants.OFFERWALL_CREDITS, String.valueOf(i));
            hashMap.put(AndroidBridgeConstants.OFFERWALL_TOTAL_CREDITS, String.valueOf(i2));
            hashMap.put(AndroidBridgeConstants.OFFERWALL_TOTAL_CREDITS_FLAG, String.valueOf(z));
            String jSONObject = new JSONObject(hashMap).toString();
            if (this.mUnityOfferwallListener != null) {
                this.mUnityOfferwallListener.onOfferwallAdCredited(jSONObject);
                return true;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onGetOfferwallCreditsFailed(IronSourceError ironSourceError) {
        UnityOfferwallListener unityOfferwallListener = this.mUnityOfferwallListener;
        if (unityOfferwallListener != null) {
            unityOfferwallListener.onGetOfferwallCreditsFailed(AndroidBridgeUtilities.parseIronSourceError(ironSourceError));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallClosed() {
        UnityOfferwallListener unityOfferwallListener = this.mUnityOfferwallListener;
        if (unityOfferwallListener != null) {
            unityOfferwallListener.onOfferwallClosed();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdReady() {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdReady();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdLoadFailed(AndroidBridgeUtilities.parseIronSourceError(ironSourceError));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdOpened() {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdOpened();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdClosed() {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdClosed();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdShowSucceeded() {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdShowSucceeded();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdShowFailed(AndroidBridgeUtilities.parseIronSourceError(ironSourceError));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdClicked() {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdClicked();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdReady(String str) {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdReadyDemandOnly(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdLoadFailed(String str, IronSourceError ironSourceError) {
        if (this.mUnityInterstitialListener != null) {
            String[] strArr = new String[2];
            strArr[0] = str;
            strArr[1] = ironSourceError != null ? AndroidBridgeUtilities.parseIronSourceError(ironSourceError) : "";
            this.mUnityInterstitialListener.onInterstitialAdLoadFailedDemandOnly(Arrays.toString(strArr));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdOpened(String str) {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdOpenedDemandOnly(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdClosed(String str) {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdClosedDemandOnly(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdShowFailed(String str, IronSourceError ironSourceError) {
        if (this.mUnityInterstitialListener != null) {
            String[] strArr = new String[2];
            strArr[0] = str;
            strArr[1] = ironSourceError != null ? AndroidBridgeUtilities.parseIronSourceError(ironSourceError) : "";
            this.mUnityInterstitialListener.onInterstitialAdShowFailedDemandOnly(Arrays.toString(strArr));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdClicked(String str) {
        UnityInterstitialListener unityInterstitialListener = this.mUnityInterstitialListener;
        if (unityInterstitialListener != null) {
            unityInterstitialListener.onInterstitialAdClickedDemandOnly(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdOpened() {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdOpened();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdClosed() {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdClosed();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAvailabilityChanged(boolean z) {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAvailabilityChanged(String.valueOf(z));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdStarted() {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdStarted();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdEnded() {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdEnded();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdRewarded(Placement placement) {
//        Log.e("xNative", "onRewardedVideoAdRewarded " );

        String placememtJson = AndroidBridgeUtilities.getPlacememtJson(placement);
//        Log.e("xNative", "onRewardedVideoAdRewarded: " + placememtJson);
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdRewarded(placememtJson);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdShowFailed(AndroidBridgeUtilities.parseIronSourceError(ironSourceError));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdClicked(Placement placement) {
        try {
            if (this.mUnityRewardedVideoListener != null) {
                this.mUnityRewardedVideoListener.onRewardedVideoAdClicked(AndroidBridgeUtilities.getPlacememtJson(placement));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdLoadSuccess(String str) {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdLoadedDemandOnly(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdLoadFailed(String str, IronSourceError ironSourceError) {
        if (this.mUnityRewardedVideoListener != null) {
            String[] strArr = new String[2];
            strArr[0] = str;
            strArr[1] = ironSourceError != null ? AndroidBridgeUtilities.parseIronSourceError(ironSourceError) : "";
            this.mUnityRewardedVideoListener.onRewardedVideoAdLoadFailedDemandOnly(Arrays.toString(strArr));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdOpened(String str) {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdOpenedDemandOnly(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdClosed(String str) {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdClosedDemandOnly(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdRewarded(String str) {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdRewardedDemandOnly(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdShowFailed(String str, IronSourceError ironSourceError) {
        if (this.mUnityRewardedVideoListener != null) {
            String[] strArr = new String[2];
            strArr[0] = str;
            strArr[1] = ironSourceError != null ? AndroidBridgeUtilities.parseIronSourceError(ironSourceError) : "";
            this.mUnityRewardedVideoListener.onRewardedVideoAdShowFailedDemandOnly(Arrays.toString(strArr));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdClicked(String str) {
        UnityRewardedVideoListener unityRewardedVideoListener = this.mUnityRewardedVideoListener;
        if (unityRewardedVideoListener != null) {
            unityRewardedVideoListener.onRewardedVideoAdClickedDemandOnly(str);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManualListener
    public void onRewardedVideoAdReady() {
        UnityRewardedVideoManualListener unityRewardedVideoManualListener = this.mUnityRewardedVideoManualListener;
        if (unityRewardedVideoManualListener != null) {
            unityRewardedVideoManualListener.onRewardedVideoAdReady();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManualListener
    public void onRewardedVideoAdLoadFailed(IronSourceError ironSourceError) {
        if (this.mUnityRewardedVideoManualListener != null) {
            String[] strArr = new String[1];
            strArr[0] = ironSourceError != null ? AndroidBridgeUtilities.parseIronSourceError(ironSourceError) : "";
            this.mUnityRewardedVideoManualListener.onRewardedVideoAdLoadFailed(Arrays.toString(strArr));
        }
    }

    public Activity getUnityActivity() {
        return UnityPlayer.currentActivity;
    }

    public void setPluginData(String str, String str2, String str3) {
        ConfigFile.getConfigFile().setPluginData(str, str2, str3);
    }

    public String getAdvertiserId() {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.1
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return IronSource.getAdvertiserId(AndroidBridge.this.getUnityActivity());
            }
        });
        futureTask.run();
        try {
            return (String) futureTask.get(1L, TimeUnit.SECONDS);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public void validateIntegration() {
        IntegrationHelper.validateIntegration(getUnityActivity());
    }

    public void shouldTrackNetworkState(boolean z) {
        IronSource.shouldTrackNetworkState(getUnityActivity(), z);
    }

    public boolean setDynamicUserId(String str) {
        return IronSource.setDynamicUserId(str);
    }

    public void setAdaptersDebug(boolean z) {
        IronSource.setAdaptersDebug(z);
    }

    public void setManualLoadRewardedVideo(boolean z) {
        this.mLevelPlayRewardedVideoWrapper.setIronSourceManualLoadListener(z);
        if (z) {
            IronSource.setManualLoadRewardedVideo(this);
        } else {
            IronSource.setManualLoadRewardedVideo(null);
        }
    }

    public void setNetworkData(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            IronSource.setNetworkData(str, new JSONObject(str2));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void onResume() {
        IronSource.onResume(getUnityActivity());
    }

    public void onPause() {
        IronSource.onPause(getUnityActivity());
    }

    public void setMediationSegment(String str) {
        IronSource.setMediationSegment(str);
    }

    public void setUserId(String str) {
        IronSource.setUserId(str);
    }

    public void init(String str) {
        this.mIsInitBannerCalled = true;
        IronSource.init(getUnityActivity(), str, this);
    }

    public void init(String str, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArr) {
            if (IronSource.AD_UNIT.REWARDED_VIDEO.toString().equalsIgnoreCase(str2)) {
                arrayList.add(IronSource.AD_UNIT.REWARDED_VIDEO);
            } else if (IronSource.AD_UNIT.INTERSTITIAL.toString().equalsIgnoreCase(str2)) {
                arrayList.add(IronSource.AD_UNIT.INTERSTITIAL);
            } else if (IronSource.AD_UNIT.OFFERWALL.toString().equalsIgnoreCase(str2)) {
                arrayList.add(IronSource.AD_UNIT.OFFERWALL);
            } else if (IronSource.AD_UNIT.BANNER.toString().equalsIgnoreCase(str2)) {
                this.mIsInitBannerCalled = true;
                arrayList.add(IronSource.AD_UNIT.BANNER);
            }
        }
        IronSource.init(getUnityActivity(), str, this, (IronSource.AD_UNIT[]) arrayList.toArray(new IronSource.AD_UNIT[arrayList.size()]));
    }

    public void initISDemandOnly(String str, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArr) {
            if (IronSource.AD_UNIT.REWARDED_VIDEO.toString().equalsIgnoreCase(str2)) {
                arrayList.add(IronSource.AD_UNIT.REWARDED_VIDEO);
            } else if (IronSource.AD_UNIT.INTERSTITIAL.toString().equalsIgnoreCase(str2)) {
                arrayList.add(IronSource.AD_UNIT.INTERSTITIAL);
            } else if (IronSource.AD_UNIT.OFFERWALL.toString().equalsIgnoreCase(str2)) {
                arrayList.add(IronSource.AD_UNIT.OFFERWALL);
            } else if (IronSource.AD_UNIT.BANNER.toString().equalsIgnoreCase(str2)) {
                arrayList.add(IronSource.AD_UNIT.BANNER);
            }
        }
        IronSource.initISDemandOnly(getUnityActivity().getApplicationContext(), str, (IronSource.AD_UNIT[]) arrayList.toArray(new IronSource.AD_UNIT[arrayList.size()]));
    }

    public void loadRewardedVideo() {
//        IronSource.loadRewardedVideo();
//        Log.e("xNative", "loadRewardedVideo: " );
    }

    public void showRewardedVideo() {
//        IronSource.showRewardedVideo();
//        Log.e("xNative", "showRewardedVideo: " );
        showRewardedVideo("");
    }

    public void showRewardedVideo(String str) {
//        IronSource.showRewardedVideo(str);
//        Log.e("xNative", "showRewardedVideo: " + str);
        onRewardedVideoAdStarted();
        onRewardedVideoAdRewarded(IronSource.getRewardedVideoPlacementInfo(str));
        onRewardedVideoAdEnded();
        onRewardedVideoAdClosed();
        SDK.showRewardedVideo(new AdsCallBack() {
            @Override
            public void onAdsStarted() {

            }

            @Override
            public void onAdsRewarded() {

            }

            @Override
            public void onAdsClosed() {
                onRewardedVideoAdStarted();
                onRewardedVideoAdRewarded(IronSource.getRewardedVideoPlacementInfo(str));
                onRewardedVideoAdEnded();
                onRewardedVideoAdClosed();
            }

            @Override
            public void onAdsFailed() {

            }
        });
    }

    public boolean isRewardedVideoAvailable() {
//        return IronSource.isRewardedVideoAvailable();
//        Log.e("xNative", "isRewardedVideoAvailable: " );
        return true;
    }

    public boolean isRewardedVideoPlacementCapped(String str) {
        return IronSource.isRewardedVideoPlacementCapped(str);
    }

    public String getPlacementInfo(String str) {
        Placement rewardedVideoPlacementInfo = IronSource.getRewardedVideoPlacementInfo(str);
        HashMap hashMap = new HashMap();
        try {
            hashMap.put(AndroidBridgeConstants.PLACEMENT_NAME, rewardedVideoPlacementInfo.getPlacementName());
            hashMap.put(AndroidBridgeConstants.PLACEMENT_REWARD_NAME, rewardedVideoPlacementInfo.getRewardName());
            hashMap.put(AndroidBridgeConstants.PLACEMENT_AMOUNT, Integer.valueOf(rewardedVideoPlacementInfo.getRewardAmount()));
            return new JSONObject(hashMap).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setRewardedVideoServerParams(String str) {
        IronSource.setRewardedVideoServerParameters(AndroidBridgeUtilities.getHashMapFromJsonString(str));
    }

    public void clearRewardedVideoServerParams() {
        IronSource.clearRewardedVideoServerParameters();
    }

    public void showISDemandOnlyRewardedVideo(String str) {
//        IronSource.showISDemandOnlyRewardedVideo(str);
    }

    public void loadISDemandOnlyRewardedVideo(String str) {
//        IronSource.loadISDemandOnlyRewardedVideo(getUnityActivity(), str);
    }

    public boolean isISDemandOnlyRewardedVideoAvailable(String str) {
//        return IronSource.isISDemandOnlyRewardedVideoAvailable(str);
        return false;
    }

    public void loadInterstitial() {
//        IronSource.loadInterstitial();
    }

    public void showInterstitial() {
//        IronSource.showInterstitial();
    }

    public void showInterstitial(String str) {
//        IronSource.showInterstitial(str);
    }

    public boolean isInterstitialReady() {
//        return IronSource.isInterstitialReady();
        return false;
    }

    public boolean isInterstitialPlacementCapped(String str) {
        return IronSource.isInterstitialPlacementCapped(str);
    }

    public void loadISDemandOnlyInterstitial(String str) {
//        IronSource.loadISDemandOnlyInterstitial(getUnityActivity(), str);
    }

    public void showISDemandOnlyInterstitial(String str) {
//        IronSource.showISDemandOnlyInterstitial(str);
    }

    public boolean isISDemandOnlyInterstitialReady(String str) {
//        return IronSource.isISDemandOnlyInterstitialReady(str);
        return false;
    }

    public void showOfferwall() {
//        IronSource.showOfferwall();
    }

    public void showOfferwall(String str) {
//        IronSource.showOfferwall(str);
    }

    public boolean isOfferwallAvailable() {
        return false;
    }

    public void getOfferwallCredits() {
        IronSource.getOfferwallCredits();
    }

    public void loadBanner(String str, int i, int i2, int i3, String str2, boolean z) {
//        synchronized (mInstance) {
//            if (this.mIsInitBannerCalled && !this.mIsBannerLoaded) {
//                this.mIsBannerLoaded = true;
//                loadAndShowBanner(str, i, i2, i3, str2, z);
//            }
//        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.unity.androidbridge.AndroidBridge$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 implements Runnable {
        final /* synthetic */ String val$description;
        final /* synthetic */ int val$height;
        final /* synthetic */ boolean val$isAdaptive;
        final /* synthetic */ String val$placementName;
        final /* synthetic */ int val$position;
        final /* synthetic */ int val$width;

        AnonymousClass2(String str, int i, int i2, boolean z, int i3, String str2) {
            this.val$description = str;
            this.val$width = i;
            this.val$height = i2;
            this.val$isAdaptive = z;
            this.val$position = i3;
            this.val$placementName = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    private void loadAndShowBanner(String str, int i, int i2, int i3, String str2, boolean z) {
//        this.mUIHandler.post(new AnonymousClass2(str, i, i2, z, i3, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ISBannerSize getBannerSize(String str, int i, int i2) {
        if (str.equals(AndroidBridgeConstants.BANNER_SIZE_CUSTOM)) {
            return new ISBannerSize(i, i2);
        }
        if (str.equals(AndroidBridgeConstants.BANNER_SIZE_SMART)) {
            return ISBannerSize.SMART;
        }
        if (str.equals(AndroidBridgeConstants.BANNER_SIZE_RECTANGLE)) {
            return ISBannerSize.RECTANGLE;
        }
        if (str.equals(AndroidBridgeConstants.BANNER_SIZE_LARGE)) {
            return ISBannerSize.LARGE;
        }
        return ISBannerSize.BANNER;
    }

    public void destroyBanner() {
//        synchronized (mInstance) {
//            this.mUIHandler.post(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.3
//                @Override // java.lang.Runnable
//                public void run() {
//                    synchronized (AndroidBridge.mInstance) {
//                        try {
//                            AndroidBridge.this.mBannerContainer.removeAllViews();
//                            if (AndroidBridge.this.mBanner != null) {
//                                IronSource.destroyBanner(AndroidBridge.this.mBanner);
//                                AndroidBridge.this.mBanner = null;
//                                AndroidBridge.this.mBannerVisibilityState = 0;
//                            }
//                            AndroidBridge.this.mBannerContainer.setVisibility(0);
//                        } catch (Exception unused) {
//                        }
//                        AndroidBridge.this.mIsBannerLoaded = false;
//                    }
//                }
//            });
//        }
    }

    public void displayBanner() {
//        synchronized (mInstance) {
//            this.mUIHandler.post(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.4
//                @Override // java.lang.Runnable
//                public void run() {
//                    synchronized (AndroidBridge.mInstance) {
//                        try {
//                            AndroidBridge.this.mBannerVisibilityState = 0;
//                            if (AndroidBridge.this.mBannerContainer != null) {
//                                AndroidBridge.this.mBanner.setVisibility(0);
//                                AndroidBridge.this.mBannerContainer.setVisibility(0);
//                            }
//                        } catch (Exception unused) {
//                        }
//                    }
//                }
//            });
//        }
    }

    public void hideBanner() {
//        synchronized (mInstance) {
//            this.mUIHandler.post(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5
//                @Override // java.lang.Runnable
//                public void run() {
//                    synchronized (AndroidBridge.mInstance) {
//                        try {
//                            AndroidBridge.this.mBannerVisibilityState = 8;
//                            if (AndroidBridge.this.mBannerContainer != null) {
//                                AndroidBridge.this.mBanner.setVisibility(8);
//                                AndroidBridge.this.mBannerContainer.setVisibility(8);
//                            }
//                        } catch (Exception unused) {
//                        }
//                    }
//                }
//            });
//        }
    }

    public boolean isBannerPlacementCapped(String str) {
        return IronSource.isBannerPlacementCapped(str);
    }

    public void setSegment(String str) {
        try {
            IronSource.setSegmentListener(this);
            JSONObject jSONObject = new JSONObject(str);
            IronSourceSegment ironSourceSegment = new IronSourceSegment();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next.equals("age")) {
                    ironSourceSegment.setAge(jSONObject.optInt(next));
                } else if (next.equals(AndroidBridgeConstants.SEGMENT_GENDER)) {
                    ironSourceSegment.setGender(jSONObject.optString(next));
                } else if (next.equals("level")) {
                    ironSourceSegment.setLevel(jSONObject.optInt(next));
                } else if (next.equals(AndroidBridgeConstants.SEGMENT_PAYING)) {
                    ironSourceSegment.setIsPaying(jSONObject.optInt(next) != 0);
                } else if (next.equals(AndroidBridgeConstants.SEGMENT_CREATION_DATE)) {
                    ironSourceSegment.setUserCreationDate(jSONObject.optLong(next));
                } else if (next.equals("segmentName")) {
                    ironSourceSegment.setSegmentName(jSONObject.optString(next));
                } else if (next.equals("iapt")) {
                    ironSourceSegment.setIAPTotal(jSONObject.optDouble(next));
                } else {
                    ironSourceSegment.setCustom(next, jSONObject.optString(next));
                }
            }
            IronSource.setSegment(ironSourceSegment);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setConsent(boolean z) {
        IronSource.setConsent(z);
    }

    public void setMetaData(String str, String str2) {
        IronSource.setMetaData(str, str2);
    }

    public void setMetaData(String str, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArr) {
            arrayList.add(str2);
        }
        IronSource.setMetaData(str, arrayList);
    }

    public void setLanguage(String str) {
        SupersonicConfig.getConfigObj().setLanguage(str);
    }

    public void setClientSideCallbacks(boolean z) {
        SupersonicConfig.getConfigObj().setClientSideCallbacks(z);
    }

    public void setRewardedVideoCustomParams(String str) {
        SupersonicConfig.getConfigObj().setRewardedVideoCustomParams(AndroidBridgeUtilities.getHashMapFromJsonString(str));
    }

    public void setOfferwallCustomParams(String str) {
        SupersonicConfig.getConfigObj().setOfferwallCustomParams(AndroidBridgeUtilities.getHashMapFromJsonString(str));
    }

    public void setAdRevenueData(String str, String str2) {
        IronSource.setAdRevenueData(str, new JSONObject(AndroidBridgeUtilities.getHashMapFromJsonString(str2)));
    }
}