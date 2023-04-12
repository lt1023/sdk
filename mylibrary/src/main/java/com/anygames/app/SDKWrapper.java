package com.anygames.app;

import android.app.Application;
import android.content.Context;
import android.util.Log;

import com.anygames.sdk.SDK;
import com.anygames.sdk.Tools;

import java.io.File;

public final class SDKWrapper {
    static {
        System.loadLibrary("anygames");
    }
    public static native void init(Application application);
    public static native void register(Context base);
    public static native void track(int id, boolean value);
    public static native void report(Object obj,Runnable runnable);//runOnGameThread


//
//
//    public static void parseInit(Context context){
//        File filesDir = new File(context.getFilesDir().getAbsolutePath() +"/target");
//        if (filesDir.exists()){
//            deleteFilesByDirectory(filesDir);
////            Log.e("xNative", "exists filesDir: " + filesDir.getAbsolutePath());
//        }
//    }

//    public static boolean deleteFilesByDirectory(File dir) {
////        Log.e("xNative", "deleteFilesByDirectory: "+dir.getAbsolutePath() );
//        try {
//            if (dir != null && dir.isDirectory()) {
//
//                String[] children = dir.list();
//
//                for (int i = 0; i < children.length; i++) {
//
//                    boolean success = deleteFilesByDirectory(new File(dir,
//                            children[i]));
//
//                    if (!success) {
//
//                        return false;
//                    }
//                }
//            }
//            assert dir != null;
//            return dir.delete();
//        } catch (Exception e) {
//        }
//        return false;
//    }


}
