package com.anygames.sdk.utils;

import android.app.Activity;
import android.view.Gravity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;

import com.anygames.sdk.pay.PaySDK;
import com.example.myapplication.R;
import com.hjq.xtoast.XToast;

public class LoadingUtils {
    private static XToast loadingView;

    public static void showLoading(Activity activity) {
        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (loadingView == null) {
                    loadingView = new XToast(activity)
                            .setContentView(R.layout.layout_loading_dialog)
                            // 设置成可拖拽的
//                .setDraggable()
                            .setGravity(Gravity.CENTER)
//                .setOnClickListener((XToast.OnClickListener<View>) (toast, view) -> clicklistener.onClick())
                            // 设置显示时长
//                .setDuration(10000)
                            // 设置动画样式
                            .setAnimStyle(android.R.style.Animation_Translucent)
                            // 设置外层是否能被触摸
                            .setOutsideTouchable(false)
                            // 设置窗口背景阴影强度
                            .setBackgroundDimAmount(0.5f)
//                .setImageDrawable(android.R.id.icon, R.drawable.play_game)
//                .setText(android.R.id.message, "点我消失")
//                .show();
                    ;
                }
                Animation animation = AnimationUtils.loadAnimation(activity, R.anim.loading_animation);
                animation.setInterpolator(new LinearInterpolator());
                loadingView.findViewById(R.id.loading_dialog_img).startAnimation(animation);
                loadingView.show();
            }
        });
    }

    /**
     *
     */
    public static void hideLoading(Activity activity) {
        if (loadingView != null) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    loadingView.cancel();
                }
            });
        }
    }

}
