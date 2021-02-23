CREATE DATABASE  IF NOT EXISTS `order_goods` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `order_goods`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: order_goods
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `daysordermove_view`
--

DROP TABLE IF EXISTS `daysordermove_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `daysordermove_view` (
  `daysordermoveid` varchar(40) NOT NULL,
  `cntkod` varchar(40) DEFAULT NULL,
  `cntnamestr` varchar(100) DEFAULT NULL,
  `daysorderdate` varchar(16) DEFAULT NULL,
  `cntadresstr` varchar(256) DEFAULT NULL,
  `indstr` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`daysordermoveid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daysordermove_view`
--

LOCK TABLES `daysordermove_view` WRITE;
/*!40000 ALTER TABLE `daysordermove_view` DISABLE KEYS */;
INSERT INTO `daysordermove_view` VALUES ('381796','1158','ООО \"Молторг\"','09.03.2020 08:30','ул.Хохрякова, д.22, киоск \"Первый вкус\"','ХБИ'),('382092','1158','ООО \"Молторг\"','09.03.2020 10:35','ул.Хохрякова, д.22, киоск \"Первый вкус\"','МКИ');
/*!40000 ALTER TABLE `daysordermove_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daysordermoveauth_view`
--

DROP TABLE IF EXISTS `daysordermoveauth_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `daysordermoveauth_view` (
  `cntid` varchar(40) NOT NULL,
  `cntkod` varchar(40) DEFAULT NULL,
  `cntname` varchar(100) DEFAULT NULL,
  `cntadres` varchar(256) DEFAULT NULL,
  `tokenall` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cntid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daysordermoveauth_view`
--

LOCK TABLES `daysordermoveauth_view` WRITE;
/*!40000 ALTER TABLE `daysordermoveauth_view` DISABLE KEYS */;
INSERT INTO `daysordermoveauth_view` VALUES ('12943','1158','ООО \"Молторг\"','ул.Хохрякова, д.22, киоск \"Первый вкус\"','82fcf9f268616f634c45ce9e71b4bafa');
/*!40000 ALTER TABLE `daysordermoveauth_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daysordermovecontent_view`
--

DROP TABLE IF EXISTS `daysordermovecontent_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `daysordermovecontent_view` (
  `daysordermovecontentid` varchar(40) NOT NULL,
  `daysordermoveidstr` varchar(40) DEFAULT NULL,
  `prodlongname` varchar(100) DEFAULT NULL,
  `amountstr` varchar(40) DEFAULT NULL,
  `flagacceptstr` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`daysordermovecontentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daysordermovecontent_view`
--

LOCK TABLES `daysordermovecontent_view` WRITE;
/*!40000 ALTER TABLE `daysordermovecontent_view` DISABLE KEYS */;
INSERT INTO `daysordermovecontent_view` VALUES ('2576596','382092','Пряники Невские','0','0'),('2576597','382092','Пряники Кокосовые','0','0'),('2576598','382092','Пряники Невские','0','0'),('2576599','382092','Пряники Кокосовые','0','0'),('2576600','382092','Печенье Овсяное домашнее','0','0'),('2576601','382092','Пряники  заварные со сливочным вкусом','0','0'),('2576602','382092','Пряники заварные Ярмарка SPAR','0','0'),('2576603','382092','Пряники заварные Уральская ярмарка','0','0'),('2576604','382092','Пряники заварные Уральская ярмарка','0','0'),('2576605','382092','Пряники заварные с арахисом /15','0','0'),('2576606','382092','Пряники заварные Уральская ярмарка /15','0','0'),('2576607','382092','Пряники заварные Ирэк новый /15','0','0'),('2576608','382092','Пряники заварные малые /15','0','0'),('2576609','382092','Пряники МИНИ пластик','0','0'),('2576610','382092','Печенье Овсяные Смайлики  пластик','0','0'),('2576611','382092','Пряники Постные','0','0'),('2576612','382092','Пряники со вкусом топленого молока','0','0'),('2576613','382092','Пряники со вкусом топленого молока','0','0'),('2576614','382092','Пряники Невские/6/5','1','0'),('2576615','382092','Пряники со вкусом топленого молока /5','1','0'),('2576616','382092','Пряники Кокосовые /6/5','0','0'),('2576617','382092','Пряники Постные /5','0','0'),('2576618','382092','Сушки Маковые 9 уп. пластик','0','0'),('2576619','382092','Печенье Овсяное домашнее','0','0'),('2576620','382092','Кекс Уфимский новый','0','0'),('2576621','382092','Кекс Свердловский новый','0','0'),('2576622','382092','Кекс Золотой ярлык новый','0','0'),('2576623','382092','Кекс Творожник с изюмом','0','0'),('2576624','382092','Печенье Овсяное ШОКО','0','0'),('2576625','382092','Торт Лесной домик','0','0'),('2576626','382092','Пирожное Лесной домик','0','0'),('2576627','382092','Пряники заварные малые','0','0'),('2576628','382092','Пряники заварные Уральская ярмарка пластик','0','0'),('2576629','382092','Баранки Маковые','0','0'),('2576630','382092','Баранки Ванильные','0','0'),('2576631','382092','Баранки Сахарные','0','0'),('2576632','382092','Сушки Горчичные','0','0'),('2576633','382092','Сушки Маковые','0','0'),('2576634','382092','Сушки Ванильные','0','0'),('2576635','382092','Сушки в сахарной глазури','0','0'),('2576636','382092','Сушки Челночок Горчичные','0','0'),('2576637','382092','Сушки Челночок Классические','0','0'),('2576638','382092','Сухари Киевские','0','0'),('2576639','382092','Сухари Горчичные','0','0'),('2576640','382092','Сухари Ванильные','0','0'),('2576641','382092','Сухари Ванильные 8 уп пластик','0','0'),('2576642','382092','Баранки Ванильные 5 уп.пластик','0','0'),('2576643','382092','Сушки Крохотушки ванильные','0','0'),('2576644','382092','Сушки Горчичные 9уп пластик','0','0'),('2576645','382092','Сушки Ванильные 9 уп пластик','0','0'),('2576646','382092','Сушки Крохотушки маковые','0','0'),('2576647','382092','Пряники МИНИ','0','0'),('2576648','382092','Печенье Овсяные Смайлики','0','0'),('2576649','382092','Сушки в сахарной глазури 12 уп пластик','0','0'),('2576650','382092','Сухари Киевские 8уп пластик','0','0'),('2576651','382092','Кекс со вкусом лимона','0','0'),('2576652','382092','Пряники заварные малые','0','0'),('2576653','382092','Пряники заварные с арахисом','0','0'),('2576654','382092','Пряники заварные с арахисом','0','0'),('2576655','382092','Пряники заварные Ирэк новый','0','0'),('2576656','382092','Пряники заварные Ирэк новый','0','0'),('2576657','382092','Пряники заварные Ирэк новый /6/5','0','0'),('2576658','382092','Пряники заварные Уральская ярмарка /6/5','1','0'),('2576659','382092','Пряники Невские пластик','0','0'),('2576660','382092','Пряники заварные Ирэк новый пластик','0','0'),('2576661','382092','Пряники Кокосовые пластик','0','0'),('2576662','382092','Пряники заварные с арахисом пластик','1','0'),('2576663','382092','Баранки Маковые 5уп пластик','0','0'),('2576664','382092','Сушки Крохотушки маковые 10уп пластик','0','0'),('2576665','382092','Вафельная трубочка с вареной сгущенкой','0','0'),('2576666','382092','Сушки Крохотушки ванильные 10уп пластик','0','0'),('2576667','382092','Вафельная трубочка с вареной сгущенкой пластик','1','0'),('2576668','382092','Пряники заварные Ирэк новый /4','0','0'),('2576669','382092','Пряники заварные Невские /4','0','0'),('2576670','382092','Пряники заварные Кокосовые /4','0','0'),('2576671','382092','Пряники заварные малые /4','0','0'),('2576672','382092','Пряники заварные Уральская ярмарка /4','0','0'),('2576673','382092','Пряники заварные с арахисом /4','0','0'),('2576674','382092','Пряники заварные с топлен молоком /4','0','0'),('2576676','382092','Пряники заварные Ирэк новый АО \"Покровский хлеб\"','0','0'),('2576677','382092','Пряники заварные Ирэк новый АО \"Покровский хлеб\"','0','0'),('2576678','382092','Пряники заварные Невские АО \"Покровский хлеб\"','0','0'),('2576679','382092','Пряники заварные Кокосовые АО \"Покровский хлеб\"','0','0'),('2576680','382092','Пряники заварные малые АО \"Покровский хлеб\"','0','0'),('2576681','382092','Пряники заварные Уральская ярмарка АО \"Покровский хлеб\"','0','0'),('2576682','382092','Пряники заварные с арахисом АО \"Покровский хлеб\"','0','0'),('2576683','382092','Пряники заварные малые /5','0','0'),('2576684','382092','Пряники заварные Невские АО \"Покровский хлеб\"','0','0'),('2576685','382092','Пряники заварные Кокосовые АО \"Покровский хлеб\"','0','0'),('2576686','382092','Пряники заварные Уральская ярмарка АО \"Покровский хлеб\"','0','0'),('2576687','382092','Пряники заварные малые АО \"Покровский хлеб\"','0','0'),('2576688','382092','Пряники заварные с арахисом АО \"Покровский хлеб\"','0','0'),('2577252','381796','Хлеб Белый 1сорт','24','0'),('2577253','381796','Хлеб Белый 1сорт','0','0'),('2577254','381796','Хлеб Уральский новый подовый','0','4'),('2577255','381796','Хлеб Уральский новый подовый','0','0'),('2577256','381796','Хлеб Уральский новый подовый','35','4'),('2577257','381796','Хлеб Уральский новый подовый','0','0'),('2577258','381796','Хлеб Станичный','24','0'),('2577259','381796','Хлеб Станичный','0','0'),('2577260','381796','Хлеб Баварский подовой','0','0'),('2577261','381796','Хлеб Баварский нарезанный','0','0'),('2577262','381796','Хлебец Заварной тминный с семенем подсолнечника  нарезанный','0','0'),('2577263','381796','Хлебец Черногорский с черносливом нарезанный','6','0'),('2577264','381796','Батон Подмосковный нарезанный','0','0'),('2577265','381796','Хлебец Бородинский новый','0','0'),('2577266','381796','Хлебец Бородинский новый нарезанный','0','0'),('2577267','381796','Булка Городская в/c','40','0'),('2577268','381796','Булка Городская в/c','0','0'),('2577269','381796','Батон Нарезной в/c','42','0'),('2577270','381796','Батон Нарезной в/c','0','0'),('2577271','381796','Батон Федоровский нарезанный','0','0'),('2577272','381796','Хлеб Рощинский (с отрубями)','0','0'),('2577273','381796','Сдоба Свердловская','12','0'),('2577274','381796','Штрудель с фруктовым вкусом','0','0'),('2577275','381796','Фаготтини с сырной начинкой','0','0'),('2577276','381796','Рогалики','0','0'),('2577277','381796','Рогалик Аппетитный','0','0'),('2577278','381796','Рогалики','0','0'),('2577279','381796','Рогалик Аппетитный','0','0'),('2577280','381796','Булочка с арахисом','0','0'),('2577281','381796','Булочка с яблочной начинкой','6','0'),('2577282','381796','Плюшка Молочная с сахаром','6','0'),('2577283','381796','Слойка  с сахаром','15','0'),('2577284','381796','Рулетик с курагой','0','0'),('2577285','381796','Рустини с сыром','0','0'),('2577286','381796','Хлеб Зерновой с кальцием (витаминизированный)','0','0'),('2577287','381796','Батон Нарезной нарезанный в полиэтиленовом пакете','7','0'),('2577288','381796','Хлеб Уральский новый П/П нарезанный половинка','0','0'),('2577289','381796','Хлеб для тостов','0','0'),('2577290','381796','Булка Итальянская ржаная б/п.ламинированный','0','0'),('2577291','381796','Хлеб для тостов','0','0'),('2577292','381796','Хлеб Риталио б/п ламинированный','0','0'),('2577293','381796','Батон Зерновой нарезанный','0','0'),('2577294','381796','Рулетик сдобный с маковой начинкой','0','0'),('2577295','381796','Хлеб Уральский новый п/п нарезанный','0','0'),('2577296','381796','Хлеб Уральский новый п/п нарезанный','0','0'),('2577297','381796','Слойка с вареной сгущенкой','0','0'),('2577298','381796','Хачапури','0','0'),('2577299','381796','Хлеб Мультизлак нарезанный','0','0'),('2577300','381796','Хлеб Гречневъ нарезанный','0','0'),('2577301','381796','Батон Старорусский нарезанный','0','0'),('2577302','381796','Батон Молочный нарезанный','0','0'),('2577303','381796','Штрудель со вкусом персика','14','0'),('2577304','381796','Булочка трактирная','0','0'),('2577305','381796','Сдоба с изюмом','0','0'),('2577306','381796','Булочка Вкусняшка','6','0'),('2577307','381796','Хлеб Чемпион-Лидер нарезанный','0','0'),('2577308','381796','Фаготтини со вкусом шоколада и  лесного  ореха','10','0'),('2577309','381796','Слойка Сластена с вареной сгущенкой','0','0'),('2577310','381796','Хлеб Мультисид нарезанный 1 Цех','0','0'),('2577311','381796','Лаваш Армянский','0','0'),('2577312','381796','Лаваш Армянский','0','0'),('2577313','381796','Лаваш Грузинский','0','0'),('2577314','381796','Булка Итальянская рж ПФ ВСГ заморозка','0','0'),('2577315','381796','Полуфабрикат хлебобулочных изделий высокой степени готовности, замороженный:Хлебец Чиабаттини 68,2 %','0','0'),('2577330','381796','Кулич Воскресный','0','0'),('2577331','381796','Батон Подмосковный нарезанный','0','0'),('2577332','381796','Хлебец Бородинский новый','12','0'),('2577333','381796','Кулич Воскресный 200','0','0'),('2577334','381796','Батон Утренний','0','0'),('2577335','381796','Батон Утренний нарезанный','0','0'),('2577336','381796','Рулетик со сливочным вкусом','0','0'),('2577337','381796','Хлебец Бездрожжевой','5','0'),('2577338','381796','Сдоба Маковка','6','0'),('2577339','381796','Сдоба Свердловская','0','0'),('2577340','381796','Фаготтини с сырной начинкой','0','0'),('2577341','381796','Рулетик с курагой','6','0'),('2577342','381796','Штрудель с творогом','0','0'),('2577343','381796','Слойка с ванильно-сливочным вкусом','0','0'),('2577344','381796','Булочка Сдобное утро','12','0'),('2577345','381796','Хлеб Белый 1 сорт формовой в упаковке (нарезанная часть изделия)','0','0');
/*!40000 ALTER TABLE `daysordermovecontent_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daysordermoverole`
--

DROP TABLE IF EXISTS `daysordermoverole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `daysordermoverole` (
  `daysordermoveroleid` bigint(11) NOT NULL DEFAULT '50',
  `userid` bigint(11) DEFAULT NULL,
  `roleid` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`daysordermoveroleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daysordermoverole`
--

LOCK TABLES `daysordermoverole` WRITE;
/*!40000 ALTER TABLE `daysordermoverole` DISABLE KEYS */;
INSERT INTO `daysordermoverole` VALUES (1,-45,1),(2,-46,1),(50,3,1);
/*!40000 ALTER TABLE `daysordermoverole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daysordermoveuser`
--

DROP TABLE IF EXISTS `daysordermoveuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `daysordermoveuser` (
  `daysordermoveuserid` int(11) DEFAULT '50',
  `userid` bigint(11) NOT NULL AUTO_INCREMENT,
  `cntkod` varchar(128) DEFAULT NULL,
  `pass` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daysordermoveuser`
--

LOCK TABLES `daysordermoveuser` WRITE;
/*!40000 ALTER TABLE `daysordermoveuser` DISABLE KEYS */;
INSERT INTO `daysordermoveuser` VALUES (4,-46,'10004','$2a$2a$10$2hzXTHC2MvVxnksWNxQ.8u.EodlNKxBlp282NoOgh/IBzWPaGIXyG'),(5,-45,'10005','$2a$10$Fqeqr/QcQaql76YhP/3VheI/ql912YQ1m08lJg.z7Dj5ATvbKy/ru'),(50,3,'1158','$2a$10$UeINC5Ah1KfeY85qNAlrHuTUbcXQ3Kt1j2JuToyQjudfeDggo10yO');
/*!40000 ALTER TABLE `daysordermoveuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domroleview`
--

DROP TABLE IF EXISTS `domroleview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `domroleview` (
  `roleid` bigint(20) NOT NULL,
  `rolename` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domroleview`
--

LOCK TABLES `domroleview` WRITE;
/*!40000 ALTER TABLE `domroleview` DISABLE KEYS */;
INSERT INTO `domroleview` VALUES (1,'ROLE_USER');
/*!40000 ALTER TABLE `domroleview` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-23 21:43:34