-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: democlean
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2,2,1,'not_locked',3,0);
INSERT INTO `ezcobj_state` VALUES (2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,'',3,'Lock',2);
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,'',3,'Not locked');
INSERT INTO `ezcobj_state_language` VALUES (2,'',3,'Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (4,1);
INSERT INTO `ezcobj_state_link` VALUES (10,1);
INSERT INTO `ezcobj_state_link` VALUES (11,1);
INSERT INTO `ezcobj_state_link` VALUES (12,1);
INSERT INTO `ezcobj_state_link` VALUES (13,1);
INSERT INTO `ezcobj_state_link` VALUES (14,1);
INSERT INTO `ezcobj_state_link` VALUES (41,1);
INSERT INTO `ezcobj_state_link` VALUES (42,1);
INSERT INTO `ezcobj_state_link` VALUES (45,1);
INSERT INTO `ezcobj_state_link` VALUES (49,1);
INSERT INTO `ezcobj_state_link` VALUES (50,1);
INSERT INTO `ezcobj_state_link` VALUES (51,1);
INSERT INTO `ezcobj_state_link` VALUES (52,1);
INSERT INTO `ezcobj_state_link` VALUES (54,1);
INSERT INTO `ezcobj_state_link` VALUES (56,1);
INSERT INTO `ezcobj_state_link` VALUES (57,1);
INSERT INTO `ezcobj_state_link` VALUES (58,1);
INSERT INTO `ezcobj_state_link` VALUES (59,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcomment`
--

LOCK TABLES `ezcomment` WRITE;
/*!40000 ALTER TABLE `ezcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcomment_notification`
--

LOCK TABLES `ezcomment_notification` WRITE;
/*!40000 ALTER TABLE `ezcomment_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcomment_subscriber`
--

LOCK TABLES `ezcomment_subscriber` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcomment_subscription`
--

LOCK TABLES `ezcomment_subscription` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0,2,'eng-GB','English (United Kingdom)');
INSERT INTO `ezcontent_language` VALUES (0,4,'ger-DE','German');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
INSERT INTO `ezcontentbrowserecent` VALUES (1422896965,1,'eZ Publish',2,14);
INSERT INTO `ezcontentbrowserecent` VALUES (1422896966,2,'Users',5,14);
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,3,1082454875,14,'a3d405b81be900468eb153d774f4f0d2',NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Folder\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"User\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (0,'<subject>',1052385685,14,13,'comment',2,0,3,1082455144,14,'000c14f4f475e9f2955dedab72799941',NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Comment\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (1,'<name>',1081858024,14,14,'common_ini_settings',2,0,3,1081858024,14,'ffedf2e73b1ea0c3e630e42e2db9c900',NULL,'a:2:{s:6:\"eng-GB\";s:19:\"Common ini settings\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (1,'<title>',1081858045,14,15,'template_look',2,0,3,1081858045,14,'59b43cd9feaaf0e45ac974fb4bbd3f92',NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Template look\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (0,'<short_title|title>',1422896964,14,16,'article',2,1,3,1422896964,14,'c15b600eb9198b1924063b5a68758232','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,17,'blog',2,1,3,1422896964,14,'3a6f9c1f075b3bf49d7345576b196fe8','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Blog\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1422896964,14,18,'blog_post',2,1,3,1422896964,14,'7ecb961056b7cbb30f22a91357e0a007','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Blog post\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1422896964,14,19,'call_to_action',2,1,3,1422896964,14,'5ef96fd48e645dbdeb803014fe7af178','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:14:\"Call To Action\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1422896964,14,20,'call_to_action_feedback',2,0,3,1422896964,14,'d88d2cd52ba6c6b1383f661a959c995f','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:23:\"Call To Action Feedback\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,21,'product',2,0,3,1422896964,14,'77f3ede996a3a39c7159cc69189c5307','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Product\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,22,'feedback_form',2,1,3,1422896964,14,'df0257b8fc55f6b8ab179d6fb915455e','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:13:\"Feedback form\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,23,'landing_page',2,1,3,1422896964,14,'e36c458e3e4a81298a0945f53a2c81f4','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:12:\"Landing Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1422896964,14,24,'wiki_page',2,1,3,1422896964,14,'d4a05eed0402e4d70fedfda2023f1aa2','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Wiki Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,25,'poll',2,0,3,1422896964,14,'232937a3a2eacbbf24e2601aebe16522','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Poll\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,26,'file',2,0,3,1422896964,14,'637d58bfddf164627bdfd265733280a0','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,27,'image',2,0,3,1422896964,14,'f6df12aa74e36230eb675f364fccd25a','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,28,'link',2,0,3,1422896964,14,'74ec6507063150bc813549b22534ad48','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Link\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,29,'gallery',2,1,3,1422896964,14,'6a320cdc3e274841b82fcd63a86f80d1','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Gallery\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,30,'forum',2,1,3,1422896964,14,'b241f924b96b267153f5f55904e0675a','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Forum\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<subject>',1422896964,14,31,'forum_topic',2,1,3,1422896964,14,'71f99c516743a33562c3893ef98c9b60','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Forum topic\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<subject>',1422896964,14,32,'forum_reply',2,0,3,1422896964,14,'80ee42a66b2b8b6ee15f5c5f4b361562','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Forum reply\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<short_title|title>',1422896964,14,33,'event',2,0,3,1422896964,14,'563cb5edc2adfd2b240efa456c81525f','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Event\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1422896964,14,34,'event_calendar',2,1,3,1422896964,14,'020cbeb6382c8c89dcec2cd406fb47a8','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:14:\"Event calendar\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,35,'banner',2,0,3,1422896964,14,'9cb558e25fd946246bbb32950c00228e','a:0:{}','a:2:{s:6:\"eng-GB\";s:6:\"Banner\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1422896964,14,36,'forums',2,1,3,1422896964,14,'60a921e54c1efbb9456bd2283d9e66cb','a:0:{}','a:2:{s:6:\"eng-GB\";s:6:\"Forums\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,37,'video',2,0,3,1422896964,14,'b38417e8194fb8f893ca918d297b4fa8','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Video\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,38,'place',2,0,3,1422896964,14,'861f02510226434178f3859242fe40d7','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Place\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1422896964,14,39,'place_list',2,1,3,1422896964,14,'e3461a7a3d2b6c0d291be6becfb6127e','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"Place list\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,255,0,0,0,'Folder','','','','','ezstring',4,'name',0,1,1,1,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',6,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',7,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"First name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Last name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"User account\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',119,'short_description',0,0,1,3,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Summary\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',13,0,0,0,0,100,0,0,0,'','','','','','ezstring',149,'subject',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',13,0,0,0,0,0,0,0,0,'','','','','','ezstring',150,'author',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',13,0,0,0,0,20,0,0,0,'','','','','','eztext',151,'message',0,1,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,100,0,0,0,'','','','','','ezstring',155,'short_name',0,0,1,2,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"Short name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',156,'description',0,0,1,4,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',1,0,0,0,0,0,0,1,0,'','','','','','ezboolean',158,'show_children',0,0,0,5,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:17:\"Display sub items\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,0,0,0,0,'','','','','','ezstring',159,'name',0,0,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','IndexPage','','override;user;admin;demo','ezinisetting',160,'indexpage',0,0,0,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"Index Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','DefaultPage','','override;user;admin;demo','ezinisetting',161,'defaultpage',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"Default Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugOutput','','override;user;admin;demo','ezinisetting',162,'debugoutput',0,0,0,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"Debug Output\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugByIP','','override;user;admin;demo','ezinisetting',163,'debugbyip',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Debug By IP\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,6,0,0,0,'site.ini','DebugSettings','DebugIPList','','override;user;admin;demo','ezinisetting',164,'debugiplist',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Debug IP List\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugRedirection','','override;user;admin;demo','ezinisetting',165,'debugredirection',0,0,0,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Debug Redirection\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','ContentSettings','ViewCaching','','override;user;admin;demo','ezinisetting',166,'viewcaching',0,0,0,8,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"View Caching\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCache','','override;user;admin;demo','ezinisetting',167,'templatecache',0,0,0,9,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:14:\"Template Cache\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCompile','','override;user;admin;demo','ezinisetting',168,'templatecompile',0,0,0,10,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Template Compile\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,6,0,0,0,'image.ini','small','Filters','','override;user;admin;demo','ezinisetting',169,'imagesmall',0,0,0,11,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Image Small Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,6,0,0,0,'image.ini','medium','Filters','','override;user;admin;demo','ezinisetting',170,'imagemedium',0,0,0,12,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Image Medium Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,6,0,0,0,'image.ini','large','Filters','','override;user;admin;demo','ezinisetting',171,'imagelarge',0,0,0,13,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Image Large Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteName','','override;user;admin;demo','ezinisetting',172,'title',0,0,0,1,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',15,0,0,0,0,6,0,0,0,'site.ini','SiteSettings','MetaDataArray','','override;user;admin;demo','ezinisetting',173,'meta_data',0,0,0,2,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:9:\"Meta data\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezimage',174,'image',0,0,0,3,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'sitestyle','','','','','ezpackage',175,'sitestyle',0,0,0,4,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:9:\"Sitestyle\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',15,0,0,0,0,1,0,0,0,'site.ini','MailSettings','AdminEmail','','override;user;admin;demo','ezinisetting',177,'email',0,0,0,6,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteURL','','override;user;admin;demo','ezinisetting',178,'siteurl',0,0,0,7,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Site URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Signature\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',4,0,0,0,0,1,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,255,0,0,0,'New article','','','','','ezstring',181,'title',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,255,0,0,0,'','','','','','ezstring',182,'short_title',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',183,'intro',0,1,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Summary\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',184,'body',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',185,'subscriber_teaser',0,0,0,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:35:\"Teaser displayed for non subscriber\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:17:\"Subscriber teaser\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezimage',186,'image',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',187,'caption',0,0,1,7,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:15:\"Caption (Image)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezgmaplocation',188,'location',0,0,1,8,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,0,0,0,0,'','','','','','ezauthor',189,'author',0,0,0,9,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,0,0,0,0,'','','','','','ezdatetime',190,'publish_date',0,0,1,10,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:12:\"Publish date\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',191,'star_rating',0,0,0,11,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',192,'tags',0,0,1,12,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',193,'name',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',17,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',194,'description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',195,'tags',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezstring',196,'title',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',18,0,0,0,0,25,0,0,0,'','','','','','ezxmltext',197,'body',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',18,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',198,'publication_date',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:16:\"Publication date\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',199,'tags',0,0,1,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',200,'title',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',201,'description',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',202,'feedback_page',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:13:\"Feedback Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',203,'first_name',1,1,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"First Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',204,'last_name',1,1,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:9:\"Last Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezemail',205,'email',1,1,1,6,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezcountry',206,'country',1,0,1,7,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Country\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,10,0,0,0,'','','','','','eztext',207,'comment',1,1,1,8,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Comment\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',208,'action_button_label',0,0,1,9,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:19:\"Action Button Label\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',20,0,0,0,0,0,0,0,0,'','','','','','ezstring',209,'title',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',20,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',210,'description',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezstring',211,'name',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezstring',212,'product_number',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:14:\"Product number\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',213,'short_description',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:17:\"Short description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',214,'description',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,1,0,0,0,1,0,0,0,'','','','','','ezprice',215,'price',0,0,0,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Price\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezimage',216,'image',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',217,'caption',0,0,1,7,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:15:\"Caption (Image)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezmultioption',218,'additional_options',0,0,1,8,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:18:\"Additional options\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',219,'star_rating',0,0,1,9,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',220,'tags',0,0,1,10,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezstring',221,'name',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',222,'description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezstring',223,'first_name',1,1,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"First Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezstring',224,'last_name',1,1,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Last Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezstring',225,'subject',1,1,1,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezcountry',226,'country',1,1,1,6,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Country\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,10,0,0,0,'','','','','','eztext',227,'message',1,1,1,7,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',22,0,0,0,0,0,0,0,0,'','','','','','ezemail',228,'email',1,1,0,8,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',22,0,0,0,0,0,0,0,0,'','','','','','ezemail',229,'recipient',0,0,0,9,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Recipient\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',23,0,0,0,0,0,0,0,0,'','','','','','ezstring',230,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',23,0,0,0,0,0,0,0,0,'','','','','','ezpage',231,'page',0,0,0,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:6:\"Layout\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezstring',232,'title',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',233,'body',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',234,'star_rating',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',235,'tags',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezboolean',236,'show_children',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:17:\"Display sub items\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',25,0,0,0,0,0,0,0,0,'','','','','','ezstring',237,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',25,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',238,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',25,0,0,0,0,0,0,0,0,'','','','','','ezoption',239,'question',1,1,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:8:\"Question\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,0,0,0,0,'New file','','','','','ezstring',240,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',241,'description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',242,'file',0,1,0,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',243,'star_rating',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',244,'tags',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,150,0,0,0,'','','','','','ezstring',245,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',246,'caption',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,2,0,0,0,'','','','','','ezimage',247,'image',0,0,0,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',248,'star_rating',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',249,'tags',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',28,0,0,0,0,255,0,0,0,'','','','','','ezstring',250,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',28,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',251,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',28,0,0,0,0,0,0,0,0,'','','','','','ezurl',252,'location',0,0,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',28,0,0,0,0,0,0,1,0,'','','','','','ezboolean',253,'open_in_new_window',0,0,1,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:18:\"Open in new window\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezstring',254,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',255,'short_description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:17:\"Short description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',256,'description',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',257,'image',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',258,'tags',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',30,0,0,0,0,0,0,0,0,'','','','','','ezstring',259,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',30,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',260,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',31,0,0,0,0,0,0,0,0,'','','','','','ezstring',261,'subject',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',31,0,0,0,0,10,0,0,0,'','','','','','eztext',262,'message',0,1,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',31,0,0,0,0,0,0,0,0,'','','','','','ezboolean',263,'sticky',0,0,1,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:6:\"Sticky\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',31,0,0,0,0,0,0,0,0,'','','','','','ezsubtreesubscription',264,'notify_me',0,0,0,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:23:\"Notify me about updates\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',32,0,0,0,0,0,0,0,0,'','','','','','ezstring',265,'subject',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',32,0,0,0,0,10,0,0,0,'','','','','','eztext',266,'message',0,1,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,55,0,0,0,'','','','','','ezstring',267,'title',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:10:\"Full title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,19,0,0,0,'','','','','','ezstring',268,'short_title',0,1,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',269,'text',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Text\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',270,'category',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:8:\"Category\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',33,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',271,'from_time',0,1,0,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"From Time\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',33,0,0,0,0,0,0,0,0,'','','','','','ezdatetime',272,'to_time',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"To Time\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',273,'tags',0,0,1,7,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',34,0,0,0,0,65,0,0,0,'','','','','','ezstring',274,'title',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',34,0,0,0,0,0,0,0,0,'','','','','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Calendar\"/><option id=\"1\" name=\"Program\"/></options></ezselection>\n','ezselection',275,'view',0,1,0,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"View\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezstring',276,'name',0,1,0,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezstring',277,'url',0,0,0,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:3:\"URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezimage',278,'image',0,1,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,10,0,0,0,'','','','','','eztext',279,'image_map',0,0,0,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:9:\"Image map\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',280,'tags',0,0,1,5,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',36,0,0,0,0,0,0,0,0,'','','','','','ezstring',281,'title',0,0,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',36,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',282,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezstring',283,'name',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',37,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',284,'caption',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',285,'file',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',286,'star_rating',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezstring',287,'name',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',288,'description',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezimage',289,'image',0,0,0,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezgmaplocation',290,'location',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',291,'keyword',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Keyword\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',292,'rating',0,0,1,6,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:6:\"Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',39,0,0,0,0,0,0,0,0,'','','','','','ezstring',293,'name',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',39,0,0,0,0,0,0,0,0,'','','','','','ezstring',294,'short_name',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"Short name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',39,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',295,'description',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezurl',296,'site_map_url',0,0,0,8,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:12:\"Site map URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezurl',297,'tag_cloud_url',0,0,0,9,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:13:\"Tag Cloud URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',298,'login_label',0,0,0,10,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:13:\"Login (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',299,'logout_label',0,0,0,11,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:14:\"Logout (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',300,'my_profile_label',0,0,0,12,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:18:\"My profile (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',301,'register_user_label',0,0,0,13,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:25:\"Register new user (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',302,'rss_feed',0,0,0,14,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"RSS feed\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',303,'shopping_basket_label',0,0,0,15,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:23:\"Shopping basket (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',304,'site_settings_label',0,0,0,16,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:21:\"Site settings (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',305,'footer_text',0,0,0,17,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Footer text\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezboolean',306,'hide_powered_by',0,0,0,18,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:17:\"Hide \"Powered by\"\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',307,'footer_script',0,0,0,19,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:17:\"Footer Javascript\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezpage',308,'call_for_action',0,0,0,6,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:15:\"Call For Action\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',309,'tags',0,0,0,7,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (3,0,2,'Users');
INSERT INTO `ezcontentclass_classgroup` VALUES (4,0,2,'Users');
INSERT INTO `ezcontentclass_classgroup` VALUES (13,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (14,0,4,'Setup');
INSERT INTO `ezcontentclass_classgroup` VALUES (15,0,4,'Setup');
INSERT INTO `ezcontentclass_classgroup` VALUES (16,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (17,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (18,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (19,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (20,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (21,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (22,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (23,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (24,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (25,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (26,0,3,'Media');
INSERT INTO `ezcontentclass_classgroup` VALUES (27,0,3,'Media');
INSERT INTO `ezcontentclass_classgroup` VALUES (28,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (29,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (30,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (31,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (32,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (33,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (34,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (35,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (36,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (37,0,3,'Media');
INSERT INTO `ezcontentclass_classgroup` VALUES (38,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (39,0,1,'Content');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,3,'eng-GB','Folder');
INSERT INTO `ezcontentclass_name` VALUES (3,0,3,'eng-GB','User group');
INSERT INTO `ezcontentclass_name` VALUES (4,0,3,'eng-GB','User');
INSERT INTO `ezcontentclass_name` VALUES (13,0,3,'eng-GB','Comment');
INSERT INTO `ezcontentclass_name` VALUES (14,0,3,'eng-GB','Common ini settings');
INSERT INTO `ezcontentclass_name` VALUES (15,0,3,'eng-GB','Template look');
INSERT INTO `ezcontentclass_name` VALUES (16,0,3,'eng-GB','Article');
INSERT INTO `ezcontentclass_name` VALUES (17,0,3,'eng-GB','Blog');
INSERT INTO `ezcontentclass_name` VALUES (18,0,3,'eng-GB','Blog post');
INSERT INTO `ezcontentclass_name` VALUES (19,0,3,'eng-GB','Call To Action');
INSERT INTO `ezcontentclass_name` VALUES (20,0,3,'eng-GB','Call To Action Feedback');
INSERT INTO `ezcontentclass_name` VALUES (21,0,3,'eng-GB','Product');
INSERT INTO `ezcontentclass_name` VALUES (22,0,3,'eng-GB','Feedback form');
INSERT INTO `ezcontentclass_name` VALUES (23,0,3,'eng-GB','Landing Page');
INSERT INTO `ezcontentclass_name` VALUES (24,0,3,'eng-GB','Wiki Page');
INSERT INTO `ezcontentclass_name` VALUES (25,0,3,'eng-GB','Poll');
INSERT INTO `ezcontentclass_name` VALUES (26,0,3,'eng-GB','File');
INSERT INTO `ezcontentclass_name` VALUES (27,0,3,'eng-GB','Image');
INSERT INTO `ezcontentclass_name` VALUES (28,0,3,'eng-GB','Link');
INSERT INTO `ezcontentclass_name` VALUES (29,0,3,'eng-GB','Gallery');
INSERT INTO `ezcontentclass_name` VALUES (30,0,3,'eng-GB','Forum');
INSERT INTO `ezcontentclass_name` VALUES (31,0,3,'eng-GB','Forum topic');
INSERT INTO `ezcontentclass_name` VALUES (32,0,3,'eng-GB','Forum reply');
INSERT INTO `ezcontentclass_name` VALUES (33,0,3,'eng-GB','Event');
INSERT INTO `ezcontentclass_name` VALUES (34,0,3,'eng-GB','Event calendar');
INSERT INTO `ezcontentclass_name` VALUES (35,0,3,'eng-GB','Banner');
INSERT INTO `ezcontentclass_name` VALUES (36,0,3,'eng-GB','Forums');
INSERT INTO `ezcontentclass_name` VALUES (37,0,3,'eng-GB','Video');
INSERT INTO `ezcontentclass_name` VALUES (38,0,3,'eng-GB','Place');
INSERT INTO `ezcontentclass_name` VALUES (39,0,3,'eng-GB','Place list');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1031216928,14,1,1033922106,14,'Content');
INSERT INTO `ezcontentclassgroup` VALUES (1031216941,14,2,1033922113,14,'Users');
INSERT INTO `ezcontentclassgroup` VALUES (1032009743,14,3,1033922120,14,'Media');
INSERT INTO `ezcontentclassgroup` VALUES (1081858024,14,4,1081858024,14,'Setup');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1);
INSERT INTO `ezcontentobject` VALUES (4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1);
INSERT INTO `ezcontentobject` VALUES (3,2,11,2,3,1422896966,'Members',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1);
INSERT INTO `ezcontentobject` VALUES (3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1);
INSERT INTO `ezcontentobject` VALUES (3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1);
INSERT INTO `ezcontentobject` VALUES (4,4,14,2,3,1422896966,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1);
INSERT INTO `ezcontentobject` VALUES (1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1);
INSERT INTO `ezcontentobject` VALUES (3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1);
INSERT INTO `ezcontentobject` VALUES (1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1);
INSERT INTO `ezcontentobject` VALUES (1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1);
INSERT INTO `ezcontentobject` VALUES (1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1);
INSERT INTO `ezcontentobject` VALUES (1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1);
INSERT INTO `ezcontentobject` VALUES (14,1,52,2,2,1082016591,'Common INI settings',14,1082016591,'27437f3547db19cf81a33c92578b2c89',4,1);
INSERT INTO `ezcontentobject` VALUES (15,2,54,2,2,1301062376,'eZ Publish Demo Site (without demo content)',14,1082016652,'8b8b22fe3c6061ed500fbd2b377b885f',5,1);
INSERT INTO `ezcontentobject` VALUES (1,1,56,2,3,1103023132,'Design',14,1103023132,'08799e609893f7aba22f10cb466d9cc8',5,1);
INSERT INTO `ezcontentobject` VALUES (23,1,57,2,3,1196268696,'Home',14,1195480486,'8a9c9c761004866fb458d89910f52bee',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,58,2,2,1352741504,'footer',14,1352735678,'115536b84726ddb2184014682753b794',1,1);
INSERT INTO `ezcontentobject` VALUES (3,1,59,2,3,1422896966,'Partners',14,1422896966,'2afc7a440e0d7d011993472768efb2fa',2,1);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,4,NULL,NULL,'Users','ezstring',8,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,8,10,0,0,'Anonymous','ezstring',19,'eng-GB',3,0,'anonymous',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,9,10,0,0,'User','ezstring',20,'eng-GB',3,0,'user',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,12,10,0,0,'','ezuser',21,'eng-GB',3,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,11,0,0,'Guest accounts','ezstring',22,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,11,0,0,'Members','ezstring',22,'eng-GB',3,0,'members',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,11,0,0,'','ezstring',23,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,11,0,0,'','ezstring',23,'eng-GB',3,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,12,0,0,'Administrator users','ezstring',24,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,12,0,0,'','ezstring',25,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,13,0,0,'Editors','ezstring',26,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,13,0,0,'','ezstring',27,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',3);
INSERT INTO `ezcontentobject_attribute` VALUES (0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',4);
INSERT INTO `ezcontentobject_attribute` VALUES (0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',3);
INSERT INTO `ezcontentobject_attribute` VALUES (0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',4);
INSERT INTO `ezcontentobject_attribute` VALUES (30,12,14,0,0,'','ezuser',30,'eng-GB',3,0,'',3);
INSERT INTO `ezcontentobject_attribute` VALUES (30,12,14,0,0,'{\"login\":\"admin\",\"password_hash\":\"c78e3b0f3d9244ed8c6d1c29464bdff9\",\"email\":\"noreply@ez.no\",\"password_hash_type\":2}','ezuser',30,'eng-GB',3,0,'',4);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,41,0,0,'Media','ezstring',98,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',99,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-GB',3,0,'anonymous users',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-GB',3,0,'user group for the anonymous user',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,41,0,0,'','ezstring',103,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,41,0,1045487555,'','ezxmltext',105,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,41,0,0,'','ezboolean',109,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,45,0,0,'Setup','ezstring',123,'eng-GB',3,0,'setup',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,45,0,0,'','ezstring',124,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',125,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',126,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,45,0,0,'','ezboolean',128,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,49,0,0,'Images','ezstring',142,'eng-GB',3,0,'images',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,49,0,0,'','ezstring',143,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',144,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',145,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,49,0,1,'','ezboolean',146,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,50,0,0,'Files','ezstring',147,'eng-GB',3,0,'files',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,50,0,0,'','ezstring',148,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',149,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',150,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,50,0,1,'','ezboolean',151,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,51,0,0,'Multimedia','ezstring',152,'eng-GB',3,0,'multimedia',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,51,0,0,'','ezstring',153,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',154,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',155,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,51,0,1,'','ezboolean',156,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,159,52,0,0,'Common INI settings','ezstring',157,'eng-GB',2,0,'common ini settings',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,160,52,0,0,'/content/view/full/2/','ezinisetting',158,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,161,52,0,0,'/content/view/full/2','ezinisetting',159,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,162,52,0,0,'disabled','ezinisetting',160,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,163,52,0,0,'disabled','ezinisetting',161,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,164,52,0,0,'','ezinisetting',162,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,165,52,0,0,'enabled','ezinisetting',163,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,166,52,0,0,'disabled','ezinisetting',164,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,167,52,0,0,'enabled','ezinisetting',165,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,168,52,0,0,'enabled','ezinisetting',166,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,169,52,0,0,'=geometry/scale=100;100','ezinisetting',167,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,170,52,0,0,'=geometry/scale=200;200','ezinisetting',168,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,171,52,0,0,'=geometry/scale=300;300','ezinisetting',169,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,172,54,0,0,'eZ Publish Demo Site (without demo content)','ezinisetting',170,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,173,54,0,0,'author=eZ Systems\ncopyright=eZ Systems\ndescription=Content Management System\nkeywords=cms, publish, e-commerce, content management, development framework','ezinisetting',171,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"eZ-Publish-Demo-Site-without-demo-content1.png\" suffix=\"png\" basename=\"eZ-Publish-Demo-Site-without-demo-content1\" dirpath=\"var/ezdemo_site/storage/images/design/plain-site/172-2-eng-GB\" url=\"var/ezdemo_site/storage/images/design/plain-site/172-2-eng-GB/eZ-Publish-Demo-Site-without-demo-content1.png\" original_filename=\"logo.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1422896966\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',172,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,175,54,0,0,'0','ezpackage',173,'eng-GB',2,0,'0',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,177,54,0,0,'noreply@ez.no','ezinisetting',175,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,178,54,0,0,'php55-vm.ezp5-releasetest','ezinisetting',176,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,179,10,0,0,'','eztext',177,'eng-GB',3,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,179,14,0,0,'','eztext',178,'eng-GB',3,0,'',3);
INSERT INTO `ezcontentobject_attribute` VALUES (0,179,14,0,0,'','eztext',178,'eng-GB',3,0,'',4);
INSERT INTO `ezcontentobject_attribute` VALUES (0,180,10,0,0,'','ezimage',179,'eng-GB',3,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-GB',3,0,'',3);
INSERT INTO `ezcontentobject_attribute` VALUES (0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-GB',3,0,'',4);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,56,0,NULL,'Design','ezstring',181,'eng-GB',3,0,'design',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,56,0,NULL,'','ezstring',182,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',183,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',184,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,56,0,1,'','ezboolean',185,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,230,57,0,NULL,'Home','ezstring',186,'eng-GB',3,0,'home',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,231,57,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout1</zone_layout>\n  <zone id=\"id_865346aabbcc48a9839274cc554868be\">\n    <zone_identifier>left</zone_identifier>\n  </zone>\n  <zone id=\"id_f742abffba08fc849b6e80dec769a74c\">\n    <zone_identifier>right</zone_identifier>\n  </zone>\n</page>\n','ezpage',187,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,58,0,NULL,'Footer','ezstring',188,'eng-GB',2,0,'footer',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,58,0,NULL,'footer','ezstring',189,'eng-GB',2,0,'footer',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,58,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ is a global company with offices around the world including Skien (Norway), New York (USA), Oslo (Norway), Cologne (Germany), Paris (France), Lyon (France), Beijing (China), Tokyo (Japan), Singapore, London (UK)</paragraph><paragraph><link url_id=\"23\">Contact us</link> for more information!</paragraph></section>','ezxmltext',190,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,58,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Official site: <link url_id=\"8\">http://ez.no</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Community site: <link url_id=\"24\">http://share.ez.no</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Documentation: <link url_id=\"25\">http://doc.ez.no</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Follow us on <link url_id=\"26\">Twitter</link>, <link url_id=\"27\">Facebook</link> and <link url_id=\"28\">LinkedIn</link></paragraph></li></ul></paragraph><paragraph>Copyright © 2014 eZ Systems AS (except where otherwise noted). All rights reserved.</paragraph></section>','ezxmltext',191,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,58,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',192,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,58,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1422896965\"><original attribute_id=\"193\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',193,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,58,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',194,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,58,0,0,'','ezgmaplocation',195,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,58,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',196,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,58,0,1341417600,'','ezdatetime',197,'eng-GB',2,1341417600,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,58,0,0,'','ezsrrating',198,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,58,0,NULL,'','ezkeyword',199,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,296,54,0,29,'Site map','ezurl',200,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,297,54,0,30,'Tag cloud','ezurl',201,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,298,54,0,NULL,'Login','ezstring',202,'eng-GB',2,0,'login',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,299,54,0,NULL,'Logout','ezstring',203,'eng-GB',2,0,'logout',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,300,54,0,NULL,'My profile','ezstring',204,'eng-GB',2,0,'my profile',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,301,54,0,NULL,'Register','ezstring',205,'eng-GB',2,0,'register',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,302,54,0,NULL,'/rss/feed/my_feed','ezstring',206,'eng-GB',2,0,'/rss/feed/my_feed',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,303,54,0,NULL,'Shopping basket','ezstring',207,'eng-GB',2,0,'shopping basket',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,304,54,0,NULL,'Site settings','ezstring',208,'eng-GB',2,0,'site settings',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,305,54,0,NULL,'Copyright &#169; 2015 <a href=\"http://ez.no\" title=\"eZ Systems\">eZ Systems AS</a> (except where otherwise noted). All rights reserved.','eztext',209,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,306,54,0,0,'','ezboolean',210,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,307,54,0,NULL,'','eztext',211,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,59,0,NULL,'Partners','ezstring',212,'eng-GB',3,0,'partners',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,59,0,NULL,'','ezstring',213,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,41,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',214,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,45,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',215,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,49,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',216,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,50,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',217,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,51,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',218,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,56,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',219,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,41,0,NULL,'','ezkeyword',220,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,45,0,NULL,'','ezkeyword',221,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,49,0,NULL,'','ezkeyword',222,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,50,0,NULL,'','ezkeyword',223,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,51,0,NULL,'','ezkeyword',224,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,56,0,NULL,'','ezkeyword',225,'eng-GB',2,0,'',1);
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,4,3,'Users','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',2,10,3,'Anonymous User','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,11,3,'Guest accounts','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',2,11,3,'Members','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,12,3,'Administrator users','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,13,3,'Editors','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',3,14,3,'Administrator User','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',4,14,3,'Administrator User','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,41,3,'Media','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,42,3,'Anonymous Users','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,45,3,'Setup','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,49,3,'Images','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,50,3,'Files','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,51,3,'Multimedia','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,52,2,'Common INI settings','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',2,54,2,'eZ Publish Demo Site (without demo content)','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,56,3,'Design','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,57,3,'Home','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,58,2,'footer','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,59,2,'Partners','eng-GB');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1422896966,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (57,1,1,1,0,0,2,1422896966,2,1,'','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1);
INSERT INTO `ezcontentobject_tree` VALUES (4,1,1,1,0,0,5,1422896966,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (11,1,2,2,0,0,12,1422896966,12,5,'users/members','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (12,1,1,2,0,0,13,1422896966,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (14,1,4,3,0,0,15,1422896966,15,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (41,1,1,1,0,0,43,1081860720,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (45,1,1,1,0,0,48,1184592117,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (49,1,1,2,0,0,51,1081860720,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (52,1,1,2,0,0,54,1184592117,54,48,'setup2/common_ini_settings','/1/48/54/',0,'fa9f3cff9cf90ecfae335718dcbddfe2',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (54,1,2,2,0,0,56,1422896966,56,58,'design/plain_site','/1/58/56/',0,'772da20ecf88b3035d73cbdfcea0f119',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (56,1,1,1,0,0,58,1422896966,58,1,'design','/1/58/',0,'79f2d67372ab56f59b5d65bb9e0ca3b9',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (58,1,1,2,0,0,60,1422896965,60,2,'footer','/1/2/60/',0,'86bf306624668ee9b8b979b0d56f7e0d',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (59,1,1,2,0,0,61,1422896966,61,5,'users/partners','/1/5/61/',0,'369e6ba504f10dd348fa593348cbef2a',1,1);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1);
INSERT INTO `ezcontentobject_version` VALUES (11,1033920737,14,439,2,3,1033920746,3,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (12,1033920760,14,440,2,3,1033920775,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (13,1033920786,14,441,2,3,1033920794,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (41,1060695450,14,472,2,3,1060695457,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (42,1072180278,14,473,2,3,1072180330,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (10,1072180337,14,474,2,3,1072180405,1,0,2,0);
INSERT INTO `ezcontentobject_version` VALUES (45,1079684084,14,477,2,3,1079684190,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (49,1080220181,14,488,2,3,1080220197,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (50,1080220211,14,489,2,3,1080220220,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (51,1080220225,14,490,2,3,1080220233,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (52,1082016497,14,491,2,3,1082016591,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (56,1103023120,14,495,2,3,1103023120,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (14,1301061783,14,499,2,3,1301062024,3,0,3,0);
INSERT INTO `ezcontentobject_version` VALUES (54,1301062300,14,500,2,3,1301062375,1,0,2,0);
INSERT INTO `ezcontentobject_version` VALUES (57,1196268655,14,504,2,3,1196268696,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (58,1352741487,14,505,2,3,1352741504,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (14,1422896966,14,506,2,3,1422896966,1,0,4,0);
INSERT INTO `ezcontentobject_version` VALUES (59,1422896966,14,507,2,3,1422896966,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (11,1422896966,14,508,2,3,1422896966,1,0,2,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgmaplocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (172,'var/ezdemo_site/storage/images/design/plain-site/172-2-eng-GB/eZ-Publish-Demo-Site-without-demo-content1.png',1);
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES ('English language',0,1);
INSERT INTO `ezisbn_group` VALUES ('English language',1,2);
INSERT INTO `ezisbn_group` VALUES ('French language',2,3);
INSERT INTO `ezisbn_group` VALUES ('German language',3,4);
INSERT INTO `ezisbn_group` VALUES ('Japan',4,5);
INSERT INTO `ezisbn_group` VALUES ('Russian Federation and former USSR',5,6);
INSERT INTO `ezisbn_group` VALUES ('Iran',600,7);
INSERT INTO `ezisbn_group` VALUES ('Kazakhstan',601,8);
INSERT INTO `ezisbn_group` VALUES ('Indonesia',602,9);
INSERT INTO `ezisbn_group` VALUES ('Saudi Arabia',603,10);
INSERT INTO `ezisbn_group` VALUES ('Vietnam',604,11);
INSERT INTO `ezisbn_group` VALUES ('Turkey',605,12);
INSERT INTO `ezisbn_group` VALUES ('Romania',606,13);
INSERT INTO `ezisbn_group` VALUES ('Mexico',607,14);
INSERT INTO `ezisbn_group` VALUES ('Macedonia',608,15);
INSERT INTO `ezisbn_group` VALUES ('Lithuania',609,16);
INSERT INTO `ezisbn_group` VALUES ('Thailand',611,17);
INSERT INTO `ezisbn_group` VALUES ('Peru',612,18);
INSERT INTO `ezisbn_group` VALUES ('Mauritius',613,19);
INSERT INTO `ezisbn_group` VALUES ('Lebanon',614,20);
INSERT INTO `ezisbn_group` VALUES ('Hungary',615,21);
INSERT INTO `ezisbn_group` VALUES ('Thailand',616,22);
INSERT INTO `ezisbn_group` VALUES ('Ukraine',617,23);
INSERT INTO `ezisbn_group` VALUES ('China, People\'s Republic',7,24);
INSERT INTO `ezisbn_group` VALUES ('Czech Republic and Slovakia',80,25);
INSERT INTO `ezisbn_group` VALUES ('India',81,26);
INSERT INTO `ezisbn_group` VALUES ('Norway',82,27);
INSERT INTO `ezisbn_group` VALUES ('Poland',83,28);
INSERT INTO `ezisbn_group` VALUES ('Spain',84,29);
INSERT INTO `ezisbn_group` VALUES ('Brazil',85,30);
INSERT INTO `ezisbn_group` VALUES ('Serbia and Montenegro',86,31);
INSERT INTO `ezisbn_group` VALUES ('Denmark',87,32);
INSERT INTO `ezisbn_group` VALUES ('Italy',88,33);
INSERT INTO `ezisbn_group` VALUES ('Korea, Republic',89,34);
INSERT INTO `ezisbn_group` VALUES ('Netherlands',90,35);
INSERT INTO `ezisbn_group` VALUES ('Sweden',91,36);
INSERT INTO `ezisbn_group` VALUES ('International NGO Publishers and EC Organizations',92,37);
INSERT INTO `ezisbn_group` VALUES ('India',93,38);
INSERT INTO `ezisbn_group` VALUES ('Netherlands',94,39);
INSERT INTO `ezisbn_group` VALUES ('Argentina',950,40);
INSERT INTO `ezisbn_group` VALUES ('Finland',951,41);
INSERT INTO `ezisbn_group` VALUES ('Finland',952,42);
INSERT INTO `ezisbn_group` VALUES ('Croatia',953,43);
INSERT INTO `ezisbn_group` VALUES ('Bulgaria',954,44);
INSERT INTO `ezisbn_group` VALUES ('Sri Lanka',955,45);
INSERT INTO `ezisbn_group` VALUES ('Chile',956,46);
INSERT INTO `ezisbn_group` VALUES ('Taiwan',957,47);
INSERT INTO `ezisbn_group` VALUES ('Colombia',958,48);
INSERT INTO `ezisbn_group` VALUES ('Cuba',959,49);
INSERT INTO `ezisbn_group` VALUES ('Greece',960,50);
INSERT INTO `ezisbn_group` VALUES ('Slovenia',961,51);
INSERT INTO `ezisbn_group` VALUES ('Hong Kong, China',962,52);
INSERT INTO `ezisbn_group` VALUES ('Hungary',963,53);
INSERT INTO `ezisbn_group` VALUES ('Iran',964,54);
INSERT INTO `ezisbn_group` VALUES ('Israel',965,55);
INSERT INTO `ezisbn_group` VALUES ('Ukraine',966,56);
INSERT INTO `ezisbn_group` VALUES ('Malaysia',967,57);
INSERT INTO `ezisbn_group` VALUES ('Mexico',968,58);
INSERT INTO `ezisbn_group` VALUES ('Pakistan',969,59);
INSERT INTO `ezisbn_group` VALUES ('Mexico',970,60);
INSERT INTO `ezisbn_group` VALUES ('Philippines',971,61);
INSERT INTO `ezisbn_group` VALUES ('Portugal',972,62);
INSERT INTO `ezisbn_group` VALUES ('Romania',973,63);
INSERT INTO `ezisbn_group` VALUES ('Thailand',974,64);
INSERT INTO `ezisbn_group` VALUES ('Turkey',975,65);
INSERT INTO `ezisbn_group` VALUES ('Caribbean Community',976,66);
INSERT INTO `ezisbn_group` VALUES ('Egypt',977,67);
INSERT INTO `ezisbn_group` VALUES ('Nigeria',978,68);
INSERT INTO `ezisbn_group` VALUES ('Indonesia',979,69);
INSERT INTO `ezisbn_group` VALUES ('Venezuela',980,70);
INSERT INTO `ezisbn_group` VALUES ('Singapore',981,71);
INSERT INTO `ezisbn_group` VALUES ('South Pacific',982,72);
INSERT INTO `ezisbn_group` VALUES ('Malaysia',983,73);
INSERT INTO `ezisbn_group` VALUES ('Bangladesh',984,74);
INSERT INTO `ezisbn_group` VALUES ('Belarus',985,75);
INSERT INTO `ezisbn_group` VALUES ('Taiwan',986,76);
INSERT INTO `ezisbn_group` VALUES ('Argentina',987,77);
INSERT INTO `ezisbn_group` VALUES ('Hong Kong, China',988,78);
INSERT INTO `ezisbn_group` VALUES ('Portugal',989,79);
INSERT INTO `ezisbn_group` VALUES ('Qatar',9927,80);
INSERT INTO `ezisbn_group` VALUES ('Albania',9928,81);
INSERT INTO `ezisbn_group` VALUES ('Guatemala',9929,82);
INSERT INTO `ezisbn_group` VALUES ('Costa Rica',9930,83);
INSERT INTO `ezisbn_group` VALUES ('Algeria',9931,84);
INSERT INTO `ezisbn_group` VALUES ('Lao People\'s Democratic Republic',9932,85);
INSERT INTO `ezisbn_group` VALUES ('Syria',9933,86);
INSERT INTO `ezisbn_group` VALUES ('Latvia',9934,87);
INSERT INTO `ezisbn_group` VALUES ('Iceland',9935,88);
INSERT INTO `ezisbn_group` VALUES ('Afghanistan',9936,89);
INSERT INTO `ezisbn_group` VALUES ('Nepal',9937,90);
INSERT INTO `ezisbn_group` VALUES ('Tunisia',9938,91);
INSERT INTO `ezisbn_group` VALUES ('Armenia',9939,92);
INSERT INTO `ezisbn_group` VALUES ('Montenegro',9940,93);
INSERT INTO `ezisbn_group` VALUES ('Georgia',9941,94);
INSERT INTO `ezisbn_group` VALUES ('Ecuador',9942,95);
INSERT INTO `ezisbn_group` VALUES ('Uzbekistan',9943,96);
INSERT INTO `ezisbn_group` VALUES ('Turkey',9944,97);
INSERT INTO `ezisbn_group` VALUES ('Dominican Republic',9945,98);
INSERT INTO `ezisbn_group` VALUES ('Korea, P.D.R.',9946,99);
INSERT INTO `ezisbn_group` VALUES ('Algeria',9947,100);
INSERT INTO `ezisbn_group` VALUES ('United Arab Emirates',9948,101);
INSERT INTO `ezisbn_group` VALUES ('Estonia',9949,102);
INSERT INTO `ezisbn_group` VALUES ('Palestine',9950,103);
INSERT INTO `ezisbn_group` VALUES ('Kosova',9951,104);
INSERT INTO `ezisbn_group` VALUES ('Azerbaijan',9952,105);
INSERT INTO `ezisbn_group` VALUES ('Lebanon',9953,106);
INSERT INTO `ezisbn_group` VALUES ('Morocco',9954,107);
INSERT INTO `ezisbn_group` VALUES ('Lithuania',9955,108);
INSERT INTO `ezisbn_group` VALUES ('Cameroon',9956,109);
INSERT INTO `ezisbn_group` VALUES ('Jordan',9957,110);
INSERT INTO `ezisbn_group` VALUES ('Bosnia and Herzegovina',9958,111);
INSERT INTO `ezisbn_group` VALUES ('Libya',9959,112);
INSERT INTO `ezisbn_group` VALUES ('Saudi Arabia',9960,113);
INSERT INTO `ezisbn_group` VALUES ('Algeria',9961,114);
INSERT INTO `ezisbn_group` VALUES ('Panama',9962,115);
INSERT INTO `ezisbn_group` VALUES ('Cyprus',9963,116);
INSERT INTO `ezisbn_group` VALUES ('Ghana',9964,117);
INSERT INTO `ezisbn_group` VALUES ('Kazakhstan',9965,118);
INSERT INTO `ezisbn_group` VALUES ('Kenya',9966,119);
INSERT INTO `ezisbn_group` VALUES ('Kyrgyz Republic',9967,120);
INSERT INTO `ezisbn_group` VALUES ('Costa Rica',9968,121);
INSERT INTO `ezisbn_group` VALUES ('Uganda',9970,122);
INSERT INTO `ezisbn_group` VALUES ('Singapore',9971,123);
INSERT INTO `ezisbn_group` VALUES ('Peru',9972,124);
INSERT INTO `ezisbn_group` VALUES ('Tunisia',9973,125);
INSERT INTO `ezisbn_group` VALUES ('Uruguay',9974,126);
INSERT INTO `ezisbn_group` VALUES ('Moldova',9975,127);
INSERT INTO `ezisbn_group` VALUES ('Tanzania',9976,128);
INSERT INTO `ezisbn_group` VALUES ('Costa Rica',9977,129);
INSERT INTO `ezisbn_group` VALUES ('Ecuador',9978,130);
INSERT INTO `ezisbn_group` VALUES ('Iceland',9979,131);
INSERT INTO `ezisbn_group` VALUES ('Papua New Guinea',9980,132);
INSERT INTO `ezisbn_group` VALUES ('Morocco',9981,133);
INSERT INTO `ezisbn_group` VALUES ('Zambia',9982,134);
INSERT INTO `ezisbn_group` VALUES ('Gambia',9983,135);
INSERT INTO `ezisbn_group` VALUES ('Latvia',9984,136);
INSERT INTO `ezisbn_group` VALUES ('Estonia',9985,137);
INSERT INTO `ezisbn_group` VALUES ('Lithuania',9986,138);
INSERT INTO `ezisbn_group` VALUES ('Tanzania',9987,139);
INSERT INTO `ezisbn_group` VALUES ('Ghana',9988,140);
INSERT INTO `ezisbn_group` VALUES ('Macedonia',9989,141);
INSERT INTO `ezisbn_group` VALUES ('Bahrain',99901,142);
INSERT INTO `ezisbn_group` VALUES ('Gabon',99902,143);
INSERT INTO `ezisbn_group` VALUES ('Mauritius',99903,144);
INSERT INTO `ezisbn_group` VALUES ('Netherlands Antilles and Aruba',99904,145);
INSERT INTO `ezisbn_group` VALUES ('Bolivia',99905,146);
INSERT INTO `ezisbn_group` VALUES ('Kuwait',99906,147);
INSERT INTO `ezisbn_group` VALUES ('Malawi',99908,148);
INSERT INTO `ezisbn_group` VALUES ('Malta',99909,149);
INSERT INTO `ezisbn_group` VALUES ('Sierra Leone',99910,150);
INSERT INTO `ezisbn_group` VALUES ('Lesotho',99911,151);
INSERT INTO `ezisbn_group` VALUES ('Botswana',99912,152);
INSERT INTO `ezisbn_group` VALUES ('Andorra',99913,153);
INSERT INTO `ezisbn_group` VALUES ('Suriname',99914,154);
INSERT INTO `ezisbn_group` VALUES ('Maldives',99915,155);
INSERT INTO `ezisbn_group` VALUES ('Namibia',99916,156);
INSERT INTO `ezisbn_group` VALUES ('Brunei Darussalam',99917,157);
INSERT INTO `ezisbn_group` VALUES ('Faroe Islands',99918,158);
INSERT INTO `ezisbn_group` VALUES ('Benin',99919,159);
INSERT INTO `ezisbn_group` VALUES ('Andorra',99920,160);
INSERT INTO `ezisbn_group` VALUES ('Qatar',99921,161);
INSERT INTO `ezisbn_group` VALUES ('Guatemala',99922,162);
INSERT INTO `ezisbn_group` VALUES ('El Salvador',99923,163);
INSERT INTO `ezisbn_group` VALUES ('Nicaragua',99924,164);
INSERT INTO `ezisbn_group` VALUES ('Paraguay',99925,165);
INSERT INTO `ezisbn_group` VALUES ('Honduras',99926,166);
INSERT INTO `ezisbn_group` VALUES ('Albania',99927,167);
INSERT INTO `ezisbn_group` VALUES ('Georgia',99928,168);
INSERT INTO `ezisbn_group` VALUES ('Mongolia',99929,169);
INSERT INTO `ezisbn_group` VALUES ('Armenia',99930,170);
INSERT INTO `ezisbn_group` VALUES ('Seychelles',99931,171);
INSERT INTO `ezisbn_group` VALUES ('Malta',99932,172);
INSERT INTO `ezisbn_group` VALUES ('Nepal',99933,173);
INSERT INTO `ezisbn_group` VALUES ('Dominican Republic',99934,174);
INSERT INTO `ezisbn_group` VALUES ('Haiti',99935,175);
INSERT INTO `ezisbn_group` VALUES ('Bhutan',99936,176);
INSERT INTO `ezisbn_group` VALUES ('Macau',99937,177);
INSERT INTO `ezisbn_group` VALUES ('Srpska, Republic of',99938,178);
INSERT INTO `ezisbn_group` VALUES ('Guatemala',99939,179);
INSERT INTO `ezisbn_group` VALUES ('Georgia',99940,180);
INSERT INTO `ezisbn_group` VALUES ('Armenia',99941,181);
INSERT INTO `ezisbn_group` VALUES ('Sudan',99942,182);
INSERT INTO `ezisbn_group` VALUES ('Albania',99943,183);
INSERT INTO `ezisbn_group` VALUES ('Ethiopia',99944,184);
INSERT INTO `ezisbn_group` VALUES ('Namibia',99945,185);
INSERT INTO `ezisbn_group` VALUES ('Nepal',99946,186);
INSERT INTO `ezisbn_group` VALUES ('Tajikistan',99947,187);
INSERT INTO `ezisbn_group` VALUES ('Eritrea',99948,188);
INSERT INTO `ezisbn_group` VALUES ('Mauritius',99949,189);
INSERT INTO `ezisbn_group` VALUES ('Cambodia',99950,190);
INSERT INTO `ezisbn_group` VALUES ('Congo',99951,191);
INSERT INTO `ezisbn_group` VALUES ('Mali',99952,192);
INSERT INTO `ezisbn_group` VALUES ('Paraguay',99953,193);
INSERT INTO `ezisbn_group` VALUES ('Bolivia',99954,194);
INSERT INTO `ezisbn_group` VALUES ('Srpska, Republic of',99955,195);
INSERT INTO `ezisbn_group` VALUES ('Albania',99956,196);
INSERT INTO `ezisbn_group` VALUES ('Malta',99957,197);
INSERT INTO `ezisbn_group` VALUES ('Bahrain',99958,198);
INSERT INTO `ezisbn_group` VALUES ('Luxembourg',99959,199);
INSERT INTO `ezisbn_group` VALUES ('Malawi',99960,200);
INSERT INTO `ezisbn_group` VALUES ('El Salvador',99961,201);
INSERT INTO `ezisbn_group` VALUES ('Mongolia',99962,202);
INSERT INTO `ezisbn_group` VALUES ('Cambodia',99963,203);
INSERT INTO `ezisbn_group` VALUES ('Nicaragua',99964,204);
INSERT INTO `ezisbn_group` VALUES ('Macau',99965,205);
INSERT INTO `ezisbn_group` VALUES ('Kuwait',99966,206);
INSERT INTO `ezisbn_group` VALUES ('Paraguay',99967,207);
INSERT INTO `ezisbn_group` VALUES ('Botswana',99968,208);
INSERT INTO `ezisbn_group` VALUES ('France',10,209);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES (0,'0',1,'5',1,59999);
INSERT INTO `ezisbn_group_range` VALUES (60000,'600',3,'649',2,64999);
INSERT INTO `ezisbn_group_range` VALUES (70000,'7',1,'7',3,79999);
INSERT INTO `ezisbn_group_range` VALUES (80000,'80',2,'94',4,94999);
INSERT INTO `ezisbn_group_range` VALUES (95000,'950',3,'989',5,98999);
INSERT INTO `ezisbn_group_range` VALUES (99000,'9900',4,'9989',6,99899);
INSERT INTO `ezisbn_group_range` VALUES (99900,'99900',5,'99999',7,99999);
INSERT INTO `ezisbn_group_range` VALUES (10000,'10',2,'10',8,10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES (0,1,1,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,2,1,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,3,1,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,4,1,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,5,1,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,6,1,'9500000',7,'9999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,7,2,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,8,2,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,9,2,'4000',4,'5499',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,10,2,'55000',5,'86979',86979);
INSERT INTO `ezisbn_registrant_range` VALUES (86980,11,2,'869800',6,'998999',99899);
INSERT INTO `ezisbn_registrant_range` VALUES (99900,12,2,'9990000',7,'9999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,13,3,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,14,3,'200',3,'349',34999);
INSERT INTO `ezisbn_registrant_range` VALUES (35000,15,3,'35000',5,'39999',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,16,3,'400',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,17,3,'7000',4,'8399',83999);
INSERT INTO `ezisbn_registrant_range` VALUES (84000,18,3,'84000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,19,3,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,20,3,'9500000',7,'9999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,21,4,'00',2,'02',2999);
INSERT INTO `ezisbn_registrant_range` VALUES (3000,22,4,'030',3,'033',3399);
INSERT INTO `ezisbn_registrant_range` VALUES (3400,23,4,'0340',4,'0369',3699);
INSERT INTO `ezisbn_registrant_range` VALUES (3700,24,4,'03700',5,'03999',3999);
INSERT INTO `ezisbn_registrant_range` VALUES (4000,25,4,'04',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,26,4,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,27,4,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,28,4,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,29,4,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,30,4,'9500000',7,'9539999',95399);
INSERT INTO `ezisbn_registrant_range` VALUES (95400,31,4,'95400',5,'96999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,32,4,'9700000',7,'9899999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,33,4,'99000',5,'99499',99499);
INSERT INTO `ezisbn_registrant_range` VALUES (99500,34,4,'99500',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,35,5,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,36,5,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,37,5,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,38,5,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,39,5,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,40,5,'9500000',7,'9999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,41,6,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,42,6,'200',3,'420',42099);
INSERT INTO `ezisbn_registrant_range` VALUES (42100,43,6,'4210',4,'4299',42999);
INSERT INTO `ezisbn_registrant_range` VALUES (43000,44,6,'430',3,'430',43099);
INSERT INTO `ezisbn_registrant_range` VALUES (43100,45,6,'4310',4,'4399',43999);
INSERT INTO `ezisbn_registrant_range` VALUES (44000,46,6,'440',3,'440',44099);
INSERT INTO `ezisbn_registrant_range` VALUES (44100,47,6,'4410',4,'4499',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,48,6,'450',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,49,6,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,50,6,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,51,6,'900000',6,'909999',90999);
INSERT INTO `ezisbn_registrant_range` VALUES (91000,52,6,'91000',5,'91999',91999);
INSERT INTO `ezisbn_registrant_range` VALUES (92000,53,6,'9200',4,'9299',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,54,6,'93000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,55,6,'9500000',7,'9500999',95009);
INSERT INTO `ezisbn_registrant_range` VALUES (95010,56,6,'9501',4,'9799',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,57,6,'98000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,58,6,'9900000',7,'9909999',99099);
INSERT INTO `ezisbn_registrant_range` VALUES (99100,59,6,'9910',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,60,7,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,61,7,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,62,7,'5000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,63,7,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,64,8,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,65,8,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,66,8,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,67,8,'80000',5,'84999',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,68,8,'85',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,69,9,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,70,9,'200',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,71,9,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,72,9,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,73,10,'00',2,'04',4999);
INSERT INTO `ezisbn_registrant_range` VALUES (5000,74,10,'05',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,75,10,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,76,10,'8000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,77,10,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,78,11,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,79,11,'50',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,80,11,'900',3,'979',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,81,11,'9800',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,82,12,'01',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,83,12,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,84,12,'4000',4,'5999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,85,12,'60000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,86,12,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,87,13,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,88,13,'10',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,89,13,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,90,13,'8000',4,'9199',91999);
INSERT INTO `ezisbn_registrant_range` VALUES (92000,91,13,'92000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,92,14,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,93,14,'400',3,'749',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,94,14,'7500',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,95,14,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,96,15,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,97,15,'10',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,98,15,'200',3,'449',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,99,15,'4500',4,'6499',64999);
INSERT INTO `ezisbn_registrant_range` VALUES (65000,100,15,'65000',5,'69999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,101,15,'7',1,'9',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,102,16,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,103,16,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,104,16,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,105,16,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,106,18,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,107,18,'300',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,108,18,'4000',4,'4499',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,109,18,'45000',5,'49999',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,110,18,'50',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,111,19,'0',1,'9',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,112,20,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,113,20,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,114,20,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,115,20,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,116,21,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,117,21,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,118,21,'5000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,119,21,'80000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,120,22,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,121,22,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,122,22,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,123,22,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,124,23,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,125,23,'500',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,126,23,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,127,23,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,128,24,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,129,24,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,130,24,'5000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,131,24,'80000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,132,24,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,133,25,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,134,25,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,135,25,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,136,25,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,137,25,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,138,26,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,139,26,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,140,26,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,141,26,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,142,26,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,143,27,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,144,27,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,145,27,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,146,27,'90000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,147,27,'990000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,148,28,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,149,28,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,150,28,'60000',5,'69999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,151,28,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,152,28,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,153,28,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,154,29,'00',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,155,29,'15000',5,'19999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,156,29,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,157,29,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,158,29,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,159,29,'9000',4,'9199',91999);
INSERT INTO `ezisbn_registrant_range` VALUES (92000,160,29,'920000',6,'923999',92399);
INSERT INTO `ezisbn_registrant_range` VALUES (92400,161,29,'92400',5,'92999',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,162,29,'930000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,163,29,'95000',5,'96999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,164,29,'9700',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,165,30,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,166,30,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,167,30,'60000',5,'69999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,168,30,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,169,30,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,170,30,'900000',6,'979999',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,171,30,'98000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,172,31,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,173,31,'300',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,174,31,'6000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,175,31,'80000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,176,31,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,177,32,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,178,32,'400',3,'649',64999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,179,32,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,180,32,'85000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,181,32,'970000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,182,33,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,183,33,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,184,33,'6000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,185,33,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,186,33,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,187,33,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,188,34,'00',2,'24',24999);
INSERT INTO `ezisbn_registrant_range` VALUES (25000,189,34,'250',3,'549',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,190,34,'5500',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,191,34,'85000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,192,34,'950000',6,'969999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,193,34,'97000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,194,34,'990',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,195,35,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,196,35,'200',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,197,35,'5000',4,'6999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,198,35,'70000',5,'79999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,199,35,'800000',6,'849999',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,200,35,'8500',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,201,35,'90',2,'90',90999);
INSERT INTO `ezisbn_registrant_range` VALUES (91000,202,35,'910000',6,'939999',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,203,35,'94',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,204,35,'950000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,205,36,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,206,36,'20',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,207,36,'500',3,'649',64999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,208,36,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,209,36,'85000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,210,36,'970000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,211,37,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,212,37,'60',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,213,37,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,214,37,'9000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,215,37,'95000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,216,37,'990000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,217,38,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,218,38,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,219,38,'5000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,220,38,'80000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,221,38,'950000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,222,39,'000',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,223,39,'6000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,224,39,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,225,40,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,226,40,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,227,40,'9000',4,'9899',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,228,40,'99000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,229,41,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,230,41,'20',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,231,41,'550',3,'889',88999);
INSERT INTO `ezisbn_registrant_range` VALUES (89000,232,41,'8900',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,233,41,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,234,42,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,235,42,'200',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,236,42,'5000',4,'5999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,237,42,'60',2,'65',65999);
INSERT INTO `ezisbn_registrant_range` VALUES (66000,238,42,'6600',4,'6699',66999);
INSERT INTO `ezisbn_registrant_range` VALUES (67000,239,42,'67000',5,'69999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,240,42,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,241,42,'80',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,242,42,'9500',4,'9899',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,243,42,'99000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,244,43,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,245,43,'10',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,246,43,'150',3,'549',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,247,43,'55000',5,'59999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,248,43,'6000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,249,43,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,250,44,'00',2,'28',28999);
INSERT INTO `ezisbn_registrant_range` VALUES (29000,251,44,'2900',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,252,44,'300',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,253,44,'8000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,254,44,'90000',5,'92999',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,255,44,'9300',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,256,45,'0000',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,257,45,'20',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,258,45,'50000',5,'54999',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,259,45,'550',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,260,45,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,261,45,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,262,46,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,263,46,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,264,46,'7000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,265,47,'00',2,'02',2999);
INSERT INTO `ezisbn_registrant_range` VALUES (3000,266,47,'0300',4,'0499',4999);
INSERT INTO `ezisbn_registrant_range` VALUES (5000,267,47,'05',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,268,47,'2000',4,'2099',20999);
INSERT INTO `ezisbn_registrant_range` VALUES (21000,269,47,'21',2,'27',27999);
INSERT INTO `ezisbn_registrant_range` VALUES (28000,270,47,'28000',5,'30999',30999);
INSERT INTO `ezisbn_registrant_range` VALUES (31000,271,47,'31',2,'43',43999);
INSERT INTO `ezisbn_registrant_range` VALUES (44000,272,47,'440',3,'819',81999);
INSERT INTO `ezisbn_registrant_range` VALUES (82000,273,47,'8200',4,'9699',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,274,47,'97000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,275,48,'00',2,'56',56999);
INSERT INTO `ezisbn_registrant_range` VALUES (57000,276,48,'57000',5,'59999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,277,48,'600',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,278,48,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,279,48,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,280,49,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,281,49,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,282,49,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,283,49,'85000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,284,50,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,285,50,'200',3,'659',65999);
INSERT INTO `ezisbn_registrant_range` VALUES (66000,286,50,'6600',4,'6899',68999);
INSERT INTO `ezisbn_registrant_range` VALUES (69000,287,50,'690',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,288,50,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,289,50,'85000',5,'92999',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,290,50,'93',2,'93',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,291,50,'9400',4,'9799',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,292,50,'98000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,293,51,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,294,51,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,295,51,'6000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,296,51,'90000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,297,52,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,298,52,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,299,52,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,300,52,'85000',5,'86999',86999);
INSERT INTO `ezisbn_registrant_range` VALUES (87000,301,52,'8700',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,302,52,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,303,53,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,304,53,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,305,53,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,306,53,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,307,53,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,308,54,'00',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,309,54,'150',3,'249',24999);
INSERT INTO `ezisbn_registrant_range` VALUES (25000,310,54,'2500',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,311,54,'300',3,'549',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,312,54,'5500',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,313,54,'90000',5,'96999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,314,54,'970',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,315,54,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,316,55,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,317,55,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,318,55,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,319,55,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,320,56,'00',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,321,56,'1500',4,'1699',16999);
INSERT INTO `ezisbn_registrant_range` VALUES (17000,322,56,'170',3,'199',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,323,56,'2000',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,324,56,'300',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,325,56,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,326,56,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,327,57,'00',2,'00',999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,328,57,'0100',4,'0999',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,329,57,'10000',5,'19999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,330,57,'300',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,331,57,'5000',4,'5999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,332,57,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,333,57,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,334,57,'9900',4,'9989',99899);
INSERT INTO `ezisbn_registrant_range` VALUES (99900,335,57,'99900',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,336,58,'01',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,337,58,'400',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,338,58,'5000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,339,58,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,340,58,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,341,59,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,342,59,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,343,59,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,344,59,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,345,60,'01',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,346,60,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,347,60,'9000',4,'9099',90999);
INSERT INTO `ezisbn_registrant_range` VALUES (91000,348,60,'91000',5,'96999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,349,60,'9700',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,350,61,'000',3,'015',1599);
INSERT INTO `ezisbn_registrant_range` VALUES (1600,351,61,'0160',4,'0199',1999);
INSERT INTO `ezisbn_registrant_range` VALUES (2000,352,61,'02',2,'02',2999);
INSERT INTO `ezisbn_registrant_range` VALUES (3000,353,61,'0300',4,'0599',5999);
INSERT INTO `ezisbn_registrant_range` VALUES (6000,354,61,'06',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,355,61,'10',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,356,61,'500',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,357,61,'8500',4,'9099',90999);
INSERT INTO `ezisbn_registrant_range` VALUES (91000,358,61,'91000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,359,61,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,360,62,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,361,62,'20',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,362,62,'550',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,363,62,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,364,62,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,365,63,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,366,63,'100',3,'169',16999);
INSERT INTO `ezisbn_registrant_range` VALUES (17000,367,63,'1700',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,368,63,'20',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,369,63,'550',3,'759',75999);
INSERT INTO `ezisbn_registrant_range` VALUES (76000,370,63,'7600',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,371,63,'85000',5,'88999',88999);
INSERT INTO `ezisbn_registrant_range` VALUES (89000,372,63,'8900',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,373,63,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,374,64,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,375,64,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,376,64,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,377,64,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,378,64,'90000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,379,64,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,380,65,'00000',5,'01999',1999);
INSERT INTO `ezisbn_registrant_range` VALUES (2000,381,65,'02',2,'24',24999);
INSERT INTO `ezisbn_registrant_range` VALUES (25000,382,65,'250',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,383,65,'6000',4,'9199',91999);
INSERT INTO `ezisbn_registrant_range` VALUES (92000,384,65,'92000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,385,65,'990',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,386,66,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,387,66,'40',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,388,66,'600',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,389,66,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,390,66,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,391,67,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,392,67,'200',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,393,67,'5000',4,'6999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,394,67,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,395,68,'000',3,'199',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,396,68,'2000',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,397,68,'30000',5,'79999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,398,68,'8000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,399,68,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,400,69,'000',3,'099',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,401,69,'1000',4,'1499',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,402,69,'15000',5,'19999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,403,69,'20',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,404,69,'3000',4,'3999',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,405,69,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,406,69,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,407,69,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,408,70,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,409,70,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,410,70,'6000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,411,71,'00',2,'11',11999);
INSERT INTO `ezisbn_registrant_range` VALUES (12000,412,71,'1200',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,413,71,'200',3,'289',28999);
INSERT INTO `ezisbn_registrant_range` VALUES (29000,414,71,'2900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,415,72,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,416,72,'100',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,417,72,'70',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,418,72,'9000',4,'9799',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,419,72,'98000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,420,73,'00',2,'01',1999);
INSERT INTO `ezisbn_registrant_range` VALUES (2000,421,73,'020',3,'199',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,422,73,'2000',4,'3999',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,423,73,'40000',5,'44999',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,424,73,'45',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,425,73,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,426,73,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,427,73,'9000',4,'9899',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,428,73,'99000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,429,74,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,430,74,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,431,74,'8000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,432,74,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,433,75,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,434,75,'400',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,435,75,'6000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,436,75,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,437,76,'00',2,'11',11999);
INSERT INTO `ezisbn_registrant_range` VALUES (12000,438,76,'120',3,'559',55999);
INSERT INTO `ezisbn_registrant_range` VALUES (56000,439,76,'5600',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,440,76,'80000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,441,77,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,442,77,'1000',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,443,77,'20000',5,'29999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,444,77,'30',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,445,77,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,446,77,'9000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,447,77,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,448,78,'00',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,449,78,'15000',5,'16999',16999);
INSERT INTO `ezisbn_registrant_range` VALUES (17000,450,78,'17000',5,'19999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,451,78,'200',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,452,78,'8000',4,'9699',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,453,78,'97000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,454,79,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,455,79,'20',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,456,79,'550',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,457,79,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,458,79,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,459,80,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,460,80,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,461,80,'4000',4,'4999',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,462,81,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,463,81,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,464,81,'4000',4,'4999',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,465,82,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,466,82,'40',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,467,82,'550',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,468,82,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,469,83,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,470,83,'500',3,'939',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,471,83,'9400',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,472,84,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,473,84,'300',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,474,84,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,475,85,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,476,85,'400',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,477,85,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,478,86,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,479,86,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,480,86,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,481,86,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,482,87,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,483,87,'10',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,484,87,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,485,87,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,486,88,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,487,88,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,488,88,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,489,88,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,490,89,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,491,89,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,492,89,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,493,89,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,494,90,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,495,90,'30',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,496,90,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,497,90,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,498,91,'00',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,499,91,'800',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,500,91,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,501,92,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,502,92,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,503,92,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,504,92,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,505,93,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,506,93,'20',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,507,93,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,508,93,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,509,94,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,510,94,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,511,94,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,512,94,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,513,95,'00',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,514,95,'900',3,'984',98499);
INSERT INTO `ezisbn_registrant_range` VALUES (98500,515,95,'9850',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,516,96,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,517,96,'300',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,518,96,'4000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,519,97,'0000',4,'0999',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,520,97,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,521,97,'5000',4,'5999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,522,97,'60',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,523,97,'700',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,524,97,'80',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,525,97,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,526,98,'00',2,'00',999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,527,98,'010',3,'079',7999);
INSERT INTO `ezisbn_registrant_range` VALUES (8000,528,98,'08',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,529,98,'400',3,'569',56999);
INSERT INTO `ezisbn_registrant_range` VALUES (57000,530,98,'57',2,'57',57999);
INSERT INTO `ezisbn_registrant_range` VALUES (58000,531,98,'580',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,532,98,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,533,99,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,534,99,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,535,99,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,536,99,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,537,100,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,538,100,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,539,100,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,540,101,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,541,101,'400',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,542,101,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,543,102,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,544,102,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,545,102,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,546,102,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,547,103,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,548,103,'300',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,549,103,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,550,104,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,551,104,'400',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,552,104,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,553,105,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,554,105,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,555,105,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,556,105,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,557,106,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,558,106,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,559,106,'400',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,560,106,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,561,106,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,562,107,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,563,107,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,564,107,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,565,107,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,566,108,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,567,108,'400',3,'929',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,568,108,'9300',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,569,109,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,570,109,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,571,109,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,572,109,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,573,110,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,574,110,'400',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,575,110,'70',2,'84',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,576,110,'8500',4,'8799',87999);
INSERT INTO `ezisbn_registrant_range` VALUES (88000,577,110,'88',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,578,111,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,579,111,'10',2,'18',18999);
INSERT INTO `ezisbn_registrant_range` VALUES (19000,580,111,'1900',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,581,111,'20',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,582,111,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,583,111,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,584,112,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,585,112,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,586,112,'800',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,587,112,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,588,113,'00',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,589,113,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,590,113,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,591,114,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,592,114,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,593,114,'700',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,594,114,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,595,115,'00',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,596,115,'5500',4,'5599',55999);
INSERT INTO `ezisbn_registrant_range` VALUES (56000,597,115,'56',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,598,115,'600',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,599,115,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,600,116,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,601,116,'30',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,602,116,'550',3,'734',73499);
INSERT INTO `ezisbn_registrant_range` VALUES (73500,603,116,'7350',4,'7499',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,604,116,'7500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,605,117,'0',1,'6',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,606,117,'70',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,607,117,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,608,118,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,609,118,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,610,118,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,611,119,'000',3,'149',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,612,119,'1500',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,613,119,'20',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,614,119,'7000',4,'7499',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,615,119,'750',3,'959',95999);
INSERT INTO `ezisbn_registrant_range` VALUES (96000,616,119,'9600',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,617,120,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,618,120,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,619,120,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,620,121,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,621,121,'500',3,'939',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,622,121,'9400',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,623,122,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,624,122,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,625,122,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,626,123,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,627,123,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,628,123,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,629,123,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,630,124,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,631,124,'1',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,632,124,'200',3,'249',24999);
INSERT INTO `ezisbn_registrant_range` VALUES (25000,633,124,'2500',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,634,124,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,635,124,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,636,124,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,637,125,'00',2,'05',5999);
INSERT INTO `ezisbn_registrant_range` VALUES (6000,638,125,'060',3,'089',8999);
INSERT INTO `ezisbn_registrant_range` VALUES (9000,639,125,'0900',4,'0999',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,640,125,'10',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,641,125,'700',3,'969',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,642,125,'9700',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,643,126,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,644,126,'30',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,645,126,'550',3,'749',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,646,126,'7500',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,647,126,'95',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,648,127,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,649,127,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,650,127,'4000',4,'4499',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,651,127,'45',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,652,127,'900',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,653,127,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,654,128,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,655,128,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,656,128,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,657,128,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,658,129,'00',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,659,129,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,660,129,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,661,130,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,662,130,'300',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,663,130,'40',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,664,130,'950',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,665,130,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,666,131,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,667,131,'50',2,'64',64999);
INSERT INTO `ezisbn_registrant_range` VALUES (65000,668,131,'650',3,'659',65999);
INSERT INTO `ezisbn_registrant_range` VALUES (66000,669,131,'66',2,'75',75999);
INSERT INTO `ezisbn_registrant_range` VALUES (76000,670,131,'760',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,671,131,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,672,132,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,673,132,'40',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,674,132,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,675,132,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,676,133,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,677,133,'100',3,'159',15999);
INSERT INTO `ezisbn_registrant_range` VALUES (16000,678,133,'1600',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,679,133,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,680,133,'800',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,681,133,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,682,134,'00',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,683,134,'800',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,684,134,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,685,135,'80',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,686,135,'950',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,687,135,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,688,136,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,689,136,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,690,136,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,691,137,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,692,137,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,693,137,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,694,137,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,695,138,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,696,138,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,697,138,'9000',4,'9399',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,698,138,'940',3,'969',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,699,138,'97',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,700,139,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,701,139,'400',3,'879',87999);
INSERT INTO `ezisbn_registrant_range` VALUES (88000,702,139,'8800',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,703,140,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,704,140,'30',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,705,140,'550',3,'749',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,706,140,'7500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,707,141,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,708,141,'100',3,'199',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,709,141,'2000',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,710,141,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,711,141,'600',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,712,141,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,713,142,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,714,142,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,715,142,'80',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,716,144,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,717,144,'20',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,718,144,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,719,145,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,720,145,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,721,145,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,722,146,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,723,146,'40',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,724,146,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,725,147,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,726,147,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,727,147,'600',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,728,147,'70',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,729,147,'90',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,730,147,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,731,148,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,732,148,'10',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,733,148,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,734,149,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,735,149,'40',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,736,149,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,737,150,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,738,150,'30',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,739,150,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,740,151,'00',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,741,151,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,742,152,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,743,152,'400',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,744,152,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,745,152,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,746,153,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,747,153,'30',2,'35',35999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,748,153,'600',3,'604',60499);
INSERT INTO `ezisbn_registrant_range` VALUES (0,749,154,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,750,154,'50',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,751,154,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,752,155,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,753,155,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,754,155,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,755,156,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,756,156,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,757,156,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,758,157,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,759,157,'30',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,760,157,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,761,158,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,762,158,'40',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,763,158,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,764,159,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,765,159,'300',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,766,159,'40',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,767,159,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,768,160,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,769,160,'50',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,770,160,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,771,161,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,772,161,'20',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,773,161,'700',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,774,161,'8',1,'8',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,775,161,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,776,162,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,777,162,'40',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,778,162,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,779,163,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,780,163,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,781,163,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,782,164,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,783,164,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,784,164,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,785,165,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,786,165,'40',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,787,165,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,788,166,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,789,166,'10',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,790,166,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,791,167,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,792,167,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,793,167,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,794,168,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,795,168,'10',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,796,168,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,797,169,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,798,169,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,799,169,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,800,170,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,801,170,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,802,170,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,803,171,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,804,171,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,805,171,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,806,172,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,807,172,'10',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,808,172,'600',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,809,172,'7',1,'7',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,810,172,'80',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,811,173,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,812,173,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,813,173,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,814,174,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,815,174,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,816,174,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,817,175,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,818,175,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,819,175,'600',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,820,175,'7',1,'8',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,821,175,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,822,176,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,823,176,'10',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,824,176,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,825,177,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,826,177,'20',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,827,177,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,828,178,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,829,178,'20',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,830,178,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,831,178,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,832,179,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,833,179,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,834,179,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,835,180,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,836,180,'10',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,837,180,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,838,181,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,839,181,'30',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,840,181,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,841,182,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,842,182,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,843,182,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,844,183,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,845,183,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,846,183,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,847,184,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,848,184,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,849,184,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,850,185,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,851,185,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,852,185,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,853,186,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,854,186,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,855,186,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,856,187,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,857,187,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,858,187,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,859,188,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,860,188,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,861,188,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,862,189,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,863,189,'20',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,864,189,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,865,190,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,866,190,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,867,190,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,868,192,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,869,192,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,870,192,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,871,193,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,872,193,'30',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,873,193,'800',3,'939',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,874,193,'94',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,875,194,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,876,194,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,877,194,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,878,195,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,879,195,'20',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,880,195,'600',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,881,195,'80',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,882,195,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,883,196,'00',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,884,196,'600',3,'859',85999);
INSERT INTO `ezisbn_registrant_range` VALUES (86000,885,196,'86',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,886,197,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,887,197,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,888,197,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,889,198,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,890,198,'50',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,891,198,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,892,199,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,893,199,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,894,199,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,895,200,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,896,200,'10',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,897,200,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,898,201,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,899,201,'40',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,900,201,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,901,202,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,902,202,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,903,202,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,904,203,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,905,203,'500',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,906,204,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,907,204,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,908,204,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,909,205,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,910,205,'40',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,911,205,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,912,206,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,913,206,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,914,206,'700',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,915,207,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,916,207,'20',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,917,207,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,918,208,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,919,208,'400',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,920,208,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,921,208,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,922,209,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,923,209,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,924,209,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,925,209,'90000',5,'97599',97599);
INSERT INTO `ezisbn_registrant_range` VALUES (97600,926,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezm_block`
--

LOCK TABLES `ezm_block` WRITE;
/*!40000 ALTER TABLE `ezm_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezm_pool`
--

LOCK TABLES `ezm_pool` WRITE;
/*!40000 ALTER TABLE `ezm_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (42,1,0,5,1,2,5,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (10,2,-1,6,1,2,44,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (4,1,0,7,1,2,1,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (12,1,0,8,1,2,5,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (13,1,0,9,1,2,5,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (41,1,0,11,1,2,1,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (11,1,0,12,1,2,5,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (45,1,-1,16,1,2,1,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (49,1,0,27,1,2,43,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (50,1,0,28,1,2,43,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (51,1,0,29,1,2,43,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (52,1,0,30,1,2,48,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (56,1,0,34,1,2,1,'','0',2,0,0,0);
INSERT INTO `eznode_assignment` VALUES (14,3,-1,38,1,2,13,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (54,2,-1,39,1,2,58,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (57,1,0,43,1,2,2,'07cdfd23373b17c6b337251c22b7ea57','0',8,1,0,0);
INSERT INTO `eznode_assignment` VALUES (58,1,0,44,1,2,2,'86bf306624668ee9b8b979b0d56f7e0d','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (14,4,-1,45,1,2,13,'e5161a99f733200b9ed4e80f9c16187b','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (59,1,0,46,1,2,5,'369e6ba504f10dd348fa593348cbef2a','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (11,2,-1,47,1,2,5,'602dcf84765e56b7f999eaafd3821dd3','0',1,1,0,0);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
INSERT INTO `eznotificationevent` VALUES (57,1,0,0,'','','','','ezpublish',1,0);
INSERT INTO `eznotificationevent` VALUES (58,1,0,0,'','','','','ezpublish',2,0);
INSERT INTO `eznotificationevent` VALUES (14,4,0,0,'','','','','ezpublish',3,0);
INSERT INTO `eznotificationevent` VALUES (59,1,0,0,'','','','','ezpublish',4,0);
INSERT INTO `eznotificationevent` VALUES (11,2,0,0,'','','','','ezpublish',5,0);
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1,1,'Pending',1);
INSERT INTO `ezorder_status` VALUES (2,1,'Processing',2);
INSERT INTO `ezorder_status` VALUES (3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1');
INSERT INTO `ezpackage` VALUES (2,1422896961,'ezwt_extension','5.3-0');
INSERT INTO `ezpackage` VALUES (3,1422896962,'ezstarrating_extension','5.3-0');
INSERT INTO `ezpackage` VALUES (4,1422896962,'ezgmaplocation_extension','5.3-0');
INSERT INTO `ezpackage` VALUES (5,1422896963,'ezflow_extension','5.3-0');
INSERT INTO `ezpackage` VALUES (6,1422896964,'ezdemo_extension','5.4-0');
INSERT INTO `ezpackage` VALUES (7,1422896964,'ezdemo_classes','5.4-0');
INSERT INTO `ezpackage` VALUES (8,1422896965,'ezdemo_democontent_clean','5.4-0');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',308,'*',0,2);
INSERT INTO `ezpolicy` VALUES ('login',319,'user',0,3);
INSERT INTO `ezpolicy` VALUES ('read',328,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('pdf',329,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('*',330,'ezoe',0,3);
INSERT INTO `ezpolicy` VALUES ('*',332,'ezoe',0,3);
INSERT INTO `ezpolicy` VALUES ('feed',333,'rss',0,1);
INSERT INTO `ezpolicy` VALUES ('login',334,'user',0,1);
INSERT INTO `ezpolicy` VALUES ('login',335,'user',0,1);
INSERT INTO `ezpolicy` VALUES ('login',336,'user',0,1);
INSERT INTO `ezpolicy` VALUES ('read',337,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('view_embed',338,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('view_embed',339,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('create',340,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',341,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',342,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',343,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',344,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',345,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('use',346,'websitetoolbar',0,3);
INSERT INTO `ezpolicy` VALUES ('edit',347,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('read',348,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('use',349,'notification',0,3);
INSERT INTO `ezpolicy` VALUES ('manage_locations',350,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('*',351,'ezodf',0,3);
INSERT INTO `ezpolicy` VALUES ('*',352,'ezflow',0,3);
INSERT INTO `ezpolicy` VALUES ('*',353,'ezajax',0,3);
INSERT INTO `ezpolicy` VALUES ('diff',354,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('versionread',355,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('versionremove',356,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('remove',357,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('translate',358,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('feed',359,'rss',0,3);
INSERT INTO `ezpolicy` VALUES ('bookmark',360,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('pendinglist',361,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('dashboard',362,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('view_embed',363,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('read',364,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('create',365,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('create',366,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('create',367,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('edit',368,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('selfedit',369,'user',0,4);
INSERT INTO `ezpolicy` VALUES ('use',370,'notification',0,4);
INSERT INTO `ezpolicy` VALUES ('create',371,'content',0,5);
INSERT INTO `ezpolicy` VALUES ('create',372,'content',0,5);
INSERT INTO `ezpolicy` VALUES ('create',373,'content',0,5);
INSERT INTO `ezpolicy` VALUES ('edit',374,'content',0,5);
INSERT INTO `ezpolicy` VALUES ('selfedit',375,'user',0,5);
INSERT INTO `ezpolicy` VALUES ('use',376,'notification',0,5);
INSERT INTO `ezpolicy` VALUES ('password',377,'user',0,5);
INSERT INTO `ezpolicy` VALUES ('call',378,'ezjscore',0,5);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (251,'Section',328);
INSERT INTO `ezpolicy_limitation` VALUES (252,'Section',329);
INSERT INTO `ezpolicy_limitation` VALUES (254,'SiteAccess',334);
INSERT INTO `ezpolicy_limitation` VALUES (255,'SiteAccess',335);
INSERT INTO `ezpolicy_limitation` VALUES (256,'SiteAccess',336);
INSERT INTO `ezpolicy_limitation` VALUES (257,'Class',337);
INSERT INTO `ezpolicy_limitation` VALUES (258,'Section',337);
INSERT INTO `ezpolicy_limitation` VALUES (259,'Section',338);
INSERT INTO `ezpolicy_limitation` VALUES (260,'Class',339);
INSERT INTO `ezpolicy_limitation` VALUES (261,'Section',339);
INSERT INTO `ezpolicy_limitation` VALUES (262,'Class',340);
INSERT INTO `ezpolicy_limitation` VALUES (263,'ParentClass',340);
INSERT INTO `ezpolicy_limitation` VALUES (264,'Class',341);
INSERT INTO `ezpolicy_limitation` VALUES (265,'ParentClass',341);
INSERT INTO `ezpolicy_limitation` VALUES (266,'Class',342);
INSERT INTO `ezpolicy_limitation` VALUES (267,'ParentClass',342);
INSERT INTO `ezpolicy_limitation` VALUES (268,'Class',343);
INSERT INTO `ezpolicy_limitation` VALUES (269,'ParentClass',343);
INSERT INTO `ezpolicy_limitation` VALUES (270,'Class',344);
INSERT INTO `ezpolicy_limitation` VALUES (271,'ParentClass',344);
INSERT INTO `ezpolicy_limitation` VALUES (272,'Class',345);
INSERT INTO `ezpolicy_limitation` VALUES (273,'ParentClass',345);
INSERT INTO `ezpolicy_limitation` VALUES (274,'Class',346);
INSERT INTO `ezpolicy_limitation` VALUES (275,'Section',348);
INSERT INTO `ezpolicy_limitation` VALUES (276,'Section',364);
INSERT INTO `ezpolicy_limitation` VALUES (277,'Class',365);
INSERT INTO `ezpolicy_limitation` VALUES (278,'Section',365);
INSERT INTO `ezpolicy_limitation` VALUES (279,'ParentClass',365);
INSERT INTO `ezpolicy_limitation` VALUES (280,'Class',366);
INSERT INTO `ezpolicy_limitation` VALUES (281,'Section',366);
INSERT INTO `ezpolicy_limitation` VALUES (282,'ParentClass',366);
INSERT INTO `ezpolicy_limitation` VALUES (283,'Class',367);
INSERT INTO `ezpolicy_limitation` VALUES (284,'Section',367);
INSERT INTO `ezpolicy_limitation` VALUES (285,'ParentClass',367);
INSERT INTO `ezpolicy_limitation` VALUES (286,'Class',368);
INSERT INTO `ezpolicy_limitation` VALUES (287,'Section',368);
INSERT INTO `ezpolicy_limitation` VALUES (288,'Owner',368);
INSERT INTO `ezpolicy_limitation` VALUES (289,'Class',371);
INSERT INTO `ezpolicy_limitation` VALUES (290,'Section',371);
INSERT INTO `ezpolicy_limitation` VALUES (291,'ParentClass',371);
INSERT INTO `ezpolicy_limitation` VALUES (292,'Class',372);
INSERT INTO `ezpolicy_limitation` VALUES (293,'Section',372);
INSERT INTO `ezpolicy_limitation` VALUES (294,'ParentClass',372);
INSERT INTO `ezpolicy_limitation` VALUES (295,'Class',373);
INSERT INTO `ezpolicy_limitation` VALUES (296,'Section',373);
INSERT INTO `ezpolicy_limitation` VALUES (297,'ParentClass',373);
INSERT INTO `ezpolicy_limitation` VALUES (298,'Class',374);
INSERT INTO `ezpolicy_limitation` VALUES (299,'Section',374);
INSERT INTO `ezpolicy_limitation` VALUES (300,'Owner',374);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (477,251,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (478,252,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (480,254,'2651485329');
INSERT INTO `ezpolicy_limitation_value` VALUES (481,255,'2582995467');
INSERT INTO `ezpolicy_limitation_value` VALUES (482,256,'341347141');
INSERT INTO `ezpolicy_limitation_value` VALUES (483,257,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (484,257,'35');
INSERT INTO `ezpolicy_limitation_value` VALUES (485,257,'37');
INSERT INTO `ezpolicy_limitation_value` VALUES (486,257,'26');
INSERT INTO `ezpolicy_limitation_value` VALUES (487,258,'3');
INSERT INTO `ezpolicy_limitation_value` VALUES (488,259,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (489,260,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (490,260,'35');
INSERT INTO `ezpolicy_limitation_value` VALUES (491,260,'37');
INSERT INTO `ezpolicy_limitation_value` VALUES (492,260,'26');
INSERT INTO `ezpolicy_limitation_value` VALUES (493,261,'3');
INSERT INTO `ezpolicy_limitation_value` VALUES (494,262,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (495,262,'28');
INSERT INTO `ezpolicy_limitation_value` VALUES (496,262,'26');
INSERT INTO `ezpolicy_limitation_value` VALUES (497,262,'21');
INSERT INTO `ezpolicy_limitation_value` VALUES (498,262,'22');
INSERT INTO `ezpolicy_limitation_value` VALUES (499,262,'23');
INSERT INTO `ezpolicy_limitation_value` VALUES (500,262,'16');
INSERT INTO `ezpolicy_limitation_value` VALUES (501,262,'17');
INSERT INTO `ezpolicy_limitation_value` VALUES (502,262,'25');
INSERT INTO `ezpolicy_limitation_value` VALUES (503,262,'24');
INSERT INTO `ezpolicy_limitation_value` VALUES (504,262,'29');
INSERT INTO `ezpolicy_limitation_value` VALUES (505,262,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (506,262,'36');
INSERT INTO `ezpolicy_limitation_value` VALUES (507,262,'34');
INSERT INTO `ezpolicy_limitation_value` VALUES (508,262,'35');
INSERT INTO `ezpolicy_limitation_value` VALUES (509,262,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (510,263,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (511,264,'18');
INSERT INTO `ezpolicy_limitation_value` VALUES (512,265,'17');
INSERT INTO `ezpolicy_limitation_value` VALUES (513,266,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (514,267,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (515,268,'33');
INSERT INTO `ezpolicy_limitation_value` VALUES (516,269,'34');
INSERT INTO `ezpolicy_limitation_value` VALUES (517,270,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (518,271,'29');
INSERT INTO `ezpolicy_limitation_value` VALUES (519,272,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (520,272,'28');
INSERT INTO `ezpolicy_limitation_value` VALUES (521,272,'22');
INSERT INTO `ezpolicy_limitation_value` VALUES (522,272,'23');
INSERT INTO `ezpolicy_limitation_value` VALUES (523,272,'24');
INSERT INTO `ezpolicy_limitation_value` VALUES (524,272,'29');
INSERT INTO `ezpolicy_limitation_value` VALUES (525,272,'34');
INSERT INTO `ezpolicy_limitation_value` VALUES (526,272,'36');
INSERT INTO `ezpolicy_limitation_value` VALUES (527,273,'23');
INSERT INTO `ezpolicy_limitation_value` VALUES (528,274,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (529,274,'28');
INSERT INTO `ezpolicy_limitation_value` VALUES (530,274,'16');
INSERT INTO `ezpolicy_limitation_value` VALUES (531,274,'17');
INSERT INTO `ezpolicy_limitation_value` VALUES (532,274,'18');
INSERT INTO `ezpolicy_limitation_value` VALUES (533,274,'21');
INSERT INTO `ezpolicy_limitation_value` VALUES (534,274,'22');
INSERT INTO `ezpolicy_limitation_value` VALUES (535,274,'23');
INSERT INTO `ezpolicy_limitation_value` VALUES (536,274,'24');
INSERT INTO `ezpolicy_limitation_value` VALUES (537,274,'25');
INSERT INTO `ezpolicy_limitation_value` VALUES (538,274,'26');
INSERT INTO `ezpolicy_limitation_value` VALUES (539,274,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (540,274,'29');
INSERT INTO `ezpolicy_limitation_value` VALUES (541,274,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (542,274,'33');
INSERT INTO `ezpolicy_limitation_value` VALUES (543,274,'34');
INSERT INTO `ezpolicy_limitation_value` VALUES (544,274,'36');
INSERT INTO `ezpolicy_limitation_value` VALUES (545,275,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (546,275,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (547,275,'3');
INSERT INTO `ezpolicy_limitation_value` VALUES (548,276,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (549,277,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (550,278,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (551,279,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (552,280,'32');
INSERT INTO `ezpolicy_limitation_value` VALUES (553,281,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (554,282,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (555,283,'13');
INSERT INTO `ezpolicy_limitation_value` VALUES (556,284,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (557,285,'16');
INSERT INTO `ezpolicy_limitation_value` VALUES (558,286,'13');
INSERT INTO `ezpolicy_limitation_value` VALUES (559,286,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (560,286,'32');
INSERT INTO `ezpolicy_limitation_value` VALUES (561,287,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (562,288,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (563,289,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (564,290,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (565,291,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (566,292,'32');
INSERT INTO `ezpolicy_limitation_value` VALUES (567,293,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (568,294,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (569,295,'13');
INSERT INTO `ezpolicy_limitation_value` VALUES (570,296,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (571,297,'16');
INSERT INTO `ezpolicy_limitation_value` VALUES (572,297,'18');
INSERT INTO `ezpolicy_limitation_value` VALUES (573,298,'13');
INSERT INTO `ezpolicy_limitation_value` VALUES (574,298,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (575,298,'32');
INSERT INTO `ezpolicy_limitation_value` VALUES (576,299,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (577,300,'1');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
INSERT INTO `ezpreferences` VALUES (1,'admin_navigation_content',14,'1');
INSERT INTO `ezpreferences` VALUES (2,'admin_navigation_roles',14,'1');
INSERT INTO `ezpreferences` VALUES (3,'admin_navigation_policies',14,'1');
INSERT INTO `ezpreferences` VALUES (4,'admin_list_limit',14,'2');
INSERT INTO `ezpreferences` VALUES (5,'admin_treemenu',14,'1');
INSERT INTO `ezpreferences` VALUES (6,'admin_bookmark_menu',14,'1');
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','',0);
INSERT INTO `ezrole` VALUES (2,0,'Administrator','*',0);
INSERT INTO `ezrole` VALUES (3,0,'Editor','',0);
INSERT INTO `ezrole` VALUES (4,0,'Partner',NULL,0);
INSERT INTO `ezrole` VALUES (5,0,'Member',NULL,0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
INSERT INTO `ezrss_export` VALUES ('my_feed',1,1422896967,14,'',1,0,1,1422896967,14,0,10,'2.0','',1,'My RSS Feed','http://example.com');
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
INSERT INTO `ezrss_export_item` VALUES ('',16,'intro','',1,1,139,1,0,'title');
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,4,0,4663,'name',0,951,0,0,1033917596,2,930);
INSERT INTO `ezsearch_object_word_link` VALUES (7,3,4,0,4664,'description',0,952,1,930,1033917596,2,951);
INSERT INTO `ezsearch_object_word_link` VALUES (7,3,4,0,4665,'description',0,0,2,951,1033917596,2,952);
INSERT INTO `ezsearch_object_word_link` VALUES (8,4,10,0,4666,'first_name',0,954,0,0,1033920665,2,953);
INSERT INTO `ezsearch_object_word_link` VALUES (9,4,10,0,4667,'last_name',0,953,1,953,1033920665,2,954);
INSERT INTO `ezsearch_object_word_link` VALUES (12,4,10,0,4668,'user_account',0,955,2,954,1033920665,2,953);
INSERT INTO `ezsearch_object_word_link` VALUES (12,4,10,0,4669,'user_account',0,927,3,953,1033920665,2,955);
INSERT INTO `ezsearch_object_word_link` VALUES (12,4,10,0,4670,'user_account',0,0,4,955,1033920665,2,927);
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,12,0,4673,'name',0,930,0,0,1033920775,2,958);
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,12,0,4674,'name',0,0,1,958,1033920775,2,930);
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,13,0,4675,'name',0,0,0,0,1033920794,2,959);
INSERT INTO `ezsearch_object_word_link` VALUES (4,1,41,0,4681,'name',0,0,0,0,1060695457,3,961);
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,42,0,4682,'name',0,930,0,0,1072180330,2,953);
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,42,0,4683,'name',0,954,1,953,1072180330,2,930);
INSERT INTO `ezsearch_object_word_link` VALUES (7,3,42,0,4684,'description',0,952,2,930,1072180330,2,954);
INSERT INTO `ezsearch_object_word_link` VALUES (7,3,42,0,4685,'description',0,816,3,954,1072180330,2,952);
INSERT INTO `ezsearch_object_word_link` VALUES (7,3,42,0,4686,'description',0,814,4,952,1072180330,2,816);
INSERT INTO `ezsearch_object_word_link` VALUES (7,3,42,0,4687,'description',0,953,5,816,1072180330,2,814);
INSERT INTO `ezsearch_object_word_link` VALUES (7,3,42,0,4688,'description',0,954,6,814,1072180330,2,953);
INSERT INTO `ezsearch_object_word_link` VALUES (7,3,42,0,4689,'description',0,0,7,953,1072180330,2,954);
INSERT INTO `ezsearch_object_word_link` VALUES (4,1,45,0,4690,'name',0,0,0,0,1079684190,4,812);
INSERT INTO `ezsearch_object_word_link` VALUES (4,1,49,0,4691,'name',0,0,0,0,1080220197,3,962);
INSERT INTO `ezsearch_object_word_link` VALUES (4,1,50,0,4692,'name',0,0,0,0,1080220220,3,963);
INSERT INTO `ezsearch_object_word_link` VALUES (4,1,51,0,4693,'name',0,0,0,0,1080220233,3,964);
INSERT INTO `ezsearch_object_word_link` VALUES (159,14,52,0,4694,'name',0,965,0,0,1082016591,4,877);
INSERT INTO `ezsearch_object_word_link` VALUES (159,14,52,0,4695,'name',0,966,1,877,1082016591,4,965);
INSERT INTO `ezsearch_object_word_link` VALUES (159,14,52,0,4696,'name',0,0,2,965,1082016591,4,966);
INSERT INTO `ezsearch_object_word_link` VALUES (176,15,54,0,4697,'id',0,0,0,0,1082016652,5,967);
INSERT INTO `ezsearch_object_word_link` VALUES (4,1,56,0,4698,'name',0,0,0,0,1103023132,5,968);
INSERT INTO `ezsearch_object_word_link` VALUES (230,23,57,0,4699,'name',0,0,0,0,1422896964,1,969);
INSERT INTO `ezsearch_object_word_link` VALUES (181,16,58,0,4700,'title',0,970,0,0,1422896965,1,970);
INSERT INTO `ezsearch_object_word_link` VALUES (182,16,58,0,4701,'short_title',0,802,1,970,1422896965,1,970);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4702,'intro',0,805,2,970,1422896965,1,802);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4703,'intro',0,810,3,802,1422896965,1,805);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4704,'intro',0,971,4,805,1422896965,1,810);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4705,'intro',0,972,5,810,1422896965,1,971);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4706,'intro',0,809,6,971,1422896965,1,972);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4707,'intro',0,973,7,972,1422896965,1,809);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4708,'intro',0,974,8,809,1422896965,1,973);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4709,'intro',0,814,9,973,1422896965,1,974);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4710,'intro',0,975,10,974,1422896965,1,814);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4711,'intro',0,976,11,814,1422896965,1,975);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4712,'intro',0,977,12,975,1422896965,1,976);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4713,'intro',0,978,13,976,1422896965,1,977);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4714,'intro',0,929,14,977,1422896965,1,978);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4715,'intro',0,979,15,978,1422896965,1,929);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4716,'intro',0,980,16,929,1422896965,1,979);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4717,'intro',0,981,17,979,1422896965,1,980);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4718,'intro',0,978,18,980,1422896965,1,981);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4719,'intro',0,982,19,981,1422896965,1,978);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4720,'intro',0,983,20,978,1422896965,1,982);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4721,'intro',0,984,21,982,1422896965,1,983);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4722,'intro',0,985,22,983,1422896965,1,984);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4723,'intro',0,986,23,984,1422896965,1,985);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4724,'intro',0,985,24,985,1422896965,1,986);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4725,'intro',0,987,25,986,1422896965,1,985);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4726,'intro',0,988,26,985,1422896965,1,987);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4727,'intro',0,989,27,987,1422896965,1,988);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4728,'intro',0,990,28,988,1422896965,1,989);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4729,'intro',0,991,29,989,1422896965,1,990);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4730,'intro',0,992,30,990,1422896965,1,991);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4731,'intro',0,993,31,991,1422896965,1,992);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4732,'intro',0,994,32,992,1422896965,1,993);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4733,'intro',0,995,33,993,1422896965,1,994);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4734,'intro',0,816,34,994,1422896965,1,995);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4735,'intro',0,921,35,995,1422896965,1,816);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4736,'intro',0,922,36,816,1422896965,1,921);
INSERT INTO `ezsearch_object_word_link` VALUES (183,16,58,0,4737,'intro',0,802,37,921,1422896965,1,922);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4738,'body',0,907,38,922,1422896965,1,802);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4739,'body',0,807,39,802,1422896965,1,907);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4740,'body',0,996,40,907,1422896965,1,807);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4741,'body',0,927,41,807,1422896965,1,996);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4742,'body',0,802,42,996,1422896965,1,927);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4743,'body',0,997,43,927,1422896965,1,802);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4744,'body',0,807,44,802,1422896965,1,997);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4745,'body',0,996,45,997,1422896965,1,807);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4746,'body',0,998,46,807,1422896965,1,996);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4747,'body',0,874,47,996,1422896965,1,998);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4748,'body',0,996,48,998,1422896965,1,874);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4749,'body',0,999,49,874,1422896965,1,996);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4750,'body',0,1000,50,996,1422896965,1,999);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4751,'body',0,995,51,999,1422896965,1,1000);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4752,'body',0,1001,52,1000,1422896965,1,995);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4753,'body',0,1002,53,995,1422896965,1,1001);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4754,'body',0,1003,54,1001,1422896965,1,1002);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4755,'body',0,833,55,1002,1422896965,1,1003);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4756,'body',0,1004,56,1003,1422896965,1,833);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4757,'body',0,1005,57,833,1422896965,1,1004);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4758,'body',0,1006,58,1004,1422896965,1,1005);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4759,'body',0,1007,59,1005,1422896965,1,1006);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4760,'body',0,802,60,1006,1422896965,1,1007);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4761,'body',0,925,61,1007,1422896965,1,802);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4762,'body',0,1008,62,802,1422896965,1,925);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4763,'body',0,1009,63,925,1422896965,1,1008);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4764,'body',0,1010,64,1008,1422896965,1,1009);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4765,'body',0,1011,65,1009,1422896965,1,1010);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4766,'body',0,1012,66,1010,1422896965,1,1011);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4767,'body',0,1013,67,1011,1422896965,1,1012);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4768,'body',0,1014,68,1012,1422896965,1,1013);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4769,'body',0,1015,69,1013,1422896965,1,1014);
INSERT INTO `ezsearch_object_word_link` VALUES (184,16,58,0,4770,'body',0,1016,70,1014,1422896965,1,1015);
INSERT INTO `ezsearch_object_word_link` VALUES (190,16,58,0,4771,'publish_date',1341417600,0,71,1015,1422896965,1,1016);
INSERT INTO `ezsearch_object_word_link` VALUES (8,4,14,0,4772,'first_name',0,954,0,0,1033920830,2,958);
INSERT INTO `ezsearch_object_word_link` VALUES (9,4,14,0,4773,'last_name',0,1017,1,958,1033920830,2,954);
INSERT INTO `ezsearch_object_word_link` VALUES (12,4,14,0,4774,'user_account',0,1018,2,954,1033920830,2,1017);
INSERT INTO `ezsearch_object_word_link` VALUES (12,4,14,0,4775,'user_account',0,927,3,1017,1033920830,2,1018);
INSERT INTO `ezsearch_object_word_link` VALUES (12,4,14,0,4776,'user_account',0,0,4,1018,1033920830,2,927);
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,59,0,4777,'name',0,0,0,0,1422896966,2,1019);
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,11,0,4778,'name',0,0,0,0,1033920746,2,1020);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsearch_return_count`
--

LOCK TABLES `ezsearch_return_count` WRITE;
/*!40000 ALTER TABLE `ezsearch_return_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_return_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (802,1,'ez');
INSERT INTO `ezsearch_word` VALUES (805,1,'is');
INSERT INTO `ezsearch_word` VALUES (807,1,'site');
INSERT INTO `ezsearch_word` VALUES (809,1,'with');
INSERT INTO `ezsearch_word` VALUES (810,1,'a');
INSERT INTO `ezsearch_word` VALUES (812,1,'setup');
INSERT INTO `ezsearch_word` VALUES (814,2,'the');
INSERT INTO `ezsearch_word` VALUES (816,2,'for');
INSERT INTO `ezsearch_word` VALUES (833,1,'and');
INSERT INTO `ezsearch_word` VALUES (874,1,'documentation');
INSERT INTO `ezsearch_word` VALUES (877,1,'common');
INSERT INTO `ezsearch_word` VALUES (907,1,'official');
INSERT INTO `ezsearch_word` VALUES (921,1,'more');
INSERT INTO `ezsearch_word` VALUES (922,1,'information');
INSERT INTO `ezsearch_word` VALUES (925,1,'systems');
INSERT INTO `ezsearch_word` VALUES (927,3,'ez.no');
INSERT INTO `ezsearch_word` VALUES (929,1,'new');
INSERT INTO `ezsearch_word` VALUES (930,3,'users');
INSERT INTO `ezsearch_word` VALUES (951,1,'main');
INSERT INTO `ezsearch_word` VALUES (952,2,'group');
INSERT INTO `ezsearch_word` VALUES (953,2,'anonymous');
INSERT INTO `ezsearch_word` VALUES (954,3,'user');
INSERT INTO `ezsearch_word` VALUES (955,1,'nospam');
INSERT INTO `ezsearch_word` VALUES (958,2,'administrator');
INSERT INTO `ezsearch_word` VALUES (959,1,'editors');
INSERT INTO `ezsearch_word` VALUES (961,1,'media');
INSERT INTO `ezsearch_word` VALUES (962,1,'images');
INSERT INTO `ezsearch_word` VALUES (963,1,'files');
INSERT INTO `ezsearch_word` VALUES (964,1,'multimedia');
INSERT INTO `ezsearch_word` VALUES (965,1,'ini');
INSERT INTO `ezsearch_word` VALUES (966,1,'settings');
INSERT INTO `ezsearch_word` VALUES (967,1,'sitestyle_identifier');
INSERT INTO `ezsearch_word` VALUES (968,1,'design');
INSERT INTO `ezsearch_word` VALUES (969,1,'home');
INSERT INTO `ezsearch_word` VALUES (970,1,'footer');
INSERT INTO `ezsearch_word` VALUES (971,1,'global');
INSERT INTO `ezsearch_word` VALUES (972,1,'company');
INSERT INTO `ezsearch_word` VALUES (973,1,'offices');
INSERT INTO `ezsearch_word` VALUES (974,1,'around');
INSERT INTO `ezsearch_word` VALUES (975,1,'world');
INSERT INTO `ezsearch_word` VALUES (976,1,'including');
INSERT INTO `ezsearch_word` VALUES (977,1,'skien');
INSERT INTO `ezsearch_word` VALUES (978,1,'norway');
INSERT INTO `ezsearch_word` VALUES (979,1,'york');
INSERT INTO `ezsearch_word` VALUES (980,1,'usa');
INSERT INTO `ezsearch_word` VALUES (981,1,'oslo');
INSERT INTO `ezsearch_word` VALUES (982,1,'cologne');
INSERT INTO `ezsearch_word` VALUES (983,1,'germany');
INSERT INTO `ezsearch_word` VALUES (984,1,'paris');
INSERT INTO `ezsearch_word` VALUES (985,1,'france');
INSERT INTO `ezsearch_word` VALUES (986,1,'lyon');
INSERT INTO `ezsearch_word` VALUES (987,1,'beijing');
INSERT INTO `ezsearch_word` VALUES (988,1,'china');
INSERT INTO `ezsearch_word` VALUES (989,1,'tokyo');
INSERT INTO `ezsearch_word` VALUES (990,1,'japan');
INSERT INTO `ezsearch_word` VALUES (991,1,'singapore');
INSERT INTO `ezsearch_word` VALUES (992,1,'london');
INSERT INTO `ezsearch_word` VALUES (993,1,'uk');
INSERT INTO `ezsearch_word` VALUES (994,1,'contact');
INSERT INTO `ezsearch_word` VALUES (995,1,'us');
INSERT INTO `ezsearch_word` VALUES (996,1,'http');
INSERT INTO `ezsearch_word` VALUES (997,1,'community');
INSERT INTO `ezsearch_word` VALUES (998,1,'share.ez.no');
INSERT INTO `ezsearch_word` VALUES (999,1,'doc.ez.no');
INSERT INTO `ezsearch_word` VALUES (1000,1,'follow');
INSERT INTO `ezsearch_word` VALUES (1001,1,'on');
INSERT INTO `ezsearch_word` VALUES (1002,1,'twitter');
INSERT INTO `ezsearch_word` VALUES (1003,1,'facebook');
INSERT INTO `ezsearch_word` VALUES (1004,1,'linkedin');
INSERT INTO `ezsearch_word` VALUES (1005,1,'copyright');
INSERT INTO `ezsearch_word` VALUES (1006,1,'c');
INSERT INTO `ezsearch_word` VALUES (1007,1,'2014');
INSERT INTO `ezsearch_word` VALUES (1008,1,'as');
INSERT INTO `ezsearch_word` VALUES (1009,1,'except');
INSERT INTO `ezsearch_word` VALUES (1010,1,'where');
INSERT INTO `ezsearch_word` VALUES (1011,1,'otherwise');
INSERT INTO `ezsearch_word` VALUES (1012,1,'noted');
INSERT INTO `ezsearch_word` VALUES (1013,1,'all');
INSERT INTO `ezsearch_word` VALUES (1014,1,'rights');
INSERT INTO `ezsearch_word` VALUES (1015,1,'reserved');
INSERT INTO `ezsearch_word` VALUES (1016,1,'1341417600');
INSERT INTO `ezsearch_word` VALUES (1017,1,'admin');
INSERT INTO `ezsearch_word` VALUES (1018,1,'bd');
INSERT INTO `ezsearch_word` VALUES (1019,1,'partners');
INSERT INTO `ezsearch_word` VALUES (1020,1,'members');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart');
INSERT INTO `ezsection` VALUES (2,'users','','Users','ezusernavigationpart');
INSERT INTO `ezsection` VALUES (3,'media','','Media','ezmedianavigationpart');
INSERT INTO `ezsection` VALUES (4,'setup','','Setup','ezsetupnavigationpart');
INSERT INTO `ezsection` VALUES (5,'design','','Design','ezvisualnavigationpart');
INSERT INTO `ezsection` VALUES (6,'','','Restricted','ezcontentnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezdemo','2.0');
INSERT INTO `ezsite_data` VALUES ('ezpublish-release','1');
INSERT INTO `ezsite_data` VALUES ('ezpublish-version','5.90.0alpha1');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezstarrating`
--

LOCK TABLES `ezstarrating` WRITE;
/*!40000 ALTER TABLE `ezstarrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezstarrating_data`
--

LOCK TABLES `ezstarrating_data` WRITE;
/*!40000 ALTER TABLE `ezstarrating_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1082368571,8,1,0,1082368571,'dfcdb471b240d964dc3f57b998eb0533','http://ez.no');
INSERT INTO `ezurl` VALUES (1422896965,23,1,0,1422896965,'a99e0cbe4aa82974daa427a121c1bd32','http://ez.no/About-eZ/Contact-Us');
INSERT INTO `ezurl` VALUES (1422896965,24,1,0,1422896965,'265d537bfba0e5ed4e85fbcd7f30ea84','http://share.ez.no');
INSERT INTO `ezurl` VALUES (1422896965,25,1,0,1422896965,'ba55ac8a1ebe1cd6eedbb5fc073feb4e','http://doc.ez.no');
INSERT INTO `ezurl` VALUES (1422896965,26,1,0,1422896965,'aaea21dc8d911e7b5dbcde30028e5232','https://twitter.com/eZSystems');
INSERT INTO `ezurl` VALUES (1422896965,27,1,0,1422896965,'ec8180e4dbb06b25b58150922546d389','http://www.facebook.com/eZPublishEnterprise');
INSERT INTO `ezurl` VALUES (1422896965,28,1,0,1422896965,'f010a7745c13a177f06df0afadb91ed9','https://www.linkedin.com/company/ez-systems');
INSERT INTO `ezurl` VALUES (1422896966,29,1,0,1422896966,'9b492048041e95b32de08bafc86d759b','/content/view/sitemap/2');
INSERT INTO `ezurl` VALUES (1422896966,30,1,0,1422896966,'c86bcb109d8e70f9db65c803baafd550','/content/view/tagcloud/2');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (190,1,23);
INSERT INTO `ezurl_object_link` VALUES (191,1,8);
INSERT INTO `ezurl_object_link` VALUES (191,1,24);
INSERT INTO `ezurl_object_link` VALUES (191,1,25);
INSERT INTO `ezurl_object_link` VALUES (191,1,26);
INSERT INTO `ezurl_object_link` VALUES (191,1,27);
INSERT INTO `ezurl_object_link` VALUES (191,1,28);
INSERT INTO `ezurl_object_link` VALUES (200,2,29);
INSERT INTO `ezurl_object_link` VALUES (201,2,30);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES ('content/view/full/2',0,12,1,1,0,'d41d8cd98f00b204e9800998ecf8427e','');
INSERT INTO `ezurlalias` VALUES ('content/view/full/5',0,13,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users');
INSERT INTO `ezurlalias` VALUES ('content/view/full/12',0,15,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts');
INSERT INTO `ezurlalias` VALUES ('content/view/full/13',0,16,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users');
INSERT INTO `ezurlalias` VALUES ('content/view/full/14',0,17,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors');
INSERT INTO `ezurlalias` VALUES ('content/view/full/15',0,18,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user');
INSERT INTO `ezurlalias` VALUES ('content/view/full/43',0,20,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media');
INSERT INTO `ezurlalias` VALUES ('content/view/full/44',0,21,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users');
INSERT INTO `ezurlalias` VALUES ('content/view/full/45',0,22,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user');
INSERT INTO `ezurlalias` VALUES ('content/view/full/48',0,25,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup');
INSERT INTO `ezurlalias` VALUES ('content/view/full/50',0,27,1,1,0,'c60212835de76414f9bfd21eecb8f221','foo_bar_folder/images/vbanner');
INSERT INTO `ezurlalias` VALUES ('content/view/full/51',0,28,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images');
INSERT INTO `ezurlalias` VALUES ('content/view/full/52',0,29,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files');
INSERT INTO `ezurlalias` VALUES ('content/view/full/53',0,30,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia');
INSERT INTO `ezurlalias` VALUES ('content/view/full/54',0,31,1,1,0,'e501fe6c81ed14a5af2b322d248102d8','setup/common_ini_settings');
INSERT INTO `ezurlalias` VALUES ('content/view/full/56',0,32,1,1,0,'2dd3db5dc7122ea5f3ee539bb18fe97d','design/ez_publish');
INSERT INTO `ezurlalias` VALUES ('content/view/full/58',0,33,1,1,0,'31c13f47ad87dd7baa2d558a91e0fbb9','design');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,14,0,0,1,14,0,'foo_bar_folder','0288b6883046492fa92e4a84eb67acc9');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:59','eznode',1,40,0,0,3,38,0,'Home','106a6c241b8797f52e1e77317b96a201');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:59','eznode',1,38,0,1,3,38,0,'eZ-Publish','10e4c3cb527fb9963258469986c16240');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:60','eznode',1,39,0,1,2,39,0,'footer','251d164643533a527361dbe1a7b9235d');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:58','eznode',1,25,0,1,3,25,0,'Design','31c13f47ad87dd7baa2d558a91e0fbb9');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:2','eznode',1,1,0,1,3,1,0,'','d41d8cd98f00b204e9800998ecf8427e');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:61','eznode',1,41,0,1,3,41,2,'Partners','7896f8fa69398c56d86a65357615c41f');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:12','eznode',1,4,0,1,3,4,2,'Members','d2e3083420929d8bfae81f58fa4594cb');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:12','eznode',1,42,0,0,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:12','eznode',1,26,0,0,0,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:15','eznode',1,8,0,1,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:54','eznode',1,22,0,1,2,22,13,'Common-INI-settings','4434993ac013ae4d54bb1f51034d6401');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:50','eznode',1,16,0,1,2,16,15,'vbanner','c54e2d1b93642e280bdc5d99eab2827d');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:54','eznode',1,35,0,0,1,22,21,'common_ini_settings','e59d6834e86cee752ed841f9cd8d5baf');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:56','eznode',1,37,0,0,2,24,25,'eZ-publish','10e4c3cb527fb9963258469986c16240');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:56','eznode',1,24,0,1,2,24,25,'Plain-site','49a39d99a955d95aa5d636275656a07a');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1);
INSERT INTO `ezurlalias_ml_incr` VALUES (2);
INSERT INTO `ezurlalias_ml_incr` VALUES (3);
INSERT INTO `ezurlalias_ml_incr` VALUES (4);
INSERT INTO `ezurlalias_ml_incr` VALUES (5);
INSERT INTO `ezurlalias_ml_incr` VALUES (6);
INSERT INTO `ezurlalias_ml_incr` VALUES (7);
INSERT INTO `ezurlalias_ml_incr` VALUES (8);
INSERT INTO `ezurlalias_ml_incr` VALUES (9);
INSERT INTO `ezurlalias_ml_incr` VALUES (10);
INSERT INTO `ezurlalias_ml_incr` VALUES (11);
INSERT INTO `ezurlalias_ml_incr` VALUES (12);
INSERT INTO `ezurlalias_ml_incr` VALUES (13);
INSERT INTO `ezurlalias_ml_incr` VALUES (14);
INSERT INTO `ezurlalias_ml_incr` VALUES (15);
INSERT INTO `ezurlalias_ml_incr` VALUES (16);
INSERT INTO `ezurlalias_ml_incr` VALUES (17);
INSERT INTO `ezurlalias_ml_incr` VALUES (18);
INSERT INTO `ezurlalias_ml_incr` VALUES (19);
INSERT INTO `ezurlalias_ml_incr` VALUES (20);
INSERT INTO `ezurlalias_ml_incr` VALUES (21);
INSERT INTO `ezurlalias_ml_incr` VALUES (22);
INSERT INTO `ezurlalias_ml_incr` VALUES (24);
INSERT INTO `ezurlalias_ml_incr` VALUES (25);
INSERT INTO `ezurlalias_ml_incr` VALUES (26);
INSERT INTO `ezurlalias_ml_incr` VALUES (27);
INSERT INTO `ezurlalias_ml_incr` VALUES (28);
INSERT INTO `ezurlalias_ml_incr` VALUES (29);
INSERT INTO `ezurlalias_ml_incr` VALUES (30);
INSERT INTO `ezurlalias_ml_incr` VALUES (31);
INSERT INTO `ezurlalias_ml_incr` VALUES (32);
INSERT INTO `ezurlalias_ml_incr` VALUES (33);
INSERT INTO `ezurlalias_ml_incr` VALUES (34);
INSERT INTO `ezurlalias_ml_incr` VALUES (35);
INSERT INTO `ezurlalias_ml_incr` VALUES (36);
INSERT INTO `ezurlalias_ml_incr` VALUES (37);
INSERT INTO `ezurlalias_ml_incr` VALUES (38);
INSERT INTO `ezurlalias_ml_incr` VALUES (39);
INSERT INTO `ezurlalias_ml_incr` VALUES (40);
INSERT INTO `ezurlalias_ml_incr` VALUES (41);
INSERT INTO `ezurlalias_ml_incr` VALUES (42);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2);
INSERT INTO `ezuser` VALUES (14,'noreply@ez.no','admin','c78e3b0f3d9244ed8c6d1c29464bdff9',2);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (12,25,'','',2);
INSERT INTO `ezuser_role` VALUES (11,28,'','',1);
INSERT INTO `ezuser_role` VALUES (42,31,'','',1);
INSERT INTO `ezuser_role` VALUES (13,32,'Subtree','/1/2/',3);
INSERT INTO `ezuser_role` VALUES (13,33,'Subtree','/1/43/',3);
INSERT INTO `ezuser_role` VALUES (11,34,'','',5);
INSERT INTO `ezuser_role` VALUES (59,35,'','',4);
INSERT INTO `ezuser_role` VALUES (59,36,'','',5);
INSERT INTO `ezuser_role` VALUES (59,37,'','',1);
INSERT INTO `ezuser_role` VALUES (13,38,'','',5);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1,1000,10);
INSERT INTO `ezuser_setting` VALUES (1,10,14);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES (1422896960,0,1301057720,0,14);
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098,14,1,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-16 17:30:29
