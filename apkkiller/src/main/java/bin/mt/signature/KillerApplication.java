package bin.mt.signature;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;

import com.anygames.app.SDKWrapper;

import org.lsposed.hiddenapibypass.HiddenApiBypass;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes2.dex */
public class KillerApplication extends Application {
//    public static final String URL = "https://github.com/L-JINBIN/ApkSignatureKillerEx";
//    public static final String TAG = "xhook";

    //    static {
//
//
//
//
////        System.loadLibrary("anygames");
////
////        hookApkPath("","" );
////        System.loadLibrary("mod");
//
//    }
    public static void init(Context base) {
//        Log.e("xhook", "KillerApplication initializer: ");
        String packageName = base.getPackageName();
//        Log.e("xhook", "packageName="+ packageName);

        killPM(packageName, "MIICuzCCAaOgAwIBAgIEVMAglTANBgkqhkiG9w0BAQsFADANMQswCQYDVQQGEwI4NjAgFw0yMjA4\nMjQwMzM4MjhaGA8yMDcyMDgxMTAzMzgyOFowDTELMAkGA1UEBhMCODYwggEiMA0GCSqGSIb3DQEB\nAQUAA4IBDwAwggEKAoIBAQCChdHqPX71ixYHLiFmMGyTeYQdrBTSSYX6T5e3aZw2XgNDDaxDf63D\nmAkCDuynQ1TzkkRnDysFvwshpUvCbCskVaFfS7TAQO610ryxeNdTTiLUj4l3rZCIPhsdr2UhsJLn\nZqq0Xa7rdOZsp9XNKLQgoICRs2Tq2kJkVvqsv0jbTJAi4XPiMsZPA9VOInUg6sVqpmuu0qTvR9Sq\n/ezOHb4CR8f5fs3/kLxojUx3aSBZN+kwFYTUTdfhIUfQEh7KDilLRTpMIQyKhPVr/61ZzngJFWw5\n5gx3YKEc2kqS1gvb95ylxpqv4lwZ7zzS14LsgHbfVtl1qYgXkDdyoAAnL6TBAgMBAAGjITAfMB0G\nA1UdDgQWBBS4NbbIzxoW4tsk7aiZ6WBuDc4ZtzANBgkqhkiG9w0BAQsFAAOCAQEAWfKOlUAOF/cF\nUtpCkz0kuijI/mbdSi50RVN569WhmXyRPRLV9un9y4JXOh+Mj2z6vNcom6G9RLOST956J8y0pPrL\nZlOxsMuySLUyWZ101P1q+eGCfrb196cXvLaDtA5G9gKSXUJUzE6zrIwnobAaldzcI+Id2pwmsfdP\nwEY3PDkdkz/kxz94cFx1BRC1y2k2xrnBkyVXeSyxzSkOA+1Gnd09TwkZVqXG4geewJvhlX3Q1hMc\n/n9t86/GrrRbSakuKm0/Dw06io2oGKf0HnIx42eM4jePyLU0XophahSG8vXqOshTvxiOKUHeJfNA\nUrlexlNm4RBNoHs1jlD51DseIA==\n");
        killOpen(packageName, base);
    }

