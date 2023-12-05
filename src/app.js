const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const path = require('path');
const bcrypt = require('bcrypt');
const session = require('express-session');
const app = express();
const fs = require('fs');
const cors = require('cors');
const db = require('./public/js/database'); // Importing your database connection
const checkAuthentication = require('./public/js/authMiddleware'); // Import the authentication middleware
const util = require('util');
const query = util.promisify(db.query).bind(db);
const swaggerJsdoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');


//Routes
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'login.html'));
});

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public'));
});

// Serve static files
app.use(express.static(path.join(__dirname, 'public')));

// Use CORS middleware
app.use(cors({
  origin: 'http://localhost:3001', // Replace with the URL where your frontend is hosted
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

const swaggerOptions = {
  definition: {
      openapi: '3.0.0',
      info: {
          title: 'APIs',
          version: '1.0.0',
          description: 'CRUD API application with Express and documented with Swagger',
      },
      servers: [
          {
              url: 'http://localhost:3001',
          },
      ],
  },
  apis: ['./app.js'], // files containing annotations as above
};

const swaggerDocs = swaggerJsdoc(swaggerOptions);
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));



/**
 * @swagger
 * /login:
 *   post:
 *     summary: Logs in a user
 *     description: Login for existing user
 *     requestBody:
 *       required: true
 *       content:
 *         application/x-www-form-urlencoded:
 *           schema:
 *             type: object
 *             properties:
 *               username:
 *                 type: string
 *               password:
 *                 type: string
 *     responses:
 *       200:
 *         description: Logged in successfully
 *       401:
 *         description: Unauthorized
 */
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


app.get('/api/employee-status', async (req, res) => {
  try {
    const results = await query('SELECT emp_company_status FROM emp_company_status');
    //console.log(results);
    const statuses = results.map(row => row.emp_company_status);
    console.log(statuses);
    res.json(statuses);
  } catch (error) {
    //console.error(error);
    res.status(500).send('An error occurred while fetching data');
  }
});



const port = 3001;
app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
