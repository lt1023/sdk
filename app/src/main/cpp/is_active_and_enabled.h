
#include "MonoString.h"

#ifdef __cplusplus
#include "inlinehook.cpp"
#endif


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

bool (*get_isActiveAndEnabled)(void* obj) = nullptr;
void* (*get_gameObject)(void* obj) = nullptr;
void* (*object_get_name)(void* obj) = nullptr;
void (*gameobject_SetActive)(void* obj, bool value) = nullptr;

bool Hookedget_isActiveAndEnabled(void* obj){
    bool result = get_isActiveAndEnabled(obj);
    void* game_obj = get_gameObject(obj);
    if (game_obj != nullptr){
        void * name = object_get_name(game_obj);
        if (name != nullptr){
            const char *s = coverIl2cppString2Char(reinterpret_cast<void *>(name));
            LOGE("name = %s", s);
            if (strcmp(s, "ButtonFacebook") == 0
                || strcmp(s, "Button Twitter") == 0
                    ){
                gameobject_SetActive(game_obj, false);
            }
        }
    }
    return result;
}

int hooked(unsigned long func) {
    if (registerInlineHook((uint32_t) func, (uint32_t) Hookedget_isActiveAndEnabled,
                           (uint32_t **) &get_isActiveAndEnabled) != ELE7EN_OK) {
        return -1;
    }
    if (inlineHook(func) != ELE7EN_OK) {
        return -1;
    }
    return 0;
}



long base = baseImageAddr("libil2cpp.so");
long addr_gameobject_SetActive = base + 0xA8FDBC;
gameobject_SetActive = reinterpret_cast<void (*)(void *, bool)>(addr_gameobject_SetActive);
long addr_object_get_name = base + 0xA019E0;
object_get_name = reinterpret_cast<void *(*)(void *)>(addr_object_get_name);
long addr_get_gameObject = base + 0xA865BC;
get_gameObject = reinterpret_cast<void *(*)(void *)>(addr_get_gameObject);//Component
long addr_get_isActiveAndEnabled = base + 0xA82C78;
hooked(addr_get_isActiveAndEnabled);


