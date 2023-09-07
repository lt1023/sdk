
#include <map>
#include <string>

map<string, string> string_replace_map_parse(){
    map<string, string> str_map;
    str_map["GREEN - There is no ghost."] = "教程";
    str_map["Camera Sensivity:"] = "相机灵敏度：";
    return str_map;
}


map<string, string> string_start_map_parse(){
    map<string, string> str_map;
    str_map["GREEN - There is no ghost."] = "教程";
    return str_map;
}


map<string, string> string_map_parse(){
    map<string, string> str_map;
    str_map["TUTORIAL"] = "教程";
    str_map["LIMINAL\nGALLERY"] = "阈限画廊";
    str_map["Loading..."] = "加载中...";
    str_map["Not purchased"] = "未购买";
    return str_map;
}
map<string, string> str_map = string_map_parse();
map<string, string> start_str_map = string_start_map_parse();
map<string, string> replace_map = string_replace_map_parse();


string is_in_replace_map(std::string s){
    string result;
    for (auto it = replace_map.begin(); it != replace_map.end(); it++) {
        if (s.find(it->first) != s.npos){
            result = s.replace(s.find(it->first), it->first.length(), it->second);
            break;
        }
    }
    return result;
}

bool startsWith(const std::string& str, const std::string prefix) {
    return (str.rfind(prefix, 0) == 0);
}


string trans_text(const char *ori){
    string result;
    string ori_text(ori);
    LOGE("ori_text=%s",ori);
    if (!ori_text.empty()){
        if (str_map.count(ori_text) > 0){
            result = str_map[ori_text];
        }else{
            string is_in_map = is_in_replace_map(ori_text);
            if (!is_in_map.empty()){
                result = is_in_map;
            } else{
                for (auto it = start_str_map.begin(); it != start_str_map.end(); it++) {
                    if (startsWith(ori_text, it->first)){
                        result = it->second;
                        break;
                    }
                }
            }
        }
    }
    return result;
}


//void HookedUILabel_set_text(UILabel * __this, String * value, MethodInfo * method){
//    if(value){
//        const char *s = coverIl2cppString2Char(reinterpret_cast<Il2CppString *>(value));
//        string new_text = trans_text(s);
//        if(!new_text.empty()){
//            value = (String*)il2cpp_string_new(new_text.c_str());
//        }
//    }
//    UILabel_set_text( __this,  value,  method);
//}

void HookedText_set_text(Text * __this, String * value, MethodInfo * method){
    if(value){
        const char *s = coverIl2cppString2Char(reinterpret_cast<Il2CppString *>(value));
        string new_text = trans_text(s);
        if(!new_text.empty()){
            value = (String*)il2cpp_string_new(new_text.c_str());
        }
    }
    Text_set_text( __this,  value,  method);
}

void HookedText_OnEnable(Text * __this,  MethodInfo * method){
    Text_OnEnable( __this,  method);
    String * value = Text_get_text( __this,  method);
    HookedText_set_text(__this, value, method);
}




void HookedTMP_Text_set_text(TMP_Text * __this, String * value, MethodInfo * method){
    if(value){
        const char *s = coverIl2cppString2Char(reinterpret_cast<Il2CppString *>(value));
        string new_text = trans_text(s);
        if(!new_text.empty()){
            value = (String*)il2cpp_string_new(new_text.c_str());
        }
    }
    TMP_Text_set_text( __this,  value,  method);
}

void HookedTMP_Text_ParseInputText(TMP_Text * __this,  MethodInfo * method){

    String * value = TMP_Text_get_text( __this,  method);
    HookedTMP_Text_set_text(__this, value, method);
    TMP_Text_ParseInputText( __this,  method);
}

