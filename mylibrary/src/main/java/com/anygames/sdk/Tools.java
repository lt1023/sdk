package com.anygames.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import com.anygames.app.GameActivity;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Timer;
import java.util.TimerTask;

public final class Tools {
    private static final int mLoopDelayTime = 1000;
    public static interface OnInitListener {
        void onSuccess();

        void onFailed();
    }

    private static Timer mTimer = null;
    public static void init(Context context, OnInitListener listener) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                mTimer = new Timer();
                mTimer.scheduleAtFixedRate(new TimerTask() {
                    @Override
                    public void run() {
                        try {
                            String targetPath = context.getExternalFilesDir("") + "/";
                            File targetFile = new File(targetPath);
//                            Log.e("xNaive", "targetPath: "+targetPath + "   targetFile.exists()=" + targetFile.exists());
//                            String targetWorldsPath = context.getFilesDir()+"/";
//                            File targetWorldsFile = new File(targetWorldsPath);
                            if (targetFile.exists()){
                                copyAssets(context, "files", targetPath, false,new OnInitListener() {
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
                            Logger.log("copyAssets Failed !" + e.getMessage());
                            listener.onFailed();
//                            Log.e("xNative", "run: ",e);
                        }
                    }
                },mLoopDelayTime, mLoopDelayTime);
            }
        }).start();
    }


    public static int getScreenWidth(Activity context){
        return context.getWindowManager().getDefaultDisplay().getWidth();
    }
    public static int getScreenHeight(Activity context){
        return context.getWindowManager().getDefaultDisplay().getHeight();
    }

    private static void copyObb(Context context,OnInitListener listener) throws IOException {
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
//        InputStream open = assets.open(oriName);
        InputStream open = context.getClassLoader().getResourceAsStream("assets/".concat(oriName));

        FileOutputStream fos = new FileOutputStream(targetPath);
        byte[] buffer = new byte[1024];
        int count;
        while ((count = open.read(buffer)) != -1){
            fos.write(buffer,0,count);
        }
        fos.close();
        open.close();
        listener.onSuccess();
    }

    private static void copyAssets(Context context, String path,  String targetPath, boolean isCopyPath ,OnInitListener listener) throws IOException {
        File targetFile = new File(targetPath);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        if (isCopyPath){
            copyAssetswithPath(context, path,targetPath);
        }else {
            copyAssetswithoutPath(context, path,targetPath);
        }
        listener.onSuccess();
    }


//    private static String targetPath;

    private static void copyAssetswithPath(Context mContext, String path, String targetPath) throws IOException {

        AssetManager assetManager = mContext.getAssets();

        String assets[] = null;


        assets = assetManager.list(path);

//复制单个文件
//        Log.e("xNaive", "assets.length: "+assets.length + " path = " +path );

        if (assets.length == 0) {
            copyFile(mContext, path, targetPath,true);
        }

//复制文件夹中的文件到另一个目录中

        else {
            String newFileName = targetPath + "/" + path;
//            Log.e("xNative", "newFileName: "+newFileName );
            File fileDir = new File(newFileName);
            if (!fileDir.exists()){
                fileDir.mkdirs();
            }
            for (int i = 0; i < assets.length; ++i) {
                String fileDirs = path + "/" + assets[i];
//                Log.e("Path", fileDirs);
                copyAssetswithPath(mContext, path + "/" + assets[i],targetPath);
            }

        }

    }
    private static void copyAssetswithoutPath(Context mContext, String path, String targetPath) throws IOException {

        AssetManager assetManager = mContext.getAssets();

        String assets[] = null;


        assets = assetManager.list(path);

//复制单个文件
//        Log.e("xNaive", "assets.length: "+assets.length + " path = " +path );

        if (assets.length == 0) {

            copyFile(mContext, path, targetPath,false);

        }

//复制文件夹中的文件到另一个目录中

        else {

            for (int i = 0; i < assets.length; ++i) {

                String fileDirs = path + "/" + assets[i];
//                Log.e("Path", fileDirs);
                copyAssetswithoutPath(mContext, fileDirs,targetPath);

            }

        }

    }

    private static void copyFile(Context mContext, String filename, String targetPath,boolean isCopyPath ) throws IOException {

        AssetManager assetManager = mContext.getAssets();

        InputStream in = null;

        OutputStream out = null;

        in = assetManager.open(filename);


        if (!isCopyPath){
            String[] strings = filename.split("/");
            filename = strings[strings.length - 1];
        }
//        filename = filename.replaceAll("Survivalcraft", "");
//        Log.e("xNaive = ", filename);

        String newFileName = targetPath + "/" + filename;

        File newFile = new File(newFileName);
//        Log.e("xNaive", "newFile.exists() = "+newFile.exists());

        if (newFile.exists()){
            newFile.delete();
        }
//        Log.e("xNaive", newFileName);



        out = new FileOutputStream(newFileName);

        byte[] buffer = new byte[1024];

        int read;

        while ((read = in.read(buffer)) != -1) {

            out.write(buffer, 0, read);

        }

        in.close();

        in = null;

        out.flush();

        out.close();

        out = null;

    }

    public static String request(String gameKey) {
        StringBuffer buffer = new StringBuffer();
        try {
            // 封装了URL对象
            URL url = new URL(" https://api.yqwang.com.cn/apollo/v1/publisher/config/query");
            // 获取http连接对象
//            Log.e("anygames", url.toString() );
            HttpURLConnection conn = (HttpURLConnection) url
                    .openConnection();
            conn.setRequestMethod("GET");
            // 设置连接超时的时间（单位：毫秒）
            conn.setConnectTimeout(15000);
            conn.setRequestProperty("gameKey", gameKey);
            conn.setRequestProperty("channelId", "233ly");
            conn.setRequestProperty("versionName", "1.0.0");
            //设置读取数据的超时时间
            conn.setReadTimeout(5000);
            try {
                // 连接服务器
                conn.connect();
            } catch (SocketTimeoutException e) {
                return "";
            }
            // 获取状态码
            int code = conn.getResponseCode();
            if (code == 200) {// 请求成功
                // 获取响应消息的实体内容
                InputStreamReader reader = new InputStreamReader(
                        conn.getInputStream());
                char[] charArr = new char[1024 * 8];
                int len = 0;
                while ((len = reader.read(charArr)) != -1) {
                    // 字符数组转字符串
                    String str = new String(charArr, 0, len);
                    // 在结尾追加字符串
                    buffer.append(str);
                }
            }
        } catch (Exception e) {
//            e.printStackTrace();
        }
        return buffer.toString();
    }


    /**
     * * 删除方法 这里只会删除某个文件夹下的文件，如果传入的directory是个文件，将不做处理 * *
     */
    private static boolean deleteFilesByDirectory(File dir) {

        if (dir != null && dir.isDirectory()) {

            String[] children = dir.list();

            for (int i = 0; i < children.length; i++) {

                boolean success = deleteFilesByDirectory(new File(dir,
                        children[i]));

                if (!success) {

                    return false;
                }
            }
        }
        assert dir != null;
        return dir.delete();
    }




}
