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
		std::cerr << "Connect failed" << std::endl;
		exit(1);
	}
}

void Client::SendFile(const std::string &filePath)
{
	std::ifstream file(filePath, std::ios::binary);
	if (!file.is_open())
	{
		std::cerr << "Failed to open file" << std::endl;
		return;
	}

	char buffer[1024];
	while (file.read(buffer, sizeof(buffer)))
	{
		if (send(sock, buffer, file.gcount(), 0) < 0)
		{
			std::cerr << "Send failed" << std::endl;
			break;
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