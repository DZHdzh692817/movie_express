# 使用文档

## 安装express框架

    npm install -g express
  
## 安装express命令工具

    npm install -g express-generator

## 创建目录

- 创建ejs模板引擎

    express -e movie_express(项目名)
   
## 安装mysql
    
    npm install mysql

## mysql初始化

- 添加mysql模组 : 在package.json添加
    
    "mysql":"latest",

## 新建文件夹db,新建文件config.js，添加下面代码

````js
module.exports = {
    mysql:{
        host     : 'localhost',
        user     : 'root',
        password : '',
        port    : '3306',
        database : 'express_demo'
    }
}
````

## 设置



## 获取