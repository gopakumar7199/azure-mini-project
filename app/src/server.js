const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
 
app.get('/', (req, res) => {
  res.send('Hello World from Node.js and Docker! 🐳');
});
 
app.get('/health', (req, res) => {
  res.json({ status: 'OK', message: 'Server is running' });
});
 
app.listen(port, () => {
  console.log(`Hello World app running on port ${port}`);
});
