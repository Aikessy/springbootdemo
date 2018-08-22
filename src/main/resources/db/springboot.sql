-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: localhost    Database: springboot
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data_dict`
--

DROP TABLE IF EXISTS `data_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(64) NOT NULL COMMENT '数据字典类型名称',
  `type_code` varchar(64) DEFAULT NULL COMMENT '数据字典类型代码',
  `ddkey` varchar(6) NOT NULL COMMENT '数据键',
  `ddvalue` varchar(12) NOT NULL COMMENT '数据值',
  `is_show` int(1) NOT NULL COMMENT '是否显示，1：显示；2：不显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COMMENT='数据字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_dict`
--

LOCK TABLES `data_dict` WRITE;
/*!40000 ALTER TABLE `data_dict` DISABLE KEYS */;
INSERT INTO `data_dict` VALUES (1,'性别','sex','0','女',1),(2,'性别','sex','1','男',1),(3,'性别','sex','2','保密',1),(4,'汽车类型','carType','2','公交车',1),(5,'汽车类型','carType','1','轿车',1),(6,'职业','job','1','Java开发',1),(7,'职业','job','2','前端开发',1),(8,'职业','job','3','大数据开发',1),(9,'职业','job','4','ios开发',1),(10,'职业','job','5','Android开发',1),(11,'职业','job','6','Linux系统工程师',1),(12,'职业','job','7','PHP开发',1),(13,'职业','job','8','.net开发',1),(14,'职业','job','9','C/C++',1),(15,'职业','job','10','学生',0),(16,'职业','job','11','其它',1),(17,'职业','job','12','全栈牛逼架构师',1),(18,'汽车类型','carType','3','海陆两用',1);
/*!40000 ALTER TABLE `data_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo_item`
--

DROP TABLE IF EXISTS `demo_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_item` (
  `id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_item`
--

LOCK TABLES `demo_item` WRITE;
/*!40000 ALTER TABLE `demo_item` DISABLE KEYS */;
INSERT INTO `demo_item` VALUES ('170909FRA2NB7TR4','红翼 red wing',215000),('170909FRB9DPXY5P','红翼 9111',210000),('170909FRCAT15XGC','红翼 875',215000),('170909FRF2P18ARP','cat',185000),('170909FRG6R75PZC','dog',195000),('170909FRHBS3K680','马丁靴',150000),('170909FRPWA5HCPH','天木兰 经典 船鞋',65000),('170909FRS6SBHH00','天木兰 踢不烂',65000),('170909FRX22HKCDP','其乐 袋鼠靴',70000);
/*!40000 ALTER TABLE `demo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permission`
--

DROP TABLE IF EXISTS `sys_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permission` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) NOT NULL COMMENT '资源名称',
  `type` int(2) NOT NULL COMMENT '资源类型：\r\n0：顶级根权限\r\n1：菜单,间接代表就是 isParent=true\r\n2：普通链接（按钮，link等）',
  `url` varchar(128) DEFAULT NULL COMMENT '访问url地址',
  `percode` varchar(128) DEFAULT NULL COMMENT '权限代码字符串',
  `parentid` int(11) DEFAULT NULL COMMENT '父结点id\r\n为0代表根节点',
  `parentids` varchar(128) DEFAULT NULL COMMENT '父结点id列表串',
  `sort` int(3) DEFAULT NULL COMMENT '排序号',
  `available` int(1) NOT NULL COMMENT '是否可用,1：可用，0不可用',
  `description` varchar(128) DEFAULT NULL COMMENT '当前资源描述',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `percode` (`percode`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permission`
--

