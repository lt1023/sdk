//
// Created by ZERO on 2022/10/18.
//
#include "include/faker.h"
#include "MonoString.h"

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

static unsigned long find_database_of(const char *soName)//获取libcocos2dlua.so内存基址
{
    char filename[32];
    char cmdline[256];
    sprintf(filename, "/proc/%d/maps", getpid());
//    LOGD("filename = %s", filename);
    FILE *fp = fopen(filename, "r");
    unsigned long revalue = 0;
//    LOGE("fp = %d",fp == nullptr);
    if (fp) {
        while (fgets(cmdline, 256, fp)) //逐行读取
        {
//            LOGD("cmdline = %s",cmdline);
            if (strstr(cmdline, soName) && strstr(cmdline, "r-xp"))//筛选
//            if(strstr(cmdline, soName) )//筛选
            {
                char *str = strstr(cmdline, "-");
                if (str) {
                    *str = '\0';
                    char num[32];
                    sprintf(num, "0x%s", cmdline);
                    revalue = strtoul(num, NULL, 0);
//                    LOGD("revalue = %lu", revalue);
                    fclose(fp);
                    memset(cmdline, 0, sizeof(cmdline)); //清零
                    memset(filename, 0, sizeof(filename)); //清零
                    return revalue;
                }
            }
            memset(cmdline, 0, sizeof(cmdline)); //清零
        }
        memset(cmdline, 0, sizeof(cmdline)); //清零
        memset(filename, 0, sizeof(filename)); //清零
//        LOGE("fflush");
        fclose(fp);
    }
    return 0L;
}


void *(*get_pointerClick)(void *arg1) = NULL;

void *(*object_get_name)(void *arg1) = NULL;

void (*OnPointerClick)(void *arg1, void *arg2) = NULL;


void init_OnPointerClick(long addOnPointerClick, long addget_pointerClick, long addobject_get_name,
                         void* HookedOnPointerClick) {
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