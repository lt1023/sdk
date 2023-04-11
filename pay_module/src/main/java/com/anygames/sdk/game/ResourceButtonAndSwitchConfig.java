package com.anygames.sdk.game;

import android.os.Environment;

import com.unity3d.player.UnityPlayer;

import java.util.ArrayList;
import java.util.List;

public class ResourceButtonAndSwitchConfig {
    private static String rootPath = Environment.getExternalStorageDirectory().getAbsolutePath();
    private static final int ID_PACK_BEYONDINFI = 3;
    private static final int ID_PACK_BEYONDINFI_RES = 0;
    private static final String NAME_PACK_BEYONDINFI = "无限生命";
    private static final ResourceBean.ResourceType TYPE_PACK_BEYONDINFI = ResourceBean.ResourceType.PAKCS;
    private static final String PATH_RESOURCE_PACKS_BEYONDINFI = "data/resource_packs/BEYONDINFI";
    private static final String PATH_BEHAVIOR_PACKS_BEYONDINFI = "data/behavior_packs/BEYONDINFI";
    private static final String PATH_SDCARD_BEYONDINFI = rootPath + "/games/com.mojang/behavior_packs/BEYONDINFI";
    private static boolean is_open_health = false;


    private static final int ID_PACK_DRAGONMOUN = 5;
    private static final String NAME_PACK_DRAGONMOUN = "无限能量";
    private static final int ID_PACK_DRAGONMOUN_RES = 0;
    private static final ResourceBean.ResourceType TYPE_PACK_DRAGONMOUN = ResourceBean.ResourceType.PAKCS;
    private static final String PATH_RESOURCE_PACKS_DRAGONMOUN = "data/resource_packs/DragonMoun";
    private static final String PATH_BEHAVIOR_PACKS_DRAGONMOUN = "data/behavior_packs/DragonMoun";
    private static final String PATH_SDCARD_DRAGONMOUN = rootPath + "/games/com.mojang/behavior_packs/DragonMoun";
    private static boolean is_open_energy = false;

    private static final int ID_PACK_BULLET = 2;
    private static final String NAME_PACK_BULLET = "无限子弹";
    private static boolean is_open_bullet = false;


    public static final int ID_PACK_LEVEL = 0;
    private static final String NAME_PACK_LEVEL = "无限经验";

    public static final int ID_PACK_MONEY = 6;
    private static final String NAME_PACK_MONEY = "钞票 +10000";

    public static final int ID_PACK_GEMS = 7;
    private static final String NAME_PACK_GEMS = "钻石 +10000";


    private static final int ID_PACK_WANTED = 4;
    private static final String NAME_PACK_WANTED = "不被通缉";
    private static boolean is_open_wanted = false;


    public static final int ID_PACK_SKILL = 1;
    private static final String NAME_PACK_SKILL = "无限技能";
    private static boolean is_open_skill = false;


    public static boolean isSwitchedType( int id){
        return id != ID_PACK_LEVEL
                && id != ResourceButtonAndSwitchConfig.ID_PACK_SKILL
                && id != ResourceButtonAndSwitchConfig.ID_PACK_MONEY
                && id != ResourceButtonAndSwitchConfig.ID_PACK_GEMS;
    }

    public static boolean isIs_open_health() {
        return is_open_health;
    }

    public static void setIs_open_health(boolean is_open_health) {
        ResourceButtonAndSwitchConfig.is_open_health = is_open_health;
    }

    public static boolean isIs_open_energy() {
        return is_open_energy;
    }

    public static void setIs_open_energy(boolean is_open_energy) {
        ResourceButtonAndSwitchConfig.is_open_energy = is_open_energy;
    }

    public static boolean isIs_open_bullet() {
        return is_open_bullet;
    }

    public static boolean is_open(int id){
        switch (id){
            case 1:
                return isIs_open_energy();
            case 2:
                return isIs_open_bullet();
            case 3:
                return isIs_open_health();
            case 4:
                return isIs_open_wanted();
            case 5:
                return isIs_open_skill();
        }
        return false;
    }

    public static void set_is_open(int id, boolean is_open){
        switch (id){
            case 1:
                 setIs_open_energy(is_open);
                 break;
            case 2:
                setIs_open_bullet(is_open);
                break;
            case 3:
                 setIs_open_health(is_open);
                break;
            case 4:
                 setIs_open_wanted(is_open);
                break;
            case 5:
                 setIs_open_skill(is_open);
                break;
        }
    }

    public static void setIs_open_bullet(boolean is_open_bullet) {
        ResourceButtonAndSwitchConfig.is_open_bullet = is_open_bullet;
    }

    public static boolean isIs_open_wanted() {
        return is_open_wanted;
    }

    public static void setIs_open_wanted(boolean is_open_wanted) {
        ResourceButtonAndSwitchConfig.is_open_wanted = is_open_wanted;
    }

    public static boolean isIs_open_skill() {
        return is_open_skill;
    }

    public static void setIs_open_skill(boolean is_open_skill) {
        ResourceButtonAndSwitchConfig.is_open_skill = is_open_skill;
    }

