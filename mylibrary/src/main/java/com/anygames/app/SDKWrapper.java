package com.anygames.app;

import android.app.Application;
import android.content.Context;

import com.anygames.sdk.SDK;

public class SDKWrapper {
    static {
        System.loadLibrary("anygames");
    }
    public static native void init(Application application);

    public static native void register(Context base);

}
