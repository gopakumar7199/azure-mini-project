const express = require('express');
const app = express();

const PORT = process.env.PORT || 3000;
const ENV = process.env.APP_ENV || 'local';

app.get('/', (req, res) => {
  res.send(`Hello from Azure DevOps Mini Project! Running in ${ENV} environment.`);
});

app.listen(PORT, () => {
  console.log(`🚀 Server running on port ${PORT} in ${ENV} mode`);
});
