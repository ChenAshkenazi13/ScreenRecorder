#ifndef FILE_STATUS
#define FILE_STATUS

#include <iostream>
#include <string>

enum FileStatus
{
    EMPTY,
    FULL,
    SENT
};
//Do i really need this?
// std::ostream &operator<<(std::ostream &os, FileStatus fileStatus)
// {
//     switch (fileStatus)
//     {
//         case EMPTY: os << "EMPTY"; break;
//         case FULL: os << "FULL"; break;
//         case SENT: os << "SENT"; break;
//         default: os << "Unknown";
//     }
//     return os;
// }

class FileData
{
public:
    FileData(const std::string &name, FileStatus status = EMPTY)
        : fileName(name), fileStatus(status) {}

    std::string fileName;
    FileStatus fileStatus;
};

#endif