LOCK TABLES `sys_permission` WRITE;
/*!40000 ALTER TABLE `sys_permission` DISABLE KEYS */;
INSERT INTO `sys_permission` VALUES (237,'个人会员',1,'/appuser/mng','appuser:mng',216,NULL,NULL,1,'会员管理 - 个人会员 菜单按钮','2016-10-24 14:28:31','2016-10-24 14:28:31'),(238,'查看',2,'/appuser/getPersonal','appuser:getPersonal',237,NULL,NULL,1,'会员管理 - 个人会员 下属按钮','2016-10-24 14:36:42','2016-10-24 14:36:55'),(239,'审核',2,'/appuser/toCheck','appuser:toCheck',237,NULL,NULL,1,'会员管理 - 个人会员 下属按钮','2016-10-24 14:37:37','2016-10-24 14:37:45'),(240,'提交审核',2,'/appuser/check','appuser:check',237,NULL,NULL,1,'会员管理 - 个人会员 菜单按钮','2016-10-24 14:39:10','2016-10-24 14:39:10'),(241,'企业会员',1,'/company/mng','company:mng',216,NULL,NULL,1,'会员管理 - 企业会员','2016-10-24 14:41:52','2016-10-24 14:42:11'),(242,'查看',2,'/company/getCompany','company:getCompany',241,NULL,NULL,1,'会员管理 - 企业会员 下查看资源','2016-10-24 14:43:38','2016-10-24 14:43:43'),(243,'审核',2,'/company/toCheck','company:toCheck',241,NULL,NULL,1,'会员管理 - 企业会员','2016-10-24 14:44:23','2016-10-24 14:44:23'),(244,'提交审核',2,'/company/check','company:check',241,NULL,NULL,1,'会员管理 - 企业会员','2016-10-24 14:44:52','2016-10-24 14:44:59'),(245,'车辆管理',1,'/cars/toCarsList','cars:toCarsList',216,NULL,NULL,1,'车辆管理菜单','2016-10-26 13:51:20','2016-10-26 13:51:20'),(246,'查看',2,'/cars/queryCars','cars:queryCars',245,NULL,NULL,1,'车辆管理菜单 - 查看按钮','2016-10-26 13:52:34','2016-10-26 13:52:42'),(247,'审核',2,'/cars/toCarsCheck','cars:toCarsCheck',245,NULL,NULL,1,'车辆管理菜单 - 审核按钮','2016-10-26 13:53:19','2016-10-26 13:53:19'),(248,'提交审核',2,'/cars/carsCheck','cars:carsCheck',245,NULL,NULL,1,'车辆管理菜单 - 提交审核','2016-10-26 13:54:08','2016-10-26 13:54:08'),(249,'车源管理',1,'/carsource/mng','carsource:mng',216,NULL,NULL,1,'货源/车源管理 - 车源管理','2016-10-26 13:55:28','2016-10-26 13:55:28'),(250,'货源管理',1,'/cargosource/mng','cargosource:mng',216,NULL,NULL,1,'车源/货源管理菜单 - 货源管理','2016-10-26 13:56:52','2016-10-26 13:56:52'),(252,'搜索车源',2,'/carsource/getAll','carsource:getAll',249,NULL,NULL,1,'货源/车源管理 - 车源管理 - 搜索','2016-10-26 13:59:19','2016-10-26 13:59:19'),(254,'新增车源',2,'/carsource/add','carsource:add',249,NULL,NULL,1,'货源/车源管理 - 车源管理 - 新增车源','2016-10-26 14:03:36','2016-10-26 14:03:36'),(255,'车源详情',2,'/carsource/detail','carsource:detail',249,NULL,NULL,1,'货源/车源管理 - 车源管理 - 车源详情','2016-10-26 14:04:03','2016-10-26 14:04:03'),(256,'删除车源',2,'/carsource/del','carsource:del',249,NULL,NULL,1,'货源/车源管理 - 车源管理 - 删除车源','2016-10-26 14:05:26','2016-10-26 14:05:35'),(257,'保存新增的车源',2,'/carsource/save','carsource:save',249,NULL,NULL,1,'货源/车源管理 - 车源管理 - 保存新增的车源','2016-10-26 14:06:52','2016-10-26 14:06:58');
/*!40000 ALTER TABLE `sys_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available` int(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员',1),(2,'总经理',1),(3,'客服',1),(4,'销售/市场专员',1),(5,'产品团队',1),(6,'技术团队',1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_permission`
--

DROP TABLE IF EXISTS `sys_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_permission` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `sys_role_id` int(20) NOT NULL COMMENT '角色id',
  `sys_permission_id` int(20) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_permission`
--

LOCK TABLES `sys_role_permission` WRITE;
/*!40000 ALTER TABLE `sys_role_permission` DISABLE KEYS */;
INSERT INTO `sys_role_permission` VALUES (1,1,237),(2,1,238),(3,1,239),(4,1,240),(5,1,241),(6,6,250),(7,6,251),(8,6,252),(9,6,253),(10,6,254),(11,6,255);
/*!40000 ALTER TABLE `sys_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` varchar(20) NOT NULL,
  `username` varchar(60) NOT NULL COMMENT '用户名，登录名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `nickname` varchar(60) NOT NULL COMMENT '昵称',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `sex` int(1) DEFAULT NULL COMMENT '性别\r\n0：女\r\n1：男\r\n2：保密 ',
  `job` int(10) DEFAULT NULL COMMENT '职业类型：\r\n1：Java开发\r\n2：前端开发\r\n3：大数据开发\r\n4：ios开发\r\n5：Android开发\r\n6：Linux系统工程师\r\n7：PHP开发\r\n8：.net开发\r\n9：C/C++\r\n10：学生\r\n11：其它',
  `face_image` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `province` varchar(12) DEFAULT NULL COMMENT '省',
  `city` varchar(12) DEFAULT NULL COMMENT '市',
  `district` varchar(12) DEFAULT NULL COMMENT '区',
  `address` varchar(128) DEFAULT NULL COMMENT '详细地址',
  `auth_salt` varchar(16) DEFAULT NULL COMMENT '用于权限的“盐”',
  `last_login_ip` varchar(20) DEFAULT NULL COMMENT '最后一次登录IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `is_delete` int(1) NOT NULL,
  `regist_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统后台用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('1001','test','72e1242b855fb038212135e0ad348842','lee123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'test',NULL,NULL,0,'2017-11-06 10:20:36'),('1709067GM45GAF5P','jack','afee05e30d029ac3b61a2dc6c08d7b27','jack',22,0,3,NULL,'上海市','上海市市辖区','静安区','上海老薛','abcd',NULL,NULL,0,'2017-09-06 10:35:28'),('170908G65M59XWH0','test003','afee05e30d029ac3b61a2dc6c08d7b27','test003',20,0,3,NULL,'上海市','上海市市辖区','黄浦区','老薛家','tx5D',NULL,NULL,1,'2017-09-08 21:19:40'),('170918GDXW2DNP4H','test001','afee05e30d029ac3b61a2dc6c08d7b27','test0016',18,1,9,NULL,'湖北省','鄂州市','华容区','123','W5k4',NULL,NULL,0,'2017-09-18 21:42:51'),('171020FWN55RS5AW','test1001','75a5298456daeb532320fdd4a9eacec0','test1001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3883',NULL,NULL,0,'2017-10-20 20:51:05'),('1803269654BP2428','imoocMon Mar 26 12:55:11 CST 2018','abc123','imoocMon Mar 26 12:55:11 CST 2018',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2018-03-26 12:55:11'),('180822GS25KHP5GC','heikki','123','jie',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2018-08-22 22:07:20');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `sys_user_id` varchar(20) NOT NULL,
  `sys_role_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (21,'1709067GM45GAF5P',1);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_test`
--

DROP TABLE IF EXISTS `t_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_test`
--

LOCK TABLES `t_test` WRITE;
/*!40000 ALTER TABLE `t_test` DISABLE KEYS */;
INSERT INTO `t_test` VALUES (1,'111'),(2,'222'),(3,'333');
/*!40000 ALTER TABLE `t_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned DEFAULT NULL,
  `nickname` varchar(20) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-22 22:12:13
