const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Capricornio90.d5',
    database: 'agendapro_beauty'
});

connection.connect((err) => {
    if (err) {
        console.log(err);
    } else {
        console.log('Banco conectado');
    }
});

module.exports = connection;