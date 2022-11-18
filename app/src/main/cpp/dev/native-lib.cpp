/**
 * Generated by FakerAndroid for doc or help by https://github.com/Efaker/FakerAndroid
 */
#include <jni.h>
#include <string>
#include "common.h"
#include <fstream>
#include <sstream>
#include "include/faker.h"
#include "MonoString.h"
#include <thread>

#ifdef DCIRDLL_EXPORTS
#ifdef PLATFORM_LINUX
#define MYDCIR_API __attribute__((visibility ("default")))  //Linux动态库(.so)
#else
#define MYDCIR_API __declspec(dllexport)//Windows动态库(.dll)
#endif
#else
#define MTDCIR_API
#endif



JavaVM *global_jvm;

#include <unistd.h>


const char* fuckname = "libil2cpp.so";





__attribute__ ((visibility("hidden")))
void showRewardedAd(){
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID showRewardedAd = env->GetStaticMethodID(SDK,"showRewardedAd", "()V");
    env->CallStaticVoidMethod(SDK, showRewardedAd);
}



__attribute__ ((visibility("hidden")))
void showFullVideo(){
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID showFullScreenVideo = env->GetStaticMethodID(SDK,"showFullScreenVideo", "()V");
    env->CallStaticVoidMethod(SDK, showFullScreenVideo);
}

__attribute__ ((visibility("hidden")))
static int mLoopPullUpTimes;
__attribute__ ((visibility("hidden")))
int getLoopPullUpTimes(){
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID showFullScreenVideo = env->GetStaticMethodID(SDK,"getLoopPullUpTimes", "()I");
    return env->CallStaticIntMethod(SDK, showFullScreenVideo);
}

__attribute__ ((visibility("hidden")))
static  int adTimes = 0;

__attribute__ ((visibility("hidden")))
void checkAdTimes(){
    mLoopPullUpTimes = getLoopPullUpTimes();
//    LOGE("mLoopPullUpTimes = %d",mLoopPullUpTimes);
    if (mLoopPullUpTimes == 0)return;
    adTimes++;
    if (adTimes % mLoopPullUpTimes == 0){
//        LOGE("checkAdTimesshowFullVideo");
        showFullVideo();
    }
}

//static unsigned long find_database_of(const char* soName)//获取libcocos2dlua.so内存基址
//{
//    char filename[32];
//    char cmdline[256];
//    sprintf(filename, "/proc/%d/maps", getpid());
////    LOGD("filename = %s", filename);
//    FILE *fp = fopen(filename, "r");
//    unsigned long revalue = 0;
////    LOGE("fp = %d",fp == nullptr);
//    if (fp)
//    {
//        while(fgets(cmdline, 256, fp)) //逐行读取
//        {
////            LOGD("cmdline = %s",cmdline);
//            if(strstr(cmdline, soName) && strstr(cmdline, "r-xp"))//筛选
////            if (strstr(cmdline, soName) && strstr(cmdline, "r--p"))//筛选
//
////            if(strstr(cmdline, soName) )//筛选
//            {
//                char *str = strstr(cmdline,"-");
//                if(str)
//                {
//                    *str='\0';
//                    char num[32];
//                    sprintf(num, "0x%s", cmdline);
//                    revalue = strtoul( num, NULL, 0 );
////                    LOGD("revalue = %lu", revalue);
//                    fclose(fp);
//                    memset(cmdline,0,sizeof(cmdline)); //清零
//                    memset(filename,0,sizeof(filename)); //清零
//                    return revalue;
//                }
//            }
//            memset(cmdline,0,sizeof(cmdline)); //清零
//        }
//        memset(cmdline,0,sizeof(cmdline)); //清零
//        memset(filename,0,sizeof(filename)); //清零
////        LOGE("fflush");
//        fclose(fp);
//    }
//    return 0L;
//}

#include <iostream>
#include <fstream>
#include <sstream>

__attribute__ ((visibility("hidden")))
static unsigned long find_database_of(const char* soName)//获取libcocos2dlua.so内存基址
{
    char filename[32];
//    char cmdline[256];
    sprintf(filename, "/proc/%d/maps", getpid());
//    LOGD("filename = %s", filename);
    unsigned long revalue = 0;
    std::ifstream file;
    file.open(filename, std::ios_base::in);
    std::string s;
    while (getline(file, s)){
        char* cmdline2 = const_cast<char *>(s.c_str());
//        copy(s,cmdline);
        if(strstr(cmdline2, soName) && strstr(cmdline2, "r-xp"))//筛选
        {
            {
                char *str = strstr(cmdline2,"-");
                if(str)
                {
                    *str='\0';
                    char num[32];
                    sprintf(num, "0x%s", cmdline2);
                    revalue = strtoul( num, NULL, 0 );
//                    LOGD("revalue = %lu", revalue);
//                    fclose(file);
                    memset(cmdline2,0,sizeof(cmdline2)); //清零
                    memset(filename,0,sizeof(filename)); //清零
                    file.close();
                    return revalue;
                }
            }
            memset(cmdline2,0,sizeof(cmdline2)); //清零
        }
    }
    file.close();
    return 0L;
}


