package com.anygames.sdk.game;

import android.os.Environment;

import com.example.myapplication.R;

import java.util.ArrayList;
import java.util.List;

public class ResourceConfig {
    private static String rootPath = Environment.getExternalStorageDirectory().getAbsolutePath();
    private static final int ID_PACK_BEYONDINFI = 0;
    private static final int ID_PACK_BEYONDINFI_RES = 0;
    private static final String NAME_PACK_BEYONDINFI = "枪械之王模组";
    private static final ResourceBean.ResourceType TYPE_PACK_BEYONDINFI = ResourceBean.ResourceType.PAKCS;
    private static final String PATH_RESOURCE_PACKS_BEYONDINFI = "data/resource_packs/BEYONDINFI";
    private static final String PATH_BEHAVIOR_PACKS_BEYONDINFI = "data/behavior_packs/BEYONDINFI";
    private static final String PATH_SDCARD_BEYONDINFI = rootPath + "/games/com.mojang/behavior_packs/BEYONDINFI";

    private static final int ID_PACK_DRAGONMOUN = 1;
    private static final String NAME_PACK_DRAGONMOUN = "龙骑士模组";
    private static final int ID_PACK_DRAGONMOUN_RES = 0;
    private static final ResourceBean.ResourceType TYPE_PACK_DRAGONMOUN = ResourceBean.ResourceType.PAKCS;
    private static final String PATH_RESOURCE_PACKS_DRAGONMOUN = "data/resource_packs/DragonMoun";
    private static final String PATH_BEHAVIOR_PACKS_DRAGONMOUN = "data/behavior_packs/DragonMoun";
    private static final String PATH_SDCARD_DRAGONMOUN = rootPath + "/games/com.mojang/behavior_packs/DragonMoun";

    private List<ResourceBean> mResourceList = new ArrayList<>();

    public ResourceConfig(){
        init();
    }

    private void init() {
        praseResource(ID_PACK_BEYONDINFI, NAME_PACK_BEYONDINFI, TYPE_PACK_BEYONDINFI, PATH_RESOURCE_PACKS_BEYONDINFI, PATH_BEHAVIOR_PACKS_BEYONDINFI, null, PATH_SDCARD_BEYONDINFI,ID_PACK_BEYONDINFI_RES);
        praseResource(ID_PACK_DRAGONMOUN, NAME_PACK_DRAGONMOUN, TYPE_PACK_DRAGONMOUN, PATH_RESOURCE_PACKS_DRAGONMOUN, PATH_BEHAVIOR_PACKS_DRAGONMOUN, null, PATH_SDCARD_DRAGONMOUN,ID_PACK_DRAGONMOUN_RES);
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


    public List<ResourceBean> getmResourceList(){
        return mResourceList;
    }


}
