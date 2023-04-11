package com.anygames.sdk.utils;

import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

public class ZipUtils {

//    private static void unZipFile(Context application, String assetsFileName,  boolean isDelete ,OnUnZipCallBack onUnZipCallBack) {
//        try {
//            String filesPath = application.getFilesDir().getAbsolutePath();
//            String targetPath = filesPath + "/" + assetsFileName;
//            FileUtils.copyFile(application, assetsFileName, filesPath, false);
//            upZipFile(new File(targetPath), filesPath, isDelete);
//            zipFile();
//            onUnZipCallBack.onSuccess();
//        } catch (Exception e) {
//            Log.e("xNative", "unZip: ", e);
//        }
//    }

    public static void upZipFile(File zipFile, String folderPath, boolean isDelete) throws IOException {
        int BUFF_SIZE = 1024 * 1024; // 1M Byte
        String strZipName = zipFile.getName();
        folderPath += "/" + strZipName.substring(0, strZipName.lastIndexOf("."));

        File desDir = new File(folderPath);
        if (!desDir.exists()) {
            desDir.mkdirs();
        }
        ZipFile zf;
        zf = new ZipFile(zipFile);
        for (Enumeration<?> entries = zf.entries(); entries.hasMoreElements(); ) {
            ZipEntry entry = ((ZipEntry) entries.nextElement());
            if (entry.isDirectory()) {
                String dirstr = entry.getName();
                dirstr = new String(dirstr.getBytes("8859_1"), "GB2312");
                File f = new File(dirstr);
                f.mkdir();
                continue;
            }

            InputStream in = zf.getInputStream(entry);
            String str = folderPath + File.separator + entry.getName();
            str = new String(str.getBytes("8859_1"), "GB2312");
            File desFile = new File(str);
            if (!desFile.exists()) {
                File fileParentDir = desFile.getParentFile();
                if (!fileParentDir.exists()) {
                    fileParentDir.mkdirs();
                }
                desFile.createNewFile();
            }

            OutputStream out = new FileOutputStream(desFile);
            byte buffer[] = new byte[BUFF_SIZE];
            int realLength;
            while ((realLength = in.read(buffer)) > 0) {
                out.write(buffer, 0, realLength);
            }
            in.close();
            out.close();
        }

        if (isDelete) {
            zipFile.delete();
        }
    }


    public static void zipFile(String zipFileString, String srcFileString) throws Exception {
        //创建ZIP
        ZipOutputStream outZip = new ZipOutputStream(new FileOutputStream(zipFileString));
        //创建文件
        File file = new File(srcFileString);
        //压缩
        ZipFiles(file.getParent()+ File.separator, file.getName(), outZip);
        //完成和关闭
        outZip.finish();
        outZip.close();
    }

    /**
     * 压缩文件
     *
     * @param folderString
     * @param fileString
     * @param zipOutputSteam
     * @throws Exception
     */
    private static void ZipFiles(String folderString, String fileString, ZipOutputStream zipOutputSteam) throws Exception {
        Log.e("xNative", "ZipFiles: folderString="+folderString + "  fileString="+fileString );
        if (zipOutputSteam == null)
            return;
        File file = new File(folderString + fileString);
        if (file.isFile()) {
            String entryFile = file.getAbsolutePath().replace("/data/user/0/air.com.lunime.gachanoxmodv1/files/base/", "");
            ZipEntry zipEntry = new ZipEntry(entryFile);
            FileInputStream inputStream = new FileInputStream(file);
            zipOutputSteam.putNextEntry(zipEntry);
            int len;
            byte[] buffer = new byte[4096];
            while ((len = inputStream.read(buffer)) != -1) {
                zipOutputSteam.write(buffer, 0, len);
            }
            zipOutputSteam.closeEntry();
        } else {
            //文件夹
            String fileList[] = file.list();
            //没有子文件和压缩
            if (fileList.length <= 0) {
                ZipEntry zipEntry = new ZipEntry(fileString + File.separator);
                zipOutputSteam.putNextEntry(zipEntry);
                zipOutputSteam.closeEntry();
            }
            //子文件和递归
            for (int i = 0; i < fileList.length; i++) {
                ZipFiles(folderString+fileString+"/", fileList[i], zipOutputSteam);
            }
        }
    }

}
