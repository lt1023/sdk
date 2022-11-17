package com.anygames.sdk;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;

public final class Tools {
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


    public static String request(String gameKey){
        if (TextUtils.isEmpty(gameKey))return null;
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
     *
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
