#include "client.h"

Client::Client(const char *serverIP, int serverPort)
{
	sock = socket(AF_INET, SOCK_STREAM, 0);
	if (sock == -1)
	{
		std::cerr << "Could not create socket" << std::endl;
		exit(1);
	}

	server_addr.sin_family = AF_INET;
	server_addr.sin_port = htons(serverPort);
	inet_pton(AF_INET, serverIP, &server_addr.sin_addr);
}

void Client::ConnectToServer()
{
	if (connect(sock, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0)
	{
		std::perror("Connect failed\n");
		exit(1);
	}
}

void Client::SendFile(const std::string& fileName) {
    std::ifstream file(fileName, std::ios::binary);
    if (!file.is_open()) {
        std::cerr << "Failed to open file: " << fileName << std::endl;
        return;
    }

    const size_t bufferSize = 1024;
    char buffer[bufferSize];

    while (!file.eof()) {
        file.read(buffer, bufferSize);
        std::streamsize bytes = file.gcount();
        if (bytes > 0) {
            ssize_t sent = send(sock, buffer, bytes, 0);
            if (sent == -1) {
                std::cerr << "Failed to send file chunk." << std::endl;
                break;
            }
        }
    }

    file.close();
}

void Client::SendMessage(const std::string &message)
{
	if (send(sock, message.c_str(), message.size(), 0) < 0)
		std::cerr << "Send failed" << std::endl;
		
}

Client::~Client()
{
	close(sock);
}