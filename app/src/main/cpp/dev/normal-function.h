//
// Created by ZERO on 2022/10/18.
//
//#include "include/faker.h"
#include "./MonoString.h"
#include "string_map.h"
map<string, string> str_map = string_map_parse();
map<string, string> start_str_map = string_start_map_parse();
map<string, string> replace_map = string_replace_map_parse();

struct Byte4{
    char ch1;
    char ch2;
    char ch3;
    char ch4;
};
struct Byte8{
    Byte4 ch1;
    Byte4 ch2;
};
struct Byte16{
    Byte8 ch1;
    Byte8 ch2;
};
struct Byte32{
    Byte16 ch1;
    Byte16 ch2;
};
struct Byte64{
    Byte32 ch1;
    Byte32 ch2;
};
struct Byte128{
    Byte64 ch1;
    Byte64 ch2;
};

struct Byte256{
    Byte128 ch1;
    Byte128 ch2;
};


struct Byte512{
    Byte256 ch1;
    Byte256 ch2;
};



__attribute__ ((visibility("hidden")))
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
//init_OnPointerClick(addOnPointerClick, addget_pointerClick, addr_object_get_name, (void*) HookedOnPointerClick);


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





/**
 * 替换字符串中字符
 * @param ori_text
 * @param rep_text
 * @param result_text
 * @return
 */
const char* replace_text(const char* ori_text, const char* rep_text , const char* result_text ){
    string ori_str(ori_text);
    string rep_str(rep_text);
    return ori_str.replace(ori_str.find(rep_text), rep_str.length(), result_text).c_str();
}

char (*String_get_Chars)(void* obj, int index) = nullptr;
int (*String_get_Length)(void* obj) = nullptr;

void init_string(long add_String_get_Chars,long add_String_get_Length){
    String_get_Chars = reinterpret_cast<char (*)(void *, int)>(add_String_get_Chars);
    String_get_Length = reinterpret_cast<int (*)(void *)>(add_String_get_Length);
}


void (*Text_set_text)(void* obj, void*value) = nullptr;
void (*Text_OnEnable)(void* obj) = nullptr;
void* (*Text_get_text)(void* obj) = nullptr;
void* (*il2cpp_string_new)(const char *value) = nullptr;

void init_il2cpp_string_new(long add_il2cpp_string_new){
    il2cpp_string_new = reinterpret_cast<void *(*)(const char *)>(add_il2cpp_string_new);
}

void init_object_get_name(long add_object_get_name){
    object_get_name = reinterpret_cast<void *(*)(void *)>(add_object_get_name);
}

void init_Text(long add_Text_set_text,long add_Text_get_text,long add_Text_OnEnable,long add_il2cpp_string_new, void* praseText, void* OnEnable){
    Text_set_text = reinterpret_cast<void (*)(void *, void *)>(add_Text_set_text);
    Text_get_text = reinterpret_cast<void *(*)(void *)>(add_Text_get_text);
    Text_OnEnable = reinterpret_cast<void (*)(void *)>(add_Text_OnEnable);
//    praseText = src_praseText;
    fakeCpp((void *) add_Text_set_text,
            (void *) praseText,
            reinterpret_cast<void **>(&Text_set_text));
    fakeCpp((void *) add_Text_OnEnable,
            (void *)OnEnable,
            reinterpret_cast<void **>(&Text_OnEnable));
}

//long add_il2cpp_string_new = baseAddr + 0x00106470;
//long add_Text_set_text = baseAddr+0x53E2CC;
//long add_Text_get_text = baseAddr+0x53E2C4;
//long add_Text_OnEnable = baseAddr+0x53EBC4;//ParseInputText
//init_Text(add_Text_set_text, add_Text_get_text, add_Text_OnEnable,add_il2cpp_string_new,(void* )praseText,(void* )AText_OnEnable);


// wstring转string
std::string WstringToString(const std::wstring str)
{
    unsigned len = str.size() * 4;
    setlocale(LC_CTYPE, "");
    char *p = new char[len];
    wcstombs(p,str.c_str(),len);
    std::string str1(p);
    delete[] p;
    return str1;
}


string getCString(void* str){
    string result;
    int length = String_get_Length(str);
    for (int x = 0; x<length; x++){
        result += String_get_Chars(str, x);
    }
    return result;
}

bool startsWith(const std::string& str, const std::string prefix) {
    return (str.rfind(prefix, 0) == 0);
}


string is_in_replace_map(std::string s){
    string result;
    for (auto it = replace_map.begin(); it != replace_map.end(); it++) {
//        if (startsWith(s, it->first)){
//            result = s.replace(s.find(it->first), it->first.length(), it->second);
//            break;
//        }
        if (s.find(it->first) != s.npos){
            result = s.replace(s.find(it->first), it->first.length(), it->second);
            break;
        }
    }
    return result;
}


__attribute__ ((visibility("hidden")))
void praseText(void* obj, void*value){
    if (value){
        string s = getCString(value);
        if (!s.empty()){
            LOGE("praseText->%s", s.c_str());
            if (str_map.count(s) > 0){
//                LOGE("praseText2 %s", str_map[s].c_str());
                value = il2cpp_string_new(str_map[s].c_str());
            }else{
                string result = is_in_replace_map(s);
                if (!result.empty()){
                    value = il2cpp_string_new(result.c_str());
                } else{
                    for (auto it = start_str_map.begin(); it != start_str_map.end(); it++) {
                        if (startsWith(s, it->first)){
                            value = il2cpp_string_new(it->second.c_str());
                            break;
                        }
                    }
                }
            }
        }
    }
    Text_set_text(obj, value);
}

__attribute__ ((visibility("hidden")))
void AText_OnEnable(void* obj){
    praseText(obj, Text_get_text(obj));
    Text_OnEnable(obj);
}