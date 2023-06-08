//
// Created by AA on 2022/7/15.
//

#include "tools.h"



struct ACTkByte4
{
    char b1; // 0x0
    char b2; // 0x1
    char b3; // 0x2
    char b4; // 0x3
};

struct ACTkByte8
{
    char b1; // 0x0
    char b2; // 0x1
    char b3; // 0x2
    char b4; // 0x3
    char b5; // 0x3
    char b6; // 0x3
    char b7; // 0x3
    char b8; // 0x3
};
struct ACTkByte16
{
    char b1; // 0x0
    char b2; // 0x1
    char b3; // 0x2
    char b4; // 0x3
    char b5; // 0x3
    char b6; // 0x3
    char b7; // 0x3
    char b8; // 0x3
    char b9; // 0x0
    char b10; // 0x1
    char b11; // 0x2
    char b12; // 0x3
    char b13; // 0x3
    char b14; // 0x3
    char b15; // 0x3
    char b16; // 0x3
};


//保存LUA文件到Sdcard
void saveFile(const char *data, size_t data_len, const char *path) {
    FILE* outfile;
    char drive[_MAX_DRIVE];
    char dir[_MAX_DIR];
    char fname[_MAX_FNAME];
    char ext[_MAX_EXT];
    std::string filename(path);
    std::string _path = ("/data/data/com.fantablade.watergun/files/");
    _path.append(filename);
    char *s = new char[100];
    strcpy(s,_path.c_str());
    _splitpath(s, drive, dir, fname, ext);
    //如果文件已经存在直接返回
    if(0 == access(s,F_OK))
    {
        LOGI("[dumpulua]  path:%s Exist",s);
        return;
    } else {
        //创建目录
        createMultiLevelDir(dir);
        LOGI("[dumpulua]  path:%s New file",s);
    }
    FILE *file = fopen(s, "wb+");
    if (file != NULL) {
        fwrite(data , sizeof(unsigned char) , data_len , file);
        fclose(file);
    }
}