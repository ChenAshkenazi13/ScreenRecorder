#include "recorder.h"
#include <cstdlib>
#include <iostream>

void Recorder::RecordScreen(std::string fileName, std::string fileFormat, int recordTime)
{
    RecordScreen(BuildRecordCommand(fileName, fileFormat, recordTime));
}

void Recorder::RecordScreen(const std::string &recordCommand)
{
    int result = system(recordCommand.c_str());
    if (result != 0)
    {
        std::perror("RECORDING FAILED\n");
        return;
    }

    std::cout << "RECORDING SAVED"
              << "\n";
}

std::string Recorder::BuildRecordCommand(std::string fileName, std::string fileFormat, int recordTime) const
{
    return "ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i :0.0 -t " + std::to_string(recordTime) + " " 
            + outputDirectoryPath + fileName + fileFormat;
}