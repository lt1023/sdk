package com.anygames.sdk.utils;

import android.app.Activity;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.anygames.sdk.game.OnFloatClicklistener;
import com.anygames.sdk.pay.PaySDK;
import com.example.myapplication.R;
import com.hjq.xtoast.XToast;
//import com.lzf.easyfloat.EasyFloat;

public class ScreenUtils {
    public static int getScreenWidth(Activity context) {
        return context.getWindowManager().getDefaultDisplay().getWidth();
    }

    public static int getScreenHeight(Activity context) {
        return context.getWindowManager().getDefaultDisplay().getHeight();
    }

    public static void showRestartAppView() {
        Activity activity = PaySDK.getInstance().getGameActivity();
        if (activity == null) {
            throw new NullPointerException("GameActivity is  Null !");
        }
        XToast toast =  new XToast(activity)
                .setContentView(R.layout.layout_floating_restart_app_view)
                // 设置成可拖拽的
//                .setDraggable()
                .setGravity(Gravity.CENTER)
                // 设置显示时长
//                .setDuration(10000)
                // 设置动画样式
                .setAnimStyle(android.R.style.Animation_Translucent)
                // 设置外层是否能被触摸
                .setOutsideTouchable(false);
                // 设置窗口背景阴影强度
                //.setBackgroundDimAmount(0.5f)
//                .setImageDrawable(android.R.id.icon, R.drawable.play_game)
//                .setText(android.R.id.message, "点我消失")
        toast.findViewById(R.id.restart_app_close).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                toast.cancel();
            }
        });
        toast.findViewById(R.id.restart_app_restart).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                toast.cancel();
                PaySDK.getInstance().restartApp();
            }
        });
        toast.show();
    }


    public static void showFloatView(OnFloatClicklistener clicklistener) {
        Activity activity = PaySDK.getInstance().getGameActivity();
        if (activity == null) {
            throw new NullPointerException("GameActivity is  Null !");
        }
        new XToast(activity)
                .setContentView(R.layout.layout_floating_view)
                // 设置成可拖拽的
                .setDraggable()
                .setGravity(Gravity.CENTER_VERTICAL | Gravity.START)
                .setOnClickListener((XToast.OnClickListener<View>) (toast, view) -> clicklistener.onClick())
                // 设置显示时长
//                .setDuration(10000)
                // 设置动画样式
                //.setAnimStyle(android.R.style.Animation_Translucent)
                // 设置外层是否能被触摸
                //.setOutsideTouchable(false)
                // 设置窗口背景阴影强度
                //.setBackgroundDimAmount(0.5f)
//                .setImageDrawable(android.R.id.icon, R.drawable.play_game)
//                .setText(android.R.id.message, "点我消失")
                .show();
    }


    public static void showContentView(RecyclerView.Adapter adapter) {
        Activity activity = PaySDK.getInstance().getGameActivity();
//        if (!PaySDK.getInstance().isVip()) {
//            showVipTips(activity);
//            return;
//        }
        XToast toast = new XToast(activity)
                .setContentView(R.layout.layout_floating_vip_content)
                // 设置成可拖拽的
//                .setDraggable()
                .setGravity(Gravity.CENTER)
                // 设置显示时长
//                .setDuration(10000)
                // 设置动画样式
                .setAnimStyle(android.R.style.Animation_Translucent)
                // 设置外层是否能被触摸
                .setOutsideTouchable(false)
                // 设置窗口背景阴影强度
                .setBackgroundDimAmount(0.5f)
                .setWidth(getScreenWidth(activity) / 2)
                .setHeight(getScreenHeight(activity) / 4 * 3)
//                .setImageDrawable(android.R.id.icon, R.drawable.play_game)
//                .setText(android.R.id.message, "点我消失")
//                .setOnClickListener(R.id.string_vip_tips_close, new XToast.OnClickListener<View>() {
//                    @Override
//                    public void onClick(XToast<?> toast, View view) {
//                        toast.cancel();
//                    }
//                })
                .setOnClickListener(R.id.float_content_close, new XToast.OnClickListener<View>() {
                    @Override
                    public void onClick(XToast<?> toast, View view) {
                        toast.cancel();
                    }
                });
        RecyclerView listView = (RecyclerView) toast.findViewById(R.id.float_module_list);
        LinearLayoutManager layoutManager = new LinearLayoutManager(activity);
        listView.setLayoutManager(layoutManager);
        listView.setAdapter(adapter);
        toast.show();
    }

    public static void showVipTips(Activity context) {
        new XToast(context)
                .setContentView(R.layout.layout_floating_vip_tips)
                // 设置成可拖拽的
//                .setDraggable()
                .setGravity(Gravity.CENTER)
                // 设置显示时长
//                .setDuration(10000)
                // 设置动画样式
                .setAnimStyle(android.R.style.Animation_Translucent)
                // 设置外层是否能被触摸
                .setOutsideTouchable(false)
                // 设置窗口背景阴影强度
                .setBackgroundDimAmount(0.5f)
                .setWidth(getScreenWidth(context) / 2)
                .setHeight(ViewGroup.LayoutParams.WRAP_CONTENT)
//                .setImageDrawable(android.R.id.icon, R.drawable.play_game)
//                .setText(android.R.id.message, "点我消失")
                .setOnClickListener(R.id.string_vip_tips_close, new XToast.OnClickListener<View>() {
                    @Override
                    public void onClick(XToast<?> toast, View view) {
                        toast.cancel();
                    }
                })
                .setOnClickListener(R.id.string_vip_tips_jump, new XToast.OnClickListener<View>() {
                    @Override
                    public void onClick(XToast<?> toast, View view) {
                        toast.cancel();
                        PaySDK.getInstance().jumpToCharge();
                    }
                })
                .show();
    }


}
