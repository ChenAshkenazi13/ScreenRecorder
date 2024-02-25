#include "main.h"

int main()
{
    // Recorder recorder{};
    RecordController recordController{};

    CircularList<FileData> list{};

    for (int i = 0; i < 3; i++)
        list.add(FileData{std::to_string(i + 1), FileStatus(EMPTY)});

    // FileData fileData = list.getCurrent();
    // std::cout << fileData.fileName << ", " << fileData.fileStatus << "\n";

    // for (int i = 1; i < 12; i++)
    // {
    //     FileData fileData = list.next();
    //     std::cout << fileData.fileName << ", " << fileData.fileStatus << "\n";
    // }
    // Client client{"127.0.0.1", 3000};

    // client.ConnectToServer();

    recordController.StartRecording(list);
    // recorder.RecordScreen();
    // client.SendFile(recorder.outputDirectoryPath + recorder.outputFileName + recorder.outputFileFormat);

    getchar();
}