/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.19-MariaDB : Database - carrental
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`carrental` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `carrental`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`UserName`,`Password`,`updationDate`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','2023-09-27 12:39:09');

/*Table structure for table `tblbooking` */

DROP TABLE IF EXISTS `tblbooking`;

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookingNumber` bigint(20) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tblbooking` */

insert  into `tblbooking`(`id`,`BookingNumber`,`userEmail`,`VehicleId`,`FromDate`,`ToDate`,`message`,`Status`,`PostingDate`,`LastUpdationDate`) values (1,123456789,'test@mail.com',1,'2023-07-07','2023-07-09','cual es el costo?',1,'2023-07-18 09:03:09',NULL),(2,987456321,'test@mail.com',4,'2023-07-19','2023-07-24','Quiero mas información sobre esto.',1,'2023-07-26 12:49:21','2023-09-27 12:40:52'),(3,393818935,'user@mail.com',7,'2023-09-27','2023-09-30','Quiero reservar este vehiculo, esta muy bueno.',1,'2023-09-27 13:09:08','2023-09-27 13:10:46');

/*Table structure for table `tblbrands` */

DROP TABLE IF EXISTS `tblbrands`;

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tblbrands` */

insert  into `tblbrands`(`id`,`BrandName`,`CreationDate`,`UpdationDate`) values (1,'Maruti','2023-06-29 11:24:34','2023-06-29 11:24:34'),(2,'BMW','2023-06-29 11:24:34','2023-06-29 11:24:34'),(3,'Audi','2023-06-29 11:24:34','2023-06-29 11:24:34'),(4,'Nissan','2023-06-29 11:24:34','2023-06-29 11:24:34'),(5,'Toyota','2023-06-29 11:24:34','2023-06-29 11:24:34'),(7,'Volkswagon','2017-06-19 01:22:13','2020-07-07 09:14:09');

/*Table structure for table `tblcontactusinfo` */

DROP TABLE IF EXISTS `tblcontactusinfo`;

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tblcontactusinfo` */

insert  into `tblcontactusinfo`(`id`,`Address`,`EmailId`,`ContactNo`) values (1,'Kra 57 #','info@mail.com','800000000');

/*Table structure for table `tblcontactusquery` */

DROP TABLE IF EXISTS `tblcontactusquery`;

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tblcontactusquery` */

insert  into `tblcontactusquery`(`id`,`name`,`EmailId`,`ContactNumber`,`Message`,`PostingDate`,`status`) values (1,'Pepe','nnn@mail.com','7977779798','Quiero saber su sucursal en Cali.','2023-07-26 04:34:51',1);

/*Table structure for table `tblpages` */

DROP TABLE IF EXISTS `tblpages`;

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tblpages` */

