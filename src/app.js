const express = require('express');
require('./config/db');

const app = express();

app.use(express.json());

app.get('/', (req, res) => {
    res.send('AgendaPro Beauty API');
});

module.exports = app;