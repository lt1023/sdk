package com.anygames.sdk.pay;

import android.content.Context;
import android.widget.Toast;

import com.anygames.sdk.utils.FileUtils;

import java.io.IOException;

public class Backup {

    private String SHARED_PREFS;
    private String DATABASES;
    private String APP_PATH;
    private Context mContext;
    private String BACKUP_PATH;
    private String BACKUP_DATABASES;
    private String BACKUP_SHARED_PREFS;

    public Backup(Context context,String fileName) {
        if (context == null)return;
        mContext = context;
        APP_PATH = mContext.getFilesDir().getParent();
        DATABASES = APP_PATH + "/databases";
        SHARED_PREFS = APP_PATH + "/shared_prefs";
        BACKUP_PATH =  mContext.getFilesDir().getAbsolutePath() + "/data/" + fileName;
        BACKUP_DATABASES = BACKUP_PATH + "/databases";
        BACKUP_SHARED_PREFS = BACKUP_PATH + "/shared_prefs";
//        Log.e("xNative", "Backup: DATABASES="+DATABASES );
//        Log.e("xNative", "Backup: SHARED_PREFS="+SHARED_PREFS );
//        Log.e("xNative", "Backup: BACKUP_DATABASES="+BACKUP_DATABASES );
//        Log.e("xNative", "Backup: BACKUP_SHARED_PREFS="+BACKUP_SHARED_PREFS );
    }

    /**
     * 备份文件
     *
     * @return 当且仅当数据库及配置文件都备份成功时返回true。
     */
    public boolean doBackup() {
        return backupDB() && backupSharePrefs();
    }

    private boolean backupDB() {
        return copyDir(DATABASES, BACKUP_DATABASES, "备份数据库文件成功:"
                + BACKUP_DATABASES, "备份数据库文件失败");
    }

    private boolean backupSharePrefs() {
        return copyDir(DATABASES, BACKUP_DATABASES, "备份配置文件成功:"
                + BACKUP_SHARED_PREFS, "备份配置文件失败");
    }

    /**
     * 恢复
     *
     * @return 当且仅当数据库及配置文件都恢复成功时返回true。
     */
    public boolean doRestore() {
        return restoreDB() && restoreSharePrefs();
    }

    private boolean restoreDB() {
        return copyDir(BACKUP_DATABASES, DATABASES, "恢复数据库文件成功", "恢复数据库文件失败");
    }

    private boolean restoreSharePrefs() {
        return copyDir(BACKUP_SHARED_PREFS, SHARED_PREFS, "恢复配置文件成功",
                "恢复配置文件失败");
    }

    private final void showToast(String msg) {
        Toast.makeText(mContext, msg, Toast.LENGTH_SHORT).show();
    }

    /**
     * 复制目录
     *
     * @param srcDir
     *            源目录
     * @param destDir
     *            目标目录
     * @param successMsg
     *            复制成功的提示语
     * @param failedMsg
     *            复制失败的提示语
     * @return 当复制成功时返回true, 否则返回false。
     */
    private final boolean copyDir(String srcDir, String destDir,
                                  String successMsg, String failedMsg) {
        try {
//            FileUtils.copy(new FileInputStream(srcDir), new FileOutputStream(destDir));
//            Tools.copyFile();

            FileUtils.filesCopy(srcDir, destDir);
        } catch (IOException e) {
//            e.printStackTrace();
//            showToast(failedMsg);
            return false;
        }
//        showToast(successMsg);
        return true;
    }


}