insert  into `tblpages`(`id`,`PageName`,`type`,`detail`) values (1,'Términos y condiciones','terms','																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACEPTACIÓN DE TERMINOS</font></strong></font></p><p align=\"justify\"><font size=\"2\">rvices India Private Limited Yahoo\", \"nosotros\" o \"nos\", según sea el caso) le proporciona el Servicio (definido a continuación), sujeto a los siguientes Términos de servicio (\"TOS\"), que pueden ser actualizados por nosotros de vez en cuando sin previo aviso. Puede revisar la versión más actualizada de los TOS en cualquier momento en:&nbsp;</font><a href=\"http://in.docs.yahoo.com/info/terms/\" style=\"background-color: rgb(255, 255, 255); font-size: small;\">http://in.docs.yahoo.com/info/terms/</a><span style=\"font-size: small;\">.&nbsp;</span><font size=\"2\">&nbsp;Además, cuando utilice determinados servicios de Yahoo o servicios de terceros, usted y Yahoo estarán sujetos a las pautas o reglas publicadas aplicables a dichos servicios que pueden publicarse de vez en cuando. Todas dichas pautas o reglas, que pueden estar sujetas a cambios, se incorporan por la presente como referencia a los TOS. En la mayoría de los casos, las guías y reglas son específicas de una parte particular del Servicio y lo ayudarán a aplicar los TOS a esa parte, pero en la medida de cualquier inconsistencia entre los TOS y cualquier guía o regla, prevalecerán los TOS. También podemos ofrecer otros servicios de vez en cuando que se rigen por diferentes Términos de servicios, en cuyo caso los TOS no se aplican a dichos otros servicios si y en la medida en que dichos Términos de servicios diferentes los excluyan expresamente. Yahoo también puede ofrecer otros servicios de vez en cuando que se rigen por diferentes Términos de Servicios. Estos TOS no se aplican a otros servicios que se rigen por Términos de servicio diferentes.</font><br></p><p align=\"justify\"><font size=\"2\"><br></font></p><p align=\"justify\"><font size=\"2\"><br></font></p><p align=\"justify\"><font size=\"2\"><br></font></p>\r\n<p align=\"justify\"><br></p>\r\n										\r\n										'),(2,'Politica de Privacidad','privacy','<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Politica de privacidad aqui...............................</span></div>'),(3,'Sobre nosotros','aboutus','<div><div style=\"\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">Ofrecemos una variada flota de coches, que van desde los compactos. Todos nuestros vehículos cuentan con aire acondicionado, dirección asistida, elevalunas eléctricos. Todos nuestros vehículos se compran y mantienen únicamente en concesionarios oficiales. Los coches con transmisión automática están disponibles en todas las clases de reserva. Como no estamos afiliados a ningún fabricante de automóviles específico, podemos ofrecer una variedad de marcas y modelos de vehículos para que los clientes los alquilen.</span></div><div style=\"\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">Nuestra misión es ser reconocidos como el líder mundial en alquiler de autos para empresas y el sector público y privado asociándonos con nuestros clientes para brindar las mejores y más eficientes soluciones de alquiler de autos y lograr la excelencia en el servicio.</span></div></div>\r\n										'),(11,'FAQs','faqs','<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">DIRECCIÓN-----Test XXXXXXXXXXX&nbsp; &nbsp;&nbsp;</span>');

/*Table structure for table `tblsubscribers` */

DROP TABLE IF EXISTS `tblsubscribers`;

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tblsubscribers` */

insert  into `tblsubscribers`(`id`,`SubscriberEmail`,`PostingDate`) values (6,'me@mail.com','2023-09-27 12:33:23'),(7,'joel@mail.com','2023-09-27 13:12:04');

/*Table structure for table `tbltestimonial` */

DROP TABLE IF EXISTS `tbltestimonial`;

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbltestimonial` */

insert  into `tbltestimonial`(`id`,`UserEmail`,`Testimonial`,`PostingDate`,`status`) values (1,'test@gmail.com','I am satisfied with their service great job','2020-07-07 09:30:12',1),(2,'test@gmail.com','Buena stardes,\r\nRecibiun buen servicio gracias por la atención.','2023-09-27 12:32:22',NULL);

/*Table structure for table `tblusers` */

