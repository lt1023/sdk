package com.anygames;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Base64;
import android.util.Log;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;

import com.anygames.view.LoadingUtil;

import java.io.File;
import java.util.Arrays;


public final class AnyGamesActivity extends Activity {
    //    static final int HANDLER_MSG_CALLJAVA = 1000;
//    private Class mTargetClass;
    private SharedPreferences mSharedPreferences;
    private Handler mHandler = new Handler(Looper.getMainLooper());

    boolean isTest = false;

    private static final int EmulatorType_FC = 1001;//红白
    private static final int EmulatorType_ARCADE = 1002;//街机
    private static final int EmulatorType_MD = 1003;
    private static final int EmulatorType_GB = 1004;
    private static final int EmulatorType_GBA = 1005;
    private static final int EmulatorType_GBC = 1006;
    private static final int EmulatorType_N64 = 1007;
    private static final int EmulatorType_PS = 1008;
    private static final int EmulatorType_PSP = 1009;
    private static final int EmulatorType_NDS = 1010;
    private static final int EmulatorType_SFC = 1011;
    private static final int EmulatorType_ONS = 1012;
    private static final int EmulatorType_JAVA = 1013;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        super.onCreate(savedInstanceState);
//        FrameLayout splash = new FrameLayout(this);
        ImageView imageView = new ImageView(this);
//        imageView.setImageResource(R.drawable.splash);
//        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);

//        Drawable splash_img = getDrawable(R.drawable.luanch_splash);
        Drawable splash_img = getDrawable(getResources().getIdentifier("luanch_splash", "drawable", getPackageName()));
        imageView.setImageDrawable(splash_img);
//        imageView.setImageResource(splash_img);
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
//        jumpGameActivity();


        if (isTest){
            if (checkPermissions()){
                startLaunchGame(this);
            }else {
                requestPermission();
            }
            return;
        }

//        if (checkPermissions()){
        startGame();


////        byte[] bytes = Tools.signatureFromAPI(this, "com.imayi.topia");
//        byte[] bytes = Tools.signatureFromAPI(this, "com.qqhd.game.qcpk.mi");
//        Log.e("PmsHook", "bytes: " + Arrays.toString(bytes));
//
//        byte[] encode = Base64.encode(bytes, Base64.DEFAULT);
//        Log.e("PmsHook", "encode: " + Arrays.toString(encode));
//
//
//        String bytesToString = Base64.encodeToString(bytes, Base64.DEFAULT);
//        Log.e("PmsHook", "bytesToString: " + bytesToString);
//
//        String encodeToString = Base64.encodeToString(encode, Base64.DEFAULT);
//        Log.e("PmsHook", "encodeToString: " + encodeToString);
//


//        }else {
//            requestPermission();
//        }
    }

    private void startLaunchGame(Context context) {
        File dir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        String game_path = dir.getAbsolutePath().concat("/gbc.zip");
        startLaunchGame(context, game_path, EmulatorType_GBC);
    }

    /**
     *
     * @param context 上下文
     * @param path rom路径
     * @param game_emulator 模拟器类型
     */
    private void startLaunchGame(Context context, String path, int game_emulator) {
        try {
            PackageManager packageManager = getPackageManager();
            Intent intent = packageManager.getLaunchIntentForPackage("com.zhangyangjing.starfish");
            intent.putExtra("game_path", path);
            intent.putExtra("game_emulator", game_emulator);
            context.startActivity(intent);
        } catch (Exception ignore) {}
    }

    private void requestPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            requestPermissions(new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, 0);
        }
    }


    private void startGame() {
        mSharedPreferences = getSharedPreferences("config", MODE_PRIVATE);
        boolean isFirst = mSharedPreferences.getBoolean("isFirst", true);
        if (isFirst) {
//            Toast.makeText(AnyGamesActivity.this, "首次启动游戏加载时间可能过长，请耐心等候", Toast.LENGTH_LONG).show();
//            Log.e("xNative", "startGame: " + targetPath);
            LoadingUtil.showLoadingDefault(this);
            Tools.init(this, new Tools.OnInitListener() {
                @Override
                public void onSuccess() {
                    mSharedPreferences.edit().putBoolean("isFirst", false).apply();
                    jumpGameActivity();
                }

                @Override
                public void onFailed() {
                    runOnUiThread(() -> new AlertDialog.Builder(AnyGamesActivity.this)
                            .setTitle("初始化失败")
                            .setMessage("为了游戏正常运行，请到手机设置中打开应用存储权限")
                            .setNegativeButton("ok", new DialogInterface.OnClickListener() {
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    Process.killProcess(Process.myPid());
                                }
                            }).create().show());
//                    Toast.makeText(AnyGamesActivity.this, "初始化失败", Toast.LENGTH_LONG).show();
                }
            });
        } else {
            jumpGameActivity();
        }
    }

    private String mTargetClass = null;

    private void jumpGameActivity() {
        try {
            mTargetClass = getPackageManager().getApplicationInfo(getPackageName(), PackageManager.GET_META_DATA).metaData.getString("target_activity");
        } catch (PackageManager.NameNotFoundException ignore) {
        }

        mHandler.postDelayed(() -> {
            Intent intent = new Intent();
            intent.setClassName(AnyGamesActivity.this, mTargetClass);
            startActivity(intent);
            finish();
        }, 2000);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mHandler.removeCallbacksAndMessages(null);
        mHandler = null;
        LoadingUtil.onDestory();
    }

        @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions,  int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 0){
            if (checkPermissions()){
                startLaunchGame(this);
            }else {
                new AlertDialog.Builder(this).setTitle("重要提示")
                        .setMessage("为了正常运行游戏，请务必授予应用存储权限")
                        .setPositiveButton("确定", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                requestPermission();
                            }
                        }).create().show();
            }
        }
    }


    private boolean checkPermissions() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            return checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED;
        }
        return true;
    }

//    @Override
//    public void onJniCall(String msg) {
//        Message message = new Message();
//        message.what =HANDLER_MSG_CALLJAVA;
//        message.obj = msg;
//        mHandler.sendMessage(message);
//    }
//
//    private void callJava(String msg){
//        Logger.log(msg);
//    }
}
