//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.unity3d.player;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;

import com.anygames.sdk.AdsCallBack;
import com.anygames.sdk.SDK;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.gif.GifOptions;
import com.bumptech.glide.request.RequestOptions;
import com.dig.gifchest.R;

import java.util.Timer;
import java.util.TimerTask;

import static com.bumptech.glide.load.DecodeFormat.PREFER_ARGB_8888;
import static com.bumptech.glide.load.DecodeFormat.PREFER_RGB_565;

public class UnityPlayerActivity extends Activity implements IUnityPlayerLifecycleEvents {
    protected UnityPlayer mUnityPlayer;
    private static UnityPlayerActivity instance;


    public UnityPlayerActivity() {
    }

    public boolean dispatchKeyEvent(KeyEvent var1) {
        return var1.getAction() == 2 ? this.mUnityPlayer.injectEvent(var1) : super.dispatchKeyEvent(var1);
    }

    public void onConfigurationChanged(Configuration var1) {
        super.onConfigurationChanged(var1);
        this.mUnityPlayer.configurationChanged(var1);
    }

    protected void onCreate(Bundle var1) {
        this.requestWindowFeature(1);
        super.onCreate(var1);
        String var2 = this.updateUnityCommandLineArguments(this.getIntent().getStringExtra("unity"));
        this.getIntent().putExtra("unity", var2);
        UnityPlayer var3 = new UnityPlayer(this, this);
        this.mUnityPlayer = var3;
        this.setContentView(var3);
        this.mUnityPlayer.requestFocus();
        instance = this;
        init();

        startTimer();
//        new Timer().schedule(new TimerTask() {
//            @Override
//            public void run() {
//                runOnUiThread(new Runnable() {
//                    @Override
//                    public void run() {
//                        showChest();
//                    }
//                });
//            }
//        }, 5000);
    }

    private static int showTag = 0;
    private static boolean isShow = false;

    private void startTimer() {
        new Timer().scheduleAtFixedRate(new TimerTask() {
            @Override
            public void run() {
                int i = get();
                if (i < 50) {
                    showTag++;
                } else {
                    showTag = 0;
                    isShow = false;
                }
                if (showTag > 90) {
                    if (!isShow){
                        runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                isShow = true;
                                showAdDialog();
                            }
                        });
                    }
                }
//                Log.e("xNative", "get coins=" + i + "  showTag = " + showTag);
            }
        }, 10000, 2000);
    }


    private native int get();

    private native void init();

    public static void showChest() {
//        Log.e("xNative", "showChest: ");
        instance.mUnityPlayer.mHandler.post(() -> {
            ImageView imageView = new ImageView(instance);
            FrameLayout view = new FrameLayout(instance);
            view.setBackgroundColor(Color.BLACK);
            WindowManager manager = instance.getWindowManager();
            DisplayMetrics outMetrics = new DisplayMetrics();
            manager.getDefaultDisplay().getMetrics(outMetrics);
            int width = outMetrics.widthPixels / 4;
            FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(width, width);
            params.gravity = Gravity.START | Gravity.CENTER_VERTICAL;
            view.setLayoutParams(params);
            view.addView(imageView);
            view.setBackground(null);
            instance.addContentView(view, params);
            imageView.setOnClickListener(v -> instance.showAdDialog());
            Glide.with(instance)
                    .setDefaultRequestOptions(new RequestOptions().set(GifOptions.DECODE_FORMAT, PREFER_ARGB_8888))
                    .load(R.drawable.chest)
                    .into(imageView);
        });
    }

    private void showAdDialog() {
        new AlertDialog.Builder(this).setTitle("观看广告").setMessage("观看广告获得300钞票")
                .setNegativeButton("我再想想", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                    }
                })
                .setPositiveButton("立即观看", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();

                        SDK.showRewardedVideo(new AdsCallBack() {
                            @Override
                            public void onAdsStarted() {

                            }

                            @Override
                            public void onAdsRewarded() {

                            }

                            @Override
                            public void onAdsClosed() {
                                Toast.makeText(UnityPlayerActivity.this, "恭喜获得300钞票", Toast.LENGTH_SHORT).show();
                                mUnityPlayer.mHandler.post(new Runnable() {
                                    @Override
                                    public void run() {
                                        sendMessage();
                                    }
                                });
                            }

                            @Override
                            public void onAdsFailed() {

                            }
                        });
                    }
                }).create().show();
    }

    private static native void sendMessage();


    protected void onDestroy() {
        this.mUnityPlayer.destroy();
        super.onDestroy();
    }

    public boolean onGenericMotionEvent(MotionEvent var1) {
        return this.mUnityPlayer.injectEvent(var1);
    }

    public boolean onKeyDown(int var1, KeyEvent var2) {
        return this.mUnityPlayer.injectEvent(var2);
    }

    public boolean onKeyUp(int var1, KeyEvent var2) {
        return this.mUnityPlayer.injectEvent(var2);
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.mUnityPlayer.lowMemory();
    }

    protected void onNewIntent(Intent var1) {
        this.setIntent(var1);
        this.mUnityPlayer.newIntent(var1);
    }

    protected void onPause() {
        super.onPause();
        MultiWindowSupport.saveMultiWindowMode(this);
        if (!MultiWindowSupport.getAllowResizableWindow(this)) {
            this.mUnityPlayer.pause();
        }
    }

    protected void onResume() {
        super.onResume();
        if (!MultiWindowSupport.getAllowResizableWindow(this) || MultiWindowSupport.isMultiWindowModeChangedToTrue(this)) {
            this.mUnityPlayer.resume();
        }
    }

    protected void onStart() {
        super.onStart();
        if (MultiWindowSupport.getAllowResizableWindow(this)) {
            this.mUnityPlayer.resume();
        }
    }

    protected void onStop() {
        super.onStop();
        if (MultiWindowSupport.getAllowResizableWindow(this)) {
            this.mUnityPlayer.pause();
        }
    }

    public boolean onTouchEvent(MotionEvent var1) {
        return this.mUnityPlayer.injectEvent(var1);
    }

    public void onTrimMemory(int var1) {
        super.onTrimMemory(var1);
        if (var1 == 15) {
            this.mUnityPlayer.lowMemory();
        }

    }

    public void onUnityPlayerQuitted() {
    }

    public void onUnityPlayerUnloaded() {
        this.moveTaskToBack(true);
    }

    public void onWindowFocusChanged(boolean var1) {
        super.onWindowFocusChanged(var1);
        this.mUnityPlayer.windowFocusChanged(var1);
    }

    protected String updateUnityCommandLineArguments(String var1) {
        return var1;
    }
}