DROP TABLE IF EXISTS `tblusers`;

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `EmailId` (`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tblusers` */

insert  into `tblusers`(`id`,`FullName`,`EmailId`,`Password`,`ContactNo`,`dob`,`Address`,`City`,`Country`,`RegDate`,`UpdationDate`) values (1,'User','user@mail.com','ee11cbb19052e40b07aac0ca060c23ee','6520000000','','L-890, xxxxxxxxxxx','Bogotá','Colombia','2023-09-27 09:00:49','2023-09-27 09:00:49');

/*Table structure for table `tblvehicles` */

DROP TABLE IF EXISTS `tblvehicles`;

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(11) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tblvehicles` */

insert  into `tblvehicles`(`id`,`VehiclesTitle`,`VehiclesBrand`,`VehiclesOverview`,`PricePerDay`,`FuelType`,`ModelYear`,`SeatingCapacity`,`Vimage1`,`Vimage2`,`Vimage3`,`Vimage4`,`Vimage5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (2,'BMW 5 Series',2,'El precio del BMW Serie 5 comienza en ? 55,4 Lakh y sube hasta? 68,39 lakhs. El precio de la versión Gasolina del Serie 5 oscila entre ? 55,4 lakhs - ? 60,89 Lakh y el precio de la versión diésel para el Serie 5 oscila entre ? 60,89 lakhs - ? 68,39 lakhs.',1000,'Petrol',2018,5,'BMW-5-Series-Exterior-102005.jpg','BMW-5-Series-New-Exterior-89729.jpg','BMW-5-Series-Exterior-102006.jpg','BMW-5-Series-Interior-102021.jpg','BMW-5-Series-Interior-102022.jpg',1,1,1,1,1,1,1,1,NULL,1,1,1,'2020-07-07 02:12:02','2023-09-27 12:24:44'),(3,'Audi Q8',3,'Según ARAI, el kilometraje del Q8 es 0 kmpl. El kilometraje real del vehículo varía según los hábitos de conducción. Las cifras de kilometraje en ciudad y carretera también varían según las condiciones de la carretera.',3000,'Petrol',2017,5,'audi-q8-front-view4.jpg','1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg','audi1.jpg','1audiq8.jpg','audi-q8-front-view4.jpeg',1,1,1,1,1,1,1,1,1,1,1,1,'2020-07-07 02:19:21','2023-09-27 12:26:04'),(4,'Nissan Kicks',4,'Última actualización: Nissan ha lanzado el Kicks 2020 con un nuevo motor de gasolina turboalimentado. Puedes leer más sobre esto aquí.\r\n\r\nPrecio y variantes del Nissan Kicks: El Kicks está disponible en cuatro variantes: XL, XV, XV Premium y XV Premium(O).',800,'Petrol',2020,5,'front-left-side-47.jpg','kicksmodelimage.jpg','download.jpg','kicksmodelimage.jpg','',1,NULL,NULL,1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2020-07-07 02:25:28','2023-09-27 12:26:27'),(5,'Nissan GT-R',4,'El GT-R incluye un V6 de gasolina biturbo de 3,8 litros, que genera 570 CV de potencia máxima a 6.800 rpm y 637 Nm de par máximo. El motor está acoplado a una transmisión de doble embrague de 6 velocidades en una configuración de tracción total. El GT-R 2+2 plazas acelera de 0 a 100 km/h en menos de 3.',2000,'Petrol',2019,5,'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg','Best-Nissan-Cars-in-India-New-and-Used-1.jpg','2bb3bc938e734f462e45ed83be05165d.jpg','2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg','images.jpg',1,1,1,1,1,1,1,1,1,1,1,1,'2020-07-07 02:34:17','2023-09-27 12:27:08'),(6,'Nissan Sunny 2020',4,'Producto con una buena relación calidad-precio y fue tan bueno. Es más espacioso que otros sedanes. Parece un automóvil lujoso.',400,'CNG',2018,5,'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg','images (1).jpg','Nissan-Sunny-Interior-114977.jpg','nissan-sunny-8a29f53-500x375.jpg','new-nissan-sunny-photo.jpg',1,1,NULL,1,1,1,1,1,1,1,1,1,'2020-07-07 04:12:49','2023-09-27 12:27:27'),(7,'Toyota Fortuner',5,'Características de Toyota Fortuner: Es un SUV premium de siete plazas cargado con características como faros delanteros con proyector LED con DRL LED, faros antiniebla LED y ORVM plegables y ajustables eléctricamente. En el interior, el Fortuner ofrece características como asiento del conductor ajustable eléctricamente, control de clima automático, botón de parada/arranque y control de crucero.\r\n\r\nCaracterísticas de seguridad del Toyota Fortuner: El Toyota Fortuner tiene siete bolsas de aire, control de asistencia en pendientes, control de estabilidad del vehículo con asistencia de frenado y ABS con EBD.',3000,'Petrol',2020,5,'2015_Toyota_Fortuner_(New_Zealand).jpg','toyota-fortuner-legender-rear-quarters-6e57.jpg','zw-toyota-fortuner-2020-2.jpg','download (1).jpg','',NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,1,1,1,'2020-07-07 04:17:46','2023-09-27 12:27:48'),(8,'Maruti Suzuki Vitara Brezza',1,'El nuevo Vitara Brezza es un paquete completo que está repleto de funciones y ofrece buena manejabilidad. Y está respaldado por la amplia red de servicios de Maruti, lo que garantiza tranquilidad a los clientes. El motor de gasolina podría haber sido más refinado y ofrecer más energía.',600,'Petrol',2018,5,'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg','marutisuzuki-vitara-brezza-rear-view37.jpg','marutisuzuki-vitara-brezza-dashboard10.jpg','marutisuzuki-vitara-brezza-boot-space59.jpg','marutisuzuki-vitara-brezza-boot-space28.jpg',NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2020-07-07 04:23:11','2023-09-27 12:28:07');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
