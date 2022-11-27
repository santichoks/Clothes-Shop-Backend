const mysql = require('mysql2');
const dotenv = require('dotenv');

dotenv.config({ path: './.env' });

const { DB_HOST, DB_USERNAME, DB_PASSWORD, DB_DATABASE } = process.env;

const connection = mysql.createConnection({
    host: DB_HOST,
    user: DB_USERNAME,
    password: DB_PASSWORD,
    database: DB_DATABASE,
});

const filter = function(query) {
    const queryObj = { ...query };
    const excludedFields = ['limit', 'page'];
    excludedFields.forEach(el => delete queryObj[el]);
    
    return queryObj
}

const pagination = function(query) {
    return ` LIMIT ${query.limit || 50} OFFSET ${((query.page - 1) * (query.limit || 50)) || 0};`
}

const splitValue = function(filter, element) {
    let add = '';
    let eachValue = [];
    const color = ['RED', 'PINK', 'ORANGE', 'YELLOW', 'PURPLE', 'GREEN', 'BLUE', 'BROWN', 'WHITE', 'GRAY', 'BLACK'];

    if (element === 'size') eachValue = filter.size.split(',');
    if (element === 'style') eachValue = filter.style.split(',');
    if (element === 'status') eachValue = filter.status.split(',');

    eachValue.forEach((v, i) => {
        if (i === 0) add += color.includes(v.toUpperCase()) ? `${element} = 'Plain color / ${v}'` : `${element} = '${v}'`;
        else add += color.includes(v.toUpperCase()) ? ` OR ${element} = 'Plain color / ${v}'` : ` OR ${element} = '${v}'`
    });
    
    return add;
}

exports.getProducts = async (req, res) => {
    let sql = `SELECT * FROM products`;

    if (Object.keys(filter(req.query)).length !== 0) {
        const filtered = filter(req.query);
        sql += ` WHERE`;

        Object.keys(filtered).forEach((element, index) => {
            if (index === 0) {
                if (element === 'size' || element === 'style') {
                    const result = splitValue(filtered, element);
                    sql += ` (${result})`
                }
                else sql += ` ${element} = '${filtered[element]}'`
            }
            else {
                if (element === 'size' || element === 'style') {
                    const result = splitValue(filtered, element);
                    sql += ` AND (${result})`
                }
                else sql += ` AND ${element} = '${filtered[element]}'`
            }
        });
    }

    if (req.query.limit || req.query.page) sql += pagination(req.query);

    connection.query(sql, (err, results, fields) => {
        res.status(200).json({
            status: 'successfully.',
            total: results.length,
            results
        });
    });
}

exports.getOrders = async (req, res) => {
    let sql = `SELECT * FROM orders`;

    if (Object.keys(filter(req.query)).length !== 0) {
        const filtered = filter(req.query);
        sql += ` WHERE`;
        
        if (filtered.start_date || filtered.end_date) {
            sql += ` (paid_date BETWEEN '${filtered.start_date}' AND ADDDATE('${filtered.end_date}', 1))`
        }

        if (filtered.status && (filtered.start_date || filtered.end_date)) {
            const result = splitValue(filtered, 'status');
            sql += ` AND (${result})`
        }

        if (filtered.status && !filtered.start_date && !filtered.end_date) {
            const result = splitValue(filtered, 'status');
            sql += ` (${result})`
        }
        
    }

    if (req.query.limit || req.query.page) sql += pagination(req.query);

    connection.query(sql, (err, results, fields) => {
        res.status(200).json({
            status: 'successfully.',
            results
        });
    });
}

exports.createOrder = async (req, res) => {
    const { product_id, address } = req.body;
    const sql = `INSERT INTO orders (product_id, address) VALUES ('${product_id}', '${address}')`

    connection.query(sql, (err, results, fields) => {
        res.status(200).json({
            status: 'order created successfully.',
            results
        });
    });
}
