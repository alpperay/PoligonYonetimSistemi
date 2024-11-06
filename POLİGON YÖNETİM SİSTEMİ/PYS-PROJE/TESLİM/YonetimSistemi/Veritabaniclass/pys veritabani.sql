-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 26 Şub 2024, 09:02:05
-- Sunucu sürümü: 8.2.0
-- PHP Sürümü: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `pys`
--

-- --------------------------------------------------------


--
-- Tablo için tablo yapısı `calisan`
--

DROP TABLE IF EXISTS `calisan`;

CREATE TABLE IF NOT EXISTS `calisan` (
	`calisanID` INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`calisanTc` VARCHAR(255) NOT NULL,
	`calisanAd` VARCHAR(255) NOT NULL,
	`calisanSoyad` VARCHAR(255) NOT NULL,
	`calisanUcret` INT(10) NOT NULL,
	`Sifre` INT(10) NOT NULL)
COLLATE = 'utf8_general_ci'
ENGINE = InnoDB
;

INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('1','10540898430','Mucip','Demirtaş','506','3405');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('2','42991163857','Taci','Horuz','499','2047');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('3','57023628936','Serim','Sezdi','341','8334');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('4','63781810214','Sadır','Özbahçeci','578','3447');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('5','14138240351','Hüseyin','Aktolga','502','5767');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('6','48208406523','Şahabeddin','Sarıca','340','9101');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('7','15962154252','Fethiyye','Gülek','374','9677');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('8','50476636080','Usman','Merkan','318','5662');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('9','56945633439','İsrail','Yoldaş','430','7145');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('10','25357230426','Vareste','Yada','555','2153');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('11','38470539731','Şahika','Yaşbay','404','8111');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('12','33236540321','Salur','İlk','341','8769');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('13','84530092318','Pekay','Oker','372','5998');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('14','53660265268','Tezer','Ardağ','445','9054');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('15','88885716272','Çinel','Turhan','357','8273');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('16','97877898051','Üngür','Doğdu','510','2819');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('17','38742978783','Şayan','Gökşen','569','7809');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('18','17347092709','Aydanur','Sarılı','377','4262');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('19','88905444981','Sohrap','Başçı erkuş','589','4875');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('20','15935449913','Palatimur','Ağlamaz','415','4410');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('21','89539473336','Güllü','Kabakaş','459','5799');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('22','28329314794','Nursena','Yaka','588','2742');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('23','84050147092','Erşad','Kaşoğlu','597','8659');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('24','29340527407','Onural','Sungur','428','5612');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('25','58315229536','Abdülkerim','Dirmen','393','7113');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('26','16497464965','Suhulet','Mengüş','446','3685');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('27','66355483469','Abendam','Teşdoğ','337','3827');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('28','59479118608','Kahta','Güç','453','9737');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('29','56426068722','Fedayican','Yılkınç ökten','384','8725');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('30','57361539515','Şaban','Özer gündüz','437','7018');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('31','14840356428','Cemşasb','Kutlar','447','7696');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('32','81685107332','Serter','Üzerek','309','2398');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('33','49311744159','Bedrulcemal','Ünlü','420','3882');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('34','46473419850','Sine','Kapudere','335','8960');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('35','66628985304','Sanay','Güngördü','374','7189');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('36','10309521672','Ahsa','İzciler','466','2116');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('37','19329246536','Çintay','Ayas','535','9340');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('38','76615934133','Mübareke','Uzdu','457','6636');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('39','93919421335','Melis','Temizkan bozyigit','486','3811');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('40','41370533917','Mefkure','Birşey','584','6243');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('41','85184229844','Nuri','Erbaş','534','1490');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('42','54889111505','Adile','Yavuz','306','3453');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('43','11175939101','Fahime','Kazancı','394','5967');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('44','10596253936','Leys','Kumtepe','557','9418');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('45','32854336211','Neşide','Özyürek','556','8789');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('46','95899540304','Torkal','Çavdar','401','8897');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('47','57127830927','Koytak','Durukoğlu','544','5426');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('48','78404156847','Esin','Karhan','447','9540');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('49','50236445105','Oray','Yabaş','527','3247');
INSERT INTO `calisan` (`calisanID`, `calisanTc`, `calisanAd`, `calisanSoyad`, `calisanUcret`, `Sifre`) VALUES ('50','21283631879','Asri','Cüce','538','9472');


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mermi`
--

DROP TABLE IF EXISTS `mermi`;
CREATE TABLE IF NOT EXISTS `mermi` (
  `mermiID` INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `mermiAd` VARCHAR(255) NOT NULL,
  `mermiFiyat` INT(10) NOT NULL,
  `mermiStok` INT(10) NOT NULL) 
COLLATE = 'utf8_general_ci'
ENGINE = InnoDB
AUTO_INCREMENT = 1;

--
-- Tablo döküm verisi `mermi`
--

INSERT INTO `mermi` (`mermiID`, `mermiAd`, `mermiFiyat`, `mermiStok`) VALUES
(1,  'BV8VY', 415, 142),
(2,  'AU2HY', 552, 186),
(3,  'BG1PY', 687, 913),
(4,  'PH1KY', 583, 137),
(5,  'QM4VY', 277, 896),
(6,  'PM7ZY', 330, 823),
(7,  'TR5ZY', 641, 254),
(8,  'MC8PY', 417, 805),
(9,  'BY1QY', 496, 700),
(10, 'NP8QY', 169, 17),
(11, 'SE5FY', 544, 563),
(12, 'MB8GY', 689, 135),
(13, 'KP5SY', 738, 964),
(14, 'HB9PY', 644, 376),
(15, 'UY8ZY', 368, 779),
(16, 'ZD5MY', 218, 611),
(17, 'TH4GY', 125, 438),
(18, 'YU1YY', 236, 974),
(19, 'ET7VY', 285, 143),
(20, 'AD4CY', 333, 734),
(21, 'RM6CY', 212, 736),
(22, 'PW4WY', 780, 636),
(23, 'NB9NY', 541, 997),
(24, 'HW6WY', 642, 661),
(25, 'CD8JY', 377, 117),
(26, 'FR8RY', 468, 624),
(27, 'UV6JY', 271, 371),
(28, 'OH8BY', 266, 294),
(29, 'FM5JY', 658, 499),
(30, 'BT7ZY', 293, 114),
(31, 'YF5GY', 544, 292),
(32, 'SV5HY', 588, 826),
(33, 'LY6HY', 259, 502),
(34, 'VA8MY', 140, 962),
(35, 'QU8JY', 495, 780),
(36, 'WV8LY', 339, 98),
(37, 'YI6MY', 261, 445),
(38, 'UY7QY', 760, 898),
(39, 'WT5FY', 110, 992),
(40, 'HL1MY', 502, 835),
(41, 'KJ3RY', 314, 879),
(42, 'ZZ5MY', 306, 980),
(43, 'VI7JY', 540, 211),
(44, 'EA9ZY', 384, 826),
(45, 'HR7UY', 132, 945),
(46, 'AK7TY', 319, 939),
(47, 'ED6WY', 526, 949),
(48, 'JK4MY', 280, 783),
(49, 'HY8VY', 249, 614),
(50, 'YL9KY', 333, 676);
-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

DROP TABLE IF EXISTS `musteri`;

CREATE TABLE IF NOT EXISTS `musteri` (
	`musteriID` INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`musteriTcNo` VARCHAR(255) NOT NULL,
	`musteriAd` VARCHAR(255) NOT NULL,
	`musteriSoyad` VARCHAR(255) NOT NULL,
	`musteriAdres` VARCHAR(255) NOT NULL,
	`musteriTel` VARCHAR(255) NOT NULL,
	`musteriPosta` VARCHAR(255) NOT NULL,
	`musteriSifre` INT(10) NOT NULL)
COLLATE = 'utf8_general_ci'
ENGINE = InnoDB
;

INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('1','91348831140','Esranur','Çalhan','Adalar','0370 491 85 49','Aenean@est.bg','5596');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('2','66444099776','Resul','Deniz yılmaz','Arnavutköy','0164 919 64 54','sit@et.bw','6676');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('3','43626686572','Übabe','Bebek','Ataşehir','0724 324 32 03','magna@Pellentesque.bw','4484');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('4','80573330364','Turgay','Tahtalı','Avcılar','0446 838 25 31','sodales@tellus.as','3779');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('5','85562677083','Yankı','Erkoç','Bağcılar','0959 546 86 56','posuere@vestibulum.tk','5654');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('6','99937508167','Şehzat','Türkoguz','Bahçelievler','0745 424 50 29','id@neque.tt','4867');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('7','84182083553','Neyyir','Azak','Bakırköy','0489 278 16 55','metus@fermentum.arpa','3663');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('8','21214315966','Pozan','Bayramoğlu','Başakşehir','0860 198 07 08','id@blandit.sy','1841');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('9','57380441361','Rükunet','Hançer','Bayrampaşa','0301 647 90 24','eu@In.fo','8038');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('10','56034393703','Dirahşan','Topcu','Beşiktaş','0726 428 73 13','nec@felis.eg','5061');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('11','84313800208','Cavit','Şenol','Beykoz','0843 715 22 53','ut@eget.ga','6368');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('12','43168950048','Dila','Mutlu','Beylikdüzü','0229 642 90 18','Aenean@sit.bw','1566');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('13','69574867499','Tur','Ezer','Beyoğlu','0766 153 13 99','nibh@sapien.lu','4312');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('14','66549453423','Perrin','Çamsar','Büyükçekmece','0253 274 10 96','Duis@leo.uy','5333');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('15','49503833342','Belin','Gerçek','Çatalca','0630 508 46 28','velit@tortor.ve','6808');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('16','41768027582','Ece','Arıca','Çekmeköy','0722 163 38 57','eget@Fusce.bn','8314');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('17','70136924455','Aysuda','Dilek','Esenler','0115 355 55 36','blandit@ultricies.ky','9414');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('18','20919780848','Aynur','Sürücü','Esenyurt','0607 355 53 22','tristique@leo.gw','9247');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('19','79075356932','Işınbay','Hatipoğlu','Eyüpsultan','0416 577 54 31','et@in.re','4012');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('20','66341047322','Nurcihan','Bekdemir','Fatih','0322 288 09 16','pulvinar@vitae.ro','7295');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('21','78483378823','Sevad','Üstüner','Gaziosmanpaşa','0144 130 90 87','elit@sem.ai','7217');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('22','77670638789','Müjdat','Güneş ergen','Güngören','0355 490 11 71','id@nisi.bn','4946');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('23','28971256984','Aktaç','Orak','Kadıköy','0440 565 24 34','mollis@nunc.museum','4189');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('24','94623690720','Abdürrahim','Tutlu','Kâğıthane','0416 254 62 30','magna@tempus.int','6421');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('25','86292047737','Nasıh','Altaş','Kartal','0734 258 37 69','dolor@non.id','3467');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('26','44754858063','Secavend','Tanışlı','Küçükçekmece','0426 226 60 73','Suspendisse@iaculis.pa','7675');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('27','91504489968','Tekin','Konakçı','Maltepe','0295 793 78 88','posuere@mattis.al','8921');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('28','55780148639','Hatife','Özturan','Pendik','0258 845 33 49','dapibus@bibendum.fo','7327');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('29','32780400850','Özakay','Polat günata','Sancaktepe','0153 416 39 88','augue@Nullam.mv','8560');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('30','92911312467','Mürüvvet','Sezen','Sarıyer','0995 863 35 47','porta@odio.gy','7383');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('31','35442930467','Mesud','Başeğmez','Silivri','0949 818 94 78','odio@nibh.jobs','5200');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('32','23874212050','Parla','Karakaya','Sultanbeyli','0496 935 25 15','nec@sed.net','7772');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('33','29485328767','İltemiz','Mete','Sultangazi','0868 494 90 39','at@Curabitur.se','3933');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('34','32745855790','Seyyide','Tanrıvermiş','Şile','0277 993 97 02','sodales@mollis.ad','5843');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('35','66244430819','Artuk','Çalık','Şişli','0603 211 12 29','facilisis@vel.al','7519');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('36','77950027138','İsra','Özat','Tuzla','0183 854 27 55','nunc@in.pw','6177');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('37','69132130425','Töre','Karasoy','Ümraniye','0183 852 13 00','dignissim@ullamcorper.es','2595');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('38','87642546038','Münir','Çatı','Üsküdar','0439 415 64 97','ante@diam.tn','4511');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('39','52908648334','Masune','Övseme','Zeytinburnu','0814 616 78 48','at@mollis.vi','6023');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('40','80952518437','Umay','Altınkıran','Sazlıbosna','0180 371 66 90','elementum@viverra.jp','3615');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('41','51853425942','Akman','Kıvrak','Karlıbayır','0379 982 96 30','imperdiet@metus.af','9356');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('42','47365928376','Reşid','Keleş belhan','Haraççı','0428 617 21 27','ligula@ut.bt','3523');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('43','24425579302','Özekan','Atabey','Hicret','0606 300 77 77','sodales@aliquet.yt','5881');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('44','29805131398','Ortanca','Yenişehirlioğlu','Adres','0214 606 62 25','diam@sem.pf','3554');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('45','57473213454','Şahbender','Gönülal','Mavigöl','0912 275 67 17','sapien@nunc.gm','8042');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('46','79669923759','Abdülberr','Ata','Nenehatun','0241 982 48 27','Vestibulum@lectus.ye','9653');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('47','50376858140','Yanıker','Tarbak','Ömerli','0415 669 32 34','adipiscing@dolor.cn','7293');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('48','53524356243','Yeğiner','Dinarlı','Taşoluk','0832 608 63 49','eget@tincidunt.mn','7042');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('49','96431514640','Sayılgan','Yalın','Mimarsinan','0415 494 14 28','elementum@Fusce.jm','2259');
INSERT INTO `musteri` (`musteriID`, `musteriTcNo`, `musteriAd`, `musteriSoyad`, `musteriAdres`, `musteriTel`, `musteriPosta`, `musteriSifre`) VALUES ('50','67199389512','Ece','Sığırcı','Mustafa Kemal','0968 940 78 26','eu@gravida.si','8860');






-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `silah`
--

DROP TABLE IF EXISTS `silah`;

CREATE TABLE IF NOT EXISTS `silah` (
	`silahID` INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`silahAd` VARCHAR(255) NOT NULL,
	`silahFiyat` INT(10) NOT NULL,
	`silahStok` INT(10) NOT NULL
)
COLLATE = 'utf8_general_ci'
ENGINE = InnoDB
AUTO_INCREMENT = 1;

INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('1','Akdal Ghost','943','98');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('2','ALFA Combat','742','23');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('3','ALFA Defender','361','9');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('4','Arcus 94','58','633');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('5','Arsenal P-M02','825','16');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('6','Astra 400','463','4');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('7','Astra Model 900','510','28');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('8','AutoMag','851','32');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('9','AMT Automag II','632','42');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('10','AMT AutoMag III','492','72');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('11','AMT AutoMag IV','884','62');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('12','AMT Automag V','441','24');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('13','AMT Hardballer','623','35');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('14','AMT Skipper','924','49');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('15','Baby Nambu','663','45');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('16','Ballester-Molina','521','99');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('17','Bersa 83','720','89');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('18','Bersa Thunder 380','810','51');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('19','Bersa Thunder 9','231','39');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('20','Beretta Cheetah','642','71');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('21','Beretta 21 Bobcat','883','88');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('22','Beretta 3032 Tomcat','245','70');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('23','Beretta 418','921','58');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('24','Beretta 87 Target','120','84');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('25','Beretta 92','115','59');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('26','Beretta 92G-SD/96G-SD','200','19');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('27','Beretta 93R','638','11');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('28','Beretta 950 Jetfire','382','77');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('29','Beretta M 1934','912','7');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('30','Beretta M 1935','793','1');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('31','Beretta M 1951','902','57');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('32','Beretta 8000','934','65');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('33','Beretta 9000','281','94');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('34','Beretta Px4 Storm','363','61');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('35','Beretta U22 Neos','628','60');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('36','Bergmann-Bayard','723','70');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('37','Bren Ten','500','3');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('38','Browning BDM','804','14');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('39','Browning Buck Mark','402','30');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('40','Browning Hi-Power','552','65');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('41','Brügger & Thomet MP9','923','14');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('42','Caracal pistol','712','23');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('43','Carbon 15 Type 21','592','18');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('44','Carbon 15 Type 21S','528','92');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('45','Carbon 15 Type 97','276','57');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('46','Carbon 15 Type 97S','328','35');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('47','Carbon 15 9mm','783','37');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('48','Claridge Hi-Tec/Goncz Pistol','492','68');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('49','Cobra','653','10');
INSERT INTO `silah` (`silahID`, `silahAd`, `silahFiyat`, `silahStok`) VALUES ('50','Colt M1911','512','55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kiralama`
--

