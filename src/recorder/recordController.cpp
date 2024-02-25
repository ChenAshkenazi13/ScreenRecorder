#include "recordController.h"

// RecordController::RecordController()
// {

// }

void RecordController::StartRecording(const CircularList<FileData>& list)
{
    for(int i = 0; i < list.size() + 2; i++){
        recorder.RecordScreen(std::to_string(i+10), ".mp4", 5);
    }
}