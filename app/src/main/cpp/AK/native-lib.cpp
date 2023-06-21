//
// Created by roy on 2019-09-29.
//
#include <jni.h>
#include <stdio.h>
#include <dlfcn.h>
#include <android/log.h>
#include "include/AndHook.h"
#include "include/il2cpp-function-addr32.h"
#include "include/il2cpp-function-addr64.h"

#if defined(__arm64__) || defined(__aarch64__)
#include "arm64-v8a/MonoString.h"
#elif defined(__arm__)
#include "armeabi-v7a/MonoString.h"
#endif

#define log(format, str) __android_log_print(ANDROID_LOG_DEBUG,"wxgames",format,str)
#define LOG_TAG "wxgames"
#define LOGE(...)  __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
JavaVM *global_jvm;
static jobject callBack;
static jboolean getreward;

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm,void* reserved){
    if (vm == NULL)
    {
        return JNI_ERR;
    }
 
    JNIEnv *env = NULL;
    global_jvm = vm;
    log("%s", "JNI_OnLoad");
    if(vm->GetEnv((void**)&env,JNI_VERSION_1_4)!=JNI_OK){
        return JNI_ERR;
    }
 
    return JNI_VERSION_1_4;

}
/**
 * in your replace_call method you can call this method to call java
 * @param event
 */
void callJava(const char *event) {
    if(callBack==NULL) {
        log("%s", "调用java为null");
        return;
    }
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass clazz = env->GetObjectClass(callBack);
    jmethodID onCall = env->GetMethodID(clazz, "onJniCall", "(Ljava/lang/String;)V");
    jstring envent = env->NewStringUTF(event);
    env->CallVoidMethod(callBack, onCall, envent);
    env->DeleteLocalRef(envent);
}

/**
 * this a util cover c# string to c string
 * @param str
 * @return
 */
const char* coverIl2cppString2Char(void *str){
    MonoString *monoString = reinterpret_cast<MonoString *>(str);
    const char *s = monoString->toChars();
    return s;
}


MonoString* coverChar2Il2cppString(const char *c){
    MonoString *monoString =  new MonoString();
    monoString->setMonoString(c);
    return monoString;
}

void NOP_RET_VOID(void *klass) {
}

bool NOP_RET_TRUE(void *klass){
    return true;
}

bool NOP_RET_FALSE(void *klass){
    return false;
}

unsigned long GetTickCount()
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (ts.tv_sec * 1000 + ts.tv_nsec / 1000000);
}

void *(*oldUnityEngine_UISystemProfilerApi__BeginSample) (void* type,  const void* method)=NULL;
void *newUnityEngine_UISystemProfilerApi__BeginSample (void* type,  const void* method){
    static auto tick = GetTickCount();
    if (GetTickCount() - tick > 1000) {
        callJava("OnTick");
        tick = GetTickCount();
    }
    return oldUnityEngine_UISystemProfilerApi__BeginSample(type, method);
}




void* *(*oldUnityEngine_Component__get_gameObject) (void* __this, const void* method)= NULL;
void* *newUnityEngine_Component__get_gameObject (void* __this, const void* method){
    // log("%s", "newUnityEngine_Component__get_gameObject");
    return oldUnityEngine_Component__get_gameObject(__this, method);
}


void* *(*oldUnityEngine_Object__get_name) (void* __this, const void* method) = NULL;
void* *newUnityEngine_Object__get_name (void* __this, const void* method){
    // log("%s", "newUnityEngine_Object__get_name");
    return oldUnityEngine_Object__get_name(__this, method);
}

void *(*oldUnityEngine_GameObject__SetActive) (void* __this,bool value,  const void* method)=NULL;
void *newUnityEngine_GameObject__SetActive (void* __this,bool value,  const void* method){
    // LOGE("newUnityEngine_GameObject__SetActive");
    return oldUnityEngine_GameObject__SetActive(__this,value, method);
}

