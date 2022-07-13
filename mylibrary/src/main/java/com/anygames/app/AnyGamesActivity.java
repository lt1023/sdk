/**
 * Generated by FakerAndroid for doc or help by https://github.com/Efaker/FakerAndroid
 */
package com.anygames.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;

import com.anygames.sdk.Logger;
import com.anygames.sdk.Tools;


public class AnyGamesActivity extends Activity implements JniBridge {
    static final int HANDLER_MSG_CALLJAVA = 1000;
    private Class mTargetClass;
    private SharedPreferences mSharedPreferences;
    final Handler mHandler = new Handler(Looper.getMainLooper()) {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case HANDLER_MSG_CALLJAVA:
                    String cmsg = (String) msg.obj;
                    callJava(cmsg);
                    break;
            }
            super.handleMessage(msg);
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState){
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        super.onCreate(savedInstanceState);
//        FrameLayout splash = new FrameLayout(this);
        ImageView imageView = new ImageView(this);
//        imageView.setImageResource(R.drawable.splash);
//        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);

        Drawable splash_img = getDrawable(R.drawable.luanch_splash);
        imageView.setImageDrawable(splash_img);
        imageView.setImageResource(R.drawable.luanch_splash);
//        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(800, 800);
//        splash.addView(imageView);
//        params.gravity = Gravity.FILL;
//        mTargetClass = null;

        FrameLayout view = new FrameLayout(this);
        view.setBackgroundColor(Color.BLACK);
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        view.setLayoutParams(params);
        view.addView(imageView);
        setContentView(view);
        jumpGameActivity();

//        if (checkPermissions()){
//            startGame();
//        }else {
//            requestPermission();
//        }
    }

//    private void requestPermission() {
//        ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, 0);
//    }


    private void startGame() {

        mSharedPreferences = getSharedPreferences("config", MODE_PRIVATE);
        boolean isFirst = mSharedPreferences.getBoolean("isFirst", true);
        if (isFirst){
            Toast.makeText(AnyGamesActivity.this, "首次启动游戏加载时间可能过长，请耐心等候", Toast.LENGTH_LONG).show();
            Tools.init(this, new Tools.OnInitListener() {
                @Override
                public void onSuccess() {
                    mSharedPreferences.edit().putBoolean("isFirst", false).apply();
                    jumpGameActivity();
                }

                @Override
                public void onFailed() {
                    new AlertDialog.Builder(AnyGamesActivity.this)
                            .setTitle("初始化失败")
                            .setMessage("为了游戏正常运行，请到手机设置中打开应用存储权限")
                            .setNegativeButton("ok", new DialogInterface.OnClickListener() {
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    Process.killProcess(Process.myPid());
                                }
                            }).create().show();
//                    Toast.makeText(AnyGamesActivity.this, "初始化失败", Toast.LENGTH_LONG).show();
                }
            });
        }else {
            jumpGameActivity();
        }
    }

    private void jumpGameActivity() {
        mTargetClass = GameActivity.class;
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                startActivity(new Intent(AnyGamesActivity.this, mTargetClass));
                finish();
            }
        }, 2000);
    }


//    @Override
//    public void onRequestPermissionsResult(int requestCode, String[] permissions,  int[] grantResults) {
//        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
//        if (requestCode == 0){
//            if (checkPermissions()){
//                startGame();
//            }else {
//                new AlertDialog.Builder(this).setTitle("重要提示")
//                        .setMessage("为了正常运行游戏，请务必授予应用存储权限")
//                        .setPositiveButton("确定", new DialogInterface.OnClickListener() {
//                            @Override
//                            public void onClick(DialogInterface dialog, int which) {
//                                requestPermission();
//                            }
//                        }).create().show();
//            }
//        }
//    }


//    private boolean checkPermissions() {
//        return ContextCompat.checkSelfPermission(this,Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED;
//    }

    @Override
    public void onJniCall(String msg) {
        Message message = new Message();
        message.what =HANDLER_MSG_CALLJAVA;
        message.obj = msg;
        mHandler.sendMessage(message);
    }

    private void callJava(String msg){
        Logger.log(msg);
    }
}
