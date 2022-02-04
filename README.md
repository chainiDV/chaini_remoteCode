
<h1 align="center">Simple remote code execution for FXServer using WebSockets.</h1>

<p>Simple script to remote code execution using WebSockets. By default, ws listen on 3000 and this can be changed in server.js. Message must be JSON string with 2 params: type: 0/1 if it will run on server or on client; message: containinig remote code to be executed</p>