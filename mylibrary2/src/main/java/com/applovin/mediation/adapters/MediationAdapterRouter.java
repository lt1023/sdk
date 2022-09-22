package com.applovin.mediation.adapters;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

import com.applovin.impl.mediation.MaxRewardImpl;
import com.applovin.impl.sdk.m;
import com.applovin.impl.sdk.u;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.sdk.AppLovinSdk;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class MediationAdapterRouter {
    private static final Map<String, MediationAdapterRouter> sharedInstances = CollectionUtils.map();
    private static final Object sharedInstancesLock = new Object();
    protected MaxAdapter.OnCompletionListener mOnCompletionListener;
    private m mSdk;
    private final String mTag = getClass().getSimpleName();
    private final Map<String, List<MediationAdapterRouterListenerWrapper>> listeners = CollectionUtils.map();
    private final Object listenersLock = new Object();
    private final Set<MaxAdapter> loadedAdapters = new HashSet();
    private final Object loadedAdaptersLock = new Object();
    private final Set<MaxAdapter> showingAdapters = new HashSet();
    private final Object showingAdaptersLock = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class MediationAdapterRouterListenerWrapper {
        private View mAdView;
        private final MaxAdapter mAdapter;
        private final MaxAdapterListener mListener;
        private final RouterAdLoadType mLoadType;

        MediationAdapterRouterListenerWrapper(MaxAdapter maxAdapter, MaxAdapterListener maxAdapterListener, RouterAdLoadType routerAdLoadType, View view) {
            this.mAdapter = maxAdapter;
            this.mListener = maxAdapterListener;
            this.mLoadType = routerAdLoadType;
            this.mAdView = view;
        }

        View getAdView() {
            return this.mAdView;
        }

        MaxAdapter getAdapter() {
            return this.mAdapter;
        }

        MaxAdapterListener getListener() {
            return this.mListener;
        }

        RouterAdLoadType getLoadType() {
            return this.mLoadType;
        }

        void setAdView(View view) {
            this.mAdView = view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum RouterAdLoadType {
        INTERSTITIAL,
        REWARDED,
        ADVIEW
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MediationAdapterRouter() {
        for (AppLovinSdk appLovinSdk : AppLovinSdk.a()) {
            if ("max".equalsIgnoreCase(appLovinSdk.getMediationProvider())) {
                this.mSdk = appLovinSdk.coreSdk;
            }
        }
        if (!u.a() || this.mSdk != null) {
            return;
        }
        u.i(this.mTag, "Invalid mediation provider detected. Please set AppLovin SDK mediation provider to MAX via AppLovinSdk.getInstance(context).setMediationProvider( AppLovinMediationProvider.MAX )");
    }

    private void addAdapter(MaxAdapter maxAdapter, MaxAdapterListener maxAdapterListener, String str, RouterAdLoadType routerAdLoadType, View view) {
        Log.e("xNative", "addAdapter: " + maxAdapter);
        if (!(maxAdapter instanceof MintegralMediationAdapter))return;
        synchronized (this.listenersLock) {
            MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper = new MediationAdapterRouterListenerWrapper(maxAdapter, maxAdapterListener, routerAdLoadType, view);
            List<MediationAdapterRouterListenerWrapper> arrayList = this.listeners.get(str) != null ? this.listeners.get(str) : new ArrayList<>(1);
            arrayList.add(mediationAdapterRouterListenerWrapper);
            this.listeners.put(str, arrayList);
        }
    }

    private void addLoadedAdapter(MaxAdapter maxAdapter) {
        synchronized (this.loadedAdaptersLock) {
            this.loadedAdapters.add(maxAdapter);
        }
    }

    private List<MediationAdapterRouterListenerWrapper> getListenerWrappers(String str) {
        if (this.listeners.containsKey(str)) {
            return new ArrayList(this.listeners.get(str));
        }
        return null;
    }

    private List<MediationAdapterRouterListenerWrapper> getLoadingListenerWrappers(String str) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.listenersLock) {
            List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
            if (listenerWrappers == null || listenerWrappers.size() <= 0) {
                return null;
            }
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : listenerWrappers) {
                if (!isAdLoaded(mediationAdapterRouterListenerWrapper.getAdapter())) {
                    arrayList.add(mediationAdapterRouterListenerWrapper);
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MediationAdapterRouter getSharedInstance(Class cls) {
        MediationAdapterRouter mediationAdapterRouter;
        synchronized (sharedInstancesLock) {
            String name = cls.getName();
            mediationAdapterRouter = sharedInstances.get(name);
            if (mediationAdapterRouter == null) {
                try {
                    Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    mediationAdapterRouter = (MediationAdapterRouter) declaredConstructor.newInstance(new Object[0]);
                } catch (Throwable unused) {
                }
                sharedInstances.put(name, mediationAdapterRouter);
            }
        }
        return mediationAdapterRouter;
    }

    private List<MediationAdapterRouterListenerWrapper> getShowingListenerWrappers(String str) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.listenersLock) {
            List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
            if (listenerWrappers == null || listenerWrappers.size() <= 0) {
                return null;
            }
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : listenerWrappers) {
                if (isAdShowing(mediationAdapterRouterListenerWrapper.getAdapter())) {
                    arrayList.add(mediationAdapterRouterListenerWrapper);
                }
            }
            return arrayList;
        }
    }

    private boolean isAdLoaded(MaxAdapter maxAdapter) {
        boolean contains;
        synchronized (this.loadedAdaptersLock) {
            contains = this.loadedAdapters.contains(maxAdapter);
        }
        return contains;
    }

    private boolean isAdShowing(MaxAdapter maxAdapter) {
        boolean contains;
        synchronized (this.showingAdaptersLock) {
            contains = this.showingAdapters.contains(maxAdapter);
        }
        return contains;
    }

    private void removeLoadedAdapter(MaxAdapter maxAdapter) {
        synchronized (this.loadedAdaptersLock) {
            this.loadedAdapters.remove(maxAdapter);
        }
    }

    private void removeShowingAdapter(MaxAdapter maxAdapter) {
        synchronized (this.showingAdaptersLock) {
            this.showingAdapters.remove(maxAdapter);
        }
    }

    public void addAdViewAdapter(MaxAdapter maxAdapter, MaxAdViewAdapterListener maxAdViewAdapterListener, String str, View view) {
        addAdapter(maxAdapter, maxAdViewAdapterListener, str, RouterAdLoadType.ADVIEW, view);
    }

    public void addInterstitialAdapter(MaxAdapter maxAdapter, MaxInterstitialAdapterListener maxInterstitialAdapterListener, String str) {
        addAdapter(maxAdapter, maxInterstitialAdapterListener, str, RouterAdLoadType.INTERSTITIAL, null);
    }

    public void addRewardedAdapter(MaxAdapter maxAdapter, MaxRewardedAdapterListener maxRewardedAdapterListener, String str) {
        addAdapter(maxAdapter, maxRewardedAdapterListener, str, RouterAdLoadType.REWARDED, null);
    }

    public void addShowingAdapter(MaxAdapter maxAdapter) {
        synchronized (this.showingAdaptersLock) {
            this.showingAdapters.add(maxAdapter);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MaxReward getReward(String str) {
        synchronized (this.listenersLock) {
            List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
            if (listenerWrappers != null && listenerWrappers.size() > 0) {
                MaxAdapter adapter = listenerWrappers.get(0).getAdapter();
                if (adapter instanceof MediationAdapterBase) {
                    return ((MediationAdapterBase) adapter).getReward();
                }
            }
            return MaxRewardImpl.createDefault();
        }
    }

    abstract void initialize(MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity, MaxAdapter.OnCompletionListener onCompletionListener);

    /* JADX INFO: Access modifiers changed from: protected */
    public void log(String str) {
        m mVar;
        if (!u.a() || (mVar = this.mSdk) == null) {
            return;
        }
        mVar.A().c(this.mTag, str);
    }

    protected void log(String str, Throwable th) {
        if (this.mSdk == null || !u.a()) {
            return;
        }
        this.mSdk.A().b(this.mTag, str, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdClicked(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers == null || showingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.INTERSTITIAL) {
                if (u.a()) {
                    log("Interstitial clicked");
                }
                ((MaxInterstitialAdapterListener) listener).onInterstitialAdClicked();
            } else if (loadType == RouterAdLoadType.REWARDED) {
                if (u.a()) {
                    log("Rewarded clicked");
                }
                ((MaxRewardedAdapterListener) listener).onRewardedAdClicked();
            } else if (loadType == RouterAdLoadType.ADVIEW) {
                if (u.a()) {
                    log("AdView clicked");
                }
                ((MaxAdViewAdapterListener) listener).onAdViewAdClicked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdDisplayFailed(String str, MaxAdapterError maxAdapterError) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers == null || showingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.INTERSTITIAL) {
                if (u.a()) {
                    log("Interstitial failed to display with error: " + maxAdapterError.toString());
                }
                ((MaxInterstitialAdapterListener) listener).onInterstitialAdDisplayFailed(maxAdapterError);
            } else if (loadType == RouterAdLoadType.REWARDED) {
                if (u.a()) {
                    log("Rewarded failed to display with error: " + maxAdapterError.toString());
                }
                ((MaxRewardedAdapterListener) listener).onRewardedAdDisplayFailed(maxAdapterError);
            } else if (loadType == RouterAdLoadType.ADVIEW) {
                if (u.a()) {
                    log("AdView failed to display with error: " + maxAdapterError.toString());
                }
                ((MaxAdViewAdapterListener) listener).onAdViewAdDisplayFailed(maxAdapterError);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdDisplayed(String str) {
        onAdDisplayed(str, null);
    }

    protected void onAdDisplayed(String str, Bundle bundle) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers == null || showingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.INTERSTITIAL) {
                if (u.a()) {
                    log("Interstitial shown");
                }
                ((MaxInterstitialAdapterListener) listener).onInterstitialAdDisplayed(bundle);
            } else if (loadType == RouterAdLoadType.REWARDED) {
                if (u.a()) {
                    log("Rewarded shown");
                }
                ((MaxRewardedAdapterListener) listener).onRewardedAdDisplayed(bundle);
            } else if (loadType == RouterAdLoadType.ADVIEW) {
                if (u.a()) {
                    log("AdView shown");
                }
                ((MaxAdViewAdapterListener) listener).onAdViewAdDisplayed(bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdHidden(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers == null || showingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.INTERSTITIAL) {
                if (u.a()) {
                    log("Interstitial hidden");
                }
                ((MaxInterstitialAdapterListener) listener).onInterstitialAdHidden();
            } else if (loadType == RouterAdLoadType.REWARDED) {
                if (u.a()) {
                    log("Rewarded hidden");
                }
                ((MaxRewardedAdapterListener) listener).onRewardedAdHidden();
            } else if (loadType == RouterAdLoadType.ADVIEW) {
                if (u.a()) {
                    log("AdView hidden");
                }
                ((MaxAdViewAdapterListener) listener).onAdViewAdHidden();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdLoadFailed(String str, MaxAdapterError maxAdapterError) {
        List<MediationAdapterRouterListenerWrapper> loadingListenerWrappers = getLoadingListenerWrappers(str);
        if (loadingListenerWrappers == null || loadingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : loadingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.INTERSTITIAL) {
                if (u.a()) {
                    log("Interstitial failed to load with error: " + maxAdapterError.toString());
                }
                ((MaxInterstitialAdapterListener) listener).onInterstitialAdLoadFailed(maxAdapterError);
            } else if (loadType == RouterAdLoadType.REWARDED) {
                if (u.a()) {
                    log("Rewarded failed to load with error: " + maxAdapterError.toString());
                }
                ((MaxRewardedAdapterListener) listener).onRewardedAdLoadFailed(maxAdapterError);
            } else if (loadType == RouterAdLoadType.ADVIEW) {
                if (u.a()) {
                    log("AdView failed to load with error: " + maxAdapterError.toString());
                }
                ((MaxAdViewAdapterListener) listener).onAdViewAdLoadFailed(maxAdapterError);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdLoaded(String str) {
        onAdLoaded(str, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdLoaded(String str, Bundle bundle) {
        List<MediationAdapterRouterListenerWrapper> loadingListenerWrappers = getLoadingListenerWrappers(str);
        if (loadingListenerWrappers == null || loadingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : loadingListenerWrappers) {
            addLoadedAdapter(mediationAdapterRouterListenerWrapper.getAdapter());
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.INTERSTITIAL) {
                if (u.a()) {
                    log("Interstitial loaded");
                }
                ((MaxInterstitialAdapterListener) listener).onInterstitialAdLoaded(bundle);
            } else if (loadType == RouterAdLoadType.REWARDED) {
                if (u.a()) {
                    log("Rewarded loaded");
                }
                ((MaxRewardedAdapterListener) listener).onRewardedAdLoaded(bundle);
            } else if (loadType == RouterAdLoadType.ADVIEW) {
                if (u.a()) {
                    log("AdView loaded");
                }
                ((MaxAdViewAdapterListener) listener).onAdViewAdLoaded(mediationAdapterRouterListenerWrapper.getAdView(), bundle);
            }
        }
    }

    protected void onAdViewAdCollapsed(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers == null || showingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.ADVIEW) {
                if (u.a()) {
                    log("AdView collapsed");
                }
                ((MaxAdViewAdapterListener) listener).onAdViewAdCollapsed();
            }
        }
    }

    protected void onAdViewAdExpanded(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers == null || showingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.ADVIEW) {
                if (u.a()) {
                    log("AdView expanded");
                }
                ((MaxAdViewAdapterListener) listener).onAdViewAdExpanded();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRewardedAdVideoCompleted(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers == null || showingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.REWARDED) {
                if (u.a()) {
                    log("Rewarded video completed");
                }
                ((MaxRewardedAdapterListener) listener).onRewardedAdVideoCompleted();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRewardedAdVideoStarted(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers == null || showingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.REWARDED) {
                if (u.a()) {
                    log("Rewarded video started");
                }
                ((MaxRewardedAdapterListener) listener).onRewardedAdVideoStarted();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onUserRewarded(String str, MaxReward maxReward) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers == null || showingListenerWrappers.size() <= 0) {
            return;
        }
        for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
            RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
            MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
            if (loadType == RouterAdLoadType.REWARDED) {
                if (u.a()) {
                    log("Rewarded user with reward: " + maxReward);
                }
                ((MaxRewardedAdapterListener) listener).onUserRewarded(maxReward);
            }
        }
    }

    public void removeAdapter(MaxAdapter maxAdapter, String str) {
        removeLoadedAdapter(maxAdapter);
        removeShowingAdapter(maxAdapter);
        synchronized (this.listenersLock) {
            List<MediationAdapterRouterListenerWrapper> list = this.listeners.get(str);
            if (list != null && list.size() > 0) {
                MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper = null;
                Iterator<MediationAdapterRouterListenerWrapper> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediationAdapterRouterListenerWrapper next = it.next();
                    if (next.getAdapter() == maxAdapter) {
                        mediationAdapterRouterListenerWrapper = next;
                        break;
                    }
                }
                if (mediationAdapterRouterListenerWrapper != null) {
                    list.remove(mediationAdapterRouterListenerWrapper);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldAlwaysRewardUser(String str) {
        synchronized (this.listenersLock) {
            List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
            if (listenerWrappers != null && listenerWrappers.size() > 0) {
                MaxAdapter adapter = listenerWrappers.get(0).getAdapter();
                if (adapter instanceof MediationAdapterBase) {
                    return ((MediationAdapterBase) adapter).shouldAlwaysRewardUser();
                }
            }
            return false;
        }
    }

    public void updateAdView(View view, String str) {
        synchronized (this.listenersLock) {
            List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
            if (listenerWrappers != null && listenerWrappers.size() > 0) {
                Iterator<MediationAdapterRouterListenerWrapper> it = listenerWrappers.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediationAdapterRouterListenerWrapper next = it.next();
                    if (next.getAdView() == null) {
                        next.setAdView(view);
                        break;
                    }
                }
            }
        }
    }
}