bool (*oldUnityEngine_Behaviour__get_isActiveAndEnabled) (void* __this, const void* method) = NULL;
bool newUnityEngine_Behaviour__get_isActiveAndEnabled(void* __this, const void* method){
    // log("%s", "newUnityEngine_Behaviour__get_isActiveAndEnabled");
    void * gameobj = newUnityEngine_Component__get_gameObject(__this, method);
    void *name = newUnityEngine_Object__get_name(gameobj, NULL);
    const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(name));
    if(strcmp(s,"Judul")==0){
        newUnityEngine_GameObject__SetActive(gameobj, false,NULL);//方式二
    } else{

    }
    return oldUnityEngine_Behaviour__get_isActiveAndEnabled(__this, method);
}

bool *(*oldUnityEngine_Behaviour__get_enabled) (void* __this, const void* method) = NULL;
bool *newUnityEngine_Behaviour__get_enabled (void* __this, const void* method){
    log("%s", "newUnityEngine_Behaviour__get_enabled");
    void * gameobj = newUnityEngine_Component__get_gameObject(__this, method);
    void *name = newUnityEngine_Object__get_name(gameobj, NULL);
    const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(name));
    log("%s", s);//乱码 需要实现coverIl2cppString2Char
    return oldUnityEngine_Behaviour__get_enabled(__this, method);
}

//处理64位情况下乱码问题
/*string deal64_errorcode(System_String_o *name){
    const char u_s = name->fields.m_firstChar;
    int32_t u_i = name->fields.m_stringLength;
    string str;
    for (int i = 0; i < u_i; i++) {
        void* p_s2 = &name->fields.m_firstChar+i;
        str.append((char*)p_s2);
    }
    LOGE("deal64_errorcode: %s",str.c_str());
    return str;
}*/

//按钮点击
void *(*oldButton_Press) (void* __this, const void* method) = NULL;
void *newButton_Press(void * __this, void * method){
    void *gameObject = newUnityEngine_Component__get_gameObject(__this, NULL);
    void *name = newUnityEngine_Object__get_name((gameObject), NULL);
    const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(name));
    LOGE("class %p---- HookedButton_Press GameObject Mame: %s",__this,s);
    // deal64_errorcode(name);
    if(strcmp(s,"btnSubmit")==0){
        callJava("ShowInsert");
    }
    if(strcmp(s,"btnReplay")==0){
        callJava("ShowInsert");
    }
    return oldButton_Press(__this,method);
}

//屏蔽链接
void *(*oldUnityEngine_Application__OpenURL) (void* url, const void* method) = NULL;
void *newUnityEngine_Application__OpenURL(void* url, const void* method){
    log("%s", "newUnityEngine_Application__OpenURL" );
    return nullptr;
}

//hook汉化
void *(*oldUnityEngine_UI_Text__set_text) (void* __this, void* value, const void* method)=NULL;
void *newUnityEngine_UI_Text__set_text (void* __this, void* value, const void* method){
    const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(value));
    LOGE("newUnityEngine_UI_Text__set_text - %s", s);
    if(value == NULL){
        return oldUnityEngine_UI_Text__set_text(__this, value, method);
    }
    if (strcmp(s, "") == 0){
        return oldUnityEngine_UI_Text__set_text(__this, value, method);
    }else if (strcmp(s, "Amazing! Champion will be yours!") == 0){
        MonoString * ms = coverChar2Il2cppString("惊人！冠军将是你的！");
        return oldUnityEngine_UI_Text__set_text(__this, ms, method);
    }
    else if(strcmp(s,"BaseTower")==0){
        const char* ch = "基地塔";
//        void* ms =  il2cpp_string_new(ch);//方式二
//        return oldUnityEngine_UI_Text__set_text(__this, ms, method);
    }
    else{
        return oldUnityEngine_UI_Text__set_text(__this, value, method);
    }
}

/////////UnityEngine_UI_Button__OnPointerClick
void *(*oldUnityEngine_UI_Button__OnPointerClick) (void* __this, void* eventData, const void* method)=NULL;
void *newUnityEngine_UI_Button__OnPointerClick (void* __this, void* eventData, const void* method){

    void *gameObject = newUnityEngine_Component__get_gameObject(__this, NULL);
    void *name = newUnityEngine_Object__get_name((gameObject), NULL);
    const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(name));
    LOGE("class %p---- newUnityEngine_UI_Button__OnPointerClick GameObject Mame: %s",__this,s);
