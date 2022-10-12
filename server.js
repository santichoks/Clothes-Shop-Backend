const express = require('express');
const morgan = require('morgan');
const dotenv = require('dotenv');
const mysql = require('mysql');
const router = require('./route');

dotenv.config({ path: './.env' });

const { NODE_ENV, PORT } = process.env;

const app = express();
app.use(express.json());

// Development logging
if (NODE_ENV === 'development') {
    app.use(morgan('dev'));
}

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'clothes_shop',
});

connection.connect((err) => {
    if (err) throw err;
    console.log('Database connection successful!');
});

app.use('/', router);

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}...`);
});
