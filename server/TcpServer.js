"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var net = require("net");
var fs = require("fs");
var path = require("path");
var port = 3000;
var server = net.createServer(function (socket) {
    console.log('Client connected');
    // Create a unique file name
    var fileName = "upload_Test2.mp4";
    var filePath = path.join(__dirname, fileName);
    var fileStream = fs.createWriteStream(filePath);
    socket.on('data', function (data) {
        console.log("Receiving data...".concat(data));
        fileStream.write(data);
        console.log('File received and saved as', fileName);
    });
    socket.on('end', function () {
        // fileStream.end();
    });
    socket.on('error', function (err) {
        console.error('Socket error:', err);
        // fileStream.close();
    });
});
server.listen(port, function () {
    console.log("TCP server listening on port ".concat(port));
});
//TODO: Handle server crushing
