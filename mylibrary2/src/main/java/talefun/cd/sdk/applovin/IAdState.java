package talefun.cd.sdk.applovin;


import com.applovin.mediation.MaxAd;

/* loaded from: classes2.dex */
public interface IAdState {

    /* loaded from: classes2.dex */
    public enum AdLoadState {
        AD_LOAD_SUCCESS,
        AD_LOAD_FAILED
    }

    /* loaded from: classes2.dex */
    public enum AdPlayState {
        AD_PLAY_SUCCESS,
        AD_PLAY_FAILED,
        AD_PLAY_CANCEL,
        AD_PLAY_REWARD_GOT,
        AD_PLAY_TRIGGER
    }

    /* loaded from: classes2.dex */
    public enum AdType {
        AD_INTERSTITIAL,
        AD_REWARD_VIDEO,
        AD_BANNER
    }

    void a(AdPlayState adPlayState, AdType adType);

    void b(MaxAd maxAd, AdLoadState adLoadState, AdType adType);
}