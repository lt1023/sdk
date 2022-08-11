//
// Created by AA on 2022/7/15.
//
#include "il2cpp-types.h"
#include "inlinehook.cpp"

void showRewardedAd(){
    LOGE("showRewardedAd");
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID showRewardedAd = env->GetStaticMethodID(SDK,"showRewardedAd", "()V");
    env->CallStaticVoidMethod(SDK, showRewardedAd);
}

const char *coverIl2cppString2Char(Il2CppString *str) {
    MonoString *monoString = reinterpret_cast<MonoString *>(str);
    const char *s = monoString->toChars();
    return s;
}


void *(*get_pointerClick)(void *arg1) = NULL;

void *(*object_get_name)(void *arg1) = NULL;

void (*OnPointerClick)(void *arg1, void *arg2) = NULL;


void HookedOnPointerClick(void *arg1, void *arg2) {
    void *gameobject = get_pointerClick(arg2);
    if (gameobject != nullptr) {
        void *name = object_get_name(gameobject);
        if (name != nullptr) {
            const char *s = coverIl2cppString2Char(reinterpret_cast<Il2CppString *>(name));
//            LOGE("click %s", s);
            if (strcmp(s, "NextLevel") == 0) {
                nextLevelClickTimes++;
                if (nextLevelClickTimes % 3 == 0) {
                    showRewardedAd();
                }
            }
            if (strcmp(s, "Restart") == 0) {
                RestartClickTimes++;
                if (RestartClickTimes % 3 == 0) {
                    showRewardedAd();
                }
            }
            if (strcmp(s, "Playground") == 0
                ||strcmp(s, "FLY MOD") == 0
                ||strcmp(s, "CRUSH MOD") == 0
                    ) {
                showRewardedAd();
            }
        }
    }
    return OnPointerClick(arg1, arg2);
}

int hooked(unsigned long func) {
//    LOGD("func = %x", func);
    if (registerInlineHook((uint32_t) func, (uint32_t) HookedOnPointerClick,
                           (uint32_t **) &OnPointerClick) != ELE7EN_OK) {
        return -1;
    }
    if (inlineHook(func) != ELE7EN_OK) {
        return -1;
    }

    if (registerInlineHook((uint32_t) add_PlayRewardVideo, (uint32_t) HookedPlayRewardVideo,
                           (uint32_t **) &add_PlayRewardVideo) != ELE7EN_OK) {
        return -1;
    }
    if (inlineHook(add_PlayRewardVideo) != ELE7EN_OK) {
        return -1;
    }

//    LOGD("hookCalcFunc-------");
    return 0;
}


unsigned long add_OnPointerClick = base + 0xCBB784;
OnPointerClick = reinterpret_cast<void (*)(void *, void *)>(add_OnPointerClick);

long add_get_pointerClick = base + 0xD1D14C;
get_pointerClick = reinterpret_cast<void *(*)(void *)>(add_get_pointerClick);
long add_object_get_name = base + 0xC31844;
object_get_name = reinterpret_cast<void *(*)(void *)>(add_object_get_name);

add_PlayRewardVideo = base + 0x349B4C;
hooked(add_OnPointerClick);