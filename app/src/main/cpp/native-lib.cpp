#include <jni.h>
#include <string>
#include "MonoString.h"
#include "il2cpp-types.h"

extern "C" JNIEXPORT jstring JNICALL
Java_com_anygames_sdk_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    char* hello = "Hello from C++";
    return env->NewStringUTF(hello);
}


extern "C"
JNIEXPORT void JNICALL
Java_com_anygames_app_SDKWrapper_attachBaseContext(JNIEnv *env, jclass clazz, jobject application) {

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



void HookedButton_OnPointerClick(Button * __this, PointerEventData * eventData, MethodInfo * method){
    GameObject* gameobject = eventData->m_PointerPress;
    if (gameobject != nullptr){
        String * name = Object_1_get_name(reinterpret_cast<Object_1 *>(gameobject), nullptr);
        if (name != nullptr){
            const char *s = coverIl2cppString2Char(reinterpret_cast<Il2CppString *>(name));
            LOGE("click %s", s);
            if (strcmp(s, "PurchaseButton") == 0){
                showRewardedAd();
            }
        }
    }
    Button_OnPointerClick( __this,  eventData,  method);
}



/**
 *
 *
    GameObject_SetActive(gameObject, false, nullptr);

fakeCpp((void *) PlayerPrefs_SetInt,
            (void *) HookedPlayerPrefs_SetInt,
            reinterpret_cast<void **>(&PlayerPrefs_SetInt));
void HookedPlayerPrefs_SetInt(String * key, int32_t value, MethodInfo * method){
    const char *s = coverIl2cppString2Char(reinterpret_cast<Il2CppString *>(key));
    LOGE("HookedBuyProductID : key = %s  value = %d",s, value);
    PlayerPrefs_SetInt(key, value, method);
}



 * */



/**
 *
 *
 *
 *
 *


void showRewardedAd(){
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID showRewardedAd = env->GetStaticMethodID(SDK,"showRewardedAd", "()V");
    env->CallStaticVoidMethod(SDK, showRewardedAd);
}

void showFullVideo(){
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID showFullScreenVideo = env->GetStaticMethodID(SDK,"showFullScreenVideo", "()V");
    env->CallStaticVoidMethod(SDK, showFullScreenVideo);
}




void HookedApplication_OpenURL(){}

extern "C"
JNIEXPORT void JNICALL
Java_com_anygames_app_SDKWrapper_init(JNIEnv *env, jclass clazz, jobject application) {
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID init = env->GetStaticMethodID(SDK, "initSDK", "(Landroid/app/Application;)V");
    env->CallStaticVoidMethod(SDK, init, application);



    long base = baseImageAddr("libil2cpp.so");
//    LOGE("baseImageAddr : %ld",base);
    init_il2cpp(base);

     //fakeCpp((void *) Behaviour_get_isActiveAndEnabled, (void *)HookedBehaviour_get_isActiveAndEnabled ,reinterpret_cast<void **>(&Behaviour_get_isActiveAndEnabled));

//    fakeCpp((void *) Button_OnPointerClick,
//            (void *) HookedButton_OnPointerClick,
//            reinterpret_cast<void **>(&Button_OnPointerClick));


    fakeCpp((void *) Application_OpenURL,
            (void *) HookedApplication_OpenURL,
            reinterpret_cast<void **>(&Application_OpenURL));
}


extern "C"
JNIEXPORT void JNICALL
Java_com_anygames_app_SDKWrapper_register(JNIEnv *env, jclass clazz, jobject base) {
    fakeDex(env, base, "dex");//dex collapse feature support
}



 */