//    if(strcmp(s,"Continue_Btn")==0){
//        callJava("ShowFullScreen");
//    }
//    if(strcmp(s,"Close_Btn")==0){
//        callJava("ShowMistakeRewardAd");
//    }
//    if(strcmp(s,"NoThanks_Btn")==0){
//        callJava("ShowMistakeRewardAd");
//    }
//    if(strcmp(s,"Btn_GenericSkinSelection")==0){
//        callJava("ShowInsert");
//    }

    if(strcmp(s,"BNext")==0){
        callJava("ShowFullScreen");
    }if(strcmp(s,"BRetry")==0){
        callJava("ShowFullScreen");
    }

    return oldUnityEngine_UI_Button__OnPointerClick(__this,eventData, method);
}
//call:
void callOnPointerClick(int64_t lib_img){
    void *UnityEngine_UI_Button__OnPointerClick = (void*)((int64_t)lib_img + OnPointerClick_offset);
    LOGE("%p", UnityEngine_UI_Button__OnPointerClick);
    if (UnityEngine_UI_Button__OnPointerClick != NULL) {
        LOGE("UnityEngine_UI_Button__OnPointerClick symblel is not null");
        AKHookFunction(UnityEngine_UI_Button__OnPointerClick, (void *) newUnityEngine_UI_Button__OnPointerClick, (void **) &oldUnityEngine_UI_Button__OnPointerClick);
    }
}


//{
//      "Address": 17584868,
//      "Name": "System.Action$$Invoke",
//      "Signature": "void System_Action__Invoke (System_Action_o* __this, const MethodInfo* method);",
//      "TypeSignature": "vii"
//    }


void (*oldSystem_Action__Invoke) (void* __this, const void* method) = NULL;
void newSystem_Action__Invoke(void* __this,const void* method){
    log("%s", "newSystem_Action__Invoke" );
    return oldSystem_Action__Invoke(__this,method);
}

/////////UnityEngine_UI_Button__OnPointerClick
//{
//      "Address": 8759164,
//      "Name": "AdsManager$$ShowRewardVideo",
//      "Signature": "void AdsManager__ShowRewardVideo (AdsManager_o* __this, System_Action_o* actionDone, System_String_o* position, const MethodInfo* method);",
//      "TypeSignature": "viiii"
//    }

static void* _actionDone;
void (*oldAdsManager__ShowRewardVideo) (void* __this, void* actionDone, void* position, const void* method) = NULL;
void newAdsManager__ShowRewardVideo(void* __this, void* actionDone, void* position, const void* method){

    _actionDone = actionDone;
    LOGE("newAdsManager__ShowRewardVideo:%p",_actionDone);
    callJava("ShowRewarVideoAd");
    newSystem_Action__Invoke(_actionDone,NULL);
   /* if(getreward){
        newSystem_Action__Invoke(actionDone,NULL);
        getreward = false;
    }*/


    //oldAdsManager__ShowRewardVideo(__this,actionDone,position,method);
}
//{
//      "Address": 8761336,
//      "Name": "AdsManager$$LoadBanner",
//      "Signature": "void AdsManager__LoadBanner (AdsManager_o* __this, const MethodInfo* method);",
//      "TypeSignature": "vii"
//    }
void (*oldAdsManager__LoadBanner) (void* __this, const void* method) = NULL;
void newAdsManager__LoadBanner(void* __this,  const void* method){
    log("%s", "newAdsManager__LoadBanner" );


}

//{
//      "Address": 8719288,
//      "Name": "LevelController$$DestroyCurrentLevel",
//      "Signature": "void LevelController__DestroyCurrentLevel (LevelController_o* __this, const MethodInfo* method);",
//      "TypeSignature": "vii"
//    }
void (*oldLevelController__DestroyCurrentLevel) (void* __this, const void* method) = NULL;
void newLevelController__DestroyCurrentLevel(void* __this,  const void* method){
    log("%s", "newLevelController__DestroyCurrentLevel" );
    callJava("ShowInsert");
    oldLevelController__DestroyCurrentLevel(__this,method);

}

