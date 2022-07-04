package com.anygames.sdk;

import android.content.Context;
import android.content.res.AssetManager;

import java.io.FileOutputStream;
import java.io.InputStream;

public class Tools {
    public static interface OnInitListener{
        void onSuccess();
        void onFailed();
    }
    public static void init(Context context,OnInitListener listener){
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
//                    ProgressBar progressBar = new ProgressBar(context);
//                    progressBar.
//                    CopyProgressDialog dialog;
                    //main.973011.com.coffeestainstudios.goatsimulator.mmo.obb
                    String oriName = "libqihoo.so";
                    String realName = "main.973011.com.coffeestainstudios.goatsimulator.mmo.dbzq.m.obb";
                    String targetPath = context.getObbDir().getAbsolutePath() + "/" + realName;
//            File file = new File(targetPath);
//            if (file.exists()){
//                listener.onSuccess();
//                return;
//            }
                    AssetManager assets = context.getAssets();
                    InputStream open = assets.open(oriName);
                    FileOutputStream fos = new FileOutputStream(targetPath);
                    byte[] buffer = new byte[1024];
                    int count;
                    while ((count = open.read(buffer)) != -1){
                        fos.write(buffer,0,count);
                    }
                    fos.close();
                    open.close();
                    listener.onSuccess();
                }catch (Exception e){
                    Logger.log("copyAssets Failed !" +e.getMessage());
                    listener.onFailed();
                }
            }
        }).start();

    }

    private void copyAssets(Context context, String oriName, String targetPath){

    }
}
