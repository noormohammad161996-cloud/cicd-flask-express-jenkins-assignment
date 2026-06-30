const express = require("express");

const app = express();

app.get("/", (req, res) => {
    res.send("Hello from Express Frontend - CI/CD Assignment");
});

const PORT = 3000;

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Express server is running on port ${PORT}`);
});