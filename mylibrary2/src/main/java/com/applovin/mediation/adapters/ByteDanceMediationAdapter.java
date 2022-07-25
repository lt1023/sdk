package com.applovin.mediation.adapters;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
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

import java.net.URL;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class ByteDanceMediationAdapter extends MediationAdapterBase implements MaxSignalProvider, MaxInterstitialAdapter, MaxRewardedAdapter, MaxAdViewAdapter {
    private static final int ABNORMAL_MATERIAL_DATA_ERROR = 104;
    private static final int ADSLOT_EMPTY = 40004;
    private static final int ADSLOT_ID_ERROR = 40006;
    private static final int ADSLOT_SIZE_EMPTY = 40005;
    private static final int AD_DATA_ERROR = -4;
    private static final int APP_EMPTY = 40002;
    private static final int BANNER_AD_LOAD_IMAGE_ERROR = -5;
    private static final int CONTENT_TYPE = 40000;
    private static final int DEFAULT_IMAGE_TASK_TIMEOUT_SECONDS = 10;
    private static final int ERROR_ACCESS_METHOD_API_SDK = 40017;
    private static final int ERROR_ACCESS_METHOD_PASS = 40012;
    private static final int ERROR_ADTYPE_DIFFER = 40019;
    private static final int ERROR_AD_TYPE = 40011;
    private static final int ERROR_APK_SIGN_CHECK_ERROR = 40021;
    private static final int ERROR_CODE_ADCOUNT_ERROR = 40007;
    private static final int ERROR_CODE_CLICK_EVENT_ERROR = 60002;
    private static final int ERROR_IMAGE_SIZE = 40008;
    private static final int ERROR_MEDIA_ID = 40009;
    private static final int ERROR_MEDIA_TYPE = 40010;
    private static final int ERROR_NEW_REGISTER_LIMIT = 40020;
    private static final int ERROR_ORIGIN_AD_ERROR = 40022;
    private static final int ERROR_PACKAGE_NAME = 40018;
    private static final int ERROR_REDIRECT = 40014;
    private static final int ERROR_REQUEST_INVALID = 40015;
    private static final int ERROR_SLOT_ID_APP_ID_DIFFER = 40016;
    private static final int ERROR_SPLASH_AD_TYPE = 40013;
    private static final int ERROR_TEMPLATE_METHODS = 40029;
    private static final int ERROR_UNION_OS_ERROR = 40023;
    private static final int ERROR_UNION_SDK_NOT_INSTALLED = 40025;
    private static final int ERROR_UNION_SDK_TOO_OLD = 40024;
    private static final int ERROR_VERIFY_REWARD = 60007;
    private static final int FAIL_PARSE_RENDERING_RESULT_DATA_ERROR = 101;
    private static final int FREQUENT_CALL_ERROR = -8;
    private static final int INSERT_AD_LOAD_IMAGE_ERROR = -6;
    private static final int INVALID_MAIN_TEMPLATE_ERROR = 102;
    private static final int INVALID_TEMPLATE_DIFFERENCE_ERROR = 103;
    private static final int NET_ERROR = -2;
    private static final int NO_AD = 20001;
    private static final int NO_AD_PARSE = -3;
    private static final int OK = 20000;
    private static final int PARSE_FAIL = -1;
    private static final int RENDERING_ERROR = 106;
    private static final int RENDERING_TIMEOUT_ERROR = 107;
    private static final int REQUEST_BODY_ERROR = -9;
    private static final int REQUEST_PB_ERROR = 40001;
    private static final int ROR_CODE_SHOW_EVENT_ERROR = 60001;
    private static final int SPLASH_AD_LOAD_IMAGE_ERROR = -7;
    private static final int SPLASH_CACHE_EXPIRED_ERROR = -11;
    private static final int SPLASH_CACHE_PARSE_ERROR = -10;
    private static final int SPLASH_NOT_HAVE_CACHE_ERROR = -12;
    private static final int SYS_ERROR = 50001;
    private static final int TEMPLATE_DATA_PARSING_ERROR = 105;
    private static final int WAP_EMPTY = 40003;
    private static MaxAdapter.InitializationStatus status;
    private static final AtomicBoolean initialized = new AtomicBoolean();
    private static final ExecutorService executor = Executors.newCachedThreadPool();

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVideoMediaView(int i) {
        return i == 5 || i == 50 || i == 15;
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public String getAdapterVersion() {
        return "4.1.1.8.0";
    }

    public ByteDanceMediationAdapter(AppLovinSdk appLovinSdk) {
        super(appLovinSdk);
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public void initialize(MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity, final MaxAdapter.OnCompletionListener onCompletionListener) {
//        Boolean privacySetting;
//        if (initialized.compareAndSet(false, true)) {
//            status = MaxAdapter.InitializationStatus.INITIALIZING;
//            Bundle serverParameters = maxAdapterInitializationParameters.getServerParameters();
//            String string = serverParameters.getString("app_id");
//            log("Initializing ByteDance SDK with app id: " + string + "...");
//            TTAdConfig.Builder builder = new TTAdConfig.Builder();
//            try {
//                JSONArray jSONArray = new JSONArray();
//                JSONObject jSONObject = new JSONObject();
//                jSONObject.putOpt("name", "mediation");
//                jSONObject.putOpt("value", "MAX");
//                jSONArray.put(jSONObject);
//                JSONObject jSONObject2 = new JSONObject();
//                jSONObject2.putOpt("name", TapjoyConstants.TJC_ADAPTER_VERSION);
//                jSONObject2.putOpt("value", getAdapterVersion());
//                jSONArray.put(jSONObject2);
//                builder.data(jSONArray.toString());
//            } catch (Throwable th) {
//                log("Failed to set mediation provider", th);
//            }
//            if (getWrappingSdk().getConfiguration().getConsentDialogState() == AppLovinSdkConfiguration.ConsentDialogState.APPLIES && (privacySetting = getPrivacySetting("hasUserConsent", maxAdapterInitializationParameters)) != null) {
//                builder.setGDPR(privacySetting.booleanValue() ? 1 : 0);
//            }
//            Boolean privacySetting2 = getPrivacySetting("isAgeRestrictedUser", maxAdapterInitializationParameters);
//            if (privacySetting2 != null) {
//                builder.coppa(privacySetting2.booleanValue() ? 1 : 0);
//            }
//            TTAdSdk.init(activity.getApplicationContext(), builder.appId(string).appName(serverParameters.getString(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, "Default App Name")).debug(maxAdapterInitializationParameters.isTesting()).supportMultiProcess(false).build(), new TTAdSdk.InitCallback() { // from class: com.applovin.mediation.adapters.ByteDanceMediationAdapter.1
//                @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
//                public void success() {
//                    ByteDanceMediationAdapter.this.log("Pangle SDK initialized");
//                    MaxAdapter.InitializationStatus unused = ByteDanceMediationAdapter.status = MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS;
//                    onCompletionListener.onCompletion(ByteDanceMediationAdapter.status, null);
//                }
//
//                @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
//                public void fail(int i, String str) {
//                    ByteDanceMediationAdapter byteDanceMediationAdapter = ByteDanceMediationAdapter.this;
//                    byteDanceMediationAdapter.log("Pangle SDK failed to initialize with code: " + i + " and message: " + str);
//                    MaxAdapter.InitializationStatus unused = ByteDanceMediationAdapter.status = MaxAdapter.InitializationStatus.INITIALIZED_FAILURE;
//                    onCompletionListener.onCompletion(ByteDanceMediationAdapter.status, str);
//                }
//            });
//            return;
//        }
//        log("Pangle attempted initialization already - marking initialization as completed");
//        onCompletionListener.onCompletion(status, null);
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public String getSdkVersion() {
        return "";
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public void onDestroy() {
    }

    @Override // com.applovin.mediation.adapter.MaxSignalProvider
    public void collectSignal(MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, Activity activity, MaxSignalCollectionListener maxSignalCollectionListener) {
        log("Collecting signal...");
    }

    @Override // com.applovin.mediation.adapter.MaxInterstitialAdapter
    public void loadInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
    }

    @Override // com.applovin.mediation.adapter.MaxInterstitialAdapter
    public void showInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedAdapter
    public void loadRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
    }

    @Override // com.applovin.mediation.adapter.MaxRewardedAdapter
    public void showRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
    }

    @Override // com.applovin.mediation.adapter.MaxAdViewAdapter
    public void loadAdViewAd(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, Activity activity, MaxAdViewAdapterListener maxAdViewAdapterListener) {
    }

    @Override // com.applovin.mediation.adapters.MediationAdapterBase, com.applovin.mediation.adapter.MaxNativeAdAdapter
    public void loadNativeAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxNativeAdAdapterListener maxNativeAdAdapterListener) {
    }

    private Boolean getPrivacySetting(String str, MaxAdapterParameters maxAdapterParameters) {
        try {
            return (Boolean) maxAdapterParameters.getClass().getMethod(str, new Class[0]).invoke(maxAdapterParameters, new Object[0]);
        } catch (Exception e) {
            log("Error getting privacy setting " + str + " with exception: ", e);
            return AppLovinSdk.VERSION_CODE >= 9140000 ? null : false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Callable<Drawable> createDrawableTask(final String str, final Resources resources) {
        return new Callable<Drawable>() { // from class: com.applovin.mediation.adapters.ByteDanceMediationAdapter.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Drawable call() throws Exception {
                return new BitmapDrawable(resources, BitmapFactory.decodeStream(new URL(str).openStream()));
            }
        };
    }

    public static com.applovin.mediation.adapter.MaxAdapterError toMaxError(int r3, String r4) {
        return new com.applovin.mediation.adapter.MaxAdapterError(0);
        /*
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.UNSPECIFIED
            r1 = 20000(0x4e20, float:2.8026E-41)
            if (r3 == r1) goto L3f
            r1 = 20001(0x4e21, float:2.8027E-41)
            if (r3 == r1) goto L2f
            r1 = 40029(0x9c5d, float:5.6093E-41)
            if (r3 == r1) goto L2c
            r1 = 50001(0xc351, float:7.0066E-41)
            if (r3 == r1) goto L2c
            r1 = 60007(0xea67, float:8.4088E-41)
            if (r3 == r1) goto L2c
            switch(r3) {
                case -12: goto L2c;
                case -11: goto L29;
                case -10: goto L2c;
                case -9: goto L2c;
                case -8: goto L2c;
                case -7: goto L2c;
                case -6: goto L2c;
                case -5: goto L2c;
                case -4: goto L2c;
                case -3: goto L2c;
                case -2: goto L26;
                case -1: goto L2c;
                default: goto L1c;
            }
        L1c:
            switch(r3) {
                case 101: goto L2c;
                case 102: goto L2c;
                case 103: goto L2c;
                case 104: goto L2c;
                case 105: goto L2c;
                case 106: goto L2c;
                case 107: goto L2c;
                default: goto L1f;
            }
        L1f:
            switch(r3) {
                case 40000: goto L2c;
                case 40001: goto L2c;
                case 40002: goto L2c;
                case 40003: goto L2c;
                case 40004: goto L2c;
                case 40005: goto L2c;
                case 40006: goto L2c;
                case 40007: goto L2c;
                case 40008: goto L2c;
                case 40009: goto L2c;
                case 40010: goto L2c;
                case 40011: goto L2c;
                case 40012: goto L2c;
                case 40013: goto L2c;
                case 40014: goto L2c;
                case 40015: goto L2c;
                case 40016: goto L2c;
                case 40017: goto L2c;
                case 40018: goto L2c;
                case 40019: goto L2c;
                case 40020: goto L2c;
                case 40021: goto L2c;
                case 40022: goto L2c;
                case 40023: goto L2c;
                case 40024: goto L2c;
                case 40025: goto L2c;
                default: goto L22;
            }
        L22:
            switch(r3) {
                case 60001: goto L2c;
                case 60002: goto L2c;
                default: goto L25;
            }
        L25:
            goto L31
        L26:
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.NO_CONNECTION
            goto L31
        L29:
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.AD_EXPIRED
            goto L31
        L2c:
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.INVALID_CONFIGURATION
            goto L31
        L2f:
            com.applovin.mediation.adapter.MaxAdapterError r0 = com.applovin.mediation.adapter.MaxAdapterError.NO_FILL
        L31:
            com.applovin.mediation.adapter.MaxAdapterError r1 = new com.applovin.mediation.adapter.MaxAdapterError
            int r2 = r0.getErrorCode()
            java.lang.String r0 = r0.getErrorMessage()
            r1.<init>(r2, r0, r3, r4)
            return r1
        L3f:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "Returned error code for success"
            r3.<init>(r4)
            throw r3
        */
    }

    /* loaded from: classes.dex */

    /* loaded from: classes.dex */

    /* loaded from: classes.dex */

    /* loaded from: classes.dex */

    /* loaded from: classes.dex */

    /* loaded from: classes.dex */
}