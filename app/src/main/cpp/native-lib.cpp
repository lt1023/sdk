#include <jni.h>
#include <string>

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

/**
 *
 *
void showFullVideo(){
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID showFullScreenVideo = env->GetStaticMethodID(SDK,"showFullScreenVideo", "()V");
    env->CallStaticVoidMethod(SDK, showFullScreenVideo);
}





extern "C"
JNIEXPORT void JNICALL
Java_com_anygames_app_SDKWrapper_init(JNIEnv *env, jclass clazz, jobject application) {
    jclass SDK = env->FindClass("com/anygames/sdk/SDK");
    jmethodID init = env->GetStaticMethodID(SDK, "initSDK", "(Landroid/app/Application;)V");
    env->CallStaticVoidMethod(SDK, init, application);



//    long base = baseImageAddr("libil2cpp.so");
//    LOGE("baseImageAddr : %ld",base);
//    init_il2cpp(base);

     //fakeCpp((void *) Behaviour_get_isActiveAndEnabled, (void *)HookedBehaviour_get_isActiveAndEnabled ,reinterpret_cast<void **>(&Behaviour_get_isActiveAndEnabled));

//    fakeCpp((void *) Button_OnPointerClick,
//            (void *) HookedPauseMenuPanel_RestartLevel,
//            reinterpret_cast<void **>(&Button_OnPointerClick));

//    fakeCpp((void *) EndGameAbility_NextLevel,
//            (void *) HookedEndGameAbility_NextLevel,
//            reinterpret_cast<void **>(&EndGameAbility_NextLevel));
}


extern "C"
JNIEXPORT void JNICALL
Java_com_anygames_app_SDKWrapper_register(JNIEnv *env, jclass clazz, jobject base) {
    fakeDex(env, base, "dex");//dex collapse feature support
}



 */