const WebSocket = require('ws');
const wsPort = 3000;
const wss = new WebSocket.Server({ port: wsPort });

wss.on('connection', function connection(ws) {
  ws.on('message', function incoming(message) {
    const parsedMessage = JSON.parse(message); //type = 0 --server code, type = 1 --client code
    console.log('received: %s', parsedMessage);
    emit('chaini_remoteCode:receiveCode', parsedMessage.type, parsedMessage.message);
  });
});