//{
//      "Address": 8721812,
//      "Name": "GameManager$$NextLevel",
//      "Signature": "void GameManager__NextLevel (GameManager_o* __this, const MethodInfo* method);",
//      "TypeSignature": "vii"
//    }
void (*oldGameManager__NextLevel) (void* __this, const void* method) = NULL;
void newGameManager__NextLevel(void* __this,  const void* method){
    log("%s", "newGameManager__NextLevel" );
    callJava("ShowInsert");
    oldGameManager__NextLevel(__this,method);

}


extern "C" JNIEXPORT
void unity_hook_register() {
    const void *lib_img = AKGetImageByName("libil2cpp.so");
    if (lib_img != NULL) {
        log("%s", "find linker");
        log("%p", lib_img);
    }else{
        LOGE("查找so基地址为空...");
        return;
    }

#if defined(__arm64__) || defined(__aarch64__)
    //todo:64位
    // callOnPointerClick((int64_t)lib_img)
    void*  GameManager__NextLevel = AKFindAnonymity(lib_img , 8721812);
    log("%p", GameManager__NextLevel);
    if (GameManager__NextLevel != NULL) {
        log("%s", "GameManager__NextLevel symblel is not null");
        AKHookFunction(GameManager__NextLevel, (void *) newGameManager__NextLevel, (void **) &oldGameManager__NextLevel);
    }


    void*  UnityEngine_UISystemProfilerApi__BeginSample = AKFindAnonymity(lib_img , 22585984);
    log("%p", UnityEngine_UISystemProfilerApi__BeginSample);
    if (UnityEngine_UISystemProfilerApi__BeginSample != NULL) {
        log("%s", "UnityEngine_UISystemProfilerApi__BeginSample symblel is not null");
        AKHookFunction(UnityEngine_UISystemProfilerApi__BeginSample, (void *) newUnityEngine_UISystemProfilerApi__BeginSample, (void **) &oldUnityEngine_UISystemProfilerApi__BeginSample);
    }


    void*  LevelController__DestroyCurrentLevel = AKFindAnonymity(lib_img,  8719288);
    log("%p", LevelController__DestroyCurrentLevel);
    if (LevelController__DestroyCurrentLevel != NULL) {
        log("%s", "LevelController__DestroyCurrentLevel symblel is not null");
        AKHookFunction(LevelController__DestroyCurrentLevel, (void *) newLevelController__DestroyCurrentLevel, (void **) &oldLevelController__DestroyCurrentLevel);
    }



    void*  AdsManager__LoadBanner = AKFindAnonymity(lib_img,  8761336);
    log("%p", AdsManager__LoadBanner);
    if (AdsManager__LoadBanner != NULL) {
        log("%s", "AdsManager__LoadBanner symblel is not null");
        AKHookFunction(AdsManager__LoadBanner, (void *) newAdsManager__LoadBanner, (void **) &oldAdsManager__LoadBanner);
    }




    void*  AdsManager__ShowRewardVideo = AKFindAnonymity(lib_img,  8759164);
    log("%p", AdsManager__ShowRewardVideo);
    if (AdsManager__ShowRewardVideo != NULL) {
        log("%s", "AdsManager__ShowRewardVideo symblel is not null");
        AKHookFunction(AdsManager__ShowRewardVideo, (void *) newAdsManager__ShowRewardVideo, (void **) &oldAdsManager__ShowRewardVideo);
    }
    void*  System_Action__Invoke = AKFindAnonymity(lib_img,  17584868);
    log("%p", System_Action__Invoke);
    if (System_Action__Invoke != NULL) {
        log("%s", "System_Action__Invoke symblel is not null");
        AKHookFunction(System_Action__Invoke, (void *) newSystem_Action__Invoke, (void **) &oldSystem_Action__Invoke);
    }


     void*  UnityEngine_Component__get_gameObject = AKFindAnonymity(lib_img,  get_gameObject_offset_64);
     log("%p", UnityEngine_Component__get_gameObject);
     if (UnityEngine_Component__get_gameObject != NULL) {
         log("%s", "UnityEngine_Component__get_gameObject symblel is not null");
         AKHookFunction(UnityEngine_Component__get_gameObject, (void *) newUnityEngine_Component__get_gameObject, (void **) &oldUnityEngine_Component__get_gameObject);
     }

     void*  UnityEngine_Object__get_name = AKFindAnonymity(lib_img,  get_name_offset_64);
     log("%p", UnityEngine_Object__get_name);
     if (UnityEngine_Object__get_name != NULL) {
         log("%s", "UnityEngine_Object__get_name symblel is not null");
         AKHookFunction(UnityEngine_Object__get_name, (void *) newUnityEngine_Object__get_name, (void **) &oldUnityEngine_Object__get_name);
     }

     void*  UnityEngine_GameObject__SetActive = AKFindAnonymity(lib_img,  SetActive_offset_64);
     log("%p", UnityEngine_GameObject__SetActive);
     if (UnityEngine_GameObject__SetActive != NULL) {
         log("%s", "UnityEngine_GameObject__SetActive symblel is not null");
         AKHookFunction(UnityEngine_GameObject__SetActive, (void *) newUnityEngine_GameObject__SetActive, (void **) &oldUnityEngine_GameObject__SetActive);
     }


     void*  UnityEngine_Behaviour__get_isActiveAndEnabled = AKFindAnonymity(lib_img,  get_isActiveAndEnabled_offset_64);
     log("%p", UnityEngine_Behaviour__get_isActiveAndEnabled);
     if (UnityEngine_Behaviour__get_isActiveAndEnabled != NULL) {
         log("%s", "UnityEngine_Behaviour__get_isActiveAndEnabled symblel is not null");
         AKHookFunction(UnityEngine_Behaviour__get_isActiveAndEnabled, (void *) newUnityEngine_Behaviour__get_isActiveAndEnabled, (void **) &oldUnityEngine_Behaviour__get_isActiveAndEnabled);
     }

     void*  UnityEngine_UI_Button__Press = AKFindAnonymity(lib_img,  Press_offset_64);
     log("%p", UnityEngine_UI_Button__Press);
     if (UnityEngine_UI_Button__Press != NULL) {
         log("%s", "UnityEngine_UI_Button__Press symblel is not null");
         AKHookFunction(UnityEngine_UI_Button__Press, (void *) newButton_Press, (void **) &oldButton_Press);
     }

#elif defined(__arm__)
    //todo:32位

    void*  GameManager__NextLevel = AKFindAnonymity(lib_img , 6548976);
    log("%p", GameManager__NextLevel);
    if (GameManager__NextLevel != NULL) {
        log("%s", "GameManager__NextLevel symblel is not null");
        AKHookFunction(GameManager__NextLevel, (void *) newGameManager__NextLevel, (void **) &oldGameManager__NextLevel);
    }


void*  UnityEngine_UISystemProfilerApi__BeginSample = AKFindAnonymity(lib_img , 23839704);
    log("%p", UnityEngine_UISystemProfilerApi__BeginSample);
    if (UnityEngine_UISystemProfilerApi__BeginSample != NULL) {
        log("%s", "UnityEngine_UISystemProfilerApi__BeginSample symblel is not null");
        AKHookFunction(UnityEngine_UISystemProfilerApi__BeginSample, (void *) newUnityEngine_UISystemProfilerApi__BeginSample, (void **) &oldUnityEngine_UISystemProfilerApi__BeginSample);
    }
void*  LevelController__DestroyCurrentLevel = AKFindAnonymity(lib_img,  6545428);
    log("%p", LevelController__DestroyCurrentLevel);
    if (LevelController__DestroyCurrentLevel != NULL) {
        log("%s", "LevelController__DestroyCurrentLevel symblel is not null");
        AKHookFunction(LevelController__DestroyCurrentLevel, (void *) newLevelController__DestroyCurrentLevel, (void **) &oldLevelController__DestroyCurrentLevel);
    }

void*  AdsManager__LoadBanner = AKFindAnonymity(lib_img,  6600808);
    log("%p", AdsManager__LoadBanner);
    if (AdsManager__LoadBanner != NULL) {
        log("%s", "AdsManager__LoadBanner symblel is not null");
        AKHookFunction(AdsManager__LoadBanner, (void *) newAdsManager__LoadBanner, (void **) &oldAdsManager__LoadBanner);
    }

  void*  AdsManager__ShowRewardVideo = AKFindAnonymity(lib_img,  6598136);
    log("%p", AdsManager__ShowRewardVideo);
    if (AdsManager__ShowRewardVideo != NULL) {
        log("%s", "AdsManager__ShowRewardVideo symblel is not null");
        AKHookFunction(AdsManager__ShowRewardVideo, (void *) newAdsManager__ShowRewardVideo, (void **) &oldAdsManager__ShowRewardVideo);
    }
void*  System_Action__Invoke = AKFindAnonymity(lib_img,  17128572);
    log("%p", System_Action__Invoke);
    if (System_Action__Invoke != NULL) {
        log("%s", "System_Action__Invoke symblel is not null");
        AKHookFunction(System_Action__Invoke, (void *) newSystem_Action__Invoke, (void **) &oldSystem_Action__Invoke);
    }


     void*  UnityEngine_Component__get_gameObject = AKFindAnonymity(lib_img,  get_gameObject_offset);
     log("%p", UnityEngine_Component__get_gameObject);
     if (UnityEngine_Component__get_gameObject != NULL) {
         log("%s", "UnityEngine_Component__get_gameObject symblel is not null");
         AKHookFunction(UnityEngine_Component__get_gameObject, (void *) newUnityEngine_Component__get_gameObject, (void **) &oldUnityEngine_Component__get_gameObject);
     }

     void*  UnityEngine_Object__get_name = AKFindAnonymity(lib_img,  get_name_offset);
     log("%p", UnityEngine_Object__get_name);
     if (UnityEngine_Object__get_name != NULL) {
         log("%s", "UnityEngine_Object__get_name symblel is not null");
         AKHookFunction(UnityEngine_Object__get_name, (void *) newUnityEngine_Object__get_name, (void **) &oldUnityEngine_Object__get_name);
     }

     void*  UnityEngine_GameObject__SetActive = AKFindAnonymity(lib_img,  SetActive_offset);
     log("%p", UnityEngine_GameObject__SetActive);
     if (UnityEngine_GameObject__SetActive != NULL) {
         log("%s", "UnityEngine_GameObject__SetActive symblel is not null");
         AKHookFunction(UnityEngine_GameObject__SetActive, (void *) newUnityEngine_GameObject__SetActive, (void **) &oldUnityEngine_GameObject__SetActive);
     }


     void*  UnityEngine_Behaviour__get_isActiveAndEnabled = AKFindAnonymity(lib_img,  get_isActiveAndEnabled_offset);
     log("%p", UnityEngine_Behaviour__get_isActiveAndEnabled);
     if (UnityEngine_Behaviour__get_isActiveAndEnabled != NULL) {
         log("%s", "UnityEngine_Behaviour__get_isActiveAndEnabled symblel is not null");
         AKHookFunction(UnityEngine_Behaviour__get_isActiveAndEnabled, (void *) newUnityEngine_Behaviour__get_isActiveAndEnabled, (void **) &oldUnityEngine_Behaviour__get_isActiveAndEnabled);
     }

     void*  UnityEngine_UI_Button__Press = AKFindAnonymity(lib_img,  Press_offset);
     log("%p", UnityEngine_UI_Button__Press);
     if (UnityEngine_UI_Button__Press != NULL) {
         log("%s", "UnityEngine_UI_Button__Press symblel is not null");
         AKHookFunction(UnityEngine_UI_Button__Press, (void *) newButton_Press, (void **) &oldButton_Press);
     }

#endif

}

extern "C"
JNIEXPORT jstring JNICALL
Java_com_oo_YdActivity_registerUnityHook(JNIEnv *env, jobject instance) {
    unity_hook_register();
    jbyteArray pArray = env->NewByteArray(10);
    return env->NewStringUTF("ss");
}

extern "C"
JNIEXPORT void JNICALL
Java_com_oo_YdActivity_registerCallBack(JNIEnv *env, jobject thiz,jobject object) {
    callBack = env->NewGlobalRef(object);//
}

extern "C"
JNIEXPORT void JNICALL
Java_com_oo_YdActivity_setADCallback(JNIEnv *env, jobject clazz,jboolean b) {

}