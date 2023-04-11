package com.anygames.sdk.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;


public class FileUtils {

    public static void filesCopy(String oldFilePath, String newFilePath) throws IOException {
        File oldFiles = new File(oldFilePath);
//        File newFiles = new File(newFilePath);
//        Log.e("xNative", "filesCopy:oldFilePath="+oldFilePath );
        File[] list = oldFiles.listFiles();
//        Log.e("xNative", "filesCopy:listFiles="+list );

        assert list != null;
//        Log.e("xNative", "filesCopy:listFiles="+list.length );

        for (File fileName : list) {
//            Log.e("xNative", "filesCopy:fileName="+fileName.getName() );

            fileCopy(fileName.getAbsolutePath(), newFilePath + "/" + fileName.getName());
        }
    }

    public static boolean fileCopy(String oldFilePath, String newFilePath) throws IOException {

//如果原文件不存在

        if (fileExists(oldFilePath) == false) {

            return false;

        }

//获得原文件流

        FileInputStream inputStream = new FileInputStream(new File(oldFilePath));

        byte[] data = new byte[1024];

//输出流

        FileOutputStream outputStream = new FileOutputStream(new File(newFilePath));

//开始处理流

        while (inputStream.read(data) != -1) {

            outputStream.write(data);

        }

        inputStream.close();

        outputStream.close();

        return true;

    }

    public static boolean fileExists(String filePath) {

        File file = new File(filePath);

        return file.exists();

    }

    public static void copyAssets(Context context, String path, String targetPath, boolean isCopyPath, OnFileCopyCallBack listener) throws IOException {
        File targetFile = new File(targetPath);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        if (isCopyPath) {
            copyAssetswithPath(context, path, targetPath);
        } else {
            copyAssetswithoutPath(context, path, targetPath);
        }
        listener.onSuccess();
    }

    private static void copyAssetswithPath(Context mContext, String path, String targetPath) throws IOException {

        AssetManager assetManager = mContext.getAssets();

        String assets[] = null;


        assets = assetManager.list(path);

//复制单个文件
        Log.e("xNaive", "assets.length: "+assets.length + " path = " +path );

        if (assets.length == 0) {
            copyFile(mContext, path, targetPath, true);
        }

//复制文件夹中的文件到另一个目录中

        else {
            String newFileName = targetPath + "/" + path;
//            Log.e("xNative", "newFileName: "+newFileName );
            newFileName = newFileName.replaceAll("data/", "");
            File fileDir = new File(newFileName);
            if (!fileDir.exists()) {
                fileDir.mkdirs();
            }
            for (int i = 0; i < assets.length; ++i) {
                String fileDirs = path + "/" + assets[i];
//                Log.e("Path", fileDirs);
                copyAssetswithPath(mContext, path + "/" + assets[i], targetPath);
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

            copyFile(mContext, path, targetPath, false);

        }

//复制文件夹中的文件到另一个目录中

        else {

            for (int i = 0; i < assets.length; ++i) {

                String fileDirs = path + "/" + assets[i];
//                Log.e("Path", fileDirs);
                copyAssetswithoutPath(mContext, fileDirs, targetPath);

            }

        }

    }

    private static void copyFile(Context mContext, String filename, String targetPath, boolean isCopyPath) throws IOException {

        AssetManager assetManager = mContext.getAssets();

        InputStream in = null;

        OutputStream out = null;

        in = assetManager.open(filename);


        if (!isCopyPath) {
            String[] strings = filename.split("/");
            filename = strings[strings.length - 1];
        }
        filename = filename.replaceAll("data/", "");
//        Log.e("xNaive = ", filename);

        String newFileName = targetPath + "/" + filename;

//        File newFile = new File(newFileName);
//        Log.e("newFileName = ", newFileName);
//        Log.e("xNaive", "newFile.exists() = "+newFile.exists());


//
//        if (!newFile.exists()){
//            newFile.mkdirs();
//        }
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


    private static void deleteDirWihtFile(File dir) {
        if (dir == null || !dir.exists() || !dir.isDirectory())
            return;
        for (File file : dir.listFiles()) {
            if (file.isFile())
                file.delete(); // 删除所有文件
            else if (file.isDirectory())
                deleteDirWihtFile(file); // 递规的方式删除文件夹
        }
        dir.delete();// 删除目录本身
    }

}
