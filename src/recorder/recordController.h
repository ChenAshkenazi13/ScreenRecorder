#ifndef RECORD_CONTROLLER
#define RECORD_CONTROLLER

#include "recorder.h"
#include "circularList.h"
#include "fileStatus.h"

class RecordController
{
public:
    // RecordController();
    // CircularList list;
    // CircularList<FileData> list{};
    void StartRecording(const CircularList<FileData> &list);

private:
    // CircularList<FileData> recordsList;
    Recorder recorder{};
};

#endif