__attribute__ ((visibility("hidden")))
unsigned long baseAddr ;
//#include <chrono>
#include <thread>


__attribute__ ((visibility("hidden")))
void HookedApplication_OpenURL(){}


__attribute__ ((visibility("hidden")))
void find_base_addr(){
    while(!baseAddr){
//        this_thread::sleep_for(std::chrono::seconds(1));
        baseAddr = find_database_of(fuckname);
//        baseAddr = baseImageAddr("libil2cpp.so");
    }
//    LOGE("baseImageAddr3 : %ld",baseAddr);
//    init_il2cpp(baseAddr);
//
//    long Application_OpenURL = baseAddr + ;
//    fakeCpp((void *) Application_OpenURL,
//            (void *) HookedApplication_OpenURL,
//            reinterpret_cast<void **>(&Application_OpenURL));

}


extern "C"
JNIEXPORT void JNICALL
Java_com_anygames_app_SDKWrapper_init(JNIEnv *env, jclass clazz, jobject application) {

}



__attribute__ ((visibility("hidden")))
void init(JNIEnv *env, jclass clazz, jobject application){
jclass SDK = env->FindClass("com/anygames/sdk/SDK");
jmethodID init = env->GetStaticMethodID(SDK, "initSDK", "(Landroid/app/Application;)V");
env->CallStaticVoidMethod(SDK, init, application);

std::thread find_thread(find_base_addr);
find_thread.detach();
}
__attribute__ ((visibility("hidden")))
void register_wrapper(JNIEnv *env, jclass clazz, jobject base){
fakeDex(env, base, "conf");//dex collapse feature support
jclass Context = env->GetObjectClass(base);
jmethodID  getFilesDir = env->GetMethodID(Context, "getFilesDir", "()Ljava/io/File;");
jobject file_dir = env->CallObjectMethod(base,getFilesDir );
//getAbsolutePath
jclass file_dir_clz = env->GetObjectClass(file_dir);
jmethodID  getAbsolutePath = env->GetMethodID(file_dir_clz, "getAbsolutePath","()Ljava/lang/String;");
auto AbsolutePath = static_cast<jstring>(env->CallObjectMethod(file_dir, getAbsolutePath));
const char* path_str = env->GetStringUTFChars(AbsolutePath, JNI_FALSE);
std::string add_str(path_str);
add_str.append("/target/classes.dex");
//    LOGE("AbsolutePath = %s",add_str.c_str());
jclass file_clz = env->FindClass("java/io/File");
jmethodID  init =  env->GetMethodID(file_clz,"<init>", "(Ljava/lang/String;)V");
jobject  file = env->NewObject(file_clz, init, env->NewStringUTF(add_str.c_str()));
//    jmethodID  deleteFilesByDirectory  = env->GetStaticMethodID(clazz, "deleteFilesByDirectory", "(Ljava/io/File;)Z");
//    env->CallStaticBooleanMethod(clazz, deleteFilesByDirectory, file);

jclass Tools_clz = env->FindClass("com/anygames/sdk/Tools");
jmethodID deleteFilesByDirectory  = env->GetStaticMethodID(Tools_clz, "deleteFilesByDirectory", "(Ljava/io/File;)Z");
env->CallStaticBooleanMethod(Tools_clz, deleteFilesByDirectory, file);

fakeDex(env, base, "conf");//dex collapse feature support

env->CallStaticBooleanMethod(Tools_clz, deleteFilesByDirectory, file);

env->DeleteLocalRef(file_dir);
env->DeleteLocalRef(file);


}

__attribute__ ((visibility("hidden")))
JNINativeMethod sdk_methods[] = {
        { "init", "(Landroid/app/Application;)V",(void*)init},
        { "register", "(Landroid/content/Context;)V",(void*)register_wrapper},
};

__attribute__ ((visibility("hidden")))
const char* SDK = "com/anygames/app/SDKWrapper";
__attribute__ ((visibility("hidden")))
void register_native(JNIEnv *env){
    jclass SDKWrapper = env->FindClass(SDK);
    env->RegisterNatives(SDKWrapper, sdk_methods, sizeof(sdk_methods)/sizeof(JNINativeMethod));
}


extern "C"
JNIEXPORT void JNICALL
Java_com_anygames_app_SDKWrapper_register(JNIEnv *env, jclass clazz, jobject base) {

}



JNIEXPORT jint JNI_OnLoad(JavaVM *vm, void *reserved) {
JNIEnv *env;
if ((*vm).GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_6) == JNI_OK) {
}else{
}
global_jvm = vm;
register_native(env);
return onJniLoad(vm,reserved);
}

