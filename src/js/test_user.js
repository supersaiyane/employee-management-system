const db = require('./database');
const bcrypt = require('bcrypt');

const username = 'testuser';
const password = 'testuser';
const role = 'admin';
const status = 'active';
const saltRounds = 10;

bcrypt.hash(password, saltRounds, function(err, hash) {
    if (err) {
        console.error(err);
        return;
    }

    db.query('INSERT INTO users (username, password, role, status) VALUES (?, ?, ?, ?)', [username, hash, role, status], function(error, results, fields) {
        if (error) throw error;
        console.log('Test user inserted');
    });
});