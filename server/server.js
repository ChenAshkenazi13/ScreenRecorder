"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express = require("express");
var net = require("net");
var app = express();
var port = 3000;
// Set up a TCP server
var server = net.createServer(function (socket) {
    console.log('Client connected');
    socket.on('data', function (data) {
        console.log('Data received from client:', data.toString());
    });
    socket.on('end', function () {
        console.log('Client disconnected');
    });
});
server.listen(port, function () {
    console.log("TCP server listening on port ".concat(port));
});
