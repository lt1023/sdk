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
    str_map["CLOSE"] = "关闭";
    return str_map;
}

