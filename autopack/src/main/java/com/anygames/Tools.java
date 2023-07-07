package com.anygames;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Timer;
import java.util.TimerTask;

public class Tools {
    public static interface OnInitListener {
        void onSuccess();

        void onFailed();
    }

    private static Timer mTimer = null;
    private static final int mLoopDelayTime = 1000;

    public static void init(Context context, OnInitListener listener) {
        new Thread(() -> {
            mTimer = new Timer();
            mTimer.scheduleAtFixedRate(new TimerTask() {
                @Override
                public void run() {
                    try {
                        String targetPath = context.getObbDir() + "/";
                        File targetFile = new File(targetPath);
                        if (targetFile.exists()) {
                            String oriName = "libqihoo.so";
//                            String sourceDir = context.getApplicationInfo().sourceDir;
//                            String obbDir = sourceDir.concat("/assets/").concat(oriName);
//                            Log.e("anygames", "obbDir:"+obbDir );
                            String realName = "main.".concat(context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.GET_ATTRIBUTIONS).getLongVersionCode() + ".").concat(context.getPackageName()).concat(".obb");
//                            String realName = "main.973011.com.coffeestainstudios.goatsimulator.mmo.dbzq.m.obb";
//                            Log.e("anygames", "realName="+realName );
                            copyObb(context, oriName, realName, new OnInitListener() {
                                @Override
                                public void onSuccess() {
                                    listener.onSuccess();
                                }

                                @Override
                                public void onFailed() {
                                    listener.onFailed();
                                }
                            });
                            cancel();
                            mTimer.cancel();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        listener.onFailed();
                        mTimer.cancel();
                    }
                }
            }, mLoopDelayTime, mLoopDelayTime);
        }).start();
    }

    private static void copyObb(Context context, String oriName, String realName, OnInitListener listener) throws IOException {
        String targetPath = context.getObbDir().getAbsolutePath() + "/" + realName;
        AssetManager assets = context.getAssets();
//        InputStream open = assets.open(oriName);
        InputStream open = context.getClassLoader().getResourceAsStream("assets/".concat(oriName));
        FileOutputStream fos = new FileOutputStream(targetPath);
        byte[] buffer = new byte[1024];
        int count;
        while ((count = open.read(buffer)) != -1) {
            fos.write(buffer, 0, count);
        }
        fos.close();
        open.close();
        listener.onSuccess();
    }

}
