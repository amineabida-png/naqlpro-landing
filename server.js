const http = require('http');
const fs = require('fs');

const PORT = process.env.PORT || 3000;
const html = fs.readFileSync(__dirname + '/index.html');

http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/html; charset=utf-8'});
  res.end(html);
}).listen(PORT, '0.0.0.0', () => console.log('OK port ' + PORT));
