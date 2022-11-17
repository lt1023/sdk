//
// Created by ZERO on 2022/10/18.
//
#include "include/faker.h"
#include "MonoString.h"

const char *coverIl2cppString2Char(void *str) {
    auto *monoString = reinterpret_cast<MonoString *>(str);
    u16string ss((char16_t *) monoString->getChars(), 0, monoString->getLength());
    const char *s = utf16le_to_utf8(ss).c_str();
    return s;
}



//void HookedOnPointerClick(void *arg1, void *arg2) {
//    void *gameobject = get_pointerClick(arg2);
//    if (gameobject != nullptr) {
//        void *name = object_get_name(gameobject);
//        if (name != nullptr) {
//            const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(name));
////            LOGE("click %s", s);
//            if (strcmp(s, "NextLevel") == 0) {
//            }
//        }
//    }
//    return OnPointerClick(arg1, arg2);
//}

void *(*get_pointerClick)(void *arg1) = nullptr;

void *(*object_get_name)(void *arg1) = nullptr;

void (*OnPointerClick)(void *arg1, void *arg2) = nullptr;


void init_OnPointerClick(long addOnPointerClick, long addget_pointerClick, long addobject_get_name,
                         void *HookedOnPointerClick) {
    unsigned long add_OnPointerClick = addOnPointerClick;
    OnPointerClick = reinterpret_cast<void (*)(void *, void *)>(add_OnPointerClick);

    long add_get_pointerClick = addget_pointerClick;
    get_pointerClick = reinterpret_cast<void *(*)(void *)>(add_get_pointerClick);
    long add_object_get_name = addobject_get_name;
    object_get_name = reinterpret_cast<void *(*)(void *)>(add_object_get_name);
    fakeCpp((void *) addOnPointerClick,
            HookedOnPointerClick,
            reinterpret_cast<void **>(&OnPointerClick));
}

//   init_OnPointerClick(baseAddr + 0x3E8474,baseAddr + 0x3E0F94, baseAddr + 0x5EAB08,
//                        reinterpret_cast<void*>(HookedOnPointerClick));





bool (*get_isActiveAndEnabled)(void *obj) = nullptr;

void *(*get_gameObject)(void *obj) = nullptr;

void (*gameobject_SetActive)(void *obj, bool value) = nullptr;



//long addOnPointerClick = baseAddr + 0x68BEA0;
//long addget_pointerClick = baseAddr + 0x6846D0;
//long addr_object_get_name = baseAddr + 0xC8600C;
//init_OnPointerClick(addOnPointerClick, addget_pointerClick, addr_object_get_name, (void*) AOnPointerClick);


bool isActiveAndEnabled(void *obj) {
    bool result = get_isActiveAndEnabled(obj);
    void *game_obj = get_gameObject(obj);
    if (game_obj != nullptr) {
        void *name = object_get_name(game_obj);
        if (name != nullptr) {
            const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(name));
            LOGE("name = %s", s);
            if (strcmp(s, "ButtonFacebook") == 0
                || strcmp(s, "Button Twitter") == 0
                    ) {
                gameobject_SetActive(game_obj, false);
            }
        }
    }
    return result;
}

void init_isActiveAndEnabled(long addr_get_isActiveAndEnabled, long addr_gameobject_SetActive,
                             long addr_object_get_name, long addr_get_gameObject,
                             void *isActiveAndEnabled) {
    gameobject_SetActive = reinterpret_cast<void (*)(void *, bool)>(addr_gameobject_SetActive);
    object_get_name = reinterpret_cast<void *(*)(void *)>(addr_object_get_name);
    get_gameObject = reinterpret_cast<void *(*)(void *)>(addr_get_gameObject);//Component
    fakeCpp((void *) addr_get_isActiveAndEnabled,
            isActiveAndEnabled,
            reinterpret_cast<void **>(&get_isActiveAndEnabled));
}



//long addr_gameobject_SetActive = baseAddr + 0xC6824C;
//long addr_object_get_name = baseAddr + 0xC8600C;
//long addr_get_gameObject = baseAddr + 0xC5C674;
//long addr_get_isActiveAndEnabled = baseAddr + 0xC576E4;
//init_isActiveAndEnabled(addr_get_isActiveAndEnabled, addr_gameobject_SetActive, addr_object_get_name, addr_get_gameObject, (void*)isActiveAndEnabled);




void (*Text_set_text)(void* obj, void*value) = nullptr;
void* (*il2cpp_string_new)(const char *value) = nullptr;
