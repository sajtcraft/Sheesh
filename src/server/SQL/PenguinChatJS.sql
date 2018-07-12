SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

DROP TABLE IF EXISTS `penguins`;
CREATE TABLE `penguins` (
	`id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Penguin ID',
	`username` varchar(12) NOT NULL COMMENT 'Penguin username',
	`password` char(255) NOT NULL COMMENT 'Penguin password in blake2s',
	`validation` char(255) NOT NULL DEFAULT '' COMMENT 'Custom validation',
	`moderator` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Penguin moderator',
	`ban` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Penguin banned',
	PRIMARY KEY (`id`),
	UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 COMMENT='Penguins';

LOCK TABLE `penguins` WRITE;
INSERT INTO `penguins` VALUES (100, 'Daan', '82a1424e827c594ec1a9392c4d0a2e455131a0897f5bbb44e5563260ab8f9151', '', 1, 0);
UNLOCK TABLES;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;