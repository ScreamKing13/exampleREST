-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: my_books
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `read_books`
--

DROP TABLE IF EXISTS `read_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `read_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_unique` (`id`),
  UNIQUE KEY `name_unique` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_books`
--

LOCK TABLES `read_books` WRITE;
/*!40000 ALTER TABLE `read_books` DISABLE KEYS */;
INSERT INTO `read_books` VALUES (1,'Город','В. Пидмогильный',NULL),(2,'Украина в огне','О. Довженко',NULL),(4,'Тигроловы','И. Багряный',NULL),(5,'Остров сокровищ','Р. Стивенсон',NULL),(6,'20000 лье под водой','Ж. Верн',NULL),(7,'Приключения Шерлока Холмса','А. К. Дойль',NULL),(8,'Пятнадцатилетний капитан','Ж. Верн',NULL),(9,'Таинственный остров','Ж. Верн',NULL),(10,'Жангада','Ж. Верн',NULL),(11,'Дети капитана Гранта','Ж. Верн',NULL),(12,'Вечера на хуторе близ Диканьки','Н. Гоголь',NULL),(13,'Миргород','Н. Гоголь',NULL),(14,'Мертвые души','Н. Гоголь',NULL),(15,'Ревизор','Н. Гоголь',NULL),(16,'Преступление и наказание','Ф. Достоевский',NULL),(17,'Красное и черное','Стендаль',NULL),(18,'Дон Кихот','М. де Сервантес',NULL),(19,'Капитанская дочь','А. Пушкин',NULL),(20,'Евгений Онегин','А. Пушкин',NULL),(21,'Божественная комедия','Д. Алигьери',NULL),(22,'На западном фронте без перемен','Э. М. Ремарк',NULL),(23,'Три товарища','Э. М. Ремарк',NULL),(24,'Жизнь взаймы','Э. М. Ремарк',NULL),(25,'1984','Дж. Оруэлл',NULL),(26,'Бездна','Дж. Роллинс',NULL),(27,'Амазония','Дж. Роллинс',NULL),(28,'Пещера','Дж. Роллинс',NULL),(29,'Песчаный дьявол','Дж. Роллинс',NULL),(30,'Последний оракул','Дж. Роллинс',NULL),(31,'Алтарь Эдема','Дж. Роллинс',NULL),(32,'Ангелы и демоны','Д. Браун',NULL),(33,'Код да Винчи','Д. Браун',NULL),(34,'Утраченый символ','Д. Браун',NULL),(35,'Инферно','Д. Браун',NULL),(36,'Артур и минипуты','Л. Бессон',NULL),(37,'Собор Парижской Богоматери','В. Гюго',NULL),(38,'Гранатовый браслет','А. Куприн',NULL),(39,'Чарли и шоколадная фабрика','Р. Дал',NULL),(40,'Маленький принц','А. Сент-Екзюпери',NULL),(41,'Незнайка на Луне','А. Носов',NULL),(42,'Старик Хоттабыч','Л. Лагин',NULL),(43,'Остров доктора Моро','Г. Уэльс',NULL),(44,'Три мушкетера','А. Дюма',NULL),(45,'Сорок пять','А. Дюма',NULL),(46,'Граф Монте-Кристо','А. Дюма',NULL),(47,'12 стульев','И. Ильф, Е. Петров',NULL),(48,'Золотой теленок','И. Ильф, Е. Петров',NULL),(49,'Анна Каренина','Л. Толстой',NULL),(50,'Мартин Иден','Дж. Лондон',NULL),(51,'Черная рада','П. Кулиш',NULL),(52,'Остров погибших кораблей','А. Белов',NULL),(53,'Человек-амфибия','А. Белов',NULL),(54,'Голова профессора Доуэля','А. Белов',NULL),(55,'Город заклинателей дождя','Т. Тимайер',NULL),(56,'Дворец Посейдона','Т. Тимайер',NULL),(57,'Стеклянное проклятие','Т. Тимайер',NULL),(58,'Эрагон 1','К. Паолини',NULL),(59,'Эрагон 2','К. Паолини',NULL),(60,'Эрагон 3','К. Паолини',NULL),(61,'Эрагон 4','К. Паолини',NULL),(62,'Гарри Поттер и философский камень','Дж. Роулинг',NULL),(63,'Гарри Поттер и тайная комната','Дж. Роулинг',NULL),(64,'Гарри Поттер и узник Азкабана','Дж. Роулинг',NULL),(65,'Гарри Поттер и кубок огня','Дж. Роулинг',NULL),(66,'Гарри Поттер и орден Феникса','Дж. Роулинг',NULL),(67,'Гарри Поттер и принц полукровка','Дж. Роулинг',NULL),(68,'Гарри Поттер и дары смерти','Дж. Роулинг',NULL),(69,'Айвенго','В. Скотт',NULL),(70,'Квентин Дорвард','В. Скотт',NULL),(71,'Мещанин во дворянстве','Мольер',NULL),(72,'Джейн Эйр','Ш. Бронте',NULL),(73,'Десять негритят','А. Кристи',NULL),(74,'Голодные игры 1','С. Коллинз',NULL),(75,'Голодные игры 2','С. Коллинз',NULL),(76,'Голодные игры 3','С. Коллинз',NULL),(77,'Бегущий в лабиринте 1','Дж. Дешнер',NULL),(78,'Бегущий в лабиринте 2','Дж. Дешнер',NULL),(79,'Бегущий в лабиринте 3','Дж. Дешнер',NULL),(80,'Северное сияние','Ф. Пулман',NULL),(81,'Мастер и Маргарита','М. Булгаков',NULL),(82,'Вильгельм Телль','Й. Шиллер',NULL),(83,'Крошка Цахес','Е. Гофман',NULL),(84,'Герой нашего времени','М. Лермонтов',NULL),(85,'Гобсек','О. де Бальзак',NULL),(86,'Пигмалион','Б. Шоу',NULL),(87,'Портрет Дориана Грея','О. Уальд',NULL),(88,'Превращение','Ф. Кафка',NULL),(89,'Чума','А. Камю',NULL),(90,'Старик и море','Э. Хемингуэй',NULL),(91,'Над пропастью во ржи','Дж. Селлинджер',NULL),(92,'Азазель','Б. Акунин',NULL),(93,'Левиафан','Б. Акунин',NULL),(94,'Смерть Ахилеса','Б. Акунин',NULL),(95,'Коронация или последний из Романов','Б. Акунин',NULL),(96,'Алмазная колесница','Б. Акунин',NULL),(97,'Любовница смерти','Б. Акунин',NULL),(98,'451 градус по Фаренгейту','Р. Брэдбери',NULL),(99,'Заводной апельсин','Э. Джорджес',NULL),(100,'Побег из Шоушенка','Ст. Кинг',NULL),(103,'Властелин колец: Братство кольца','Дж. Толкин',NULL),(104,'Властелин колец: Две твердыни','Дж. Толкин',NULL),(105,'Властелин колец: Возвращение короля','Дж. Толкин',NULL),(106,'Алхимик','П. Коэльо',NULL),(107,'Бойцовский клуб','Ч. Паланик',NULL),(108,'Повелитель мух','У. Голдинг',NULL),(109,'Милый друг','Ги де Мопассан',NULL),(110,'Великий Гэтсби','Ск. Фицджеральд',NULL),(111,'Убить пересмешника','Х. Ли',NULL),(112,'Гамлет','У. Шекспир',NULL),(114,'Грозовой перевал','Э. Бронте',NULL),(115,'Любовь живет три года','Фр. Бегбедер',NULL),(116,'Книжный вор','М. Зузак',NULL),(117,'О дивный новый мир','О. Хаксли',NULL),(118,'Трое в лодке, не считая собаки','Дж. Клапка',NULL),(119,'Война миров','Г. Уэллс',NULL),(120,'1Q84','Х. Мураками',NULL),(121,'Сапианс','Ю Харари',NULL),(123,'Мы','Е. Замятин','2018-08-15'),(124,'Мизери','Ст. Кинг',NULL);
/*!40000 ALTER TABLE `read_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-28 18:52:29
