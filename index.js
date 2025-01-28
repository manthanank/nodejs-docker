const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Node.js Docker Containerized Application Running");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
