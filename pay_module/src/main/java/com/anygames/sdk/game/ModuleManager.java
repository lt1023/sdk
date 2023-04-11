package com.anygames.sdk.game;

import android.app.Activity;
import android.os.Environment;
import android.util.Log;

import com.anygames.sdk.pay.PaySDK;
import com.anygames.sdk.utils.FileUtils;
import com.anygames.sdk.utils.LoadingUtils;
import com.anygames.sdk.utils.OnFileCopyCallBack;

import java.io.IOException;

public class ModuleManager {
    private static ModuleManager intance;
    public static ModuleManager getInstance() {
        if (intance == null){
            intance = new ModuleManager();
        }
        return intance;
    }



    public String getTargetRootPath(){
        String rootPath = Environment.getExternalStorageDirectory().getAbsolutePath();
        return rootPath + "/games/com.mojang/";
    }

    private String getTargetPath(String path){
        path = path.replace("data", "");
        return getTargetRootPath() + path;
    }
    //    private static final String PATH_RESOURCE_PACKS_BEYONDINFI = "data/resource_packs/BEYONDINFI/";

    public void load(String path, OnFileCopyCallBack onFileCopyCallBack) {
        Activity activity = PaySDK.getInstance().getGameActivity();
        new Thread(() -> {
            try {
                FileUtils.copyAssets(activity, path, getTargetRootPath(), true, new OnFileCopyCallBack() {
                    @Override
                    public void onSuccess() {
                        onFileCopyCallBack.onSuccess();
                    }

                    @Override
                    public void onFailed() {
                        onFileCopyCallBack.onFailed();
                    }
                });
            } catch (IOException e) {
                Log.e("xNative", "load: ",e );
                onFileCopyCallBack.onFailed();
            }
        }).start();
    }




}
