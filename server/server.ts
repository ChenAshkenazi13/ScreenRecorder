import * as net from 'net';
import * as fs from 'fs';
import * as path from 'path';

const port = 3000;

const server = net.createServer((socket) => {
    console.log('Client connected');

    // Create a unique file name
    const fileName = `upload_${Date.now()}.mp4`;
    const filePath = path.join(__dirname, fileName);
    const fileStream = fs.createWriteStream(filePath);

    socket.on('data', (data) => {
        console.log('Receiving data...');
        fileStream.write(data);
    });

    socket.on('end', () => {
        fileStream.end();
        console.log('File received and saved as', fileName);
    });

    socket.on('error', (err) => {
        console.error('Socket error:', err);
        fileStream.close();
    });
});

server.listen(port, () => {
  console.log(`TCP server listening on port ${port}`);
});