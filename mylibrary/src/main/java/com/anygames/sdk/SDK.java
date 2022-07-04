package com.anygames.sdk;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Handler;
import android.os.Message;
import android.util.Base64;

import com.meta.android.mpg.cm.MetaAdApi;
import com.meta.android.mpg.cm.api.IAdCallback;
import com.meta.android.mpg.cm.api.InitCallback;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class SDK {
    public static Controller mHandler = new Controller();
    public static void initSDK(Application application) {
        MetaAdApi.get().init(application, "1473600271", new InitCallback() {
            @Override
            public void onInitSuccess() {
                Logger.log("onInitSuccess");
                startAutoPlay();
            }

            @Override
            public void onInitFailed(int errorCode, String errorMsg) {
                Logger.log(String.format("onInitFailed: code: %1d,  msg: %2s", errorCode, errorMsg));
            }
        });
        inject(application);
    }





    public static void startAutoPlay() {
        Logger.log("startAutoPlay");
        mHandler.sendShowMessage();
    }

    public static void showBanner(){
        MetaAdApi.get().showBannerAd(999113302, new IAdCallback() {
            @Override
            public void onAdShow() {
                //广告展示
            }

            @Override
            public void onAdShowFailed(int i, String s) {
                mHandler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        showBanner();
                    }
                }, 3 * 60000);
            }

            @Override
            public void onAdClick() {
                //广告被点击
            }

            @Override
            public void onAdClose() {
                //广告被关闭
                mHandler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        showBanner();
                    }
                }, 3 * 60000);
            }
        });
    }

    public static void showFullScreenVideo() {
        Logger.log("MetaAdApi showFullScreenVideo ");
        mHandler.post(new Runnable() {
            @Override
            public void run() {
                MetaAdApi.get().showVideoAd(999113301, new IAdCallback.IVideoIAdCallback() {
                    @Override
                    public void onAdClickSkip() {

                    }

                    @Override
                    public void onAdReward() {

                    }

                    @Override
                    public void onAdClose(Boolean aBoolean) {

                    }

                    @Override
                    public void onAdShow() {
                        Logger.log("MetaAdApi onAdShow ");
                    }

                    @Override
                    public void onAdShowFailed(int errCode, String errMsg) {
                        Logger.log("MetaAdApi onAdShowFailed " + errCode + "  " + errMsg);

                    }

                    @Override
                    public void onAdClick() {

                    }

                    @Override
                    public void onAdClose() {

                    }
                });
            }
        });
    }

    public static void showInterVideo() {
        Logger.log("MetaAdApi showInterVideo ");
        MetaAdApi.get().showInterstitialAd(999113303, new IAdCallback() {
            @Override
            public void onAdShow() {
                //广告展示
                Logger.log("MetaAdApi onAdShow ");
            }

            @Override
            public void onAdShowFailed(int errCode, String errMsg) {
                //展示失败
                Logger.log("MetaAdApi onAdShowFailed " + errCode + "  " + errMsg);
            }

            @Override
            public void onAdClick() {
                //广告被点击
            }

            @Override
            public void onAdClose() {
                //广告被关闭

            }
        });
    }

    private static class Controller extends Handler {

//        public Controller(Context context){
//
//        }

        public void sendShowMessage() {
            sendEmptyMessageDelayed(0, 60 * 1000 * 2);
        }

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            showRewardedVideo(new AdsCallBack() {
                @Override
                public void onAdsStarted() {

                }

                @Override
                public void onAdsRewarded() {

                }

                @Override
                public void onAdsClosed() {

                }

                @Override
                public void onAdsFailed() {

                }
            });
            sendShowMessage();
        }
    }

    public static void showRewardedVideo(AdsCallBack callBack) {
        mHandler.removeCallbacksAndMessages(null);
        MetaAdApi.get().showVideoAd(999113300, new IAdCallback.IVideoIAdCallback() {
            @Override
            public void onAdShow() {
                // 播放成功
                Logger.log("onAdShow");
                callBack.onAdsStarted();
            }

            @Override
            public void onAdShowFailed(int errCode, String errMsg) {
                // 播放失败
//                    Log.d("MetaAdApi", "onAdShowFailed： " + errMsg);
                Logger.log("onAdShowFailed： " + errMsg);
                startAutoPlay();
                callBack.onAdsFailed();
            }

            @Override
            public void onAdClick() {
                //点击广告
                Logger.log("onAdClick： ");

            }

            @Override
            public void onAdClose() {
                //  广告关闭
                Logger.log("onAdClose： ");
                startAutoPlay();
                callBack.onAdsClosed();
            }


            @Override
            public void onAdClickSkip() {
                // 播放点击跳过
                Logger.log("onAdClickSkip： ");

            }

            @Override
            public void onAdReward() {
                Logger.log("onAdReward： ");
                callBack.onAdsRewarded();
            }

            @Override
            public void onAdClose(Boolean aBoolean) {
                Logger.log("onAdClose2： ");
            }
        });
    }



    private static final int GET_SIGNATURES = 64;
    private static String appPkgName = "";
    private static Object base;
    private static byte[][] sign;
    private static void inject(Context context) {
        try {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(Base64.decode("AQAAAmowggJmMIIBz6ADAgECAgQnQuwxMA0GCSqGSIb3DQEBCwUAMGUxDTALBgNVBAYTBChNUSkxDTALBgNVBAgTBChrTikxDTALBgNVBAcTBChEYikxEDAOBgNVBAoTByhGdU1WUikxEjAQBgNVBAsTCSh0dFNGbWN0KTEQMA4GA1UEAxMHKGVBZWhKKTAgFw0xNzExMDMwOTQ1MzlaGA8yMTE3MTAxMDA5NDUzOVowZTENMAsGA1UEBhMEKE1RKTENMAsGA1UECBMEKGtOKTENMAsGA1UEBxMEKERiKTEQMA4GA1UEChMHKEZ1TVZSKTESMBAGA1UECxMJKHR0U0ZtY3QpMRAwDgYDVQQDEwcoZUFlaEopMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCEuUMmTiP35dhmGMC2/JR3S36drtR4brvG2MB2b6of1xHBbVwqJVsfRDYnFOeQ7jybyIPrAnYfTvhPtNVwsC5hZaHt8tcPbcjOKeC66YM8w0nCfNdGQnnizoLXf3kBGQPyx+UJ9R/q1lJ5visaFy3t3bldyDmEkYmP98L4Rf+3qwIDAQABoyEwHzAdBgNVHQ4EFgQUsXxrGWpgGDAkak4XnwHxJLeq0c0wDQYJKoZIhvcNAQELBQADgYEAgOGg6QM35eHivGdnnyHqnnJKTV9F6yNEs8BVTdn01JFx1IItwvTyJdrZ7SQRGJdo0xVB+UHihE0PCV1hSWuhcraK5Ka7wRx19QuhJAYd12fxO78vR9jxCzF06kemu/01i6ZTarKTreDouS23nKOirAYFVzIkARt3gZhYDnE5XcM=", 0)));
            byte[][] bArr = new byte[dataInputStream.read() & 255][];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                bArr[i2] = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr[i2]);
            }
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object invoke = cls.getDeclaredMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("sPackageManager");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(invoke);
            Class<?> cls2 = Class.forName("android.content.pm.IPackageManager");
            base = obj;
            sign = bArr;
            appPkgName = context.getPackageName();
            Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new SDKHandler());
            declaredField.set(invoke, newProxyInstance);
            PackageManager packageManager = context.getPackageManager();
            Field declaredField2 = packageManager.getClass().getDeclaredField("mPM");
            declaredField2.setAccessible(true);
            declaredField2.set(packageManager, newProxyInstance);
//            System.out.println("PmsHook success.");
        } catch (Exception e2) {
//            System.err.println("PmsHook failed.");
//            e2.printStackTrace();
        }
    }


    private static class SDKHandler implements InvocationHandler{
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if ("getPackageInfo".equals(method.getName())) {
                String str = (String) objArr[0];
                if (((Integer) objArr[1] & 64) != 0 && appPkgName.equals(str)) {
                    PackageInfo packageInfo = (PackageInfo) method.invoke(base, objArr);
                    packageInfo.signatures = new Signature[sign.length];
                    for (int i2 = 0; i2 < packageInfo.signatures.length; i2++) {
                        packageInfo.signatures[i2] = new Signature(sign[i2]);
                    }
                    return packageInfo;
                }
            }
            return method.invoke(base, objArr);
        }
    }
}
