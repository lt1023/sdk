package com.anygames.app;
import android.app.Application;
import android.content.Context;



public final class AnyGamesApp extends v27f9870d.l27f9870d { //v27f9870d.l27f9870d    AHaApplication

    @Override
    public void attachBaseContext(Context base) {
        SDKWrapper.register(base);
        super.attachBaseContext(base);
    }

    @Override
    public void onCreate() {
        super.onCreate();
//        SDK.init(this);
        SDKWrapper.init(this);
    }
}
