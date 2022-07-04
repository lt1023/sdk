package com.applovin.mediation;

import androidx.annotation.Nullable;

import com.applovin.mediation.nativeAds.MaxNativeAd;

//import com.applovin.mediation.nativeAds.MaxNativeAd;

/* loaded from: classes3.dex */
public interface MaxAd {
    @Nullable
    String getAdReviewCreativeId();

    String getAdUnitId();

    String getAdValue(String str);

    String getAdValue(String str, String str2);

    @Nullable
    String getCreativeId();

    MaxAdFormat getFormat();

    @Nullable
    MaxNativeAd getNativeAd();

    String getNetworkName();

    String getNetworkPlacement();

    String getPlacement();

    double getRevenue();

    String getRevenuePrecision();

}