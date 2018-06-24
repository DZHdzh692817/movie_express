var express = require('express');
var router = express.Router();
//导入mysql模块
var mysql = require('mysql');
var dbConfig = require('../db/config');

var pool = mysql.createPool(dbConfig.mysql);

/* GET home page. */
router.get('/', function(req, res, next) {

    // 从连接池获取连接
    pool.getConnection(function(err, connection) {
        // 建立连接 增加一个用户信息
        connection.query('select mid,mname from exp_movie', function(error,results,fields) {
            if(error) throw error;
            //console.log(results);
            console.log('链接成功');
            // 释放连接
            connection.release();


            res.render('index', { title: '首页', datas: results, });
        });
    });

});

module.exports = router;
