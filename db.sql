/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - hangbanjinchugangguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hangbanjinchugangguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hangbanjinchugangguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-26 16:56:23'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-26 16:56:23'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-26 16:56:23'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-26 16:56:23'),(5,'hangban_zhuangtai_types','航班状态',1,'起飞',NULL,NULL,'2023-04-26 16:56:23'),(6,'hangban_zhuangtai_types','航班状态',2,'降落',NULL,NULL,'2023-04-26 16:56:23'),(7,'hangban_types','航班类型',1,'航班类型1',NULL,NULL,'2023-04-26 16:56:23'),(8,'hangban_types','航班类型',2,'航班类型2',NULL,NULL,'2023-04-26 16:56:23'),(9,'hangban_types','航班类型',3,'航班类型3',NULL,NULL,'2023-04-26 16:56:23'),(10,'hangban_types','航班类型',4,'航班类型4',NULL,NULL,'2023-04-26 16:56:23'),(11,'hangban_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-26 16:56:23'),(12,'hangban_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-26 16:56:23'),(13,'hangban_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-26 16:56:23'),(14,'hangban_yuyue_yesno_types','报名状态',4,'本次航班完成',NULL,NULL,NULL),(15,'hangban_yuyue_yesno_types','报名状态',5,'本次航班已起飞',NULL,NULL,NULL);

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-26 16:56:35','公告详情1','2023-04-26 16:56:35'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-26 16:56:35','公告详情2','2023-04-26 16:56:35'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-26 16:56:35','公告详情3','2023-04-26 16:56:35'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-26 16:56:35','公告详情4','2023-04-26 16:56:35'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-26 16:56:35','公告详情5','2023-04-26 16:56:35'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-26 16:56:35','公告详情6','2023-04-26 16:56:35'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-26 16:56:35','公告详情7','2023-04-26 16:56:35'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-26 16:56:35','公告详情8','2023-04-26 16:56:35'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-26 16:56:35','公告详情9','2023-04-26 16:56:35'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-26 16:56:35','公告详情10','2023-04-26 16:56:35'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-26 16:56:35','公告详情11','2023-04-26 16:56:35'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-26 16:56:35','公告详情12','2023-04-26 16:56:35'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-26 16:56:35','公告详情13','2023-04-26 16:56:35'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-26 16:56:35','公告详情14','2023-04-26 16:56:35');

/*Table structure for table `hangban` */

DROP TABLE IF EXISTS `hangban`;

CREATE TABLE `hangban` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `hangban_name` varchar(200) DEFAULT NULL COMMENT '航班名称  Search111 ',
  `hangban_uuid_number` varchar(200) DEFAULT NULL COMMENT '航班编号',
  `hangban_photo` varchar(200) DEFAULT NULL COMMENT '航班照片',
  `hangban_address` varchar(200) DEFAULT NULL COMMENT '航班地点',
  `hangban_types` int(11) DEFAULT NULL COMMENT '航班类型 Search111',
  `hangban_paodao` int(11) DEFAULT NULL COMMENT '跑道',
  `hangban_chaoxaing` varchar(200) DEFAULT NULL COMMENT '朝向',
  `hangban_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `hangban_zhuangtai_types` int(11) DEFAULT NULL COMMENT '航班状态 Search111',
  `hangban_content` longtext COMMENT '航班介绍 ',
  `hangban_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='航班信息';

/*Data for the table `hangban` */

