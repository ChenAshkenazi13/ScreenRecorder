#ifndef CLIENT
    #define CLIENT
    
#include <iostream>
#include <fstream>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <cstring>

class Client {
public:
    Client(const char* serverIP, int serverPort);
    ~Client();

    void ConnectToServer();
    void SendFile(const std::string& filePath);
    void SendMessage(const std::string& message);
private:
    int sock;
    struct sockaddr_in server_addr;

};

#endif // !CLIENT
