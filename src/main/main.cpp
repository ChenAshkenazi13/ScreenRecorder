#include "main.h"
#include <client/client.h>
#include "recorder/recorder.h"

int main()
{
    Recorder recorder{};

    Client client{"127.0.0.1", 3000};
    
    client.ConnectToServer();

    recorder.RecordScreen();    
    client.SendFile(recorder.outputDirectoryPath + recorder.outputFileName + recorder.outputFileFormat);

    getchar();
}