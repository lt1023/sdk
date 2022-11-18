
__attribute__ ((visibility("hidden")))
void (*Text_set_text)(void* obj, void* text) = nullptr;
__attribute__ ((visibility("hidden")))
void (*Text_onEnable)(void* obj) = nullptr;
__attribute__ ((visibility("hidden")))
void* (*Text_get_text)(void* obj) = nullptr;
__attribute__ ((visibility("hidden")))
void* (*il2cpp_string_new)(const char *value) = nullptr;
__attribute__ ((visibility("hidden")))
void HookedApplication_OpenURL(){}
__attribute__ ((visibility("hidden")))
void prase(void* obj, void* text){
    if (text){
        const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(text));
        if (s){
//            LOGE("Text_set_text %s", s);
            if (strcmp(s, "SOUND") == 0||strcmp(s, "Sound") == 0){
                text = il2cpp_string_new("音量");
            }
            else if (strcmp(s, "PLAY") == 0){
                text = il2cpp_string_new("开始游戏");
            }
            else if (strcmp(s, "EXIT") == 0){
                text = il2cpp_string_new("退出游戏");
            }
            else if (strcmp(s, "BACK") == 0){
                text = il2cpp_string_new("返回");
            }
            else if (strcmp(s, "New Skin") == 0){
                text = il2cpp_string_new("创建新角色");
            }
            else if (strcmp(s, "Clear All") == 0){
                text = il2cpp_string_new("清除所有");
            }
            Text_set_text(obj, text);
        }
    }
}
__attribute__ ((visibility("hidden")))
void A(void* obj){
    Text_onEnable(obj);
    prase(obj, Text_get_text(obj));
}
__attribute__ ((visibility("hidden")))
void B(void* obj, void* text){
    prase(obj, text);
}




//il2cpp_string_new	002954C4
//    __attribute__ ((visibility("hidden")))
//    long add_il2cpp_string_new = baseAddr + 0x002954C4;
//    il2cpp_string_new = reinterpret_cast<void *(*)(const char *)>(add_il2cpp_string_new);
//
//    __attribute__ ((visibility("hidden")))
//    long add_Text_get_text = baseAddr + 0xE8D098;
//    Text_get_text = reinterpret_cast<void *(*)(void *)>(add_Text_get_text);
//    __attribute__ ((visibility("hidden")))
//    long add_Text_onEnable = baseAddr + 0xE8D998;
//    Text_onEnable = reinterpret_cast<void (*)(void *)>(add_Text_onEnable);
//    fakeCpp((void *) add_Text_onEnable,
//            (void *) A,
//            reinterpret_cast<void **>(&Text_onEnable));
//    __attribute__ ((visibility("hidden")))
//    long add_Text_set_text = baseAddr + 0xE8D0A0;
//    Text_set_text = reinterpret_cast<void (*)(void *, void *)>(add_Text_set_text);
//    fakeCpp((void *) Text_set_text,
//            (void *) B,
//            reinterpret_cast<void **>(&Text_set_text));