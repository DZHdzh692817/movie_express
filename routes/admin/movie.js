var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('admin/movie', { title: 'movie后台录入页' });
});

module.exports = router;