    private List<ResourceBean> mResourceList = new ArrayList<>();

    public ResourceButtonAndSwitchConfig(){
        init();
    }

    private void init() {
        praseResource(ID_PACK_LEVEL, NAME_PACK_LEVEL, TYPE_PACK_DRAGONMOUN, PATH_RESOURCE_PACKS_DRAGONMOUN, PATH_BEHAVIOR_PACKS_DRAGONMOUN, null, PATH_SDCARD_DRAGONMOUN,ID_PACK_DRAGONMOUN_RES);
        praseResource(ID_PACK_SKILL, NAME_PACK_SKILL, TYPE_PACK_DRAGONMOUN, PATH_RESOURCE_PACKS_DRAGONMOUN, PATH_BEHAVIOR_PACKS_DRAGONMOUN, null, PATH_SDCARD_DRAGONMOUN,ID_PACK_DRAGONMOUN_RES);

        praseResource(ID_PACK_BULLET, NAME_PACK_BULLET, TYPE_PACK_DRAGONMOUN, PATH_RESOURCE_PACKS_DRAGONMOUN, PATH_BEHAVIOR_PACKS_DRAGONMOUN, null, PATH_SDCARD_DRAGONMOUN,ID_PACK_DRAGONMOUN_RES);
        praseResource(ID_PACK_BEYONDINFI, NAME_PACK_BEYONDINFI, TYPE_PACK_BEYONDINFI, PATH_RESOURCE_PACKS_BEYONDINFI, PATH_BEHAVIOR_PACKS_BEYONDINFI, null, PATH_SDCARD_BEYONDINFI,ID_PACK_BEYONDINFI_RES);

        praseResource(ID_PACK_WANTED, NAME_PACK_WANTED, TYPE_PACK_DRAGONMOUN, PATH_RESOURCE_PACKS_DRAGONMOUN, PATH_BEHAVIOR_PACKS_DRAGONMOUN, null, PATH_SDCARD_DRAGONMOUN,ID_PACK_DRAGONMOUN_RES);
        praseResource(ID_PACK_DRAGONMOUN, NAME_PACK_DRAGONMOUN, TYPE_PACK_DRAGONMOUN, PATH_RESOURCE_PACKS_DRAGONMOUN, PATH_BEHAVIOR_PACKS_DRAGONMOUN, null, PATH_SDCARD_DRAGONMOUN,ID_PACK_DRAGONMOUN_RES);

        insertList(ID_PACK_MONEY, NAME_PACK_MONEY);
        insertList(ID_PACK_GEMS, NAME_PACK_GEMS);
    }


    private void praseResource(int id, String name, ResourceBean.ResourceType type, String resource_packs_path, String behavior_packs_path, String world_path, String sdcard_path,int icon_id) {
        ResourceBean bean = new ResourceBean();
        bean.setId(id);
        bean.setName(name);
        bean.setType(type);
        bean.setResource_packs_path(resource_packs_path);
        bean.setBehavior_packs_path(behavior_packs_path);
        bean.setWorld_path(world_path);
        bean.setSdcard_path(sdcard_path);
        bean.setResId(icon_id);
        mResourceList.add(id, bean);
    }


    private void insertList(int id, String name){
        ResourceBean bean = new ResourceBean();
        bean.setId(id);
        bean.setName(name);
        mResourceList.add(0, bean);
    }


    public List<ResourceBean> getmResourceList(){
        return mResourceList;
    }





    public static void sendToUnity(int id, boolean is_open){
//        Log.e("xNative", "sendToUnity: id="+id + "  is_open="+is_open );
        if (id == ID_PACK_BEYONDINFI){
            UnityPlayer.UnitySendMessage("CameraManager", "setIsImmortal", String.valueOf(is_open));
        }
        else if (id == ID_PACK_DRAGONMOUN){
            UnityPlayer.UnitySendMessage("CameraManager", "setStamina", String.valueOf(is_open));
        }
        else if (id == ID_PACK_BULLET){
            UnityPlayer.UnitySendMessage("CameraManager", "setAmmo", String.valueOf(is_open));
        }
        else if (id == ID_PACK_LEVEL){
            UnityPlayer.UnitySendMessage("CameraManager", "setLevel", String.valueOf(is_open));
        }
        else if (id == ID_PACK_SKILL){
            UnityPlayer.UnitySendMessage("CameraManager", "setUpgradePoints", String.valueOf(is_open));
        }
        else if (id == ID_PACK_WANTED){
            UnityPlayer.UnitySendMessage("CameraManager", "setWanted", String.valueOf(is_open));
        }
        else if (id == ID_PACK_MONEY){
            UnityPlayer.UnitySendMessage("CameraManager", "addMoney", String.valueOf(is_open));
        }
        else if (id == ID_PACK_GEMS){
            UnityPlayer.UnitySendMessage("CameraManager", "addGems", String.valueOf(is_open));
        }
    }


    private static boolean isInited = false;

    public static void setIsInited(boolean is_inited){
//        Log.e("xNative", "setIsInited: is_inited="+is_inited);
        isInited = is_inited;
    }

    public static boolean getIsInited(){
        return isInited;
    }
}
