/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : laravel-bbs

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-10-26 18:45:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bbc_user
-- ----------------------------
DROP TABLE IF EXISTS `bbc_user`;
CREATE TABLE `bbc_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  ` password` varchar(255) NOT NULL,
  `reallname` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `weibo_name` varchar(255) DEFAULT NULL,
  `weibo_url` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbc_user
-- ----------------------------

-- ----------------------------
-- Table structure for bbs_comment
-- ----------------------------
DROP TABLE IF EXISTS `bbs_comment`;
CREATE TABLE `bbs_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `content` text NOT NULL,
  `create_time` datetime NOT NULL,
  `floor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_comment
-- ----------------------------

-- ----------------------------
-- Table structure for bbs_relate
-- ----------------------------
DROP TABLE IF EXISTS `bbs_relate`;
CREATE TABLE `bbs_relate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_relate
-- ----------------------------

-- ----------------------------
-- Table structure for bbs_role
-- ----------------------------
DROP TABLE IF EXISTS `bbs_role`;
CREATE TABLE `bbs_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_role
-- ----------------------------

-- ----------------------------
-- Table structure for bbs_role_user
-- ----------------------------
DROP TABLE IF EXISTS `bbs_role_user`;
CREATE TABLE `bbs_role_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for bbs_topic
-- ----------------------------
DROP TABLE IF EXISTS `bbs_topic`;
CREATE TABLE `bbs_topic` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `last_reply_uid` int(11) DEFAULT NULL,
  `last_reply_time` datetime DEFAULT NULL,
  `vote_count` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `reply_count` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_topic
-- ----------------------------

-- ----------------------------
-- Table structure for bbs_type
-- ----------------------------
DROP TABLE IF EXISTS `bbs_type`;
CREATE TABLE `bbs_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_type
-- ----------------------------

-- ----------------------------
-- Table structure for bbs_vote
-- ----------------------------
DROP TABLE IF EXISTS `bbs_vote`;
CREATE TABLE `bbs_vote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_vote
-- ----------------------------
