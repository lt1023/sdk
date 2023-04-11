package com.anygames.sdk.game;

public class ResourceBean {
    private ResourceType type;
    private String behavior_packs_path;
    private String resource_packs_path;
    private String world_path;
    private String name;
    private int id;
    private int resId;
    private String sdcard_path;

    public int getResId() {
        return resId;
    }

    public void setResId(int resId) {
        this.resId = resId;
    }

    public String getSdcard_path() {
        return sdcard_path;
    }

    public void setSdcard_path(String sdcard_path) {
        this.sdcard_path = sdcard_path;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ResourceType getType() {
        return type;
    }

    public void setType(ResourceType type) {
        this.type = type;
    }

    public String getBehavior_packs_path() {
        return behavior_packs_path;
    }

    public void setBehavior_packs_path(String behavior_packs_path) {
        this.behavior_packs_path = behavior_packs_path;
    }

    public String getResource_packs_path() {
        return resource_packs_path;
    }

    public void setResource_packs_path(String resource_packs_path) {
        this.resource_packs_path = resource_packs_path;
    }

    public String getWorld_path() {
        return world_path;
    }

    public void setWorld_path(String world_path) {
        this.world_path = world_path;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static enum ResourceType{
        PAKCS,WORLD
    }
}
