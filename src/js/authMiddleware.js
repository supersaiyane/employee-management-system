// authMiddleware.js
function checkAuthentication(req, res, next) {
    if (req.session.loggedin) {
        next();
    } else {
        res.redirect('/');
    }
}

module.exports = checkAuthentication;