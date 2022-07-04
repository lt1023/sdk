package com.anygames.app;
import android.app.Application;
import android.content.Context;


public class AnyGamesApp extends Application {


    @Override
    public void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        SDKWrapper.register(base);
    }

    @Override
    public void onCreate() {
        super.onCreate();
//        SDK.init(this);
        SDKWrapper.init(this);
    }
}
