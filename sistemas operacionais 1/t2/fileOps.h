#ifndef FILEOPS_H
#define FILEOPS_H

#include "fs.h"

class File_Ops
{
    public:
        static int do_copyin(const char *filename, int inumber, INE5412_FS *fs);

        static int do_copyout(int inumber, const char *filename, INE5412_FS *fs);
};

#endif