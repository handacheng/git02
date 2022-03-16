-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: emo
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '识别码',
  `bookname` varchar(255) NOT NULL COMMENT '书名',
  `brief` varchar(255) NOT NULL COMMENT '简介',
  `bookphoto` varchar(255) NOT NULL COMMENT '封面',
  `filepath` varchar(255) DEFAULT NULL COMMENT '图书文件路径',
  `creattime` varchar(255) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_user`
--

DROP TABLE IF EXISTS `e_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_user` (
  `e_id` int(255) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `e_username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `e_sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `e_num` varchar(255) DEFAULT NULL COMMENT '电话',
  `e_head` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `vx_id` varchar(255) DEFAULT NULL COMMENT 'openid',
  PRIMARY KEY (`e_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_user`
--

LOCK TABLES `e_user` WRITE;
/*!40000 ALTER TABLE `e_user` DISABLE KEYS */;
INSERT INTO `e_user` VALUES (56,'Ray的银河信使',NULL,NULL,'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq3bJ1a2AwicgFMNWBYXvNeHNMWZNlsLoOibya38BpibictjkkIYtKdicS9ibpKpUiaFDVebc914nrcwuwOg/132','odOqx4usoHXHgdsiHGBtvqnSkSSk');
/*!40000 ALTER TABLE `e_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotext`
--

DROP TABLE IF EXISTS `emotext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emotext` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '题号',
  `content` varchar(255) NOT NULL COMMENT '题干',
  `answer` varchar(255) DEFAULT NULL COMMENT '答案',
  `rightanswer` varchar(255) NOT NULL COMMENT '正确答案',
  `erroranswer` varchar(255) NOT NULL COMMENT '错误答案',
  `score` varchar(255) NOT NULL COMMENT '分数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotext`
--

