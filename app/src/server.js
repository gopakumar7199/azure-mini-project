const express = require("express");
const app = express();

// Azure gives your app a dynamic port → REQUIRED
const port = process.env.PORT || 8080;

// Read environment variable (from App Service)
const env = process.env.APP_ENV || "unknown";

app.get("/", (req, res) => {
  if (env === "development") {
    res.send("Hello! This is the DEV environment  (APP_ENV = development)");
  } else if (env === "production") {
    res.send("Welcome to the PRODUCTION environment  (APP_ENV = production)");
  } else {
    res.send("Environment not defined.");
  }
});

app.listen(port, () => {
  console.log(`Server running on port ${port} in ${env} mode`);
});
