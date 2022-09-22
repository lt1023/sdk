//
// Created by AA on 2022/7/15.
//
#include "il2cpp-types.h"
#include "inlinehook.cpp"
#include "MonoString.h"

void showRewardedAd(){
    LOGE("showRewardedAd");
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID showRewardedAd = env->GetStaticMethodID(SDK,"showRewardedAd", "()V");
    env->CallStaticVoidMethod(SDK, showRewardedAd);
}
std::string utf16le_to_utf8(const std::u16string &u16str) {
    if (u16str.empty()) { return std::string(); }
    const char16_t *p = u16str.data();
    std::u16string::size_type len = u16str.length();
    if (p[0] == 0xFEFF) {
        p += 1;
        len -= 1;
    }

    std::string u8str;
    u8str.reserve(len * 3);

    char16_t u16char;
    for (std::u16string::size_type i = 0; i < len; ++i) {
        u16char = p[i];

        if (u16char < 0x0080) {
            // u16char <= 0x007f
            // U- 0000 0000 ~ 0000 07ff : 0xxx xxxx
            u8str.push_back((char) (u16char & 0x00FF));  // 取低8bit
            continue;
        }
        if (u16char >= 0x0080 && u16char <= 0x07FF) {
            // * U-00000080 - U-000007FF:  110xxxxx 10xxxxxx
            u8str.push_back((char) (((u16char >> 6) & 0x1F) | 0xC0));
            u8str.push_back((char) ((u16char & 0x3F) | 0x80));
            continue;
        }
        if (u16char >= 0xD800 && u16char <= 0xDBFF) {
            // * U-00010000 - U-001FFFFF: 1111 0xxx 10xxxxxx 10xxxxxx 10xxxxxx
            uint32_t highSur = u16char;
            uint32_t lowSur = p[++i];
            uint32_t codePoint = highSur - 0xD800;
            codePoint <<= 10;
            codePoint |= lowSur - 0xDC00;
            codePoint += 0x10000;
            u8str.push_back((char) ((codePoint >> 18) | 0xF0));
            u8str.push_back((char) (((codePoint >> 12) & 0x3F) | 0x80));
            u8str.push_back((char) (((codePoint >> 06) & 0x3F) | 0x80));
            u8str.push_back((char) ((codePoint & 0x3F) | 0x80));
            continue;
        }
        {
            // * U-0000E000 - U-0000FFFF:  1110xxxx 10xxxxxx 10xxxxxx
            u8str.push_back((char) (((u16char >> 12) & 0x0F) | 0xE0));
            u8str.push_back((char) (((u16char >> 6) & 0x3F) | 0x80));
            u8str.push_back((char) ((u16char & 0x3F) | 0x80));
            continue;
        }
    }

    return u8str;
}


const char *coverIl2cppString2Char(void *str) {
    auto *monoString = reinterpret_cast<MonoString *>(str);
    u16string ss((char16_t *) monoString->getChars(), 0, monoString->getLength());
    const char *s = utf16le_to_utf8(ss).c_str();
    return s;
}
void *arg2;
const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(arg2));



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