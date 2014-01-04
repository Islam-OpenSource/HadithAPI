# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.9)
# Database: Hadith_API
# Generation Time: 2014-01-04 01:42:33 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Books`;

CREATE TABLE `Books` (
  `id` varchar(255) NOT NULL,
  `collection_id` varchar(255) DEFAULT NULL,
  `volume_number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `collection_id_idxfk` (`collection_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `Collections` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;

INSERT INTO `Books` (`id`, `collection_id`, `volume_number`, `name`, `author`, `source`)
VALUES
	('16b6e6aa-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',11,'The Rules Of Inheritence',NULL,'www.hadithcollection.com'),
	('16b6ebb4-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',12,'Gifts',NULL,'www.hadithcollection.com'),
	('16b6ed4e-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',13,'Bequests',NULL,'www.hadithcollection.com'),
	('16b6eeb6-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',14,'Vows',NULL,'www.hadithcollection.com'),
	('16b6f00a-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',15,'Oath',NULL,'www.hadithcollection.com'),
	('16b6f122-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',16,'The Oath, Establishing Responsibilities Of Murders, Fighting, Requital',NULL,'www.hadithcollection.com'),
	('16b6f262-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',17,'Punishments Prescribed By Islam',NULL,'www.hadithcollection.com'),
	('16b6f38e-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',18,'Judicial Decisions',NULL,'www.hadithcollection.com'),
	('16b6f4d8-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',19,'Jihad and Expedition',NULL,'www.hadithcollection.com'),
	('16b6f622-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',20,'On Government',NULL,'www.hadithcollection.com'),
	('2dc53950-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',61,'Virtues of The Qur\'an',NULL,'www.hadithcollection.com'),
	('2dc53d06-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',62,'Wedlock, Marriage (Nikah)',NULL,'www.hadithcollection.com'),
	('2dc53e1e-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',63,'Divorce',NULL,'www.hadithcollection.com'),
	('2dc53f04-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',64,'Supporting the Family',NULL,'www.hadithcollection.com'),
	('2dc53fea-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',65,'Food, Meals',NULL,'www.hadithcollection.com'),
	('2dc540e4-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',66,'Sacrifice on Occasion of Birth (Aqiqah)',NULL,'www.hadithcollection.com'),
	('2dc541ac-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',67,'Hunting, Slaughtering',NULL,'www.hadithcollection.com'),
	('2dc54274-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',68,'Al-Adha Festival Sacrifice (Adaahi)',NULL,'www.hadithcollection.com'),
	('2dc54346-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',69,'Drinks',NULL,'www.hadithcollection.com'),
	('2dc5440e-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',70,'Patients',NULL,'www.hadithcollection.com'),
	('37b1a1a2-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',1,'Faith',NULL,'www.hadithcollection.com'),
	('37b1a76a-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',2,'Purification',NULL,'www.hadithcollection.com'),
	('37b1a896-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',3,'Menstruation',NULL,'www.hadithcollection.com'),
	('37b1a9ae-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',4,'Prayer',NULL,'www.hadithcollection.com'),
	('37b1aab2-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',5,'Zakat',NULL,'www.hadithcollection.com'),
	('37b1b02a-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',6,'Fasting',NULL,'www.hadithcollection.com'),
	('37b1b0ca-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',7,'Pilgrimmage',NULL,'www.hadithcollection.com'),
	('37b1b16a-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',8,'Marriage',NULL,'www.hadithcollection.com'),
	('37b1b20a-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',9,'Divorce',NULL,'www.hadithcollection.com'),
	('37b1b2aa-728a-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',10,'Business Transactions',NULL,'www.hadithcollection.com'),
	('38b69616-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',41,'Loans, Payment of Loans, Freezing of Property, Bankruptcy',NULL,'www.hadithcollection.com'),
	('38b699e0-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',42,'Lost Things Picked up by Someone (Luqaata)',NULL,'www.hadithcollection.com'),
	('38b69aee-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',43,'Oppressions',NULL,'www.hadithcollection.com'),
	('38b69c38-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',44,'Partnership',NULL,'www.hadithcollection.com'),
	('38b69d3c-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',45,'Mortgaging',NULL,'www.hadithcollection.com'),
	('38b69e40-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',46,'Manumission Of Slaves',NULL,'www.hadithcollection.com'),
	('38b69f12-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',47,'Gifts',NULL,'www.hadithcollection.com'),
	('38b69fda-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',48,'Witnesses',NULL,'www.hadithcollection.com'),
	('38b6a0a2-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',49,'Peacemaking',NULL,'www.hadithcollection.com'),
	('38b6a17e-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',50,'Conditions',NULL,'www.hadithcollection.com'),
	('45c09fde-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',31,'The Merits Of The Companions (PBUT) Of The Holy Prophet (PBUH)',NULL,'www.hadithcollection.com'),
	('45c0a39e-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',32,'Virtues, Good Manners and Joining Of The Ties Of Relationship',NULL,'www.hadithcollection.com'),
	('45c0a48e-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',33,'Destiny',NULL,'www.hadithcollection.com'),
	('45c0a56a-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',34,'Knowledge',NULL,'www.hadithcollection.com'),
	('45c0a650-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',35,'The Rememberance Of Allah, Supplication, Repentance And Seeking Forgiveness',NULL,'www.hadithcollection.com'),
	('45c0a740-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',36,'Heart Melting Traditions',NULL,'www.hadithcollection.com'),
	('45c0a7fe-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',37,'Repentance And Exhortation Of Repentance',NULL,'www.hadithcollection.com'),
	('45c0a8bc-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',38,'The Charateristics Of The Hypocrites And Command Concerning Them',NULL,'www.hadithcollection.com'),
	('45c0acc2-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',39,'Giving Description Of The Day Judgement, Paradise and Hell',NULL,'www.hadithcollection.com'),
	('45c0ad94-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',40,'Paradise, Its Description, Its Bounties And Its Intimates',NULL,'www.hadithcollection.com'),
	('45c0ae52-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',41,'Turmoil And Portents Of The Last Hour',NULL,'www.hadithcollection.com'),
	('45c0af1a-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',42,'Piety and Softening Of Hearts',NULL,'www.hadithcollection.com'),
	('45c0afe2-728d-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',43,'Commentary',NULL,'www.hadithcollection.com'),
	('7886861e-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',81,'Limits and Punishments Set by Allah (Hudood)',NULL,'www.hadithcollection.com'),
	('78868a06-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',82,'Punishment of Disbelievers at War with Allah and his Apostle',NULL,'www.hadithcollection.com'),
	('78868b1e-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',83,'Blood Money (Ad-Diyat)',NULL,'www.hadithcollection.com'),
	('78868c72-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',84,'Dealing with Apostates',NULL,'www.hadithcollection.com'),
	('78868d76-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',85,'Saying Something under Compulsion (Ikraah)',NULL,'www.hadithcollection.com'),
	('78868e84-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',86,'Tricks',NULL,'www.hadithcollection.com'),
	('78868f4c-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',87,'Interpretation of Dreams',NULL,'www.hadithcollection.com'),
	('7886901e-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',88,'Afflictions and the End of the War',NULL,'www.hadithcollection.com'),
	('788690e6-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',89,'Judgments (Ahkaam)',NULL,'www.hadithcollection.com'),
	('788691b8-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',90,'Wishes',NULL,'www.hadithcollection.com'),
	('78869280-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',91,'Accepting Information given by a Truthful Person',NULL,'www.hadithcollection.com'),
	('78869348-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',92,'Holding Fast to the Qur\'an and Sunnah',NULL,'www.hadithcollection.com'),
	('78869410-7287-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',93,'Oneness, Uniqueness of Allah (Tawheed)',NULL,'www.hadithcollection.com'),
	('965fcbf0-7282-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',1,'Revelation',NULL,'www.hadithcollection.com'),
	('a87947fa-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',51,'Wills and Testaments (Wasaayaa)',NULL,'www.hadithcollection.com'),
	('a8794c00-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',52,'Fighting for the Cause of Allah (Jihaad)',NULL,'www.hadithcollection.com'),
	('a8794d0e-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',53,'One-Fifth Of Booty to the Cause Of Allah (Khumus)',NULL,'www.hadithcollection.com'),
	('a8794e12-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',54,'Beginning Of Creation',NULL,'www.hadithcollection.com'),
	('a8794eee-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',55,'Prophets',NULL,'www.hadithcollection.com'),
	('a8794fd4-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',56,'Virtues and Merits of the Prophets (PBUH) and his Companions',NULL,'www.hadithcollection.com'),
	('a879509c-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',57,'Companions of the Prophets',NULL,'www.hadithcollection.com'),
	('a879516e-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',58,'Merits of the Helpers in Madina (Ansaar)',NULL,'www.hadithcollection.com'),
	('a8795236-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',59,'Military Expeditions Led by the Prophet (PBUH) (Al-Maghaazi)',NULL,'www.hadithcollection.com'),
	('a87952fe-7285-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',60,'Prophetic Commentary on the Qur\'an (Tafseer of The Prophet (PBUH))',NULL,'www.hadithcollection.com'),
	('af7f3180-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',21,'Games and Animals Which May be Slaughtered',NULL,'www.hadithcollection.com'),
	('af7f35ae-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',22,'Sacrifices',NULL,'www.hadithcollection.com'),
	('af7f3752-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',23,'Drinks',NULL,'www.hadithcollection.com'),
	('af7f38ce-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',24,'Clothes and Decorations',NULL,'www.hadithcollection.com'),
	('af7f39f0-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',25,'On General Behavior',NULL,'www.hadithcollection.com'),
	('af7f3b76-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',26,'On Salutations and Greetings',NULL,'www.hadithcollection.com'),
	('af7f3cc0-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',27,'Concerning The Use Of Correct Words',NULL,'www.hadithcollection.com'),
	('af7f3dec-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',28,'Poetry',NULL,'www.hadithcollection.com'),
	('af7f3f36-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',29,'Vision',NULL,'www.hadithcollection.com'),
	('af7f401c-728b-11e3-bc56-2865825f568f','fca72b70-7281-11e3-bc56-2865825f568f',30,'The Excellent Qualities Of The Holy Prophet (PBUH) And His Companions',NULL,'www.hadithcollection.com'),
	('b3069bc6-7282-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',2,'Belief',NULL,'www.hadithcollection.com'),
	('b57cdefe-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',31,'Fasting',NULL,'www.hadithcollection.com'),
	('b57ce246-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',32,'Praying at Night In Ramadhan (Taraweeh)',NULL,'www.hadithcollection.com'),
	('b57ce30e-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',33,'Retiring To a Masjid for Remembrance Of Allah (I\'tikaf)',NULL,'www.hadithcollection.com'),
	('b57ce3cc-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',34,'Sales and Trade',NULL,'www.hadithcollection.com'),
	('b57ce476-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',35,'Sales in Which a Price is paid for Goods to be Delivered later (As-Salam)',NULL,'www.hadithcollection.com'),
	('b57ce52a-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',36,'Hiring',NULL,'www.hadithcollection.com'),
	('b57ce5ca-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',37,'Transference of a Debt from one Person to Another (Al-Hawaala)',NULL,'www.hadithcollection.com'),
	('b57ce660-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',38,'Representation, Authorization, Business by Proxy',NULL,'www.hadithcollection.com'),
	('b57ce6f6-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',39,'Agriculture',NULL,'www.hadithcollection.com'),
	('b57ce7e6-7284-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',40,'Distribution of Water',NULL,'www.hadithcollection.com'),
	('ce7aa540-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',3,'Knowledge',NULL,'www.hadithcollection.com'),
	('ce7aa541-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',4,'Ablutions (Wudu\')',NULL,'www.hadithcollection.com'),
	('ce7aab12-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',5,'Bathing (Ghusl)',NULL,'www.hadithcollection.com'),
	('ce7aabf8-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',6,'Menstrual Periods',NULL,'www.hadithcollection.com'),
	('ce7aacde-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',7,'Rubbing Hands and Feet With Dust (Tayammum)',NULL,'www.hadithcollection.com'),
	('ce7aada6-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',8,'Prayers (Salat)',NULL,'www.hadithcollection.com'),
	('ce7aae82-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',9,'Virtues Of The Prayer Hall (Sutra Of The Musalla)',NULL,'www.hadithcollection.com'),
	('ce7aaf40-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',10,'Times of the Prayers',NULL,'www.hadithcollection.com'),
	('ce7ab008-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',11,'Call to Prayers (Adhaan)',NULL,'www.hadithcollection.com'),
	('ce7ab0c6-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',12,'Charecteristics Of Prayer',NULL,'www.hadithcollection.com'),
	('ce7ab18e-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',13,'Friday Prayer',NULL,'www.hadithcollection.com'),
	('ce7ab24c-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',14,'Fear Prayer',NULL,'www.hadithcollection.com'),
	('ce7ab378-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',15,'The two Festivals (Eids)',NULL,'www.hadithcollection.com'),
	('ce7ab4c2-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',16,'Witr Prayer',NULL,'www.hadithcollection.com'),
	('ce7ab594-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',17,'Invoking Allah for Rain (Istisqaa)',NULL,'www.hadithcollection.com'),
	('ce7ab65c-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',18,'Eclipses',NULL,'www.hadithcollection.com'),
	('ce7ab71a-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',19,'Prostration During Recital of Qur\'an',NULL,'www.hadithcollection.com'),
	('ce7ab7d8-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',20,'Shortening The Prayers (At-Taqseer)',NULL,'www.hadithcollection.com'),
	('ce7ab8a0-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',21,'Prayer at Night (Tahajjud)',NULL,'www.hadithcollection.com'),
	('ce7abab2-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',22,'Actions While Praying',NULL,'www.hadithcollection.com'),
	('ce7abb84-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',23,'Funerals (Al-Janaa\'iz)',NULL,'www.hadithcollection.com'),
	('ce7abc4c-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',24,'Obligatory Charity Tax (Zakat)',NULL,'www.hadithcollection.com'),
	('ce7abd14-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',25,'Obligatory Charity Tax After Ramadhan (Zakat-ul-Fitr)',NULL,'www.hadithcollection.com'),
	('ce7abdd2-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',26,'Pilgrimmage (Hajj)',NULL,'www.hadithcollection.com'),
	('ce7abe90-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',27,'Minor Pilgrimmage (Umrah)',NULL,'www.hadithcollection.com'),
	('ce7abf4e-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',28,'Pilgrims Prevented from Completing the Pilgrimmage',NULL,'www.hadithcollection.com'),
	('ce7ac05c-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',29,'Penalty of Hunting While on Pilgrimage',NULL,'www.hadithcollection.com'),
	('ce7ac124-7283-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',30,'Virtues Of Madina',NULL,'www.hadithcollection.com'),
	('f987065e-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',71,'Medicine',NULL,'www.hadithcollection.com'),
	('f9870a46-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',72,'Dress',NULL,'www.hadithcollection.com'),
	('f9870be0-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',73,'Good Manners and Form (Al-Adab)',NULL,'www.hadithcollection.com'),
	('f9870ce4-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',74,'Asking Permission',NULL,'www.hadithcollection.com'),
	('f9870dde-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',75,'Invocations',NULL,'www.hadithcollection.com'),
	('f9870f3c-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',76,'To Make the Heart Tender (Ar-Riqaq)',NULL,'www.hadithcollection.com'),
	('f987102c-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',77,'Divine Will (Al-Qadar)',NULL,'www.hadithcollection.com'),
	('f98710f4-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',78,'Oaths and Vows',NULL,'www.hadithcollection.com'),
	('f98711bc-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',79,'Expiation for Unfulfilled Oaths',NULL,'www.hadithcollection.com'),
	('f987127a-7286-11e3-bc56-2865825f568f','d5e8590a-7281-11e3-bc56-2865825f568f',80,'Laws of Inheritence (Al-Faraa\'id)',NULL,'www.hadithcollection.com');

/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Collections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Collections`;

CREATE TABLE `Collections` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;

INSERT INTO `Collections` (`id`, `name`, `description`)
VALUES
	('d5e8590a-7281-11e3-bc56-2865825f568f','Sahih Bukhari','Authentic (Sahih) Hadith Collection'),
	('fca72b70-7281-11e3-bc56-2865825f568f','Sahih Muslim','Authentic (Sahih) Hadith Collection');

/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Hadiths
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Hadiths`;

CREATE TABLE `Hadiths` (
  `id` varchar(255) NOT NULL,
  `book_id` varchar(255) DEFAULT NULL,
  `hadith_number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `narrator` text,
  `content` text,
  `notes` text,
  `source` text,
  `approved` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `book_id_idxfk` (`book_id`),
  CONSTRAINT `hadiths_ibfk_3` FOREIGN KEY (`book_id`) REFERENCES `Books` (`id`),
  CONSTRAINT `hadiths_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `Books` (`id`),
  CONSTRAINT `hadiths_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `Books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
