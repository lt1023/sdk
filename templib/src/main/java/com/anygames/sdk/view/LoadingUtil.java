package com.anygames.sdk.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

public class LoadingUtil {

    public static void showLoadingDefault(Activity context){
        FrameLayout layout = new FrameLayout(context);
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, 200);
        params.gravity = Gravity.BOTTOM|Gravity.CENTER_HORIZONTAL;
        params.bottomMargin = 20;
        LoadingView loadingView = new LoadingView(context);
        loadingView.startAnim();
        FrameLayout.LayoutParams loading_params = new FrameLayout.LayoutParams(120, 200);
        loading_params.gravity = Gravity.TOP|Gravity.CENTER_HORIZONTAL;
        layout.addView(loadingView,loading_params);
        TextView textView = new TextView(context);
        textView.setText("初始化，请稍后...");
        textView.setTextSize(8);
        textView.setTextColor(Color.WHITE);
        FrameLayout.LayoutParams text_params = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);

        text_params.gravity = Gravity.BOTTOM|Gravity.CENTER_HORIZONTAL;
        layout.addView(textView,text_params);
        context.addContentView(layout, params);
    }
}
