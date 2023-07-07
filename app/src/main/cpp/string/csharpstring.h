#include "unchecked.h"

typedef uint16_t Il2CppChar;

std::string Utf16ToUtf8(const Il2CppChar *utf16String, int maximumSize) {
    const Il2CppChar *ptr = utf16String;
    size_t length = 0;
    while (*ptr) {
        ptr++;
        length++;
        if (maximumSize != -1 && length == maximumSize)
            break;
    }

    std::string utf8String;
    utf8String.reserve(length);
    utf8::unchecked::utf16to8(utf16String, ptr, std::back_inserter(utf8String));

    return utf8String;
}

std::string Utf16ToUtf8(const Il2CppChar *utf16String) {
    return Utf16ToUtf8(utf16String, -1);
}
/**
 *
 *
 *

 const Il2CppChar* (*il2cpp_string_chars)(void *obj) = nullptr;

     long add_il2cpp_string_chars = baseAddr + 0x00870B40;
    il2cpp_string_chars = reinterpret_cast<const Il2CppChar *(*)(void *)>(add_il2cpp_string_chars);

 Il2CppChar* chr = il2cpp_string_chars(value);
 const char *s = Utf16ToUtf8(chr).c_str();

 *
 */