insert  into `hangban`(`id`,`hangban_name`,`hangban_uuid_number`,`hangban_photo`,`hangban_address`,`hangban_types`,`hangban_paodao`,`hangban_chaoxaing`,`hangban_time`,`hangban_zhuangtai_types`,`hangban_content`,`hangban_delete`,`insert_time`,`create_time`) values (1,'航班名称1','1682499396260','upload/hangban1.jpg','航班地点1',2,316,'朝向1','2023-04-26 16:56:35',1,'航班介绍1',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(2,'航班名称2','1682499396276','upload/hangban2.jpg','航班地点2',1,53,'朝向2','2023-04-26 16:56:35',2,'航班介绍2',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(3,'航班名称3','1682499396296','upload/hangban3.jpg','航班地点3',3,226,'朝向3','2023-04-26 16:56:35',2,'航班介绍3',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(4,'航班名称4','1682499396234','upload/hangban4.jpg','航班地点4',3,173,'朝向4','2023-04-26 16:56:35',2,'航班介绍4',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(5,'航班名称5','1682499396288','upload/hangban5.jpg','航班地点5',2,492,'朝向5','2023-04-26 16:56:35',1,'航班介绍5',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(6,'航班名称6','1682499396291','upload/hangban6.jpg','航班地点6',3,88,'朝向6','2023-04-26 16:56:35',2,'航班介绍6',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(7,'航班名称7','1682499396240','upload/hangban7.jpg','航班地点7',1,230,'朝向7','2023-04-26 16:56:35',1,'航班介绍7',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(8,'航班名称8','1682499396275','upload/hangban8.jpg','航班地点8',3,83,'朝向8','2023-04-26 16:56:35',2,'航班介绍8',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(9,'航班名称9','1682499396245','upload/hangban9.jpg','航班地点9',1,460,'朝向9','2023-04-26 16:56:35',1,'航班介绍9',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(10,'航班名称10','1682499396291','upload/hangban10.jpg','航班地点10',3,17,'朝向10','2023-04-26 16:56:35',2,'航班介绍10',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(11,'航班名称11','1682499396297','upload/hangban11.jpg','航班地点11',4,265,'朝向11','2023-04-26 16:56:35',1,'航班介绍11',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(12,'航班名称12','1682499396204','upload/hangban12.jpg','航班地点12',4,180,'朝向12','2023-04-26 16:56:35',1,'航班介绍12',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(13,'航班名称13','1682499396268','upload/hangban13.jpg','航班地点13',4,296,'朝向13','2023-04-26 16:56:35',2,'航班介绍13',1,'2023-04-26 16:56:35','2023-04-26 16:56:35'),(14,'航班名称14','1682499396236','upload/hangban14.jpg','航班地点14',4,30,'朝向14','2023-04-26 16:56:35',2,'航班介绍14',1,'2023-04-26 16:56:35','2023-04-26 16:56:35');

/*Table structure for table `hangban_yuyue` */

DROP TABLE IF EXISTS `hangban_yuyue`;

CREATE TABLE `hangban_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hangban_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `hangban_id` int(11) DEFAULT NULL COMMENT '航班',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `hangban_yuyue_text` longtext COMMENT '理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '航班报名时间',
  `hangban_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `hangban_yuyue_yesno_text` longtext COMMENT '审核回复',
  `hangban_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='起飞降落请求';

/*Data for the table `hangban_yuyue` */

insert  into `hangban_yuyue`(`id`,`hangban_yuyue_uuid_number`,`hangban_id`,`yonghu_id`,`hangban_yuyue_text`,`insert_time`,`hangban_yuyue_yesno_types`,`hangban_yuyue_yesno_text`,`hangban_yuyue_shenhe_time`,`create_time`) values (1,'1682499396286',1,2,'理由1','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(2,'1682499396209',2,1,'理由2','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(3,'1682499396202',3,3,'理由3','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(4,'1682499396273',4,1,'理由4','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(5,'1682499396243',5,1,'理由5','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(6,'1682499396240',6,3,'理由6','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(7,'1682499396243',7,1,'理由7','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(8,'1682499396206',8,2,'理由8','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(9,'1682499396262',9,2,'理由9','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(10,'1682499396248',10,1,'理由10','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(11,'1682499396262',11,3,'理由11','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(12,'1682499396291',12,1,'理由12','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(13,'1682499396237',13,1,'理由13','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(14,'1682499396272',14,1,'理由14','2023-04-26 16:56:35',1,NULL,NULL,'2023-04-26 16:56:35'),(15,'1682500054199',14,1,'起飞','2023-04-26 17:07:39',5,'好的','2023-04-26 17:08:06','2023-04-26 17:07:39'),(16,'1682501188249',14,1,'降落','2023-04-26 17:26:32',4,'好的','2023-04-26 17:26:45','2023-04-26 17:26:32'),(17,'1682501482155',13,1,'申请起飞','2023-04-26 17:31:27',5,'好的','2023-04-26 17:32:15','2023-04-26 17:31:27'),(18,'1682501560380',13,1,'降落','2023-04-26 17:32:45',3,'不行','2023-04-26 17:33:00','2023-04-26 17:32:45'),(19,'1682501598842',13,1,'降落','2023-04-26 17:33:23',4,'海报','2023-04-26 17:33:39','2023-04-26 17:33:23');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','jsjd2uda4s2i7c1wuj3c9wo4kkbbn4yr','2023-04-26 16:57:39','2023-04-26 18:30:36'),(2,1,'admin','users','管理员','vykyzvmywf9sizjow2hhhbnisorj83t0','2023-04-26 17:04:42','2023-04-26 18:31:37'),(3,1,'admin','users','管理员','7osni9yohdrz9i1znyt0v3fp5hrc6605','2023-04-26 17:04:42','2023-04-26 18:04:43'),(4,1,'admin','users','管理员','u4t0wi6omeze7eoikdyo4zqri69z1c38','2023-04-26 17:04:42','2023-04-26 18:04:43');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-26 16:56:23');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','1682499396270','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-04-26 16:56:35'),(2,'a2','123456','1682499396280','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-04-26 16:56:35'),(3,'a3','123456','1682499396203','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-04-26 16:56:35');

/*Table structure for table `zhiling` */

DROP TABLE IF EXISTS `zhiling`;

CREATE TABLE `zhiling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hangban_id` int(11) DEFAULT NULL COMMENT '航班',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhiling_text` longtext COMMENT '指令内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '指令时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='塔台指令';

/*Data for the table `zhiling` */

insert  into `zhiling`(`id`,`hangban_id`,`yonghu_id`,`zhiling_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'指令内容1','2023-04-26 16:56:35','回复信息1','2023-04-26 16:56:35','2023-04-26 16:56:35'),(2,2,3,'指令内容2','2023-04-26 16:56:35','回复信息2','2023-04-26 16:56:35','2023-04-26 16:56:35'),(3,3,3,'指令内容3','2023-04-26 16:56:35','回复信息3','2023-04-26 16:56:35','2023-04-26 16:56:35'),(4,4,2,'指令内容4','2023-04-26 16:56:35','回复信息4','2023-04-26 16:56:35','2023-04-26 16:56:35'),(5,5,1,'指令内容5','2023-04-26 16:56:35','回复信息5','2023-04-26 16:56:35','2023-04-26 16:56:35'),(6,6,1,'指令内容6','2023-04-26 16:56:35','回复信息6','2023-04-26 16:56:35','2023-04-26 16:56:35'),(7,7,2,'指令内容7','2023-04-26 16:56:35','回复信息7','2023-04-26 16:56:35','2023-04-26 16:56:35'),(8,8,3,'指令内容8','2023-04-26 16:56:35','回复信息8','2023-04-26 16:56:35','2023-04-26 16:56:35'),(9,9,2,'指令内容9','2023-04-26 16:56:35','回复信息9','2023-04-26 16:56:35','2023-04-26 16:56:35'),(10,10,2,'指令内容10','2023-04-26 16:56:35','回复信息10','2023-04-26 16:56:35','2023-04-26 16:56:35'),(11,11,1,'指令内容11','2023-04-26 16:56:35','回复信息11','2023-04-26 16:56:35','2023-04-26 16:56:35'),(12,12,1,'指令内容12','2023-04-26 16:56:35','回复信息12','2023-04-26 16:56:35','2023-04-26 16:56:35'),(13,13,1,'指令内容13','2023-04-26 16:56:35','回复信息13','2023-04-26 16:56:35','2023-04-26 16:56:35'),(14,14,1,'指令内容14','2023-04-26 16:56:35','回复信息14','2023-04-26 16:56:35','2023-04-26 16:56:35'),(15,13,1,'起飞指令','2023-04-26 17:34:57','好的马上起飞','2023-04-26 17:35:14','2023-04-26 17:34:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
