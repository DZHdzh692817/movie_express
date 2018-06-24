var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('admin/lists', { title: 'movie后台列表页' });
});

module.exports = router;
