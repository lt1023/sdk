//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.unity3d.player;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.anygames.sdk.AdsCallBack;
import com.anygames.sdk.SDK;

import com.happynicegames.idlesorting.R;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UnityPlayerActivity extends Activity implements IUnityPlayerLifecycleEvents {
    protected UnityPlayer mUnityPlayer;
    private SharedPreferences mSharedPreferences;

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
        mSharedPreferences = getSharedPreferences("config", MODE_PRIVATE);
        mUnityPlayer.mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                showSpeedView();
            }
        }, 10000);
    }

    private ImageView speed2_finger;
    private static int currentSpeed = 1;
    boolean isTested;
    private int lastFreeTimes;

    private void initSpeed() {
        speed2_finger.post(() -> {
            TranslateAnimation tAnim = new TranslateAnimation(80, 0, 0, 0);
            tAnim.setDuration(500);
            tAnim.setRepeatCount(Animation.INFINITE);
            speed2_finger.startAnimation(tAnim);
        });
    }

    private void hideFinger() {
        speed2_finger.post(() -> {
            speed2_finger.setVisibility(View.GONE);
        });
    }

    private void showFinger() {
        speed2_finger.post(() -> {
            speed2_finger.setVisibility(View.VISIBLE);
        });
    }

    private void showSpeedView() {
//        ImageView imageView = new ImageView(this);
////        imageView.setImageResource(R.drawable.splash);
////        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
//
////        Drawable splash_img = getDrawable(R.drawable.luanch_splash);
//        Drawable splash_img = getDrawable(getResources().getIdentifier("luanch_splash", "drawable",getPackageName()));
//        imageView.setImageDrawable(splash_img);
////        imageView.setImageResource(splash_img);
////        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(800, 800);
////        splash.addView(imageView);
////        params.gravity = Gravity.FILL;
////        mTargetClass = null;
//
//        FrameLayout view = new FrameLayout(this);
//        view.setBackgroundColor(Color.BLACK);
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
//        view.setLayoutParams(params);
//        view.addView(imageView);
        params.gravity = Gravity.CENTER_VERTICAL;
        View inflate = LayoutInflater.from(this).inflate(R.layout.layout_speed, null);
        addContentView(inflate, params);
        View speed2 = findViewById(R.id.speed2);
        TextView speed_time_tv = findViewById(R.id.speed_time_tv);
        speed2_finger = findViewById(R.id.speed2_finger);
        initSpeed();

        lastFreeTimes = mSharedPreferences.getInt("lastFreeTimes", 1);
        if (lastFreeTimes > 0) {
            lastFreeTimes = lastFreeTimes - 1;
            Toast.makeText(UnityPlayerActivity.this, "获得2倍速1分钟体验", Toast.LENGTH_LONG).show();
            mSharedPreferences.edit().putInt("lastFreeTimes", lastFreeTimes).apply();
            mUnityPlayer.mHandler.post(new Runnable() {
                @Override
                public void run() {
                    speed2.setEnabled(false);
                }
            });
            currentSpeed = 2;
            sendMessage(currentSpeed);
            hideFinger();
            new CountDownTimer(60 * 1000, 1000) {
                @Override
                public void onTick(long millisUntilFinished) {
                    mUnityPlayer.mHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            SimpleDateFormat format = new SimpleDateFormat("mm:ss");
                            try {
                                String format1 = format.format(millisUntilFinished);
                                speed_time_tv.setText(format1);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    });
                }

                @Override
                public void onFinish() {
                    currentSpeed = 1;
                    mUnityPlayer.mHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            speed2.setEnabled(true);
                            if (lastFreeTimes <= 0) {
                                speed_time_tv.setText("体验2倍速");
                            } else {
                                speed_time_tv.setText("剩余" + lastFreeTimes + "次体验");
                            }
                            showFinger();
                            sendMessage(currentSpeed);
                            showTips(speed2);
                        }
                    });
                }
            }.start();
        }


        speed2.setOnClickListener(v -> {
//            if (lastFreeTimes > 0){
//                lastFreeTimes = lastFreeTimes-1;
//                Toast.makeText(UnityPlayerActivity.this, "获得2倍速1分钟体验", Toast.LENGTH_LONG).show();
//                mSharedPreferences.edit().putInt("lastFreeTimes", lastFreeTimes).apply();
//                mUnityPlayer.mHandler.post(new Runnable() {
//                    @Override
//                    public void run() {
//                        speed2.setEnabled(false);
//                    }
//                });
//                currentSpeed = 2;
//                sendMessage(currentSpeed);
//                hideFinger();
//                new CountDownTimer( 60 * 1000, 1000) {
//                    @Override
//                    public void onTick(long millisUntilFinished) {
//                        mUnityPlayer.mHandler.post(new Runnable() {
//                            @Override
//                            public void run() {
//                                SimpleDateFormat format = new SimpleDateFormat("mm:ss");
//                                try {
//                                    String format1 = format.format(millisUntilFinished);
//                                    speed_time_tv.setText(format1);
//                                } catch (Exception e) {
//                                    e.printStackTrace();
//                                }
//                            }
//                        });
//                    }
//
//                    @Override
//                    public void onFinish() {
//                        currentSpeed = 1;
//                        mUnityPlayer.mHandler.post(new Runnable() {
//                            @Override
//                            public void run() {
//                                speed2.setEnabled(true);
//                                if (lastFreeTimes <=0){
//                                    speed_time_tv.setText("体验2倍速");
//                                }else {
//                                    speed_time_tv.setText("剩余" + lastFreeTimes+"次体验");
//                                }
//                                sendMessage(currentSpeed);
//                                showFinger();
//
//                            }
//                        });
//                    }
//                }.start();
//                return;
//            }




            SDK.showRewardedVideo(new AdsCallBack() {
                @Override
                public void onAdsStarted() {

                }

                @Override
                public void onAdsRewarded() {

                }

                @Override
                public void onAdsClosed() {
                    setSpeedx(speed2, speed_time_tv);
                }

                @Override
                public void onAdsFailed() {

                }
            });
        });
    }

    private void setSpeedx(View speed2, TextView speed_time_tv) {
        currentSpeed = 2;
        sendMessage(currentSpeed);
        hideFinger();
        mUnityPlayer.mHandler.post(new Runnable() {
            @Override
            public void run() {
                speed2.setEnabled(false);
            }
        });
        new CountDownTimer(3 * 60 * 1000, 1000) {
            @Override
            public void onTick(long millisUntilFinished) {
//                                Log.e("xNative", "onTick: " + millisUntilFinished );
                mUnityPlayer.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
//                                        speed2.setEnabled(false);
                        SimpleDateFormat format = new SimpleDateFormat("mm:ss");
                        try {
//                                    Date parse = format.parse(String.valueOf(millisUntilFinished));
                            String format1 = format.format(millisUntilFinished);
                            speed_time_tv.setText(format1);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                });
            }

            @Override
            public void onFinish() {
                currentSpeed = 1;
                mUnityPlayer.mHandler.post(() -> {
                    speed2.setEnabled(true);
                    speed_time_tv.setText("体验2倍速");
                    sendMessage(currentSpeed);
                    showFinger();
                });
            }
        }.start();
    }

    private void showTips(View speed2) {
        new AlertDialog.Builder(this).setTitle("加速体验结束")
                .setMessage("观看广告将获得3分钟加速，是否继续加速？")
                .setCancelable(false)
                .setNegativeButton("稍后再说", (dialog, which) -> dialog.dismiss()).setPositiveButton("继续加速", (dialog, which) -> speed2.performClick()).create().show();
    }

    private static native void sendMessage(int value);

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
