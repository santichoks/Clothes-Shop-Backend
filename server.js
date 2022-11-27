const express = require('express');
const morgan = require('morgan');
const dotenv = require('dotenv');
const mysql = require('mysql2');
const router = require('./route');

dotenv.config({ path: './.env' });

const { DB_HOST, DB_USERNAME, DB_PASSWORD, DB_DATABASE, PORT } = process.env;

const app = express();
app.use(express.json());

app.use(morgan('dev'));

const connection = mysql.createConnection({
    host: DB_HOST,
    user: DB_USERNAME,
    password: DB_PASSWORD,
    database: DB_DATABASE,
});

connection.connect((err) => {
    if (err) throw err;
    console.log('Database connection successful!');
});

app.use('/', router);

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}...`);
});
