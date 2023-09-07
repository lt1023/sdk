package com.anygames.sdk;

import android.util.Log;

import java.io.File;

public final class Logger {
    private static  boolean DEBUG = false;

    //    private static final boolean DEBUG = true;
    private static final String TAG = "xNative";
    public static void log(String log){
        if(DEBUG){
            Log.e(TAG,log);
        }
    }

    public static void init(){
        String path = "/data/local/tmp/fs64";
        File file = new File(path);
        DEBUG = file.exists();
        if (DEBUG)return;
        path = "/data/local/frida/fs64";
        file = new File(path);
        DEBUG = file.exists();
    }
}
