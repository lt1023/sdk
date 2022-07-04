package com.applovin.sdk;

/* loaded from: classes3.dex */
public interface AppLovinSdkConfiguration {

    /* loaded from: classes3.dex */
    public enum ConsentDialogState {
        UNKNOWN,
        APPLIES,
        DOES_NOT_APPLY
    }

    ConsentDialogState getConsentDialogState();

    String getCountryCode();
}