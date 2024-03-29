"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var net = require("net");
var fs = require("fs");
var path = require("path");
var port = 3000;
var server = net.createServer(function (socket) {
    console.log('Client connected');
    // Create a unique file name
    var fileName = "upload_".concat(Date.now(), ".mp4");
    var filePath = path.join(__dirname, fileName);
    var fileStream = fs.createWriteStream(filePath);
    socket.on('data', function (data) {
        console.log("Receiving data...".concat(data));
        // fileStream.write(data);
    });
    socket.on('end', function () {
        // fileStream.end();
        console.log('File received and saved as', fileName);
    });
    socket.on('error', function (err) {
        console.error('Socket error:', err);
        // fileStream.close();
    });
});
server.listen(port, function () {
    console.log("TCP server listening on port ".concat(port));
});
