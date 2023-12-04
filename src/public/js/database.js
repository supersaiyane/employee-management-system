const mysql = require('mysql');
const fs = require('fs');

// Database connection configuration
const dbConfig = {
    host: 'localhost',
    user: 'shailendra', // Change this to your MySQL username
    password: 'shailendra', // Change this to your MySQL password
    database: 'EmployeeManagement',
    port: 6033,
    multipleStatements: true // Enable multiple statements execution
};

// Create a MySQL connection
const connection = mysql.createConnection(dbConfig);

// Connect to the database
connection.connect(error => {
  if (error) {
    console.error('Error connecting to MySQL: ' + error.stack);
    return;
  }

  console.log('Connected to MySQL as ID ' + connection.threadId);

  // Read and execute SQL file
  fs.readFile('src\\public\\sql\\create_database.sql', 'utf8', (err, sql) => {
    if (err) {
      console.error('Error reading SQL file:', err);
      return;
    }

    connection.query(sql, (queryError, results) => {
      if (queryError) {
        console.error('Error executing SQL script:', queryError);
        return;
      }

      console.log('Database and tables created/verified');
    });
  });
});

module.exports = connection;
