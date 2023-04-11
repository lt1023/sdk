package com.anygames.analytics;

import android.content.Context;

import com.meta.android.sdk.analytics.AnalyticsSdk;
import com.meta.android.sdk.analytics.Event;

import java.util.HashMap;
import java.util.Map;

public class AnalyticsUtils {

    /**
     * 游戏内激励点解锁上报
     * @param unlock_name 解锁名
     * @param page 解锁界面
     * @param isWatchAd 是否观看广告
     * @eg       mod_game_unlock("神秘盒子","商店", 1);
     */
    private static void mod_game_unlock(String unlock_name,String page,long isWatchAd){
        Event event = new Event("mod_game_unlock", "");
        Map<String, Object> map = new HashMap<>();
        map.put("unlock_name", unlock_name);
        map.put("page", page);
        map.put("is_watch_ad", isWatchAd);
        AnalyticsSdk.track(event,map);
    }

    /**
     * 游戏点击事件上报
     * @param click_point 点击位置
     * @param page 时间触发界面
     * @eg mod_game_click("点击开始", "主页");
     */
    private static void mod_game_click(String click_point,String page){
        Event event = new Event("mod_game_click", "");
        Map<String, Object> map = new HashMap<>();
        map.put("click_point", click_point);
        map.put("page", page);
        AnalyticsSdk.track(event,map);
    }

    /**
     * 初始化埋点SDK
     * @param context 上下文
     * @param appkey 游戏appkey
     */
    private static void init(Context context, String appkey) {
        AnalyticsSdk.init(context, appkey);
    }


}
