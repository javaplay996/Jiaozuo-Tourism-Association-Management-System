/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiaozuolvyouxiehui
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaozuolvyouxiehui` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaozuolvyouxiehui`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jiaozuolvyouxiehui/upload/1620699622712.jpg'),(2,'picture2','http://localhost:8080/jiaozuolvyouxiehui/upload/1620699628102.jpg'),(3,'picture3','http://localhost:8080/jiaozuolvyouxiehui/upload/1620699639096.jpg'),(6,'homepage','http://localhost:8080/jiaozuolvyouxiehui/upload/1620699646740.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-11 15:21:44'),(2,'sex_types','性别',2,'女',NULL,'2021-05-11 15:21:44'),(3,'jingdian_types','景点类型名称',3,'公园',NULL,'2021-05-11 15:21:45'),(4,'jingdian_types','景点类型名称',2,'山脉',NULL,'2021-05-11 15:21:45'),(5,'jingdian_types','景点类型名称',1,'其他',NULL,'2021-05-11 15:21:45'),(6,'jingdian_dengji_types','景点等级名称',1,'五A景点',NULL,'2021-05-11 15:21:45'),(7,'jingdian_dengji_types','景点等级名称',2,'国家景点',NULL,'2021-05-11 15:21:45'),(8,'jingdian_dengji_types','景点等级名称',3,'市级景点',NULL,'2021-05-11 15:21:45'),(9,'jingdian_dengji_types','景点等级名称',4,'其他',NULL,'2021-05-11 15:21:45'),(10,'luxian_types','路线类型名称',1,'穷游路线',NULL,'2021-05-11 15:21:45'),(11,'luxian_types','路线类型名称',2,'最短路线',NULL,'2021-05-11 15:21:45'),(12,'luxian_types','路线类型名称',3,'其他',NULL,'2021-05-11 15:21:45'),(16,'news_types','旅游快讯类型名称',1,'旅游快讯',NULL,'2021-05-11 15:21:45'),(17,'news_types','旅游快讯类型名称',2,'旅游活动',NULL,'2021-05-11 15:21:45'),(20,'single_seach_types','单页数据类型',1,'协会简介',NULL,'2021-05-11 10:25:57'),(21,'single_seach_types','单页数据类型',2,'联系方式',NULL,'2021-05-11 10:25:57');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名  Search111 ',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型  Search111 ',
  `jingdian_dengji_types` int(11) DEFAULT NULL COMMENT '景点等级  Search111 ',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点缩略图',
  `jingdian_content` text COMMENT '景点详情',
  `jingdian_new_money` int(11) DEFAULT NULL COMMENT '参考门票价格',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_types`,`jingdian_dengji_types`,`jingdian_photo`,`jingdian_content`,`jingdian_new_money`,`create_time`) values (1,'景点1',2,3,'http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620698012813.jpg','景点详情1\r\n',100,'2021-05-11 15:42:40'),(2,'景点2',3,1,'http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620698005969.jpg','景点详情2\r\n',200,'2021-05-11 15:42:55'),(3,'景点3',1,2,'http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620697998553.jpg','景点详情3\r\n',300,'2021-05-11 16:27:01');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

insert  into `jingdian_collection`(`id`,`jingdian_id`,`yonghu_id`,`insert_time`,`create_time`) values (4,3,1,'2021-05-11 11:03:09','2021-05-11 11:03:09');

/*Table structure for table `jingdian_liuyan` */

DROP TABLE IF EXISTS `jingdian_liuyan`;

CREATE TABLE `jingdian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jingdian_liuyan_content` text COMMENT '评价内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点评价';

/*Data for the table `jingdian_liuyan` */

insert  into `jingdian_liuyan`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (3,3,2,'大萨达撒多\r\n','12312312312\r\n','2021-05-11 20:58:47','2021-05-11 20:58:47'),(4,3,1,'21123123',NULL,'2021-05-11 11:01:11','2021-05-11 11:01:11'),(5,3,1,'1231231',NULL,'2021-05-11 11:03:01','2021-05-11 11:03:01');

/*Table structure for table `luxian` */

DROP TABLE IF EXISTS `luxian`;

CREATE TABLE `luxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_name` varchar(200) DEFAULT NULL COMMENT '路线名  Search111 ',
  `luxian_photo` varchar(200) DEFAULT NULL COMMENT '路线照片',
  `luxian_content` text COMMENT '路线详情',
  `luxian_types` int(11) DEFAULT NULL COMMENT '路线类型  Search111 ',
  `luxian_jingdian` varchar(200) DEFAULT NULL COMMENT '路线经过景点',
  `luxian_new_money` int(11) DEFAULT NULL COMMENT '路线大概总花费',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='路线';

/*Data for the table `luxian` */

insert  into `luxian`(`id`,`luxian_name`,`luxian_photo`,`luxian_content`,`luxian_types`,`luxian_jingdian`,`luxian_new_money`,`create_time`) values (1,'路线1','http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620701121008.jpg','路线详情1\r\n',2,'路线经过景点1',100,'2021-05-11 15:50:05'),(2,'路线2','http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620701115261.jpg','路线详情2\r\n',3,'路线经过景点2',200,'2021-05-11 15:50:23'),(3,'路线3','http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620701108374.gif','路线详情3\r\n',1,'路线经过景点3',300,'2021-05-11 16:27:27');

/*Table structure for table `luxian_collection` */

DROP TABLE IF EXISTS `luxian_collection`;

CREATE TABLE `luxian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_id` int(11) DEFAULT NULL COMMENT '路线id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='路线收藏';

/*Data for the table `luxian_collection` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '旅游快讯名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '旅游快讯类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '旅游快讯图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '旅游快讯时间',
  `news_content` text COMMENT '旅游快讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='旅游快讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'旅游快讯名称1',2,'http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620699670548.jpg','2021-05-11 15:50:50','旅游快讯详情1\r\n','2021-05-11 15:50:50'),(2,'旅游快讯名称2',1,'http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620699663895.jpg','2021-05-11 15:51:02','旅游快讯详情2\r\n','2021-05-11 15:51:02');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_content`,`create_time`) values (1,'焦作旅游协会联系方式',2,'123123123123\r\n','2021-05-11 10:46:05'),(2,'焦作旅游协会简介',1,'123123123123\r\n','2021-05-11 10:46:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','kj2idz29kmsw60hklv1qdey74cy9bw9r','2021-05-11 09:52:25','2021-05-11 12:04:23'),(2,1,'111','yonghu','用户','2y6ivqbwmbgk1xhl9z3myv0f175i6c2y','2021-05-11 10:22:16','2021-05-11 12:02:55');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011064871','17789944561','http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620699600527.jpg','2021-05-11 15:39:40'),(2,'222','123456','用户2',2,'410882200011064872','17789944562','http://localhost:8080/jiaozuolvyouxiehui/file/download?fileName=1620699592235.jpg','2021-05-11 15:39:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
