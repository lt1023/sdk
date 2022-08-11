package com.anygames.app;


import android.app.Activity;
import android.os.Bundle;

public class GameActivity extends com.unity3d.player.UnityPlayerActivity {
    private static Activity mActivity;
    public static Activity getActivity() {
        return mActivity;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        mActivity = this;
    }
}