DROP TABLE IF EXISTS `kiralama`;

CREATE TABLE IF NOT EXISTS `kiralama` (
	`kiralamaID` INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`kiralamaAd` VARCHAR(255) NOT NULL,
	`kiralamaTarih` DATE NOT NULL,
	`kiralamaZaman` TIME NOT NULL)
COLLATE = 'utf8_general_ci'
ENGINE = InnoDB
AUTO_INCREMENT = 1;

INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('1','Siraç','11.04.2025','05:48');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('2','Karaca','31.10.2023','04:41');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('3','Aysan','03.09.2024','11:24');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('4','Candoğan','11.05.2024','04:51');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('5','Hazlan','10.10.2023','11:22');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('6','Hazel','12.07.2024','06:39');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('7','Sabrinnisa','28.03.2024','07:59');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('8','Batuhan','25.08.2024','06:20');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('9','Sipas','23.02.2024','02:18');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('10','Ayca','27.03.2025','01:20');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('11','Rezan','01.12.2023','12:56');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('12','Aktuğ','21.09.2024','07:13');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('13','Semavi','13.01.2025','07:44');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('14','Candoğan','22.09.2023','12:07');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('15','Muhammet','23.10.2023','05:46');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('16','Görkem','02.08.2023','08:54');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('17','Nişan','11.04.2025','08:25');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('18','Özerk','10.07.2024','10:45');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('19','Akdes','28.01.2025','08:59');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('20','Uruk','31.08.2024','05:02');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('21','Çınay','26.04.2023','11:24');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('22','Itır','06.05.2024','09:08');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('23','Füreyya','18.11.2023','08:49');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('24','Topel','03.11.2023','07:58');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('25','İnare','14.04.2024','10:14');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('26','Sevgen','21.08.2023','07:38');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('27','Salat','19.02.2024','08:38');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('28','Coşan','26.05.2024','05:16');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('29','Kıncal','29.05.2023','04:26');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('30','Barık','26.04.2023','05:12');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('31','Budun','29.12.2024','01:41');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('32','Yaşık','02.04.2025','12:26');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('33','Akyıl','25.06.2024','01:51');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('34','Muhsin','30.04.2023','05:01');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('35','Tayfun','05.10.2024','04:18');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('36','Zatinur','25.09.2023','04:17');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('37','Mahfi','25.12.2023','05:10');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('38','Yiğiter','02.09.2023','09:39');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('39','Öngay','29.04.2023','02:41');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('40','Şener','13.03.2025','05:52');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('41','Nurer','02.09.2023','10:59');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('42','Sitare','12.08.2024','05:13');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('43','Önkal','06.04.2024','08:03');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('44','Arsal','12.08.2024','08:58');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('45','Sertuğ','02.09.2023','07:51');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('46','Mahfuz','05.02.2024','12:23');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('47','Fayih','17.04.2024','07:41');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('48','Özerol','19.08.2024','12:46');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('49','Bayrualp','17.10.2023','05:35');
INSERT INTO `kiralama` (`kiralamaID`, `kiralamaAd`, `kiralamaTarih`, `kiralamaZaman`) VALUES ('50','Sudenaz','12.12.2023','06:59');


