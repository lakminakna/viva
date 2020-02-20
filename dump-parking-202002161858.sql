-- MySQL dump 10.13  Distrib 5.7.29, for osx10.14 (x86_64)
--
-- Host: localhost    Database: parking
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Akna','Lakmini',702222222,'lakminakna','akna','2019-11-12 10:12:32',NULL),(2,'Sahan','Madusankaa',705555556,'sahan','sahan','2020-01-26 20:04:46','2020-01-26 14:34:46'),(3,'keshani','perera',703333333,'keshani','keshani','2019-11-12 10:16:04',NULL),(4,'thushi','walter',705555555,'thushi','thushi','2019-11-16 16:35:05',NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_no` int(10) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'lahiru','lahiru','lahiru@gmail.com',982345674,'Size of each parking space\r\n• Size and design of driving and turning lanes\r\n• Layout and topography ','2019-11-16 16:38:31'),(2,'malmi','malmi','malmi@gmail.com',983445678,'Size of each parking space\r\n• Size and design of driving and turning lanes\r\n• Layout and topography of the land\r\n• Other factors such as handicap-accessible parking\r\nand surface of the lot/field','2019-11-16 16:39:44'),(3,'sanduni','sanduni','sanduni@gmail.com',984556738,'Size of each parking space\r\n• Size and design of driving and turning lanes\r\n• Layout and topography of the land\r\n• Other factors such as handicap-accessible parking\r\nand surface of the lot/field','2019-11-16 16:40:25'),(4,'pasan','pasan','pasan',972334587,'Size of each parking space\r\n• Size and design of driving and turning lanes\r\n• Layout and topography of the land\r\n• Other factors such as handicap-accessible parking\r\nand surface of the lot/field','2019-11-16 16:41:08'),(5,'sachi','sachi','sachi@gmail.com',987664982,'Size of each parking space\r\n• Size and design of driving and turning lanes\r\n• Layout and topography of the land\r\n• Other factors such as handicap-accessible parking\r\nand surface of the lot/field','2019-11-16 16:41:40');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `licence_id` varchar(20) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` blob,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'supunaa','supuna','Male',711124578,'Maharagama','2323','232323456v','supun@gmail.com',NULL,'supun','supun','2020-01-26 20:12:00','2020-01-26 14:42:00'),(2,'madhura','madhura','Male',705555555,'Pannipitiya','55792','459826776v','madhura@gmail.com',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\Z(,%!1!%)+... 383,7(-.+\n\n\n\r\Z-%%----+-+-----------7+---7------------+77---7-7+-++7��\0\0�\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0@\0\0\0\0\0\0\0!1AQq\"a�����2��#3BRbr�\�\��4Ccs����\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0!\0\0\0\0\0\0\0\0\0\0\01!\"A2Q�\�\0\0\0?\0���(}%��\�0\�S�\�Yko�\� \�x��\�\�/.s�n\�~\'ħ�z\�\�ck��:i<���a\�uj\�Ȳ�\�v\�6x�	�>�H\�\�ɕy�C��#���G* q\���H-\'rI�\�a�\�ٗY��\�<G@�\�ྫfv\�A ��0\'N\���\��t�6�\"\'\�({�%��6��8�R0�o��o��F\�\�\�m>{��WV\"@\0�G\�\� ��ߢ\��Q \�x^׈/G���� ϊ\�����1h��\���\�\�X<>�\�6\�k���.\�|8�y�7\�Q\�(8W\�+Sv�\0~��<�s ��\�9�C����s*\�\�\�,\�\�)/�\�\� �2��VI�}�\nS��\�T8.39v���wӪ�O��\�>\�\�@`�u��s\�F7\�\�1/n\���&\�\�R�\��)eiq�5\�G�\��J\�~r�\����$�ɛ��\0�\�iݠ�B\�\�-I\�HU��\\����Jx0\����J\��\�\�eZ�$*�0Ҋ�ʥ�6)l8�$v��·\��\�\��i\�}�	��ΞWߗ�Q�&�\����\�~-�\�GҸ\n\�\�R~��\�\�\0��\n�SG\�Р\��\�c}\�\�[U���*�75�E�����1\�\��q�FI�\�,��c\�]\��?\�{�nʰ�\�7�����L\�Q�i�N��e��\�W��`Zx[\�K��8\��\Z��]�R�3�\"\0\�`I16�X\�\�\�\�@\�DZ\�0RR)��\r\�q\���\��\��*ǳ�\�@\��T\�B�z\�邻T��f\�h���\r?\�q���G\�%GV\��\�9$1��G\��\�\�3��5`�,#\�~(\Z	I1,���\�^�\0~0\�S\��c\�τ\�Kڂ[> �<�.)�\�\�>�q\�0ے[$\r\�;��?\�x{\�T��\�g51B���\�=\�\�=Ӱw\�#�T��J..����\�\���\�\r\�/)\�+v�	�Ju\'~\���ž�<�\�#����\�\�\�6�lTc�Iƙ7�VKPm�4���^_���u�\�+|6��\�\�\�\�)�3K\�Z\�Si&\�\���-Ќ�ju(��E_hX@m;7\\ɞ:l�\'*k�\r\�F\�\�oK\n\�鍉\0���H\�$��ɏ���\�ʚN�Z\�ݰ��\�1dU�Ӣ�V\�O@/q\�\�d*TI\�:\�Bߣ!�S8���ÒG9+�u\Z`8Ǒ��v~r\�aC�t�[�\�}ٜmP����,_\�\�k\�\'p\�N�k�\�M���iT�]\�s�\� d�\�8rM�P\�<򱺭C,\r$���G)\�И\�\�ԥ\��!�ZA��=\�	k@�e\�&l̀�j\�v�Ǒp\�=�P�xU\�{\�I�Uo\'=Z�gK�����1��ǐ\0z&5n?\"�;;����f�okI\�tK|>��0��(��I�\�C4\�A cK�\�E�ܺ�@;���L��\r�\�<��sg�rfDr�J \�Q�o|�4\�\��P85\�=U�J�\�Ԑ\�*xgjZ\�p:+\�T\�a#P��\�kΓ<�L+��\'d7\�\�跛	o����Y�\ZwA��!\�6D`�;���wl��\0��\��\�j*8*Z\��\�CG���WL\��?\�\�<�?g�0\�(\�{ˁ\�\Z�޿8�\�plVL�c&Y��t�0\�րz\��*ڀ�Z�\�f,X�t\� v\�f.��\0E����\����\�\�o�\�\�v��Q�?�e�\�䗕Z� \n�\�{+�\�L�A�b����\\\�P3\�E���1\�n[s�\�\�.�ⱔ\�g8L\�\�\�W�l\�\�\�\0s\"aqI���MZ�:�\��+�]��E�W\�\0��G2W�R�.l[cׂ#tkar\� -jV��s5YR�}7H���*�\\#�)������\�\�z�\na�kF�\0<��볘k��7\r%�\0�\���zJ�\n�\�\�r̕�\'1bŋ�;�LՅď���J\"U\��>#�����ZgV\�\��j��D0/�\�b)�Æ\�\�\�\\�R\"��%\�\�E�[\�r�uN�\r\'��U!�Qh\Z\�\�9\"�\\N�W\�t�\�T��n\�P?U��YM<���ZG\0�[�h&B牤\�p�٥��8Up�V��W1>�B�O�7~̢�\'�v�\�\�\�ٸy\�O\�z ^S�cN\�\�f��Ӽ\�\�\�*\��Z\\\�I\�ŵiȱ�\�W���\�c:\�ΕP\�H �|\�\�8A*�3N���kF�\��qH��kkԑN)���<�\n��jy.6��q��r\�8杶k\�):��\rn������(\'5\�U�kZe!��wn\�P\�]͟\�覆�l|�\n\\\�jE|xE\�\�\�i\"\�\�G$\'���\�L�\�Tj�\�֘�8p\�$�K\�\�\�\�o�O$^�a1�?zP��9��n�\��J�|]v�\�\�mޝ^0�\�93$\�=|����t�n~J�\�\�x0u6\�zl\�U�V�\�d]A\�\\\�39�\�N�x��.�JGw��p\�\�`E7H��\�\�~H�)\�\�\�/No�=ۺ\���\�o9\�I\�\��+�8>��o{\�I�-\�v!�*\�g���[ނ\�)m\�X4 ��Q�\�','madhura','madhura','2019-11-12 10:36:25',NULL),(3,'malee','malee','Female',703333333,'Kottawa','55792','124578964v','malee@gmail.com',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\Z\Z( \Z%%1!%)+...383,7(9.+\n\n\n\r\r\r\r\r---7+-7++++-7+77+7-7+7++7--+-7++7-+-++7+-+-++-+7++-��\0\0`\0`\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\05\0\0\0\0\0\0\0!1AQa\"q����2R\��$Bcs���C�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0?\0�/��\��\�0�E8wuMDq4\\�\�\�;�\�n��\�@3Mqm3�\�\�؞+$ҺY\\_+�\�S?\�f$\�T#?\�ӴC\�fh]\�]}R#\�r��b~cwu����\�\�j\�\��q�w-\0��Y\�<�\��F\�3�\�,��\�j͢����l{VA\�}�D#55n�\0\�����\� Y=�h$`\�G\�\'��\��\�1�˟����(p�}\�u�\�l��\�~�0��.:\�E��\�.\�c�ͣ�r�꜡\�\�&�4l�k�t:*���]C\�\����\�\�\�h2�F\�\�\"\�1\�h��p�\�!\���Ar%�\�>Go��1MX$\���+����\��ҭ��w�\0\0��O���\�}9�f��N�9��\�\�\��I��o��at�h\�m&	$d_Cn�\'<:�σ?e�ik{�xi\�+[m\�\\Z\�>\"O@��6t_]\�\Z�	k\�\�\�\�\��\�~\�\�\�\'؉k\�r��J�\�U��\"��Z\�ە1\�b\�����q�}4�\�e�\�褳*\�\�\�d�\�l\ZI\�rz]*�\�2��\��<\�sy5���o\�b�%`\�\�w��\�q.�9��ݤ{�ہ\��\�Do\�{#����\�s��\�\���\�\�y\�ŏ���@\�V�Q\�H\r\���|b\�(�S�{*���^�\�n+�2\��[b<:z #�\�\�O�\�^FḒ\'N���W\�:��TjB���?\�Q19-su:�vg;�(	RԺ�r^Hscs\�o\�\0�\�\�]�,k�h\�\�\�i&\�\\wq\�\�{w���~\�\�\�#�\�\\��j\�b+�A\� hw=�\��\0\�b���B; qFQ\ZAG��\\\��[�p�G^\�i<��6B�&����r6�*O���m�.D\�e�Oq�-�X��]tc�#��+\�T$9��\��q�\�)+��ne)�/�Ns\�q1�1�\�:t��];̲xX<V����\�i\0\�#{�#��r|\�\��51��\�\�\�\���WFE�\0)�۩ֿ�Wp����\�7�K\�\��S�5��\��n_#�	�#�\0|�(�#\�\�?�\\�\�>$eh���8��(�w�U>\�a��h`Ȼ�̞�H\'o\�c,l�\�\�\\G6\�`V�\�\0�ٝ���ݬ���,�.�!��\��\�f�wJ\�O`� \�Jp|E\�\���IPѢ���t\�10Z&\0\�S\�W�k#{Z\�8�֓��/���\�q DyE�;K\�\0�IuY\'���\�','malee','malee','2019-11-12 10:42:25',NULL),(4,'lahiru','lahiru','Male',703333333,'Matara','89709','875462389v','lahiru@gmail.com',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\Z(,%!1!%)+... 383,7(-.+\n\n\n\r\Z-%%----+-+-----------7+---7------------+77---7-7+-++7��\0\0�\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0@\0\0\0\0\0\0\0!1AQq\"a�����2��#3BRbr�\�\��4Ccs����\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0!\0\0\0\0\0\0\0\0\0\0\01!\"A2Q�\�\0\0\0?\0���(}%��\�0\�S�\�Yko�\� \�x��\�\�/.s�n\�~\'ħ�z\�\�ck��:i<���a\�uj\�Ȳ�\�v\�6x�	�>�H\�\�ɕy�C��#���G* q\���H-\'rI�\�a�\�ٗY��\�<G@�\�ྫfv\�A ��0\'N\���\��t�6�\"\'\�({�%��6��8�R0�o��o��F\�\�\�m>{��WV\"@\0�G\�\� ��ߢ\��Q \�x^׈/G���� ϊ\�����1h��\���\�\�X<>�\�6\�k���.\�|8�y�7\�Q\�(8W\�+Sv�\0~��<�s ��\�9�C����s*\�\�\�,\�\�)/�\�\� �2��VI�}�\nS��\�T8.39v���wӪ�O��\�>\�\�@`�u��s\�F7\�\�1/n\���&\�\�R�\��)eiq�5\�G�\��J\�~r�\����$�ɛ��\0�\�iݠ�B\�\�-I\�HU��\\����Jx0\����J\��\�\�eZ�$*�0Ҋ�ʥ�6)l8�$v��·\��\�\��i\�}�	��ΞWߗ�Q�&�\����\�~-�\�GҸ\n\�\�R~��\�\�\0��\n�SG\�Р\��\�c}\�\�[U���*�75�E�����1\�\��q�FI�\�,��c\�]\��?\�{�nʰ�\�7�����L\�Q�i�N��e��\�W��`Zx[\�K��8\��\Z��]�R�3�\"\0\�`I16�X\�\�\�\�@\�DZ\�0RR)��\r\�q\���\��\��*ǳ�\�@\��T\�B�z\�邻T��f\�h���\r?\�q���G\�%GV\��\�9$1��G\��\�\�3��5`�,#\�~(\Z	I1,���\�^�\0~0\�S\��c\�τ\�Kڂ[> �<�.)�\�\�>�q\�0ے[$\r\�;��?\�x{\�T��\�g51B���\�=\�\�=Ӱw\�#�T��J..����\�\���\�\r\�/)\�+v�	�Ju\'~\���ž�<�\�#����\�\�\�6�lTc�Iƙ7�VKPm�4���^_���u�\�+|6��\�\�\�\�)�3K\�Z\�Si&\�\���-Ќ�ju(��E_hX@m;7\\ɞ:l�\'*k�\r\�F\�\�oK\n\�鍉\0���H\�$��ɏ���\�ʚN�Z\�ݰ��\�1dU�Ӣ�V\�O@/q\�\�d*TI\�:\�Bߣ!�S8���ÒG9+�u\Z`8Ǒ��v~r\�aC�t�[�\�}ٜmP����,_\�\�k\�\'p\�N�k�\�M���iT�]\�s�\� d�\�8rM�P\�<򱺭C,\r$���G)\�И\�\�ԥ\��!�ZA��=\�	k@�e\�&l̀�j\�v�Ǒp\�=�P�xU\�{\�I�Uo\'=Z�gK�����1��ǐ\0z&5n?\"�;;����f�okI\�tK|>��0��(��I�\�C4\�A cK�\�E�ܺ�@;���L��\r�\�<��sg�rfDr�J \�Q�o|�4\�\��P85\�=U�J�\�Ԑ\�*xgjZ\�p:+\�T\�a#P��\�kΓ<�L+��\'d7\�\�跛	o����Y�\ZwA��!\�6D`�;���wl��\0��\��\�j*8*Z\��\�CG���WL\��?\�\�<�?g�0\�(\�{ˁ\�\Z�޿8�\�plVL�c&Y��t�0\�րz\��*ڀ�Z�\�f,X�t\� v\�f.��\0E����\����\�\�o�\�\�v��Q�?�e�\�䗕Z� \n�\�{+�\�L�A�b����\\\�P3\�E���1\�n[s�\�\�.�ⱔ\�g8L\�\�\�W�l\�\�\�\0s\"aqI���MZ�:�\��+�]��E�W\�\0��G2W�R�.l[cׂ#tkar\� -jV��s5YR�}7H���*�\\#�)������\�\�z�\na�kF�\0<��볘k��7\r%�\0�\���zJ�\n�\�\�r̕�\'1bŋ�;�LՅď���J\"U\��>#�����ZgV\�\��j��D0/�\�b)�Æ\�\�\�\\�R\"��%\�\�E�[\�r�uN�\r\'��U!�Qh\Z\�\�9\"�\\N�W\�t�\�T��n\�P?U��YM<���ZG\0�[�h&B牤\�p�٥��8Up�V��W1>�B�O�7~̢�\'�v�\�\�\�ٸy\�O\�z ^S�cN\�\�f��Ӽ\�\�\�*\��Z\\\�I\�ŵiȱ�\�W���\�c:\�ΕP\�H �|\�\�8A*�3N���kF�\��qH��kkԑN)���<�\n��jy.6��q��r\�8杶k\�):��\rn������(\'5\�U�kZe!��wn\�P\�]͟\�覆�l|�\n\\\�jE|xE\�\�\�i\"\�\�G$\'���\�L�\�Tj�\�֘�8p\�$�K\�\�\�\�o�O$^�a1�?zP��9��n�\��J�|]v�\�\�mޝ^0�\�93$\�=|����t�n~J�\�\�x0u6\�zl\�U�V�\�d]A\�\\\�39�\�N�x��.�JGw��p\�\�`E7H��\�\�~H�)\�\�\�/No�=ۺ\���\�o9\�I\�\��+�8>��o{\�I�-\�v!�*\�g���[ނ\�)m\�X4 ��Q�\�','lahiru','lahiru','2019-11-13 08:07:31',NULL),(5,'Nimna','Perera','Male',711234567,'pettah','12345','983050311V','nimnaperera98@gmail.com',NULL,'nimna','nimna','2020-01-12 13:47:27',NULL),(6,'Nimna','Perera','Male',711234567,'pettah','123456','983050310V','nimnaperera981@gmail.com',NULL,'nimna1','nimna','2020-01-12 13:51:03',NULL);
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landowners`
--

DROP TABLE IF EXISTS `landowners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landowners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` longblob,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landowners`
--

LOCK TABLES `landowners` WRITE;
/*!40000 ALTER TABLE `landowners` DISABLE KEYS */;
INSERT INTO `landowners` VALUES (1,'saman','saman','Male',715555555,'984578994v','saman@gmail.com','','sahan','sahan',0,'2020-01-26 19:55:39','2020-01-26 14:25:39'),(2,'waruni','waruni','Female',712222888,'124578964v','waruni@gmail.com','','waruni','waruni',1,'2019-11-16 16:29:44',NULL),(3,'mahela','mahela','Male',705555555,'214578994v','mahela@gmail.com','','mahela','mahela',1,'2019-11-16 16:29:58',NULL),(4,'Pawan','Pawan','Male',703333333,'124578964v','pawan@gmail.com','','Pawan','Pawan',0,'2019-11-16 16:00:24',NULL),(5,'pika','pika','Female',705522881,'214578994v','pika@yahoomail.com','','pika','pika',1,'2019-11-16 16:06:57',NULL),(6,'kalpi','kalpi','Female',112523785,'459862138v','kalpi@ymail.com','','kalpi','kalpi',1,'2019-11-16 16:29:17',NULL),(7,'keshani','keshani','Female',754861236,'856214523v','keshani@gmail.com','','keshani','keshani',1,'2019-11-16 16:31:07',NULL),(8,'upul','upul','Male',705555555,'214578994v','upul@gmail.com','','upul','upul',1,'2019-11-16 16:33:52',NULL),(9,'kapila','kapila','Male',703333333,'124578964v','kapila@gmail.com','','kapila','kapila',0,'2019-11-16 16:32:05',NULL),(10,'pasan','pasan','Male',703333333,'124578964v','pasan@yahomail.com','','','',0,'2019-11-16 16:44:30',NULL),(11,'Nimna','Perera','Male',711234567,'983050310V','nimnaperera98@gmail.com',NULL,'nimna','nimna',0,'2020-01-12 13:01:59',NULL),(12,'Nimna','Perera','Male',711234567,'983050311V','nimnaperera981@gmail.com',NULL,'nimna1','nimna1',0,'2020-01-12 13:05:02',NULL);
/*!40000 ALTER TABLE `landowners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (20,'2014_10_12_000000_create_users_table',1),(21,'2014_10_12_100000_create_password_resets_table',1),(22,'2019_08_19_000000_create_failed_jobs_table',1),(23,'2019_09_14_082315_create_contacts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opentimes`
--

DROP TABLE IF EXISTS `opentimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opentimes` (
  `parking_space_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `open_from` time NOT NULL,
  `open_till` time NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`parking_space_id`,`date`),
  CONSTRAINT `parking_space_opentime` FOREIGN KEY (`parking_space_id`) REFERENCES `parking_spaces` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opentimes`
--

LOCK TABLES `opentimes` WRITE;
/*!40000 ALTER TABLE `opentimes` DISABLE KEYS */;
INSERT INTO `opentimes` VALUES (22,'Friday','12:59:00','12:59:00','2020-02-16 06:45:48','2020-02-16 06:45:48'),(22,'Monday','12:59:00','12:59:00','2020-02-16 06:45:48','2020-02-16 06:45:48'),(22,'Saturday','12:59:00','12:59:00','2020-02-16 06:45:48','2020-02-16 06:45:48'),(22,'Sunday','12:59:00','12:59:00','2020-02-16 06:45:48','2020-02-16 06:45:48'),(22,'Thursday','12:59:00','12:59:00','2020-02-16 06:45:48','2020-02-16 06:45:48'),(22,'Tuesday','12:59:00','12:59:00','2020-02-16 06:45:48','2020-02-16 06:45:48'),(22,'Wednesday','12:59:00','12:59:00','2020-02-16 06:45:48','2020-02-16 06:45:48'),(23,'Friday','12:59:00','12:59:00','2020-02-16 06:47:27','2020-02-16 06:47:27'),(23,'Monday','12:59:00','12:59:00','2020-02-16 06:47:27','2020-02-16 06:47:27'),(23,'Saturday','12:59:00','12:59:00','2020-02-16 06:47:27','2020-02-16 06:47:27'),(23,'Sunday','12:59:00','12:59:00','2020-02-16 06:47:27','2020-02-16 06:47:27'),(23,'Thursday','12:59:00','12:59:00','2020-02-16 06:47:27','2020-02-16 06:47:27'),(23,'Tuesday','12:59:00','12:59:00','2020-02-16 06:47:27','2020-02-16 06:47:27'),(23,'Wednesday','12:59:00','12:59:00','2020-02-16 06:47:27','2020-02-16 06:47:27');
/*!40000 ALTER TABLE `opentimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_spaces`
--

DROP TABLE IF EXISTS `parking_spaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking_spaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `landowner_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `is_reservation_on` tinyint(1) NOT NULL DEFAULT '0',
  `image_url` varchar(200) DEFAULT NULL,
  `description` longtext NOT NULL,
  `poya` varchar(11) DEFAULT '0',
  `bank` varchar(11) DEFAULT '0',
  `public` varchar(11) DEFAULT '0',
  `verified` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parking_space_landowner` (`landowner_id`),
  KEY `parking_space_admin` (`admin_id`),
  CONSTRAINT `parking_space_admin` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `parking_space_landowner` FOREIGN KEY (`landowner_id`) REFERENCES `landowners` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_spaces`
--

LOCK TABLES `parking_spaces` WRITE;
/*!40000 ALTER TABLE `parking_spaces` DISABLE KEYS */;
INSERT INTO `parking_spaces` VALUES (22,1,NULL,'Test','wewefd',0,0,0,'1581855348.jpg','ewefe',NULL,NULL,NULL,NULL,'2020-02-16 06:45:48','2020-02-16 06:45:48'),(23,1,NULL,'sdfvdsfv','sdfvdfv',0,0,0,'1581855447.jpg','dfvsdfv',NULL,NULL,NULL,NULL,'2020-02-16 06:47:27','2020-02-16 06:47:27');
/*!40000 ALTER TABLE `parking_spaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_vehicle_types`
--

DROP TABLE IF EXISTS `parking_vehicle_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking_vehicle_types` (
  `parking_space_id` int(11) NOT NULL,
  `vehicle_type` varchar(150) NOT NULL,
  `total_no_of_vehicles` int(11) NOT NULL,
  `no_of_vehicles_parked` int(11) DEFAULT NULL,
  `number_reserved` int(11) NOT NULL,
  `amount_per_hour` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`parking_space_id`,`vehicle_type`),
  CONSTRAINT `parking_space_type` FOREIGN KEY (`parking_space_id`) REFERENCES `parking_spaces` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_vehicle_types`
--

LOCK TABLES `parking_vehicle_types` WRITE;
/*!40000 ALTER TABLE `parking_vehicle_types` DISABLE KEYS */;
INSERT INTO `parking_vehicle_types` VALUES (22,'Bike',10,2,1,50,'2020-02-16 12:43:04'),(22,'Car',15,4,6,200,'2020-02-16 12:43:04');
/*!40000 ALTER TABLE `parking_vehicle_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('sahannett@gmail.com','$2y$10$4p8MJAQ08IeSIMPpgLKIruaEtsiWooONEDI6bswrVQwhKEe4zTmfe','2019-09-25 21:52:53');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `parking_space_id` int(11) NOT NULL,
  `duration_from` datetime NOT NULL,
  `duration_to` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `vehicle_type` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservation_driver` (`driver_id`),
  KEY `reservation_parking_space` (`parking_space_id`),
  CONSTRAINT `reservation_driver` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `reservation_parking_space` FOREIGN KEY (`parking_space_id`) REFERENCES `parking_spaces` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `parking_space_id` int(11) NOT NULL,
  `review` varchar(1000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_driver` (`driver_id`),
  KEY `reviws_parking_space` (`parking_space_id`),
  CONSTRAINT `reviews_driver` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `reviws_parking_space` FOREIGN KEY (`parking_space_id`) REFERENCES `parking_spaces` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sahan madusanka','sahannett@gmail.com',NULL,'$2y$10$qBlcuHWk.1JV3wqVjvto2.l5.z1LliuEMaI0h5W/8wgTsR3ati0si',NULL,'2019-09-25 21:43:47','2019-09-25 21:43:47'),(2,'Sahan','sahan@gmail.com',NULL,'$2y$10$2rjEIXYaptQXroU28ZO5buaGuw5g9q6hQaUoQv36UZCVjYSmlgzQ2',NULL,'2019-10-03 21:15:17','2019-10-03 21:15:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `vehicle_no` varchar(7) NOT NULL,
  `type` varchar(100) NOT NULL,
  `colour` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `vehicle_owner` (`driver_id`),
  CONSTRAINT `vehicle_owner` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,2,'GH6754','toyata','white','2019-11-12 17:02:16'),(2,1,'BV4579','BMW','black','2019-11-12 17:02:59');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'parking'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-16 18:58:02
