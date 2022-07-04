package org.cocos2dx.lib;

public class Cocos2dxHelper {
    public interface Cocos2dxHelperListener {
        void runOnGLThread(Runnable runnable);

        void showDialog(String str, String str2);
    }

}
