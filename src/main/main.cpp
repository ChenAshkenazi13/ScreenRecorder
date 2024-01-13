#include "main.h"
#include <client/client.h>
#include "recorder/recorder.h"

int main()
{
    Recorder recorder{};

    recorder.RecordScreen();    
    Client client{"127.0.0.1", 3000};
    
    // Client client{"127.0.0.1", 11012};
    client.ConnectToServer();
    client.SendFile("/home/chen/Documents/ProgrammingProjects/Records/output.mp4");

    getchar();
    // std::cout << "Hello noder!";
}