LOCK TABLES `emotext` WRITE;
/*!40000 ALTER TABLE `emotext` DISABLE KEYS */;
INSERT INTO `emotext` VALUES (1,'这是一道测试题','','a','bcd','10');
/*!40000 ALTER TABLE `emotext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotion`
--

DROP TABLE IF EXISTS `emotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `concent` longtext COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotion`
--

LOCK TABLES `emotion` WRITE;
/*!40000 ALTER TABLE `emotion` DISABLE KEYS */;
INSERT INTO `emotion` VALUES (1,'阿包傻逼','阿包傻逼大傻逼曹尼玛1'),(2,'成','777777'),(4,'777','东野圭吾小说普及性之所以这么高     东野圭吾小说普及性之所以这么高，几乎等于畅销书保证，一个不能不提的因素，即他的作品并非只有谜团，只 是卖弄诡计；一个更重要的元素，即他过人的说故事能力，以及很有温度的文字书写；身为作家，强项一堆，难怪东 野的创作总是多元又量产。\n    '),(6,'6767','东野圭吾小说普及性之所以这么高，几乎等于畅销书保证，一个不能不提的因素，即他的作品并非只有谜团，只 是卖弄诡计；一个更重要的元素，即他过人的说故事能力，以及很有温度的文字书写；身为作家，强项一堆，难怪东 野的创作总是多元又量产。 《解忧杂货店》是东野圭吾二○一二年的温馨长篇，这间会帮人解忧的“浪矢杂货店”，规则是只要在晚上把写 了烦恼的信丢进铁卷门上的邮件投递口，隔天就可以在店后方的牛奶箱里拿到回信。嗯，这个题材初看之时是会联想 到村深月那部有通灵者帮人完成心愿的《使者》，满有异曲同工的味道，基本上，是属于“穿越剧”这一款，东野 老师写这类故事算驾轻就熟了，如果读者曾被他之前的《时生》、《秘密》感动疗愈到，那本书就铁定是你的菜。 前述特别提到东野圭吾是说故事高手，在本作更是展露无遗。“解忧”杂货店不是神庙，不是拜拜求签用的，服 务项目比较像是人生咨询、心理辅导，比如这样的一个问题：“为参加奥运目标奋斗的女孩，因为男友罹癌将不久人 世，所以陷入彷徨困惑。男友一直是她努力的支柱，因此当下是要弃男友于不顾，忍痛追求两人的梦想？还是陪男友 走完人生最后一段路，但却会让他带着遗憾而死？” “浪矢杂货店”该怎么回复少女的烦恼？如果是人生哲理一路谈下去，会像张老师、像生命线，但这可是小说喔 ，读者要的是故事性，有高潮起伏的趣味，有峰回路转的戏剧张力，显然东野圭吾有他的好几套，即便励志成份有一 些，但成为小说的架构布局及起承转合，面面俱到很完整，更何况本书还是长篇咧！ 好看的故事就是要有梗，梗要铺得恰到好处。本作的几个梗：以一九八○年为关键转折，回到过去、跨越时空三 十年、对孤儿院的羁绊、带怀旧、有救赎、有报恩、是宿命与曙光共存的希望……素材在此，'),(7,'9998',''),(8,'9998','     瑞蒙是出身于康乃尔大学的医师，前斯丹福医学中心的成员之一，以及人类病患>一书的作者。她提出了一项令人信服的案例:“看看今日所谓的医学突破:一个没有心脏的人被连线,接到一部象档案柜大小的机器上。你不觉得这样实在太粗糙了吗?另-方面，如果我们能够以自己的意识取得对我们的身体更大的控制，并发动我们内在自然的治疗程序，我们就真的有所突破了。甚至，有朝一日当我们熟悉了这种技巧，服用药物将会变成矫枉过正的落伍行为，就像用长柄的大锤子敲破一颗蛋一样。”\n瑞蒙医生相信:心理神经免疫学(Psychoneuroimmunology)的范畴，对于我们医学的未来而言是最有展望的。而除了科学.上的资料之外，必须借助于另外一个角度，对这项学科再做衡量。如果不这么做，我们将永远无法彻底了解身心两方面所蕴含的潜能。\n瑞蒙医生曾经在她加州的办公室里对这个新观点详加说明-一那是另一种看待健康、 生病和疗伤的方式，这种观念可能会在医学界掀起革命性的变化。\n问:目前一般人对健康的认识偏向于对生理上的关注，所以人们到户外活动、吃健康食品等等。但是，过于重视生理方面是否可能使我们忽略了另一个或许更为重要的健康的层面呢?\n瑞蒙医生:的确。我们常会把人的身体和人两者混为一谈，这是不对的:人是有思想、有感情、有智慧的，而不只是血肉与骨架的组合。\n当我们只关心到身体，我们就会开始误以为健康就是生命的目的。所以我们会花很多时间吃对身体有益的食物，服用妥当的维他命，同时去做对健康有帮助的各项运动;这么一来我们就被自己的身体困住了，只能把眼光限制在生理范畴。却忘了还有另一个更重要的主题需要大家去注意，就是:我如何以一个健康之躯来完成我的生命目标呢?\n这就像是:拥有一部车，却将所有的时间花在维修上，而从来就没有驾驶过它。迟早你必须停下来问自己:这部车有什么用呢?我有了这部车可以做什么事?我可以去那里?能看到什么?我又能学到什么呢?\n健康的身体犹如一台交通工具，能帮助我们去我们想去的地方;因此健康是一种手段，而不是目的。它让我们活得有意义又丰硕。\n健康的生活\n问:根据你自己的定义，可否描述一下怎样的人才是在过着健康的生活呢?\n'),(9,'完善','我是完善');
/*!40000 ALTER TABLE `emotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `essay`
--

DROP TABLE IF EXISTS `essay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `essay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '识别码',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `concent` varchar(255) DEFAULT NULL COMMENT '内容',
  `addtime` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `statecode` varchar(255) DEFAULT NULL COMMENT '状态码',
  `autor` varchar(255) DEFAULT NULL COMMENT '上传人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essay`
--

LOCK TABLES `essay` WRITE;
/*!40000 ALTER TABLE `essay` DISABLE KEYS */;
INSERT INTO `essay` VALUES (1,'7777','7777777777777777777','2022-02-26 16:14:24','','傻逼阿包'),(2,'这是一道测试题','啥事啊','2022-02-26 16:15:54','1','傻逼阿包'),(3,'这是一道测试题','啥事','2022-02-26 16:18:09','1','傻逼阿包'),(4,'这是一道测试题','啥事啊','2022-02-26 21:38:00','未审核','傻逼阿包'),(5,'这是一道测试题','啥事啊','2022-02-26 21:28:39','未审核','傻逼阿包'),(6,'这是一道测试题','啥事啊','2022-02-26 21:37:28','未审核','傻逼阿包'),(7,'这是一道测试题','啥事啊','2022-02-27 13:39:09','1','傻逼阿包'),(8,'这是一道测试题','啥事啊','2022-02-27 13:40:10','1','傻逼阿包'),(9,'努力且上进','设法无法风格服务去热情发表回复v并且为分区','2022-03-08 08:52:05','1','han'),(11,'努力且上进','东野圭吾小说普及性之所以这么高，','2022-03-08 08:58:21','未审核','han');
/*!40000 ALTER TABLE `essay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moodlog`
--

DROP TABLE IF EXISTS `moodlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moodlog` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `concent` longtext COMMENT '内容',
  `addtime` longtext COMMENT '添加时间',
  `statecode` varchar(255) DEFAULT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moodlog`
--

LOCK TABLES `moodlog` WRITE;
/*!40000 ALTER TABLE `moodlog` DISABLE KEYS */;
INSERT INTO `moodlog` VALUES (17,'啊','啊','2022-03-02 15:53:44','未审核'),(18,'啊','啊','2022-03-02 16:26:22','未审核'),(19,'1','123','2022-03-02 17:07:42','未审核'),(23,'测试01','哈刚刚发一份','2022-03-04 02:16:01','0'),(24,'','','2022-03-04 19:06:52','未审核'),(25,'123','456','2022-03-08 16:10:46','未审核'),(26,'456','olm','2022-03-08 16:13:55','未审核'),(27,'asd','12345','2022-03-08 16:14:48','未审核'),(28,'123','456','2022-03-08 19:48:55','未审核'),(29,'a ','','2022-03-09 18:06:34','未审核'),(30,'a ','a ','2022-03-09 18:06:42','未审核'),(31,'','7777','2022-03-12 19:32:23','未审核'),(33,'心情美丽','我在测试','2022-03-12 19:33:01','未审核'),(34,'十大','77777','2022-03-12 19:50:58','未审核'),(35,'sdsd','456','2022-03-12 20:15:31','未审核'),(36,'456','789','2022-03-12 22:01:14','未审核'),(37,'12','456789','2022-03-12 22:41:01','未审核'),(38,'20021','3.12','2022-03-13 10:04:48','未审核');
/*!40000 ALTER TABLE `moodlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '识别码',
  `mold` varchar(255) DEFAULT NULL COMMENT '类型',
  `music` varchar(0) DEFAULT NULL COMMENT '音乐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL COMMENT '内容',
  `statecode` varchar(255) DEFAULT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (17,'456','1'),(18,'456','1'),(19,'456','1'),(20,'而发生的高vf而发生的高vf','1'),(21,'而发生的高vf而发生的高vf','1'),(22,'而发生的高vf而发生的高vf','1'),(23,'而发生的高vf而发生的高vf','未审核'),(24,'7777','未审核'),(25,'7777','未审核'),(27,'开心','0'),(28,'案引发的','未审核'),(29,'案引发的','未审核'),(30,'案引发的','未审核'),(31,'','未审核'),(32,'123','未审核');
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '识别码',
  `scoreall` int(255) NOT NULL COMMENT '总分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,10);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `score` int(255) NOT NULL COMMENT '分数',
  `stateinfo` varchar(255) NOT NULL COMMENT '类型',
  PRIMARY KEY (`score`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (10,'抑郁');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog`
--

DROP TABLE IF EXISTS `syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `requestIp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog`
--

LOCK TABLES `syslog` WRITE;
/*!40000 ALTER TABLE `syslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `u_id` int(255) NOT NULL AUTO_INCREMENT COMMENT '识别码',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `sex` varchar(255) NOT NULL COMMENT '性别',
  `phonenum` varchar(255) NOT NULL COMMENT '手机号',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin1','e10adc3949ba59abbe56e057f20f883e','男','1778598'),(4,'7777','121212','1','1778598'),(5,'admin','e10adc3949ba59abbe56e057f20f883e','1','18697023435'),(6,'admin','e10adc3949ba59abbe56e057f20f883e','1','18697023435'),(7,'admin','e10adc3949ba59abbe56e057f20f883e','1','18697023435'),(8,'abcd','e10adc3949ba59abbe56e057f20f883e','男','123456'),(10,'admin','e10adc3949ba59abbe56e057f20f883e','男','1'),(11,'admin','e10adc3949ba59abbe56e057f20f883e','男','1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scoreall` int(255) DEFAULT NULL COMMENT '总分',
  `state` varchar(255) DEFAULT NULL COMMENT '状态',
  `vx_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,10,'抑郁','odOqx4usoHXHgdsiHGBtvqnSkSSk'),(2,0,'10','抑郁');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `userstate`
--

DROP TABLE IF EXISTS `userstate`;
/*!50001 DROP VIEW IF EXISTS `userstate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `userstate` AS SELECT 
 1 AS `e_username`,
 1 AS `vx_id`,
 1 AS `scoreall`,
 1 AS `state`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `usertext`
--

DROP TABLE IF EXISTS `usertext`;
/*!50001 DROP VIEW IF EXISTS `usertext`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `usertext` AS SELECT 
 1 AS `e_username`,
 1 AS `vx_id`,
 1 AS `scoreall`,
 1 AS `state`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'emo'
--

--
-- Dumping routines for database 'emo'
--

--
-- Final view structure for view `userstate`
--

/*!50001 DROP VIEW IF EXISTS `userstate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `userstate` AS select `e_user`.`e_username` AS `e_username`,`e_user`.`vx_id` AS `vx_id`,`userinfo`.`scoreall` AS `scoreall`,`userinfo`.`state` AS `state` from (`e_user` join `userinfo` on((`e_user`.`vx_id` = `userinfo`.`vx_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usertext`
--

/*!50001 DROP VIEW IF EXISTS `usertext`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usertext` AS select `e_user`.`e_username` AS `e_username`,`e_user`.`vx_id` AS `vx_id`,`userinfo`.`scoreall` AS `scoreall`,`userinfo`.`state` AS `state` from (`e_user` join `userinfo` on((`e_user`.`vx_id` = `userinfo`.`vx_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-14 10:24:43
