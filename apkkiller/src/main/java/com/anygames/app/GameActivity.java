package com.anygames.app;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;

import com.anygames.sdk.SDK;
import com.hbg.tool.host.app.HostApp;

public final class GameActivity extends Activity {
    private static Activity mActivity;
    public static Activity getActivity() {
        return mActivity;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        mActivity = this;
//        HostApp.getIns().attachClassLoader(this);
//        PreferenceManager.getDefaultSharedPreferences(this);

        Intent intent = new Intent();
//        intent.setClassName(this, "com.hbg.tool.app.MainActivity");
        intent.setClassName(this, "com.ihuman.ahaworld.ui.page.AppStartActivity");

        startActivity(intent);
        finish();
    }
}