    private static Field findField(Class<?> cls, String str) throws NoSuchFieldException {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e2) {
            while (true) {
                cls = cls.getSuperclass();
                if (cls == null || cls.equals(Object.class)) {
                    break;
                }
                try {
                    Field declaredField2 = cls.getDeclaredField(str);
                    declaredField2.setAccessible(true);
                    return declaredField2;
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e2;
        }
    }

    private static String getApkPath(String str) {
        String str2;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/self/maps"));
            do {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    return null;
                }
                String[] split = readLine.split("\\s+");
                str2 = split[split.length - 1];
            } while (!isApkPath(str, str2));
            bufferedReader.close();
            return str2;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    private static File getDataFile(String str) {
        String name = Environment.getExternalStorageDirectory().getName();
        if (name.matches("\\d+")) {
            File file = new File("/data/user/" + name + "/" + str);
            if (file.canWrite()) {
                return file;
            }
        }
        return new File("/data/data/" + str);
    }


    private static boolean isApkPath(String str, String str2) {
        if (str2.startsWith("/") && str2.endsWith(".apk")) {
            String[] split = str2.substring(1).split("/", 6);
            int length = split.length;
            if (length == 4 || length == 5) {
                if (split[0].equals("data") && split[1].equals("app") && split[length - 1].equals("base.apk")) {
                    return split[length - 2].startsWith(str);
                }
                if (split[0].equals("mnt") && split[1].equals("asec") && split[length - 1].equals("pkg.apk")) {
                    return split[length - 2].startsWith(str);
                }
            } else if (length == 3) {
                if (split[0].equals("data") && split[1].equals("app")) {
                    return split[2].startsWith(str);
                }
            } else if (length == 6 && split[0].equals("mnt") && split[1].equals("expand") && split[3].equals("app") && split[5].equals("base.apk")) {
                return split[4].endsWith(str);
            }
        }
        return false;
    }
//    private static native void hookApkPath(String str, String str2);

    private static void killOpen(String str, Context base) {
        try {
//            Log.e(TAG, "killOpen: " + str);
//            System.loadLibrary("SignatureKiller");
//            String apkPath = getApkPath(str);
            String apkPath = base.getApplicationInfo().sourceDir;
//            Log.e(TAG, "apkPath: " + apkPath);

            if (apkPath == null) {
//                System.err.println("Get apk path failed");
                return;
            }
            File file = new File(apkPath);
            if (!file.exists()){
//                Log.e(TAG, "apkPath not exists !");
            }

//            File file2 = new File(getDataFile(str), "origin.apk");
            File file2 = new File(base.getFilesDir(), "origin.apk");
//            Log.e(TAG, "apkPath file: " + file);
//            Log.e(TAG, "apkPath file2: " + file2);

            try {
                ZipFile zipFile = new ZipFile(file);
                ZipEntry entry = zipFile.getEntry("assets/bin/Data/sharedassets0.assets");
                if (entry == null) {
                    PrintStream printStream = System.err;
//                    printStream.println("Entry not found: assets/SignatureKiller/origin.apk");
                    zipFile.close();
                    return;
                }
                if (!file2.exists() || file2.length() != entry.getSize()) {
                    InputStream inputStream = zipFile.getInputStream(entry);
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    try {
                        byte[] bArr = new byte[102400];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                        }
                        fileOutputStream.close();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                zipFile.close();
//                Log.e("xhook", "hookApkPath file: " + file.getAbsolutePath());
//                Log.e("xhook", "hookApkPath file2: " + file2.getAbsolutePath());

//                hookApkPath(file.getAbsolutePath(), file2.getAbsolutePath());
                SDKWrapper.hookApkPath(file.getAbsolutePath(), file2.getAbsolutePath());
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Throwable unused) {
//            Log.e("xhook", "killOpen: ", unused);
//            System.err.println("Load SignatureKiller library failed");
        }
    }

    private static void killPM(final String str, String str2) {
        final Signature signature = new Signature(Base64.decode(str2, 0));
        final Parcelable.Creator creator = PackageInfo.CREATOR;
        try {
//            Log.e(TAG, "killPM: ");
            findField(PackageInfo.class, "CREATOR").set(null, new Parcelable.Creator<PackageInfo>() { // from class: bin.mt.signature.KillerApplication.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public PackageInfo createFromParcel(Parcel parcel) {
//                    Log.e(TAG, "createFromParcel: ");

                    Signature[] apkContentsSigners;
                    PackageInfo packageInfo = (PackageInfo) creator.createFromParcel(parcel);
                    if (packageInfo.packageName.equals(str)) {
                        if (packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                            packageInfo.signatures[0] = signature;
                        }
                        if (Build.VERSION.SDK_INT >= 28 && packageInfo.signingInfo != null && (apkContentsSigners = packageInfo.signingInfo.getApkContentsSigners()) != null && apkContentsSigners.length > 0) {
                            apkContentsSigners[0] = signature;
                        }
                    }
//                    Log.e(TAG, "packageInfo: ");
                    return packageInfo;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public PackageInfo[] newArray(int i2) {
                    return (PackageInfo[]) creator.newArray(i2);
                }
            });
            if (Build.VERSION.SDK_INT >= 28) {
                HiddenApiBypass.addHiddenApiExemptions("Landroid/os/Parcel;", "Landroid/content/pm", "Landroid/app");
            }
            try {
                Object obj = findField(PackageManager.class, "sPackageInfoCache").get(null);
                obj.getClass().getMethod("clear", new Class[0]).invoke(obj, new Object[0]);
            } catch (Throwable unused) {
            }
            try {
                ((Map) findField(Parcel.class, "mCreators").get(null)).clear();
            } catch (Throwable unused2) {
            }
            try {
                ((Map) findField(Parcel.class, "sPairedCreators").get(null)).clear();
            } catch (Throwable unused3) {
            }
//            Log.e(TAG, "killPM end: ");
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}