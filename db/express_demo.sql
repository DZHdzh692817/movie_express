/*
Navicat MySQL Data Transfer

Source Server         : 192.168.100.15
Source Server Version : 50556
Source Host           : 192.168.100.15:3306
Source Database       : express_demo

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-07-07 12:04:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `exp_movie`
-- ----------------------------
DROP TABLE IF EXISTS `exp_movie`;
CREATE TABLE `exp_movie` (
  `mid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mname` varchar(250) DEFAULT NULL,
  `mown` varchar(250) DEFAULT NULL COMMENT '导演',
  `country` varchar(20) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `address` text,
  `adrs` text COMMENT '片源地址',
  `year` int(4) DEFAULT NULL,
  `infos` text,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exp_movie
-- ----------------------------
INSERT INTO `exp_movie` VALUES ('1', '变形金刚', '张艺谋', '中国', '中文', '北京天安门', '北京天安门', '2018', '说变形金刚打仗');
INSERT INTO `exp_movie` VALUES ('2', '狂暴巨兽', '邓小明', '美国', '英文', '纽约', '纽约时代广场', '2016', '泰神猩猩');

-- ----------------------------
-- Table structure for `exp_users`
-- ----------------------------
DROP TABLE IF EXISTS `exp_users`;
CREATE TABLE `exp_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `qrcode` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exp_users
-- ----------------------------
INSERT INTO `exp_users` VALUES ('1', 'xxxx', 'xxxx', null);
INSERT INTO `exp_users` VALUES ('2', 'param.name', 'param,pwd', null);
INSERT INTO `exp_users` VALUES ('3', '456456', '456456', null);
