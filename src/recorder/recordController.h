#ifndef RECORD_CONTROLLER
#define RECORD_CONTROLLER

#include "recorder.h"

class RecordController
{
public:
    // RecordController();
    void StartRecording();

private:
    // CircularList<FileData> recordsList;
    Recorder recorder{};
};

#endif