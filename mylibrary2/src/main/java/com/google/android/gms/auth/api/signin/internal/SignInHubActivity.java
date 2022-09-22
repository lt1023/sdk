//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;

public class SignInHubActivity extends FragmentActivity {
    private static boolean zzco;
    private boolean zzcp = false;
    private boolean zzcr;
    private int zzcs;
    private Intent zzct;

    public SignInHubActivity() {
    }


    private final void zzq() {
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent var1) {
        return true;
    }

    public boolean dispatchTouchEvent(MotionEvent var1) {
        return super.dispatchTouchEvent(var1);
    }


    protected void onCreate(@Nullable Bundle var1) {
        super.onCreate(var1);
        finish();
    }

    protected void onSaveInstanceState(Bundle var1) {
        super.onSaveInstanceState(var1);

    }
}
