const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const path = require('path');
const bcrypt = require('bcrypt');
const session = require('express-session');
const app = express();
const fs = require('fs');
const cors = require('cors');
const db = require('./js/database'); // Importing your database connection
const checkAuthentication = require('./js/authMiddleware'); // Import the authentication middleware

//Routes
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'login.html'));
});

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public'));
});


// Use CORS middleware
app.use(cors({
  origin: 'http://localhost:3000', // Replace with the URL where your frontend is hosted
  credentials: true // Allow sending cookies and credentials
}));

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(session({
    secret: 'your_secret_key',
    resave: false,
    saveUninitialized: true
}));



// Body parser middleware
app.use(bodyParser.urlencoded({ extended: true }));


// app.use('/public', (req, res, next) => {
//   if (req.url === '/index.html') {
//       // Apply authentication check
//       checkAuthentication(req, res, next);
//   } else {
//       // Serve other static files normally
//       next();
//   }
// }, express.static(path.join(__dirname, 'public')));



app.post('/login', (req, res) => {
  const username = req.body.username;
  const password = req.body.password;

  db.query('SELECT * FROM users WHERE username = ?', [username], async (error, results, fields) => {
      if (error) {
          console.error(error);
          return res.status(500).send('Internal Server Error');
      }

      if (results.length > 0) {
          // Check password
          const comparison = await bcrypt.compare(password, results[0].password);
          if (comparison) {
              req.session.loggedin = true;
              req.session.username = username;
              res.redirect('/index.html');
          } else {
              res.send('Incorrect Username and/or Password!');
          }
      } else {
          res.send('Incorrect Username and/or Password!');
      }
  });
});

app.get('/logout', (req, res) => {
  req.session.destroy(err => {
      if (err) {
          console.error(err);
          res.status(500).send('Could not log out');
      } else {
          res.redirect('/'); // Redirect to login page or send a confirmation response
      }
  });
});

const port = 3001;
app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
