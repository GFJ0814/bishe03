/*
Navicat MySQL Data Transfer

Source Server         : bishe
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : stgj

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-10 16:40:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `apply`
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `apply_id` int(6) NOT NULL AUTO_INCREMENT,
  `apply_type` varchar(10) DEFAULT NULL,
  `apply_more` varchar(100) DEFAULT NULL,
  `applyer_id` int(6) DEFAULT NULL,
  `applyer_name` varchar(30) DEFAULT NULL,
  `check_status` int(1) DEFAULT '0' COMMENT '0-未审核；1-已通过；2-被反驳',
  `check_info` varchar(50) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`apply_id`),
  KEY `applyer_id` (`applyer_id`),
  CONSTRAINT `applyer_id` FOREIGN KEY (`applyer_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('1', '评优加分', '负责团队建设', null, null, null, null, '2017-06-07 10:13:10', '2017-06-07 10:13:10');

-- ----------------------------
-- Table structure for `assets`
-- ----------------------------
DROP TABLE IF EXISTS `assets`;
CREATE TABLE `assets` (
  `assets_id` int(6) NOT NULL AUTO_INCREMENT,
  `assets_name` varchar(20) DEFAULT NULL,
  `assets_logo` varchar(50) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '0-未使用；1-已使用',
  `amount` int(6) DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL COMMENT '使用人',
  `register_name` varchar(30) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`assets_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets
-- ----------------------------
INSERT INTO `assets` VALUES ('8', '电脑包', '/upload/66c54ca7f0724eebb31cdfda9c283630.jpg', '办公室', null, '2', null, 'aa', '2017-06-06 19:39:09', '2017-06-06 19:39:09');
INSERT INTO `assets` VALUES ('18', '板凳', '/upload/98b05e24e1e542bb8cc39084d1c8bb11.jpg', '一楼', null, '2', null, '周凯', '2017-06-07 18:09:59', '2017-06-07 18:09:59');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(6) NOT NULL AUTO_INCREMENT,
  `stu_id` int(6) DEFAULT NULL,
  `weekday` char(6) DEFAULT NULL,
  `start_week` varchar(10) DEFAULT NULL,
  `end_week` varchar(10) DEFAULT NULL,
  `course_time` varchar(10) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modifytime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for `mesg`
-- ----------------------------
DROP TABLE IF EXISTS `mesg`;
CREATE TABLE `mesg` (
  `mesg_id` int(6) NOT NULL,
  `org_id` int(3) DEFAULT NULL,
  `mesg_text` text,
  `createTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mesg_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_id` FOREIGN KEY (`org_id`) REFERENCES `organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mesg
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` int(6) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) DEFAULT NULL,
  `news_photo` varchar(50) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `abArticle` varchar(200) DEFAULT NULL,
  `article` text,
  `text_type` varchar(10) DEFAULT NULL,
  `status_info` varchar(50) DEFAULT NULL,
  `status` int(1) unsigned zerofill DEFAULT '0' COMMENT '0-未审核；1-已审核；2-被驳回',
  `createTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('12', null, '/upload/e78079e118ba4eb1b260773bae864d14.jpg', '关于领取2016年春季全国计算机等级考试合格证书的通知', '2016年春季全国计算机等级考试合格证书已经开始发放。请各位考生携带身份证到成栋楼1024室领取。', '<p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: 楷体, sans-serif; widows: 1; text-align: justify; line-height: 32px; text-indent: 28px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-wrap: break-word !important;\"><span style=\"max-width: 100%; word-wrap: break-word !important;\">注：</span><span style=\"max-width: 100%; font-family: &quot;Times New Roman&quot;, serif; word-wrap: break-word !important;\">2016</span><span style=\"max-width: 100%; word-wrap: break-word !important;\">年之前取得的全国计算机等级考试合格证书继续发放，请没有领取的考生互相转告，抓紧时间领取，地点成栋楼</span><span style=\"max-width: 100%; font-family: &quot;Times New Roman&quot;, serif; word-wrap: break-word !important;\">1024</span><span style=\"max-width: 100%; word-wrap: break-word !important;\">室。</span></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: 楷体, sans-serif; widows: 1; text-align: justify; line-height: 32px; text-indent: 28px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-wrap: break-word !important;\"><br style=\"max-width: 100%; word-wrap: break-word !important;\"></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: 楷体, sans-serif; widows: 1; text-align: justify; line-height: 32px; text-indent: 28px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-wrap: break-word !important;\"><span style=\"max-width: 100%; word-wrap: break-word !important;\">联系电话：</span><span style=\"max-width: 100%; font-family: &quot;Times New Roman&quot;, serif; word-wrap: break-word !important;\">&nbsp;82192246</span></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: 楷体, sans-serif; widows: 1; text-align: justify; line-height: 32px; text-indent: 28px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-wrap: break-word !important;\"><span style=\"max-width: 100%; word-wrap: break-word !important;\">联</span>&nbsp;<span style=\"max-width: 100%; word-wrap: break-word !important;\">系</span>&nbsp;<span style=\"max-width: 100%; word-wrap: break-word !important;\">人：</span>&nbsp;<span style=\"max-width: 100%; word-wrap: break-word !important;\">李</span><span style=\"max-width: 100%; word-wrap: break-word !important;\">老师</span></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: 楷体, sans-serif; widows: 1; text-align: right; line-height: 32px; text-indent: 28px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-wrap: break-word !important;\"><span style=\"max-width: 100%; text-indent: 357px; word-wrap: break-word !important;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;信息与计算机工程学院</span></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: 楷体, sans-serif; widows: 1; text-align: right; line-height: 32px; text-indent: 28px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-wrap: break-word !important;\"><span style=\"max-width: 100%; text-indent: 364px; font-family: &quot;Times New Roman&quot;, serif; word-wrap: break-word !important;\">&nbsp; &nbsp;2016</span><span style=\"max-width: 100%; text-indent: 364px; word-wrap: break-word !important;\">年</span><span style=\"max-width: 100%; text-indent: 364px; font-family: &quot;Times New Roman&quot;, serif; word-wrap: break-word !important;\">6</span><span style=\"max-width: 100%; text-indent: 364px; word-wrap: break-word !important;\">月</span><span style=\"max-width: 100%; text-indent: 364px; font-family: &quot;Times New Roman&quot;, serif; word-wrap: break-word !important;\">28</span><span style=\"max-width: 100%; text-indent: 364px; word-wrap: break-word !important;\">日</span></p>', '通知', '', '1', '2017-06-08 15:00:35', '2017-06-08 15:00:35');
INSERT INTO `news` VALUES ('13', null, '/upload/7f4c20064b9e4f5c860098eba7ab4ef6.png', '我院学子在第五届全国机器人创意设计大赛中喜获佳绩', 'TRCC第五届中国机器人创意设计大赛暨第二届国际仿人机器人奥林匹克大赛于7月7日在青岛举行。来自中国、日本、韩国、俄罗斯、美国、加拿大等国家和地区的110支队伍参加本届大赛，角逐创意设计、舞蹈、球类、水上竞技、无人机等6个大类共30个项目的桂冠。我院派出4个参赛队共22名队员进行了十个项目的角逐。', '<p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: 楷体, sans-serif; widows: 1; text-align: justify; line-height: 32px; text-indent: 28px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-wrap: break-word !important;\"><span style=\"max-width: 100%; word-wrap: break-word !important;\">参赛队员在团队教师陈宇和郭继峰老师的认真指导下，经过近一年的积极备战，设计参赛机器人的舞蹈、体操、举重、拳击等项目的动作，并扩充了比赛机器人数目和参加机器人比赛项目。在</span><span style=\"max-width: 100%; font-family: &quot;Times New Roman&quot;, serif; word-wrap: break-word !important;\">4</span><span style=\"max-width: 100%; word-wrap: break-word !important;\">个参赛队共</span><span style=\"max-width: 100%; font-family: &quot;Times New Roman&quot;, serif; word-wrap: break-word !important;\">22</span><span style=\"max-width: 100%; word-wrap: break-word !important;\">名参赛队员的精心调试下，参加了双人舞蹈、单人舞蹈、广播体操、自由体操、短跑、举重、拳击、小品、吊环和障碍跑共</span><span style=\"max-width: 100%; font-family: &quot;Times New Roman&quot;, serif; word-wrap: break-word !important;\">10</span><span style=\"max-width: 100%; word-wrap: break-word !important;\">个项目的比赛，最终喜获第五届全国机器人创意设计大赛举重项目和拳击项目的一等奖，吊环和自由体操项目的二等奖，短跑比赛项目的三等奖。</span></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: 楷体, sans-serif; widows: 1; text-align: justify; line-height: 32px; text-indent: 28px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-wrap: break-word !important;\"><span style=\"max-width: 100%; word-wrap: break-word !important;\">全国机器人创意设计大赛是一个展示师生风采的舞台，参赛队员充分展现了我院学子的科技创新能力和崇尚科学、勇于创新的精神风貌。同时，也为促进机器人的产、学、研结合与发展起到了积极的推进作用。</span></p>', '新闻', '', '1', '2017-06-08 15:03:04', '2017-06-08 15:03:04');

-- ----------------------------
-- Table structure for `organization`
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `org_id` int(3) NOT NULL AUTO_INCREMENT,
  `org_type` varchar(10) DEFAULT NULL,
  `org_simple_name` varchar(30) DEFAULT NULL,
  `org_full_name` varchar(20) DEFAULT NULL,
  `org_admin_teacher` varchar(20) DEFAULT NULL,
  `org_admin_num` varchar(20) DEFAULT NULL,
  `org_admin` varchar(20) DEFAULT NULL,
  `org_superid` int(3) unsigned zerofill DEFAULT '000',
  `org_phone` varchar(11) DEFAULT NULL,
  `org_logo` varchar(200) DEFAULT NULL,
  `org_location` varchar(30) DEFAULT NULL,
  `org_descrip` text,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_id`),
  KEY `org_admin_num` (`org_admin_num`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('44', '校组织', '校网中心', '校大学生网络发展中心', '张磊', '20134568', '李金阳', '000', '121111', '/upload/603ecbc22a7b431fb93f7a854151770c.jpg', '行政楼103', '不错的组织', '2017-06-12 08:18:35', '2017-06-12 08:18:35');
INSERT INTO `organization` VALUES ('51', '校社团', '武协', '武术协会', '张文', '20134567', '李璐', '000', null, '/upload/e0c24c81c7224612b3fb0c8936d8815d.jpg', '丹青120', '挺好的一个组织\r\n                                    ', '2017-06-11 19:13:41', '2017-06-11 19:13:41');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` int(3) NOT NULL AUTO_INCREMENT,
  `permission_parent_id` int(3) DEFAULT '0',
  `permission_parent_name` varchar(20) DEFAULT NULL,
  `permission_name` varchar(20) DEFAULT NULL,
  `pemission_link` varchar(50) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modifitime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`permission_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('57', '0', '无', '个人中心', '', '2017-06-02 16:28:05', '2017-06-02 16:28:05');
INSERT INTO `permission` VALUES ('62', '63', '排班管理', '空课表管理', '', '2017-06-12 08:16:30', '2017-06-12 08:16:30');
INSERT INTO `permission` VALUES ('63', '0', '无', '排班管理', '', '2017-06-02 16:28:26', '2017-06-02 16:28:26');
INSERT INTO `permission` VALUES ('71', '63', '排班管理', '不知道', '', '2017-06-07 18:08:49', '2017-06-07 18:08:49');

-- ----------------------------
-- Table structure for `resume`
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `ori_id` int(3) NOT NULL,
  `stu_id` int(6) NOT NULL,
  `dptment_id` int(3) NOT NULL,
  `isadjust` char(1) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ori_id`,`stu_id`,`dptment_id`),
  KEY `FK_Reference_2` (`stu_id`),
  KEY `dptment_id` (`dptment_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`ori_id`) REFERENCES `organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resume_ibfk_1` FOREIGN KEY (`dptment_id`) REFERENCES `organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(3) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modifytime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '2017-05-28 19:35:03', '2017-05-28 19:35:05');
INSERT INTO `role` VALUES ('2', '组织负责人', '2017-05-28 19:35:06', '2017-05-28 19:35:08');
INSERT INTO `role` VALUES ('3', '部门负责人', '2017-05-28 19:35:10', '2017-05-28 19:35:12');
INSERT INTO `role` VALUES ('4', '普通部员', '2017-05-28 19:35:14', '2017-05-25 19:35:18');
INSERT INTO `role` VALUES ('5', '武协负责人', '2017-06-11 18:53:01', '2017-06-11 18:53:01');
INSERT INTO `role` VALUES ('6', '武协负责人', '2017-06-11 18:55:36', '2017-06-11 18:55:36');
INSERT INTO `role` VALUES ('7', '负责人', '2017-06-11 18:57:57', '2017-06-11 18:57:57');
INSERT INTO `role` VALUES ('8', '负责人', '2017-06-11 19:00:26', '2017-06-11 19:00:26');
INSERT INTO `role` VALUES ('9', '负责人', '2017-06-11 19:04:35', '2017-06-11 19:04:35');
INSERT INTO `role` VALUES ('10', '武协负责人', '2017-06-11 19:05:55', '2017-06-11 19:05:55');
INSERT INTO `role` VALUES ('11', '武协负责人', '2017-06-11 19:08:17', '2017-06-11 19:08:17');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` int(3) NOT NULL,
  `permission_id` int(3) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `permissionid` (`permission_id`),
  CONSTRAINT `permissionid` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) DEFAULT NULL,
  `stu_num` varchar(20) DEFAULT NULL,
  `stu_name` varchar(20) DEFAULT NULL,
  `stu_age` tinyint(4) DEFAULT NULL,
  `stu_sex` char(2) DEFAULT NULL,
  `stu_profession` varchar(30) DEFAULT NULL,
  `stu_college` varchar(30) DEFAULT NULL,
  `stu_address` varchar(50) DEFAULT NULL,
  `stu_qq` varchar(15) DEFAULT NULL,
  `stu_email` varchar(50) DEFAULT NULL,
  `stu_photo` varchar(50) DEFAULT NULL,
  `stu_hobbies` varchar(60) DEFAULT NULL,
  `stu_recommend` varchar(100) DEFAULT NULL,
  `stu_phone` varchar(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`stu_id`),
  KEY `user_name` (`user_name`),
  KEY `stu_num` (`stu_num`),
  CONSTRAINT `user_name` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', null, '20134497', '曹操', null, null, null, null, null, null, null, null, null, null, null, '2017-05-06 16:16:48', '2017-05-06 16:16:48');
INSERT INTO `student` VALUES ('2', 'aa', '20134487', '张安', '11', '男', '软件工程', '信息与计算机工程学院', '黑龙江哈尔滨', '132543', '213434@qq.com', '/upload/5e1f5ebd861d4398b22e15ec96052f8a.jpg', null, '哈哈哈哈', '12345435', '2017-06-12 09:49:28', '2017-06-12 09:49:28');
INSERT INTO `student` VALUES ('3', null, '20134497', '刘备', null, null, null, null, null, null, null, null, null, null, null, '2017-05-09 19:25:42', '2017-05-09 19:25:42');
INSERT INTO `student` VALUES ('4', 'ad', '20134497', '管理员', null, null, null, null, null, null, null, null, null, null, null, '2017-05-09 19:57:03', '2017-05-09 19:57:03');
INSERT INTO `student` VALUES ('5', '唐简', '20134543', '唐简', '55', '女', '软件工程', '信息与计算机工程学院', '', '', '', '/upload/2306f9227f994e9eabf2be6fd40c71b9.jpg', null, null, '', '2017-05-12 10:31:23', '2017-05-12 10:31:23');
INSERT INTO `student` VALUES ('6', '太牛了', '牛逼', '2390', null, null, '软件工程', '信息与计算机工程学院', '', '', '', '/upload/e00148f1a0c641278753f6ba25b91475.jpg', null, '', '', '2017-05-26 21:02:21', '2017-05-26 21:02:21');
INSERT INTO `student` VALUES ('7', '20134567', null, '李璐', null, null, null, null, null, null, null, null, null, null, null, '2017-06-11 18:53:01', '2017-06-11 18:53:01');
INSERT INTO `student` VALUES ('8', '20134567', null, '李璐', null, null, null, null, null, null, null, null, null, null, null, '2017-06-11 18:55:36', '2017-06-11 18:55:36');
INSERT INTO `student` VALUES ('9', '', null, '', null, null, null, null, null, null, null, null, null, null, null, '2017-06-11 18:57:56', '2017-06-11 18:57:56');
INSERT INTO `student` VALUES ('10', '', null, '', null, null, null, null, null, null, null, null, null, null, null, '2017-06-11 19:00:26', '2017-06-11 19:00:26');
INSERT INTO `student` VALUES ('11', '', null, '', null, null, null, null, null, null, null, null, null, null, null, '2017-06-11 19:04:35', '2017-06-11 19:04:35');
INSERT INTO `student` VALUES ('12', '20134567', null, '李璐', null, null, null, null, null, null, null, null, null, null, null, '2017-06-11 19:05:55', '2017-06-11 19:05:55');
INSERT INTO `student` VALUES ('13', '20134567', null, '李璐', null, null, null, null, null, null, null, null, null, null, null, '2017-06-11 19:08:11', '2017-06-11 19:08:11');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `accept` char(1) DEFAULT '0',
  `createTime` timestamp NULL DEFAULT NULL,
  `modifyTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', '李四', 'zhang', '0', '2017-04-22 00:00:00', '2017-04-23 00:00:00');
INSERT INTO `user` VALUES ('4', '王五', '', '0', '2017-04-23 00:00:00', '2017-04-23 12:07:43');
INSERT INTO `user` VALUES ('5', '诸葛亮', 'zhu001', '1', '2017-04-23 12:12:05', '2017-04-23 12:13:49');
INSERT INTO `user` VALUES ('6', '刘备', '123456l', '0', '2017-04-23 22:04:53', '2017-04-23 22:04:53');
INSERT INTO `user` VALUES ('7', 'aa', '123', '1', null, '2017-05-27 16:24:51');
INSERT INTO `user` VALUES ('8', 'test', 'test', '0', '2017-05-06 17:02:01', '2017-05-06 17:02:01');
INSERT INTO `user` VALUES ('9', '薛彩宁', '12345', '0', '2017-05-06 18:23:40', '2017-05-06 18:23:40');
INSERT INTO `user` VALUES ('10', 'admin', '0', '1', '2017-05-09 19:25:42', '2017-05-09 19:25:42');
INSERT INTO `user` VALUES ('11', 'ad', 'ad', '1', '2017-05-09 19:57:03', '2017-05-09 19:57:03');
INSERT INTO `user` VALUES ('12', '唐简', 'jj', '1', '2017-05-12 10:30:29', '2017-05-12 10:30:29');
INSERT INTO `user` VALUES ('13', 'root', '', '0', '2017-05-24 20:12:50', '2017-05-24 20:12:50');
INSERT INTO `user` VALUES ('14', '牛逼了', '', '0', '2017-05-26 21:01:39', '2017-05-26 21:01:39');
INSERT INTO `user` VALUES ('15', '太牛了', '', '1', '2017-05-26 21:02:07', '2017-05-26 21:02:07');
INSERT INTO `user` VALUES ('17', '20134567', '20134567', '1', '2017-06-11 18:53:01', '2017-06-11 18:53:01');
INSERT INTO `user` VALUES ('18', '20134567', '20134567', '1', '2017-06-11 18:55:36', '2017-06-11 18:55:36');
INSERT INTO `user` VALUES ('19', '', '', '1', '2017-06-11 18:57:56', '2017-06-11 18:57:56');
INSERT INTO `user` VALUES ('20', '', '', '1', '2017-06-11 19:00:26', '2017-06-11 19:00:26');
INSERT INTO `user` VALUES ('21', '', '', '1', '2017-06-11 19:04:35', '2017-06-11 19:04:35');
INSERT INTO `user` VALUES ('22', '20134567', '20134567', '1', '2017-06-11 19:05:55', '2017-06-11 19:05:55');
INSERT INTO `user` VALUES ('23', '20134567', '20134567', '1', '2017-06-11 19:08:10', '2017-06-11 19:08:10');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(6) NOT NULL,
  `role_id` int(3) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
