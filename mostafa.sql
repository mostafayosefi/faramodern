-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2018 at 09:12 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mostafa`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessadmins`
--

CREATE TABLE `accessadmins` (
  `id` int(2) NOT NULL,
  `accessadmin_admin` int(2) NOT NULL,
  `accessadmin_agency` int(2) NOT NULL,
  `accessadmin_user` int(2) NOT NULL,
  `accessadmin_gragency` int(2) NOT NULL,
  `accessadmin_gruser` int(2) NOT NULL,
  `accessadmin_professor` int(2) NOT NULL,
  `accessadmin_student` int(2) NOT NULL,
  `accessadmin_level` int(2) NOT NULL,
  `accessadmin_period` int(2) NOT NULL,
  `accessadmin_lesson` int(2) NOT NULL,
  `accessadmin_clas` int(2) NOT NULL,
  `accessadmin_tuition` int(2) NOT NULL,
  `accessadmin_page` int(2) NOT NULL,
  `accessadmin_new` int(2) NOT NULL,
  `accessadmin_question` int(2) NOT NULL,
  `accessadmin_edvence` int(2) NOT NULL,
  `accessadmin_groupprofessor` int(2) NOT NULL,
  `accessadmin_groupstudent` int(2) NOT NULL,
  `accessadmin_ticketprofessor` int(2) NOT NULL,
  `accessadmin_ticketstudent` int(2) NOT NULL,
  `accessadmin_elanprofessor` int(2) NOT NULL,
  `accessadmin_elanstudent` int(2) NOT NULL,
  `accessadmin_finical` int(2) NOT NULL,
  `accessadmin_index` int(2) NOT NULL,
  `accessadmin_idadmin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `accessadmins`
--

INSERT INTO `accessadmins` (`id`, `accessadmin_admin`, `accessadmin_agency`, `accessadmin_user`, `accessadmin_gragency`, `accessadmin_gruser`, `accessadmin_professor`, `accessadmin_student`, `accessadmin_level`, `accessadmin_period`, `accessadmin_lesson`, `accessadmin_clas`, `accessadmin_tuition`, `accessadmin_page`, `accessadmin_new`, `accessadmin_question`, `accessadmin_edvence`, `accessadmin_groupprofessor`, `accessadmin_groupstudent`, `accessadmin_ticketprofessor`, `accessadmin_ticketstudent`, `accessadmin_elanprofessor`, `accessadmin_elanstudent`, `accessadmin_finical`, `accessadmin_index`, `accessadmin_idadmin`) VALUES
(3, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 3),
(4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4),
(5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id_user` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_persian_ci NOT NULL,
  `address` varchar(64) COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `image` text COLLATE utf8_persian_ci NOT NULL,
  `confirmcode` varchar(32) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id_user`, `name`, `email`, `address`, `username`, `password`, `image`, `confirmcode`) VALUES
(1, 'مدیر سیستم', 'wbmaster@mail.com', '', '1', '28c8edde3d61a0411511d3b1866f0636', '', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(4) NOT NULL,
  `admin_name` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `admin_email` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `admin_tell` varchar(15) COLLATE utf8_persian_ci NOT NULL,
  `admin_username` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `admin_password` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `admin_createdatdate` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `admin_loginatdate` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `admin_obser` int(2) NOT NULL,
  `admin_ip` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `admin_img` varchar(155) COLLATE utf8_persian_ci NOT NULL,
  `admin_adres` varchar(333) COLLATE utf8_persian_ci NOT NULL,
  `remember_token` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `admin_active` int(2) NOT NULL,
  `admin_emailverfy` varchar(8) COLLATE utf8_persian_ci NOT NULL,
  `admin_emailactive` int(2) NOT NULL,
  `admin_tellverfy` varchar(8) COLLATE utf8_persian_ci NOT NULL,
  `admin_tellactive` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_name`, `admin_email`, `admin_tell`, `admin_username`, `admin_password`, `admin_createdatdate`, `admin_loginatdate`, `admin_obser`, `admin_ip`, `admin_img`, `admin_adres`, `remember_token`, `admin_active`, `admin_emailverfy`, `admin_emailactive`, `admin_tellverfy`, `admin_tellactive`) VALUES
(2, '', '', '', 'rrrrrrr', 'eyJpdiI6IkZMZTNhM2xnSlBUVk85U3ZEcHlWbEE9PSIsInZhbHVlIjoiNlhPMm95WnAxTEZycU1NSEszM0Vmdz09IiwibWFjIjoiNjI5OGNhYmZjMjE1MDA4YjIwNjZlNzlkY2I4OTIwNTlkODJlMGI2ZGFkNzIzOTdjNjQxOTUwNGJkZmYyMjcwOSJ9', '2017-05-04 18:46:39', '', 0, '', 'demowhite.jpg', '', '', 0, '', 0, '', 0),
(3, '', '', '', 'admin', 'eyJpdiI6ImdhakRpRXNTTzdETkZRNGI4anhNSXc9PSIsInZhbHVlIjoiSytTWHE3anlBcHA0M29lTTN3cDRqUT09IiwibWFjIjoiZTc1MTJmYTg2MmQ1OGQwNjYzYWYwYTY1NTNhNjM3MDEyNTQzNmFhNWNkZmM5ZTc1NTAxYmE1NGUxYjViYmE1YyJ9', '2017-06-24 19:54:06', '2017-06-24 19:55:02', 0, '5.219.62.217', '1498317936photo_2016-04-17_23-56-54.jpg', '', '', 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `code` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cityCode` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cityName` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `countryName` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `countryCode` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `timezone` varchar(8) COLLATE utf8_turkish_ci DEFAULT NULL,
  `lat` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `lon` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `numAirports` int(11) DEFAULT NULL,
  `city` enum('true','false') COLLATE utf8_turkish_ci DEFAULT NULL,
  `obs` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('AAE', 'Les Salines Arpt', 'AAE', 'Annaba', 'ALGERIA', 'DZ', '1', '36.822225', '7.809167', 1, 'true', 0),
('AAF', 'Apalachicola Municipal Arpt', 'AAF', 'Apalachicola', 'UNITED STATES', 'US', '-6', '29.727607', '-85.027442', 1, 'true', 0),
('AAG', 'Arapoti Arpt', 'AAG', 'Arapoti', 'BRAZIL', 'BR', '-100', '-24.1036', '-49.79', 1, 'true', 0),
('AAH', 'Aachen Merzbruck Arpt', 'AAH', 'Aachen', 'GERMANY', 'DE', '1', '50.823194', '6.186389', 1, 'true', 0),
('AAL', 'Aalborg Arpt', 'AAL', 'Aalborg', 'DENMARK', 'DK', '1', '57.092789', '9.849164', 1, 'true', 0),
('AAM', 'Mala Mala Arpt', 'AAM', 'Mala Mala', 'SOUTH AFRICA', 'ZA', '2', '-24.818111', '31.544584', 1, 'true', 0),
('AAN', 'Al Ain Arpt', 'AAN', 'Al Ain', 'UNITED ARAB EMIRATES', 'AE', '4', '24.261667', '55.609167', 1, 'true', 0),
('AAQ', 'Anapa Arpt', 'AAQ', 'Anapa', 'RUSSIA', 'RU', '4', '45.002097', '37.347272', 1, 'true', 0),
('ZID', 'Aarhus Bus Service', 'AAR', 'Aarhus', 'DENMARK', 'DK', '-100', '0', '0', 2, '', 0),
('AAR', 'Tirstrup Arpt', 'AAR', 'Aarhus', 'DENMARK', 'DK', '1', '56.300017', '10.619008', 2, 'true', 0),
('AAT', 'Altay Arpt', 'AAT', 'Altay', 'CHINA', 'CN', '8', '47.866667', '88.116667', 1, 'true', 0),
('AAY', 'Al Ghaydah Arpt', 'AAY', 'Al Ghaydah', 'YEMEN', 'YE', '3', '16.191667', '52.175', 1, 'true', 0),
('ABA', 'Abakan Arpt', 'ABA', 'Abakan', 'RUSSIA', 'RU', '8', '53.74', '91.385', 1, 'true', 0),
('ABC', 'Los Llanos Arpt', 'ABC', 'Albacete', 'SPAIN', 'ES', '-100', '38.948', '-1.863', 1, 'true', 0),
('ABD', 'Abadan Arpt', 'ABD', 'Abadan', 'IRAN', 'IR', '4', '30.371111', '48.228333', 1, 'true', 0),
('ABE', 'Lehigh Valley Intl Arpt', 'ABE', 'Allentown', 'UNITED STATES', 'US', '-5', '40.652083', '-75.440806', 1, 'true', 0),
('ABI', 'Abilene Municipal Arpt', 'ABI', 'Abilene', 'UNITED STATES', 'US', '-6', '32.411319', '-99.681897', 1, 'true', 0),
('ABL', 'Ambler Arpt', 'ABL', 'Ambler', 'UNITED STATES', 'US', '-9', '67.106389', '-157.8575', 1, 'true', 0),
('ABM', 'Bamaga Arpt', 'ABM', 'Bamaga', 'AUSTRALIA', 'AU', '10', '-10.950833', '142.459444', 1, 'true', 0),
('ABQ', 'Albuquerque Intl Arpt', 'ABQ', 'Albuquerque', 'UNITED STATES', 'US', '-7', '35.040222', '-106.609194', 1, 'true', 0),
('ABR', 'Aberdeen Arpt', 'ABR', 'Aberdeen', 'UNITED STATES', 'US', '-6', '45.4491', '-98.4218', 1, 'true', 0),
('ABS', 'Abu Simbel Arpt', 'ABS', 'Abu Simbel', 'EGYPT', 'EG', '2', '22.375953', '31.611722', 1, 'true', 0),
('ABT', 'Al Aqiq', 'ABT', 'Al Baha', 'SAUDI ARABIA', 'SA', '3', '20.296139', '41.634277', 1, 'true', 0),
('ABV', 'Abuja Intl', 'ABV', 'Abuja', 'NIGERIA', 'NG', '1', '9.006792', '7.263172', 1, 'true', 0),
('ABX', 'Albury Airport', 'ABX', 'Albury', 'AUSTRALIA', 'AU', '10', '-36.067778', '146.958056', 1, 'true', 0),
('ABY', 'Dougherty Cty Arpt', 'ABY', 'Albany', 'UNITED STATES', 'US', '-5', '31.5355', '-84.1945', 1, 'true', 0),
('ZXA', 'Aberdeen ScotRail Station', 'ABZ', 'Aberdeen', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('ABZ', 'Dyce Airport', 'ABZ', 'Aberdeen', 'UNITED KINGDOM', 'GB', '0', '57.201944', '-2.197778', 2, 'true', 0),
('ACA', 'Alvarez Intl Arpt', 'ACA', 'Acapulco', 'MEXICO', 'MX', '-6', '16.757061', '-99.753953', 1, 'true', 0),
('ACC', 'Kotoka Airport', 'ACC', 'Accra', 'GHANA', 'GH', '0', '5.605186', '-0.166786', 1, 'true', 0),
('ACE', 'Lanzarote Airport', 'ACE', 'Lanzarote', 'SPAIN', 'ES', '0', '28.945464', '-13.605225', 1, 'true', 0),
('ACH', 'Altenrhein Arpt', 'ACH', 'Altenrhein', 'SWITZERLAND', 'CH', '1', '47.485033', '9.560775', 1, 'true', 0),
('ACI', 'The Blaye Arpt', 'ACI', 'Alderney', 'UNITED KINGDOM', 'GB', '0', '49.706111', '-2.214722', 1, 'true', 0),
('ACK', 'Nantucket Memorial', 'ACK', 'Nantucket', 'UNITED STATES', 'US', '-5', '41.253053', '-70.060181', 1, 'true', 0),
('ACO', 'Ascona Arpt', 'ACO', 'Ascona', 'SWITZERLAND', 'CH', '-100', '0', '0', 1, 'true', 0),
('ACS', 'Achinsk Airport', 'ACS', 'Achinsk Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('ACT', 'Madison Cooper Arpt', 'ACT', 'Waco', 'UNITED STATES', 'US', '-6', '31.611289', '-97.230519', 1, 'true', 0),
('ACV', 'Arcata Eureka Arpt', 'ACV', 'Eureka', 'UNITED STATES', 'US', '-8', '40.978111', '-124.108611', 1, 'true', 0),
('ACX', 'Xingyi Arpt', 'ACX', 'Xingyi', 'CHINA', 'CN', '8', '25.0882', '104.9587', 1, 'true', 0),
('ADA', 'Adana Arpt', 'ADA', 'Adana', 'TURKEY', 'TR', '2', '36.982166', '35.280388', 1, 'true', 0),
('ADD', 'Bole Airport', 'ADD', 'Addis Ababa', 'ETHIOPIA', 'ET', '3', '8.977889', '38.799319', 1, 'true', 0),
('ADE', 'Yemen Intl Arpt', 'ADE', 'Aden', 'YEMEN', 'YE', '3', '12.829542', '45.028792', 1, 'true', 0),
('ADF', 'Adiyaman Airport', 'ADF', 'Adiyaman', 'TURKEY', 'TR', '2', '37.7314', '38.4689', 1, 'true', 0),
('ADG', 'Lenawee County Arpt', 'ADG', 'Adrian', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ADH', 'Aldan Airport', 'ADH', 'Aldan Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('ADK', 'Adak Island Ns', 'ADK', 'Adak Island', 'UNITED STATES', 'US', '-10', '51.878', '-176.646', 1, 'true', 0),
('ADL', 'Adelaide Arpt', 'ADL', 'Adelaide', 'AUSTRALIA', 'AU', '9', '-34.945', '138.530556', 1, 'true', 0),
('ADM', 'Ardmore Municipal Arpt', 'ADM', 'Ardmore', 'UNITED STATES', 'US', '-6', '34.300833', '-97.008889', 1, 'true', 0),
('KDK', 'Kodiak Municipal', 'ADQ', 'Kodiak', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('ADQ', 'Kodiak Arpt', 'ADQ', 'Kodiak', 'UNITED STATES', 'US', '-9', '57.749967', '-152.493856', 2, 'true', 0),
('ADT', 'Ada Municipal Arpt', 'ADT', 'Ada OK', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ADU', 'Ardabil Arpt', 'ADU', 'Ardabil', 'IRAN', 'IR', '3', '38.325678', '48.424356', 1, 'true', 0),
('ADW', 'Andrews Air Force Base', 'ADW', 'Camp Springs', 'UNITED STATES', 'US', '-5', '38.810806', '-76.867028', 1, 'true', 0),
('ADX', 'Leuchars Arpt', 'ADX', 'St Andrews', 'UNITED KINGDOM', 'GB', '0', '56.372889', '-2.868444', 1, 'true', 0),
('ADZ', 'San Andres Island Arpt', 'ADZ', 'San Andres', 'COLOMBIA', 'CO', '-5', '12.583594', '-81.711192', 1, 'true', 0),
('AEI', 'Algeciras Arpt', 'AEI', 'Algeciras', 'SPAIN', 'ES', '-100', '0', '0', 1, 'true', 0),
('AEL', 'Albert Lea Arpt', 'AEL', 'Albert Lea', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('AER', 'Alder Sochi Arpt', 'AER', 'Adler Sochi', 'RUSSIA', 'RU', '4', '43.449928', '39.956589', 1, 'true', 0),
('AES', 'Vigra Airport', 'AES', 'Aalesund', 'NORWAY', 'NO', '1', '62.560372', '6.110164', 1, 'true', 0),
('AEX', 'Alexandria Intl Arpt', 'AEX', 'Alexandria', 'UNITED STATES', 'US', '-6', '31.3274', '-92.549833', 2, 'true', 0),
('ESF', 'Esler Field', 'AEX', 'Alexandria', 'UNITED STATES', 'US', '-6', '31.394903', '-92.295772', 2, '', 0),
('AEY', 'Akureyri', 'AEY', 'Akureyri', 'ICELAND', 'IS', '0', '65.659994', '-18.072703', 1, 'true', 0),
('AFA', 'San Rafael Arpt', 'AFA', 'San Rafael', 'ARGENTINA', 'AR', '-3', '-34.588314', '-68.403854', 1, 'true', 0),
('AFK', 'Kondavattavan Tank Arpt', 'AFK', 'Ampara', 'SRI LANKA', 'LK', '-100', '0', '0', 1, 'true', 0),
('AFL', 'Alta Floresta Arpt', 'AFL', 'Alta Floresta', 'BRAZIL', 'BR', '-4', '-9.866092', '-56.106206', 1, 'true', 0),
('AFY', 'Afyon Arpt', 'AFY', 'Afyon Arpt', 'TURKEY', 'TR', '2', '38.726425', '30.601114', 1, 'true', 0),
('AGA', 'Agadir Almassira Arpt', 'AGA', 'Agadir', 'MOROCCO', 'MA', '0', '30.381353', '-9.546311', 1, 'true', 0),
('AGB', 'Muehlhausen Arpt', 'AGB', 'Augsburg', 'GERMANY', 'DE', '1', '48.425158', '10.931764', 1, 'true', 0),
('AGE', 'Flugplatz Arpt', 'AGE', 'Wangerooge', 'GERMANY', 'DE', '1', '53.7828', '7.91389', 1, 'true', 0),
('AGF', 'La Garenne Arpt', 'AGF', 'Agen', 'FRANCE', 'FR', '1', '44.174721', '0.590556', 1, 'true', 0),
('AGH', 'Angelholm Helsingborg Arpt', 'AGH', 'Angelholm', 'SWEDEN', 'SE', '1', '56.2961', '12.8471', 1, 'true', 0),
('AGN', 'Angoon Arpt', 'AGN', 'Angoon', 'UNITED STATES', 'US', '-9', '57.503611', '-134.585', 1, 'true', 0),
('AGO', 'Magnolia Municipal', 'AGO', 'Magnolia', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('AGP', 'Malaga Arpt', 'AGP', 'Malaga', 'SPAIN', 'ES', '1', '36.6749', '-4.499106', 1, 'true', 0),
('AGQ', 'Agrinion Arpt', 'AGQ', 'Agrinion', 'GREECE', 'GR', '2', '38.602022', '21.351208', 1, 'true', 0),
('AGR', 'Kheria Arpt', 'AGR', 'Agra', 'INDIA', 'IN', '5', '27.155831', '77.960892', 1, 'true', 0),
('DNL', 'Daniel Airport', 'AGS', 'Augusta', 'UNITED STATES', 'US', '-4', '33.466503', '-82.039381', 2, '', 0),
('AGS', 'Bush Field', 'AGS', 'Augusta', 'UNITED STATES', 'US', '-5', '33.369944', '-81.9645', 2, 'true', 0),
('AGT', 'Alejo Garcia Arpt', 'AGT', 'Ciudad Del Este', 'PARAGUAY', 'PY', '-4', '-25.4555', '-54.843592', 1, 'true', 0),
('AGU', 'Aguascalientes Municipal Arpt', 'AGU', 'Aguascalientes', 'MEXICO', 'MX', '-6', '21.705558', '-102.317858', 1, 'true', 0),
('AHB', 'Abha Airport', 'AHB', 'Abha', 'SAUDI ARABIA', 'SA', '3', '18.240367', '42.656625', 1, 'true', 0),
('AHI', 'Amahai Airport', 'AHI', 'Amahai', 'INDONESIA', 'ID', '-100', '0', '0', 1, 'true', 0),
('AHN', 'Athens Municipal', 'AHN', 'Athens', 'UNITED STATES', 'US', '-5', '33.9486', '-83.3263', 1, 'true', 0),
('AHO', 'Fertilia Arpt', 'AHO', 'Alghero', 'ITALY', 'IT', '1', '40.632133', '8.290772', 1, 'true', 0),
('AHU', 'Charif Al Idrissi Arpt', 'AHU', 'Al Hoceima', 'MOROCCO', 'MA', '0', '35.177103', '-3.839525', 1, 'true', 0),
('AIA', 'Alliance Municipal', 'AIA', 'Alliance', 'UNITED STATES', 'US', '-7', '42.053333', '-102.803889', 1, 'true', 0),
('AID', 'Anderson Municipal Arpt', 'AID', 'Anderson', 'UNITED STATES', 'US', '-100', '40.1087', '-85.613', 1, 'true', 0),
('AIK', 'Aiken Municipal Arpt', 'AIK', 'Aiken', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('AIN', 'Wainwright Municipal Arpt', 'AIN', 'Wainwright', 'UNITED STATES', 'US', '-9', '70.638056', '-159.994722', 1, 'true', 0),
('AIT', 'Aitutaki Arpt', 'AIT', 'Aitutaki', 'COOK ISLANDS', 'CK', '-10', '-18.830922', '-159.764233', 1, 'true', 0),
('AIY', 'Bader Field', 'AIY', 'Atlantic City', 'UNITED STATES', 'US', '-100', '0', '0', 2, 'true', 0),
('ACY', 'Pomona Field', 'AIY', 'Atlantic City', 'UNITED STATES', 'US', '-5', '39.457583', '-74.577167', 2, '', 0),
('AIZ', 'Lee C Fine Memorial', 'AIZ', 'Lake Of The Ozarks', 'UNITED STATES', 'US', '-5', '38.096035', '-92.549488', 1, 'true', 0),
('AJA', 'Campo Dell Oro Arpt', 'AJA', 'Ajaccio', 'FRANCE', 'FR', '1', '41.923637', '8.802917', 1, 'true', 0),
('AJF', 'JOUF', 'AJF', 'Al Jouf', 'SAUDI ARABIA', 'SA', '1', '0', '0', 1, 'true', 0),
('AJI', 'Agri Airport', 'AJI', 'Agri', 'TURKEY', 'TR', '2', '39.6546', '43.0271', 1, 'true', 0),
('AJR', 'Arvidsjaur Arpt', 'AJR', 'Arvidsjaur', 'SWEDEN', 'SE', '1', '65.590278', '19.281944', 1, 'true', 0),
('AJU', 'Santa Maria Arpt', 'AJU', 'Aracaju', 'BRAZIL', 'BR', '-3', '-10.984', '-37.070333', 1, 'true', 0),
('AKJ', 'Asahikawa Arpt', 'AKJ', 'Asahikawa', 'JAPAN', 'JP', '9', '43.670833', '142.4475', 1, 'true', 0),
('AKL', 'Auckland Arpt', 'AKL', 'Auckland', 'NEW ZEALAND', 'NZ', '12', '-37.008056', '174.791667', 1, 'true', 0),
('AKN', 'King Salmon Arpt', 'AKN', 'King Salmon', 'UNITED STATES', 'US', '-9', '58.676778', '-156.649278', 1, 'true', 0),
('AKU', 'Aksu Arpt', 'AKU', 'Aksu', 'CHINA', 'CN', '8', '41.2625', '80.2917', 1, 'true', 0),
('AKV', 'Akulivik Arpt', 'AKV', 'Akulivik', 'CANADA', 'CA', '-5', '60.8186', '-78.1486', 1, 'true', 0),
('AKX', 'Aqtobe Arpt', 'AKX', 'Aqtobe', 'KAZAKHSTAN', 'KZ', '5', '50.245833', '57.206667', 1, 'true', 0),
('ALA', 'Almaty Arpt', 'ALA', 'Almaty', 'KAZAKHSTAN', 'KZ', '6', '43.352072', '77.040508', 1, 'true', 0),
('ALB', 'Albany Cty Arpt', 'ALB', 'Albany', 'UNITED STATES', 'US', '-5', '42.748267', '-73.801692', 1, 'true', 0),
('ALC', 'Alicante Arpt', 'ALC', 'Alicante', 'SPAIN', 'ES', '1', '38.282169', '-0.558156', 1, 'true', 0),
('ALE', 'Alpine Aprt', 'ALE', 'Alpine', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ALF', 'Elvebakken Arpt', 'ALF', 'Alta', 'NORWAY', 'NO', '1', '69.976111', '23.371667', 1, 'true', 0),
('ALG', 'Houari Boumedienne Arpt', 'ALG', 'Algiers', 'ALGERIA', 'DZ', '1', '36.691014', '3.215408', 1, 'true', 0),
('ALH', 'Albany Airport', 'ALH', 'Albany', 'AUSTRALIA', 'AU', '8', '-34.9433', '117.809', 1, 'true', 0),
('ALJ', 'Kortdoorn Arpt', 'ALJ', 'Alexander Bay', 'SOUTH AFRICA', 'ZA', '2', '-28.575001', '16.533333', 1, 'true', 0),
('ALL', 'Albenga Arpt', 'ALL', 'Albenga', 'ITALY', 'IT', '1', '44.050608', '8.127428', 1, 'true', 0),
('ALM', 'Alamogordo Municipal', 'ALM', 'Alamogordo', 'UNITED STATES', 'US', '-7', '32.8399', '-105.991', 1, 'true', 0),
('ALO', 'Livingston Betsworth Fld', 'ALO', 'Waterloo', 'UNITED STATES', 'US', '-6', '42.5571', '-92.4003', 1, 'true', 0),
('ALP', 'Nejrab Arpt', 'ALP', 'Aleppo', 'SYRIA', 'SY', '2', '36.180675', '37.224358', 1, 'true', 0),
('ALR', 'Alexandra Arpt', 'ALR', 'Alexandra', 'NEW ZEALAND', 'NZ', '12', '-45.211666', '169.373333', 1, 'true', 0),
('ALS', 'Alamosa Municipal', 'ALS', 'Alamosa', 'UNITED STATES', 'US', '-7', '37.435', '-105.866667', 1, 'true', 0),
('ALW', 'Walla Walla City County', 'ALW', 'Walla Walla', 'UNITED STATES', 'US', '-8', '46.0949', '-118.288', 1, 'true', 0),
('ALX', 'Thomas C Russell Field', 'ALX', 'Alexander City', 'UNITED STATES', 'US', '-5', '38.806346', '-77.0621', 1, 'true', 0),
('ALY', 'El Nouzha Arpt', 'ALY', 'Alexandria', 'EGYPT', 'EG', '2', '31.183903', '29.948889', 1, 'true', 0),
('TDW', 'Tradewind Airport', 'AMA', 'Amarillo', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('AMA', 'Amarillo Intl Arpt', 'AMA', 'Amarillo', 'UNITED STATES', 'US', '-6', '35.219369', '-101.705931', 2, 'true', 0),
('AMD', 'Sardar Vallabh Bhai Patel Intl Arpt', 'AMD', 'Ahmedabad', 'INDIA', 'IN', '5', '23.077242', '72.63465', 1, 'true', 0),
('AMI', 'Selaparang Airport', 'AMI', 'Mataram', 'INDONESIA', 'ID', '8', '-8.560708', '116.094656', 1, 'true', 0),
('ADJ', 'Civil Marka Arpt', 'AMM', 'Amman', 'JORDAN', 'JO', '2', '31.972703', '35.991569', 2, '', 0),
('AMM', 'Queen Alia Intl Arpt', 'AMM', 'Amman', 'JORDAN', 'JO', '2', '31.722556', '35.993214', 2, 'true', 0),
('AMQ', 'Pattimura Arpt', 'AMQ', 'Ambon', 'INDONESIA', 'ID', '9', '-3.710264', '128.089136', 1, 'true', 0),
('ZYA', 'Amsterdam Central Rail Station', 'AMS', 'Amsterdam', 'NETHERLANDS', 'NL', '1', '52.7873', '4.90074', 2, '', 0),
('AMS', 'Schiphol Arpt', 'AMS', 'Amsterdam', 'NETHERLANDS', 'NL', '1', '52.308613', '4.763889', 2, 'true', 0),
('AMV', 'Amderma Airport', 'AMV', 'Amderma Airport', 'RUSSIA', 'RU', '4', '69.7633', '61.5564', 1, 'true', 0),
('AMW', 'Ames Minicipal Arpt', 'AMW', 'Ames', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ANA', 'Anaheim Arpt', 'ANA', 'Anaheim', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ANB', 'Anniston Municipal Arpt', 'ANB', 'Anniston', 'UNITED STATES', 'US', '-6', '33.588167', '-85.858111', 1, 'true', 0),
('ANC', 'Anchorage Intl Arpt', 'ANC', 'Anchorage', 'UNITED STATES', 'US', '-9', '61.174361', '-149.996361', 1, 'true', 0),
('AND', 'Anderson Arpt', 'AND', 'Anderson', 'UNITED STATES', 'US', '-5', '34.494583', '-82.709389', 1, 'true', 0),
('ANE', 'Marce Arpt', 'ANE', 'Angers', 'FRANCE', 'FR', '1', '47.5603', '-0.312222', 1, 'true', 0),
('ANF', 'Cerro Moreno Arpt', 'ANF', 'Antofagasta', 'CHILE', 'CL', '-4', '-23.444478', '-70.4451', 1, 'true', 0),
('ANG', 'Brie Champniers', 'ANG', 'Angouleme', 'FRANCE', 'FR', '1', '45.729247', '0.221456', 1, 'true', 0),
('ANI', 'Aniak Arpt', 'ANI', 'Aniak', 'UNITED STATES', 'US', '-9', '61.5816', '-159.543', 1, 'true', 0),
('ESB', 'Esenboga Arpt', 'ANK', 'Ankara', 'TURKEY', 'TR', '2', '40.128082', '32.995083', 1, '', 0),
('ANP', 'Lee Annapolis Arpt', 'ANP', 'Annapolis', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ANR', 'Antwerp Brussels North', 'ANR', 'Antwerp', 'BELGIUM', 'BE', '1', '51.189444', '4.460278', 1, 'true', 0),
('ANU', 'V C Bird Intl Arpt', 'ANU', 'Antigua', 'ANTIGUA AND BARBUDA', 'AG', '-4', '17.136749', '-61.792667', 1, 'true', 0),
('ANW', 'Ainsworth Minicipal Arpt', 'ANW', 'Ainsworth', 'UNITED STATES', 'US', '-100', '42.58', '-99.9933', 1, 'true', 0),
('ANX', 'Andenes Arpt', 'ANX', 'Andenes', 'NORWAY', 'NO', '1', '69.2925', '16.144167', 1, 'true', 0),
('AOC', 'Altenburg Nobitz Arpt', 'AOC', 'Altenburg', 'GERMANY', 'DE', '1', '50.981817', '12.506361', 1, 'true', 0),
('AOE', 'Anadolu University Airport', 'AOE', 'Eskisehir', 'TURKEY', 'TR', '2', '39.809858', '30.519378', 1, 'true', 0),
('AOH', 'Allen County Arpt', 'AOH', 'Lima', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('AOI', 'Falconara Arpt', 'AOI', 'Ancona', 'ITALY', 'IT', '1', '43.616389', '13.362222', 1, 'true', 0),
('AOJ', 'Aomori Arpt', 'AOJ', 'Aomori', 'JAPAN', 'JP', '9', '40.734722', '140.690833', 1, 'true', 0),
('AOK', 'Karpathos Arpt', 'AOK', 'Karpathos', 'GREECE', 'GR', '2', '35.421408', '27.146008', 1, 'true', 0),
('AOL', 'Paso De Los Libres Arpt', 'AOL', 'Paso De Los Libres', 'ARGENTINA', 'AR', '-3', '-29.689425', '-57.152078', 1, 'true', 0),
('AOO', 'Blair Cty Arpt', 'AOO', 'Altoona', 'UNITED STATES', 'US', '-5', '40.296372', '-78.320022', 1, 'true', 0),
('AOR', 'Sultan Abdul Hamlin Arpt', 'AOR', 'Alor Setar', 'MALAYSIA', 'MY', '8', '6.189667', '100.398183', 1, 'true', 0),
('AOT', 'Corrado Gex Arpt', 'AOT', 'Aosta', 'ITALY', 'IT', '1', '45.738456', '7.368719', 1, 'true', 0),
('APC', 'Napa Cty Arpt', 'APC', 'Napa', 'UNITED STATES', 'US', '-7', '38.213194', '-122.280694', 1, 'true', 0),
('APF', 'Naples Municipal', 'APF', 'Naples', 'UNITED STATES', 'US', '-5', '26.152619', '-81.775294', 1, 'true', 0),
('APL', 'Nampula Arpt', 'APL', 'Nampula', 'MOZAMBIQUE', 'MZ', '2', '-15.105611', '39.2818', 1, 'true', 0),
('APN', 'Phelps Collins Arpt', 'APN', 'Alpena', 'UNITED STATES', 'US', '-5', '45.0781', '-83.5603', 1, 'true', 0),
('APO', 'Apartado Arpt', 'APO', 'Apartado', 'COLOMBIA', 'CO', '-5', '7.033', '-77.2', 1, 'true', 0),
('APS', 'Anapolis Arpt', 'APS', 'Anapolis', 'BRAZIL', 'BR', '-100', '-16.3619', '-48.9275', 1, 'true', 0),
('APW', 'Apia Airport', 'APW', 'Apia', 'SAMOA', 'WS', '-11', '-13.829969', '-172.008336', 2, 'true', 0),
('FGI', 'Fagali Arpt', 'APW', 'Apia', 'SAMOA', 'WS', '-11', '-13.848611', '-171.740833', 2, '', 0),
('AQA', 'Araraquara Arpt', 'AQA', 'Araraquara', 'BRAZIL', 'BR', '-3', '-21.812', '-48.133028', 1, 'true', 0),
('AQG', 'Anqing Arpt', 'AQG', 'Anqing', 'CHINA', 'CN', '8', '30.5822', '117.0502', 1, 'true', 0),
('AQI', 'Qaisumah Arpt', 'AQI', 'Qaisumah', 'SAUDI ARABIA', 'SA', '3', '28.335192', '46.125069', 1, 'true', 0),
('AQJ', 'Aqaba Airport', 'AQJ', 'Aqaba', 'JORDAN', 'JO', '2', '29.611619', '35.018067', 1, 'true', 0),
('AQP', 'Rodriguez Ballon Arpt', 'AQP', 'Arequipa', 'PERU', 'PE', '-5', '-16.341072', '-71.583083', 1, 'true', 0),
('ARB', 'Ann Arbor Municipal', 'ARB', 'Ann Arbor', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ARH', 'Arkhangelsk Arpt', 'ARH', 'Arkhangelsk', 'RUSSIA', 'RU', '4', '64.360281', '40.430167', 1, 'true', 0),
('ARI', 'Chacalluta Arpt', 'ARI', 'Arica', 'CHILE', 'CL', '-4', '-18.348531', '-70.338742', 1, 'true', 0),
('ARK', 'Arusha Arpt', 'ARK', 'Arusha', 'TANZANIA', 'TZ', '3', '-3.367794', '36.633333', 1, 'true', 0),
('ARM', 'Armidale Arpt', 'ARM', 'Armidale', 'AUSTRALIA', 'AU', '10', '-30.528056', '151.617222', 1, 'true', 0),
('ART', 'Watertown Arpt', 'ART', 'Watertown', 'UNITED STATES', 'US', '-5', '43.991922', '-76.021739', 1, 'true', 0),
('ARU', 'Aracatuba Arpt', 'ARU', 'Aracatuba', 'BRAZIL', 'BR', '-3', '-21.141342', '-50.424722', 1, 'true', 0),
('ARV', 'Noble F Lee Memorial Field', 'ARV', 'Minocqua', 'UNITED STATES', 'US', '-6', '45.927778', '-89.730833', 1, 'true', 0),
('ARW', 'Arad Arpt', 'ARW', 'Arad', 'ROMANIA', 'RO', '2', '46.17655', '21.262022', 1, 'true', 0),
('ARY', 'Ararat Arpt', 'ARY', 'Ararat', 'AUSTRALIA', 'AU', '-100', '-37.3119', '142.9906', 1, 'true', 0),
('ASB', 'Ashgabat Arpt', 'ASB', 'Ashgabat', 'TURKMENISTAN', 'TM', '5', '37.986814', '58.360967', 1, 'true', 0),
('ASD', 'Andros Town Arpt', 'ASD', 'Andros Town', 'BAHAMAS', 'BS', '-5', '24.698283', '-77.795611', 1, 'true', 0),
('ASE', 'Pitkin Cty Arptt Sardy Fld', 'ASE', 'Aspen', 'UNITED STATES', 'US', '-7', '39.2232', '-106.869', 1, 'true', 0),
('ASF', 'Astrakhan Arpt', 'ASF', 'Astrakhan', 'RUSSIA', 'RU', '6', '46.283333', '48.006278', 1, 'true', 0),
('ASH', 'Boire Field Arpt', 'ASH', 'Nashua', 'UNITED STATES', 'US', '-4', '42.78175', '-71.514778', 1, 'true', 0),
('ASJ', 'Amami O Shima Arpt', 'ASJ', 'Amami O Shima', 'JAPAN', 'JP', '9', '28.430633', '129.712542', 1, 'true', 0),
('ASK', 'Yamoussoukro Arpt', 'ASK', 'Yamoussouro', 'COTE D\'IVOIRE', 'CI', '0', '6.903167', '-5.365581', 1, 'true', 0),
('ASL', 'Harrison County Arpt', 'ASL', 'Marshall', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ASM', 'Asmara Intl Arpt', 'ASM', 'Asmara', 'ERITREA', 'ER', '3', '15.291853', '38.910667', 1, 'true', 0),
('ASN', 'Talladega Arpt', 'ASN', 'Talladega', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ASP', 'Alice Springs Arpt', 'ASP', 'Alice Springs', 'AUSTRALIA', 'AU', '9', '-23.806667', '133.902222', 1, 'true', 0),
('ASR', 'Kayseri Arpt', 'ASR', 'Kayseri', 'TURKEY', 'TR', '2', '38.770386', '35.495428', 1, 'true', 0),
('AST', 'Astoria Arpt', 'AST', 'Astoria', 'UNITED STATES', 'US', '-8', '46.157972', '-123.878694', 1, 'true', 0),
('ASU', 'Salvio Pettirosse Arpt', 'ASU', 'Asuncion', 'PARAGUAY', 'PY', '-4', '-25.23985', '-57.519133', 1, 'true', 0),
('ASW', 'Daraw Arpt', 'ASW', 'Aswan', 'EGYPT', 'EG', '2', '23.964356', '32.819975', 1, 'true', 0),
('ATC', 'Arthurs Town Arpt', 'ATC', 'Arthurs Town', 'BAHAMAS', 'BS', '-5', '24.629417', '-75.673775', 1, 'true', 0),
('ATH', 'Eleftherios Venizelos Intl Arpt', 'ATH', 'Athens', 'GREECE', 'GR', '2', '37.936358', '23.944467', 2, 'true', 0),
('HEW', 'Athens Hellinikon Arpt', 'ATH', 'Athens', 'GREECE', 'GR', '2', '37.8933', '23.7261', 2, '', 0),
('ATI', 'Artigas Arpt', 'ATI', 'Artigas', 'URUGUAY', 'UY', '-100', '0', '0', 1, 'true', 0),
('PDK', 'Dekalb Peachtree', 'ATL', 'Atlanta', 'UNITED STATES', 'US', '-4', '33.875611', '-84.301972', 3, '', 0),
('FTY', 'Fulton Cty Arpt', 'ATL', 'Atlanta', 'UNITED STATES', 'US', '-5', '33.7791', '-84.5214', 3, '', 0),
('ATL', 'Hartsfield Jackson Intl Arpt', 'ATL', 'Atlanta', 'UNITED STATES', 'US', '-5', '33.636719', '-84.428067', 3, 'true', 0),
('ATM', 'Altamira Arpt', 'ATM', 'Altamira', 'BRAZIL', 'BR', '-3', '-3.253906', '-52.253978', 1, 'true', 0),
('ATO', 'Ohio University Arpt', 'ATO', 'Athens', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ATQ', 'Raja Sansi Arpt', 'ATQ', 'Amritsar', 'INDIA', 'IN', '5', '31.709594', '74.797264', 1, 'true', 0),
('ATR', 'Mouakchott Arpt', 'ATR', 'Atar', 'MAURITANIA', 'MR', '0', '20.506828', '-13.043194', 1, 'true', 0),
('ATW', 'Outagamie Cty Arpt', 'ATW', 'Appleton', 'UNITED STATES', 'US', '-6', '44.257526', '-88.507576', 1, 'true', 0),
('ATY', 'Watertown Municipal', 'ATY', 'Watertown', 'UNITED STATES', 'US', '-6', '44.914', '-97.1547', 1, 'true', 0),
('AUA', 'Reina Beatrix Arpt', 'AUA', 'Aruba', 'ARUBA', 'AW', '-4', '12.501389', '-70.015221', 1, 'true', 0),
('AUG', 'Maine State Arpt', 'AUG', 'Augusta', 'UNITED STATES', 'US', '-5', '44.320647', '-69.797317', 1, 'true', 0),
('ZVJ', 'Abu Dhabi-bus Station', 'AUH', 'Abu Dhabi', 'UNITED ARAB EMIRATES', 'AE', '-100', '0', '0', 2, '', 0),
('AUH', 'Dhabi Intl Arpt', 'AUH', 'Abu Dhabi', 'UNITED ARAB EMIRATES', 'AE', '4', '24.432972', '54.651138', 2, 'true', 0),
('AUO', 'Auburn Opelika', 'AUO', 'Auburn', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('AUQ', 'Atuona Arpt', 'AUQ', 'Atuona', 'FRENCH POLYNESIA', 'PF', '-9', '-9.768794', '-139.011256', 1, 'true', 0),
('AUR', 'Tronquieres Arpt', 'AUR', 'Aurillac', 'FRANCE', 'FR', '1', '44.891388', '2.421944', 1, 'true', 0),
('AUS', 'Bergstrom Intl Arpt', 'AUS', 'Austin', 'UNITED STATES', 'US', '-6', '30.194528', '-97.669889', 1, 'true', 0),
('AUU', 'Aurukin Arpt', 'AUU', 'Aurukun Mission', 'AUSTRALIA', 'AU', '10', '-13.3539', '141.721', 1, 'true', 0),
('AUW', 'Wausau Municipal Arpt', 'AUW', 'Wausau', 'UNITED STATES', 'US', '-6', '44.926285', '-89.627002', 2, 'true', 0),
('CWA', 'Central Wisconsin Arpt', 'AUW', 'Wausau', 'UNITED STATES', 'US', '-6', '44.772726', '-89.646635', 2, '', 0),
('AUX', 'Araguaina Arpt', 'AUX', 'Araguaina', 'BRAZIL', 'BR', '-3', '-7.228333', '-48.240833', 1, 'true', 0),
('AUZ', 'Aurora Municipal Arpt', 'AUZ', 'Aurora', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('AVI', 'Maximo Gomez Arpt', 'AVI', 'Ciego De Avila', 'CUBA', 'CU', '-5', '22.027053', '-78.789617', 1, 'true', 0),
('AVL', 'Asheville Municipal Arpt', 'AVL', 'Asheville', 'UNITED STATES', 'US', '-5', '35.436194', '-82.541806', 1, 'true', 0),
('XZN', 'Avignon Railway Station', 'AVN', 'Avignon', 'FRANCE', 'FR', '-100', '46.4', '5.8333', 2, '', 0),
('AVN', 'Avignon Caumont Arpt', 'AVN', 'Avignon', 'FRANCE', 'FR', '1', '43.9073', '4.901831', 2, 'true', 0),
('AVP', 'Wilkes Barre Scranton Intl Arpt', 'AVP', 'Scranton', 'UNITED STATES', 'US', '-5', '41.338478', '-75.723403', 1, 'true', 0),
('SXC', 'Catalina Arpt', 'AVX', 'Catalina Island', 'UNITED STATES', 'US', '-100', '0', '0', 1, '', 0),
('AXA', 'Wallblake Municipal', 'AXA', 'Anguilla', 'ANGUILLA', 'AI', '-4', '18.204834', '-63.055084', 1, 'true', 0),
('AXD', 'Dhmokritos Arpt', 'AXD', 'Alexandroupolis', 'GREECE', 'GR', '2', '40.855869', '25.956264', 1, 'true', 0),
('AXM', 'El Eden Arpt', 'AXM', 'Armenia', 'COLOMBIA', 'CO', '-5', '4.452775', '-75.766447', 1, 'true', 0),
('AXT', 'Akita Airport', 'AXT', 'Akita', 'JAPAN', 'JP', '9', '39.615556', '140.218611', 1, 'true', 0),
('AXV', 'Neil Armstrong Arpt', 'AXV', 'Wapakoneta', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('AYP', 'Yanamilla Arpt', 'AYP', 'Ayacucho', 'PERU', 'PE', '-5', '-13.154819', '-74.204417', 1, 'true', 0),
('AYQ', 'Connellan Arpt', 'AYQ', 'Ayers Rock', 'AUSTRALIA', 'AU', '9', '-25.186111', '130.975556', 1, 'true', 0),
('AYR', 'Ayr Arpt', 'AYR', 'Ayr Au', 'AUSTRALIA', 'AU', '-100', '-19.5958', '147.3258', 1, 'true', 0),
('AYS', 'Ware County Arpt', 'AYS', 'Waycross', 'UNITED STATES', 'US', '-100', '31.2491', '-82.3955', 1, 'true', 0),
('AYT', 'Antalya Airport', 'AYT', 'Antalya', 'TURKEY', 'TR', '2', '36.898731', '30.800461', 1, 'true', 0),
('AZD', 'Yazd Arpt', 'AZD', 'Yazd', 'IRAN', 'IR', '4', '31.904908', '54.276503', 1, 'true', 0),
('AZG', 'Apatzingan Arpt', 'AZG', 'Apatzingan', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('AZN', 'Andizhan', 'AZN', 'Andizhan', 'UZBEKISTAN', 'UZ', '5', '40.7277', '72.294', 1, 'true', 0),
('AZO', 'Kalamazoo Cty Arpt', 'AZO', 'Kalamazoo', 'UNITED STATES', 'US', '-5', '42.234875', '-85.552058', 1, 'true', 0),
('AZS', 'Samana International Arpt', 'AZS', 'Samana', 'DOMINICAN REPUBLIC', 'DO', '-4', '19.267', '-69.742', 1, 'true', 0),
('BAG', 'Loakan Arpt', 'BAG', 'Baguio', 'PHILIPPINES', 'PH', '8', '16.375103', '120.619636', 1, 'true', 0),
('BAH', 'Bahrain Intl Arpt', 'BAH', 'Muharraq', 'BAHRAIN', 'BH', '3', '26.270834', '50.63361', 1, 'true', 0),
('GYD', 'Heydar Aliyev Intl Arpt', 'BAK', 'Baku', 'AZERBAIJAN', 'AZ', '4', '40.4675', '50.046667', 3, '', 7),
('ZXT', 'Zabrat Arpt', 'BAK', 'Baku', 'AZERBAIJAN', 'AZ', '-100', '0', '0', 3, '', 0),
('BAK', 'Baku Airport', 'BAK', 'Baku', 'AZERBAIJAN', 'AZ', '4', '40.4675', '50.046667', 3, 'true', 0),
('BAL', 'Batman Arpt', 'BAL', 'Batman', 'TURKEY', 'TR', '2', '37.928969', '41.116583', 1, 'true', 0),
('BAO', 'Udorn Arpt', 'BAO', 'Ban Mak Khaen', 'THAILAND', 'TH', '-100', '0', '0', 1, 'true', 0),
('BAQ', 'E Cortissoz Arpt', 'BAQ', 'Barranquilla', 'COLOMBIA', 'CO', '-5', '10.889589', '-74.780819', 1, 'true', 0),
('BAS', 'Balalae Arpt', 'BAS', 'Balalae', 'SOLOMON ISLANDS', 'SB', '11', '-6.967', '155.883', 1, 'true', 0),
('BAT', 'Barretos Arpt', 'BAT', 'Barretos', 'BRAZIL', 'BR', '-100', '-20.585', '-48.5953', 1, 'true', 0),
('BAU', 'Bauru Arpt', 'BAU', 'Bauru', 'BRAZIL', 'BR', '-3', '-22.345042', '-49.0538', 1, 'true', 0),
('BAV', 'Baotou Arpt', 'BAV', 'Baotou', 'CHINA', 'CN', '8', '40.56', '109.997', 1, 'true', 0),
('BAX', 'Barnaul Arpt', 'BAX', 'Barnaul', 'RUSSIA', 'RU', '7', '53.363775', '83.538533', 1, 'true', 0),
('BAY', 'Baia Mare Arpt', 'BAY', 'Baia Mare', 'ROMANIA', 'RO', '2', '47.658389', '23.470022', 1, 'true', 0),
('BBA', 'Teniente Vidal Airport', 'BBA', 'Balmaceda', 'CHILE', 'CL', '-3', '-45.916058', '-71.689475', 1, 'true', 0),
('BBH', 'Barth Arpt', 'BBH', 'Barth', 'GERMANY', 'DE', '1', '54.33754', '12.699705', 1, 'true', 0),
('BBI', 'Biju Patnaik Arpt', 'BBI', 'Bhubaneswar', 'INDIA', 'IN', '6', '20.244364', '85.817781', 1, 'true', 0),
('BBJ', 'Bitburg Air Base', 'BBJ', 'Bitburg', 'GERMANY', 'DE', '1', '51.193531', '14.519747', 1, 'true', 0),
('BBK', 'Kasane Arpt', 'BBK', 'Kasane', 'BOTSWANA', 'BW', '2', '-17.832875', '25.1624', 1, 'true', 0),
('BBN', 'Bario Arpt', 'BBN', 'Bario', 'MALAYSIA', 'MY', '8', '3.73389', '115.479', 1, 'true', 0),
('BBR', 'Baillif Arpt', 'BBR', 'Basse Terre', 'GUADELOUPE', 'GP', '-4', '16.0133', '-61.7422', 1, 'true', 0),
('BBW', 'Broken Bow Municipal', 'BBW', 'Broken Bow', 'UNITED STATES', 'US', '-100', '41.4367', '-99.6417', 1, 'true', 0),
('BCB', 'Virginia Tech Arpt', 'BCB', 'Blacksburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BCD', 'Bacolod Arpt', 'BCD', 'Bacolod', 'PHILIPPINES', 'PH', '8', '10.642511', '122.929617', 1, 'true', 0),
('BCE', 'Bryce Arpt', 'BCE', 'Bryce', 'UNITED STATES', 'US', '-7', '37.706444', '-112.145806', 1, 'true', 0),
('BCH', 'English Madeira Arpt', 'BCH', 'Baucau', 'TIMOR-LESTE', 'TL', '-100', '-8.4854', '126.3993', 1, 'true', 0),
('BCI', 'Barcaldine Arpt', 'BCI', 'Barcaldine', 'AUSTRALIA', 'AU', '10', '-23.5653', '145.307', 1, 'true', 0),
('BCM', 'Bacau Arpt', 'BCM', 'Bacau', 'ROMANIA', 'RO', '2', '46.521946', '26.910278', 1, 'true', 0),
('BCN', 'Barcelona Arpt', 'BCN', 'Barcelona', 'SPAIN', 'ES', '1', '41.297078', '2.078464', 1, 'true', 0),
('BDA', 'Bermuda International', 'BDA', 'Bermuda', 'BERMUDA', 'BM', '-4', '32.364042', '-64.678703', 1, 'true', 0),
('BDB', 'Bundaberg Arpt', 'BDB', 'Bundaberg', 'AUSTRALIA', 'AU', '10', '-24.903889', '152.318611', 1, 'true', 0),
('BDD', 'Badu Island Arpt', 'BDD', 'Badu Island', 'AUSTRALIA', 'AU', '9', '-10.15', '141.175', 1, 'true', 0),
('BDJ', 'Sjamsudin Noor Arpt', 'BDJ', 'Banjarmasin', 'INDONESIA', 'ID', '8', '-3.442356', '114.762553', 1, 'true', 0),
('BDM', 'Bandirma Arpt', 'BDM', 'Bandirma Arpt', 'TURKEY', 'TR', '2', '40.317972', '27.977694', 1, 'true', 0),
('BDO', 'Husein Sastranegara Arpt', 'BDO', 'Bandung', 'INDONESIA', 'ID', '7', '-6.900625', '107.576294', 1, 'true', 0),
('BDQ', 'Vadodara Arpt', 'BDQ', 'Vadodara', 'INDIA', 'IN', '5', '22.336164', '73.226289', 1, 'true', 0),
('BDR', 'Sikorsky Memorial Arpt', 'BDR', 'Bridgeport', 'UNITED STATES', 'US', '-5', '41.163472', '-73.126167', 1, 'true', 0),
('BDS', 'Papola Casale Arpt', 'BDS', 'Brindisi', 'ITALY', 'IT', '1', '40.657633', '17.947033', 1, 'true', 0),
('BDU', 'Bardufoss Arpt', 'BDU', 'Bardufoss', 'NORWAY', 'NO', '1', '69.055758', '18.540356', 1, 'true', 0),
('BEB', 'Benbecula Arpt', 'BEB', 'Benbecula', 'UNITED KINGDOM', 'GB', '0', '57.481111', '-7.362778', 1, 'true', 0),
('BED', 'Bedford Arpt', 'BED', 'Bedford', 'UNITED STATES', 'US', '-5', '42.469953', '-71.289031', 1, 'true', 0),
('BJY', 'Batajnica Arpt', 'BEG', 'Belgrade', 'SERBIA', 'RS', '-100', '44.9236', '20.279', 2, '', 0),
('BEG', 'Belgrade Beograd Arpt', 'BEG', 'Belgrade', 'SERBIA', 'RS', '1', '44.818444', '20.309139', 2, 'true', 0),
('BEH', 'Ross Field', 'BEH', 'Benton Harbor', 'UNITED STATES', 'US', '-5', '42.128583', '-86.4285', 1, 'true', 0),
('BEL', 'Val De Cans Arpt', 'BEL', 'Belem', 'BRAZIL', 'BR', '-3', '-1.37925', '-48.476292', 1, 'true', 0),
('BEN', 'Benina Intl Arpt', 'BEN', 'Benghazi', 'LIBYAN ARAB JAMAHIRIYA', 'LY', '1', '32.096786', '20.269472', 1, 'true', 0),
('BEQ', 'Honington Arpt', 'BEQ', 'Bury St Edmunds', 'UNITED KINGDOM', 'GB', '0', '52.342611', '0.772939', 1, 'true', 0),
('BML', 'Berlin Arpt', 'BER', 'Berlin', 'GERMANY', 'DE', '-4', '44.574722', '-71.17639', 3, '', 0),
('SXF', 'Schoenefeld Arpt', 'BER', 'Berlin', 'GERMANY', 'DE', '1', '52.380001', '13.5225', 3, '', 0),
('TXL', 'Tegel Airport', 'BER', 'Berlin', 'GERMANY', 'DE', '1', '52.559686', '13.287711', 3, '', 0),
('BES', 'Guipavas Arpt', 'BES', 'Brest', 'FRANCE', 'FR', '1', '48.447911', '-4.418539', 1, 'true', 0),
('BET', 'Bethel Airport', 'BET', 'Bethel', 'UNITED STATES', 'US', '-9', '60.779778', '-161.838', 1, 'true', 0),
('BEU', 'Bedourie Arpt', 'BEU', 'Bedourie', 'AUSTRALIA', 'AU', '10', '-24.3461', '139.46', 1, 'true', 0),
('BEW', 'Beira Arpt', 'BEW', 'Beira', 'MOZAMBIQUE', 'MZ', '2', '-19.796419', '34.907556', 1, 'true', 0),
('BEY', 'Beirut Intl Arpt', 'BEY', 'Beirut', 'LEBANON', 'LB', '2', '33.820931', '35.488389', 1, 'true', 0),
('BEZ', 'Beru Arpt', 'BEZ', 'Beru', 'KIRIBATI', 'KI', '10', '-1.254722', '176.007222', 1, 'true', 0),
('BFD', 'Bradford Regional Arpt', 'BFD', 'Bradford', 'UNITED STATES', 'US', '-5', '41.8031', '-78.6401', 1, 'true', 0),
('BFE', 'Bielefeld Arpt', 'BFE', 'Bielefeld', 'GERMANY', 'DE', '-100', '0', '0', 1, 'true', 0),
('BFF', 'Scottsbluff Municipal', 'BFF', 'Scottsbluff', 'UNITED STATES', 'US', '-7', '41.874', '-103.596', 1, 'true', 0),
('BFG', 'Bullfrog Basin Arpt', 'BFG', 'Bullfrog Basin', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BFJ', 'Ba Arpt', 'BFJ', 'Ba City', 'FIJI', 'FJ', '-100', '0', '0', 1, 'true', 0),
('BFL', 'Meadows Field', 'BFL', 'Bakersfield', 'UNITED STATES', 'US', '-8', '35.433598', '-119.05677', 1, 'true', 0),
('BFN', 'Bloemfontein International', 'BFN', 'Bloemfontein', 'SOUTH AFRICA', 'ZA', '2', '-29.092722', '26.302444', 1, 'true', 0),
('BFP', 'Beaver Falls Arpt', 'BFP', 'Beaver Falls', 'UNITED STATES', 'US', '-100', '40.7725', '-80.3915', 1, 'true', 0),
('BFR', 'Virgil I Grissom Municipal', 'BFR', 'Bedford', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BFS', 'Belfast Intl Arpt', 'BFS', 'Belfast', 'UNITED KINGDOM', 'GB', '0', '54.6575', '-6.215833', 2, 'true', 0),
('BHD', 'Belfast City Arpt', 'BFS', 'Belfast', 'UNITED KINGDOM', 'GB', '0', '54.618056', '-5.8725', 2, '', 0),
('BFT', 'Beaufort County Arpt', 'BFT', 'Beaufort', 'UNITED STATES', 'US', '-5', '32.41083', '-80.635', 1, 'true', 0),
('BFV', 'Buri Ram Arpt', 'BFV', 'Buri Ram', 'THAILAND', 'TH', '7', '15.229539', '103.253231', 1, 'true', 0),
('BGA', 'Palo Negro Arpt', 'BGA', 'Bucaramanga', 'COLOMBIA', 'CO', '-5', '7.1265', '-73.184778', 1, 'true', 0),
('BGC', 'Braganca Arpt', 'BGC', 'Braganca', 'PORTUGAL', 'PT', '0', '41.8578', '-6.707125', 1, 'true', 0),
('BGF', 'Bangui Airport', 'BGF', 'Bangui', 'CENTRAL AFRICAN REPUBLIC', 'CF', '1', '4.398475', '18.518786', 1, 'true', 0),
('BGI', 'Grantley Adams Intl Arpt', 'BGI', 'Bridgetown', 'BARBADOS', 'BB', '-4', '13.074603', '-59.492456', 1, 'true', 0),
('BGM', 'Edwin A Link Field', 'BGM', 'Binghamton', 'UNITED STATES', 'US', '-5', '42.208689', '-75.979839', 1, 'true', 0),
('XKN', 'Finse Rail Station', 'BGO', 'Bergen', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('BGO', 'Flesland Airport', 'BGO', 'Bergen', 'NORWAY', 'NO', '1', '60.293386', '5.218142', 3, 'true', 0),
('XVK', 'Voss Rail Station', 'BGO', 'Bergen', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('BGR', 'Bangor Intl Arpt', 'BGR', 'Bangor', 'UNITED STATES', 'US', '-5', '44.807444', '-68.828139', 1, 'true', 0),
('BGV', 'Bento Goncalves Arpt', 'BGV', 'Bento Goncalves', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('BGW', 'Baghdad International Arpt', 'BGW', 'Baghdad', 'IRAQ', 'IQ', '3', '33.262539', '44.234578', 1, 'true', 0),
('BGY', 'Orio Al Serio Arpt', 'BGY', 'Bergamo', 'ITALY', 'IT', '1', '45.673889', '9.704166', 1, 'true', 0),
('BHB', 'Hancock County', 'BHB', 'Bar Harbor', 'UNITED STATES', 'US', '-5', '44.449769', '-68.361565', 1, 'true', 0),
('BHE', 'Woodbourne Arpt', 'BHE', 'Blenheim', 'NEW ZEALAND', 'NZ', '12', '-41.518333', '173.870278', 1, 'true', 0),
('BHI', 'Commandante Airport', 'BHI', 'Bahia Blanca', 'ARGENTINA', 'AR', '-3', '-38.724967', '-62.169317', 1, 'true', 0),
('BHJ', 'Rudra Mata Arpt', 'BHJ', 'Bhuj', 'INDIA', 'IN', '5', '23.287828', '69.670147', 1, 'true', 0),
('BHK', 'Bukhara Arpt', 'BHK', 'Bukhara', 'UZBEKISTAN', 'UZ', '5', '39.775', '64.483333', 1, 'true', 0),
('BHL', 'Bahia De Los Angeles Arpt', 'BHL', 'Bahia De Los Angeles', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('BHM', 'Birmingham International Arpt', 'BHM', 'Birmingham', 'UNITED STATES', 'US', '-6', '33.562942', '-86.75355', 1, 'true', 0),
('BHO', 'Raja Bhoj Arpt', 'BHO', 'Bhopal', 'INDIA', 'IN', '5', '23.287467', '77.337375', 1, 'true', 0),
('BHQ', 'Broken Hill Arpt', 'BHQ', 'Broken Hill', 'AUSTRALIA', 'AU', '9', '-32.0014', '141.472', 1, 'true', 0),
('BHS', 'Raglan Airport', 'BHS', 'Bathurst', 'AUSTRALIA', 'AU', '10', '-33.4094', '149.652', 1, 'true', 0),
('BHU', 'Bhavnagar Arpt', 'BHU', 'Bhavnagar', 'INDIA', 'IN', '5', '21.752206', '72.185181', 1, 'true', 0),
('BHV', 'Bahawalpur Arpt', 'BHV', 'Bahawalpur', 'PAKISTAN', 'PK', '5', '29.4', '71.683334', 1, 'true', 0),
('XVB', 'Stafford Rail Station', 'BHX', 'Birmingham', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 4, '', 0),
('XNV', 'Nuneaton Rail Station', 'BHX', 'Birmingham', 'UNITED KINGDOM', 'GB', '-100', '31.2083', '35.0123', 4, '', 0),
('QQN', 'Birmingham - New Street Rail Service', 'BHX', 'Birmingham', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 4, '', 0),
('BHX', 'Birmingham Intl Arpt', 'BHX', 'Birmingham', 'UNITED KINGDOM', 'GB', '0', '52.453856', '-1.748028', 4, 'true', 0),
('BHY', 'Beihai Airport', 'BHY', 'Beihai', 'CHINA', 'CN', '8', '21.5394', '109.294', 1, 'true', 0),
('PLU', 'Pampulha Arpt', 'BHZ', 'Belo Horizonte', 'BRAZIL', 'BR', '-3', '-19.851181', '-43.950628', 2, '', 0),
('CNF', 'Tancredo Neves Intl Arpt', 'BHZ', 'Belo Horizonte', 'BRAZIL', 'BR', '-3', '-19.63375', '-43.968856', 2, '', 0),
('BIA', 'Poretta Airport', 'BIA', 'Bastia', 'FRANCE', 'FR', '1', '42.552664', '9.483731', 1, 'true', 0),
('BID', 'Block Island Municipal', 'BID', 'Block Island', 'UNITED STATES', 'US', '-5', '41.168056', '-71.577778', 1, 'true', 0),
('BIH', 'Bishop Airport', 'BIH', 'Bishop', 'UNITED STATES', 'US', '-100', '37.3731', '-118.3636', 1, 'true', 0),
('BII', 'Enyu Airfield', 'BII', 'Bikini Atoll', 'MARSHALL ISLANDS', 'MH', '12', '11.5225', '165.565', 1, 'true', 0),
('BIK', 'Mokmer Arpt', 'BIK', 'Biak', 'INDONESIA', 'ID', '9', '-1.190017', '136.107997', 1, 'true', 0),
('BIL', 'Logan Field', 'BIL', 'Billings', 'UNITED STATES', 'US', '-7', '45.80921', '-108.537654', 1, 'true', 0),
('BIM', 'Bimini Airport', 'BIM', 'Bimini', 'BAHAMAS', 'BS', '-5', '25.699881', '-79.264656', 2, 'true', 0),
('NSB', 'North Seaplane Base', 'BIM', 'Bimini', 'BAHAMAS', 'BS', '-5', '25.767', '-79.25', 2, '', 0),
('BIO', 'Bilbao Arpt', 'BIO', 'Bilbao', 'SPAIN', 'ES', '1', '43.301097', '-2.910608', 1, 'true', 0),
('BIQ', 'Bayonne Anglet Arpt', 'BIQ', 'Biarritz', 'FRANCE', 'FR', '1', '43.468419', '-1.523325', 1, 'true', 0),
('BIS', 'Bismarck Municipal Arpt', 'BIS', 'Bismarck', 'UNITED STATES', 'US', '-6', '46.775842', '-100.757931', 1, 'true', 0),
('BIY', 'Bisho Arpt', 'BIY', 'Bisho', 'SOUTH AFRICA', 'ZA', '-100', '-32.895', '27.285', 1, 'true', 0),
('BJA', 'Bejaia Arpt', 'BJA', 'Bejaia', 'ALGERIA', 'DZ', '1', '36.711997', '5.069922', 1, 'true', 0),
('BJC', 'Jeffco Arpt', 'BJC', 'Broomfield', 'UNITED STATES', 'US', '-7', '39.908889', '-105.117222', 1, 'true', 0),
('BJF', 'Batsfjord Arpt', 'BJF', 'Batsfjord', 'NORWAY', 'NO', '1', '70.600278', '29.6925', 1, 'true', 0),
('BJI', 'Bemidji Municipal Arpt', 'BJI', 'Bemidji', 'UNITED STATES', 'US', '-6', '47.510722', '-94.934722', 1, 'true', 0),
('BJL', 'Yundum Intl Arpt', 'BJL', 'Banjul', 'GAMBIA', 'GM', '0', '13.337961', '-16.652206', 1, 'true', 0),
('BJM', 'Bujumbura Intl Arpt', 'BJM', 'Bujumbura', 'BURUNDI', 'BI', '2', '-3.324019', '29.318519', 1, 'true', 0),
('BJR', 'Bahar Dar Arpt', 'BJR', 'Bahar Dar', 'ETHIOPIA', 'ET', '3', '11.608075', '37.321644', 1, 'true', 0),
('NAY', 'Nanyuan Arpt', 'BJS', 'Beijing', 'CHINA', 'CN', '8', '39.7825', '116.387778', 2, '', 0),
('PEK', 'Beijing Capital Arpt', 'BJS', 'Beijing', 'CHINA', 'CN', '8', '40.080111', '116.584556', 2, '', 0),
('BJX', 'Del Bajio Arpt', 'BJX', 'Leon', 'MEXICO', 'MX', '-6', '20.993464', '-101.480847', 1, 'true', 0),
('BJZ', 'Talaveral La Real Arpt', 'BJZ', 'Badajoz', 'SPAIN', 'ES', '1', '38.89125', '-6.821333', 1, 'true', 0),
('BKB', 'Bikaner Arpt', 'BKB', 'Bikaner', 'INDIA', 'IN', '-100', '0', '0', 1, 'true', 0),
('BKG', 'Branson Regional Arpt', 'BKG', 'Branson', 'UNITED STATES', 'US', '-6', '36.531994', '-93.200556', 1, 'true', 0),
('BKI', 'Kota Kinabalu Arpt', 'BKI', 'Kota Kinabalu', 'MALAYSIA', 'MY', '8', '5.937208', '116.051181', 1, 'true', 0),
('DMK', 'Don Mueang International Arpt', 'BKK', 'Bangkok', 'THAILAND', 'TH', '7', '13.912583', '100.60675', 2, '', 0),
('BKK', 'Suvarnabhumi Intl Arpt', 'BKK', 'Bangkok', 'THAILAND', 'TH', '7', '13.681108', '100.747283', 2, 'true', 0),
('BKM', 'Bakalalan Arpt', 'BKM', 'Bakalalan', 'MALAYSIA', 'MY', '8', '3.974', '115.618', 1, 'true', 0),
('BKO', 'Senou Airport', 'BKO', 'Bamako', 'MALI', 'ML', '0', '12.533544', '-7.949944', 1, 'true', 0),
('BKQ', 'Blackall Arpt', 'BKQ', 'Blackall', 'AUSTRALIA', 'AU', '10', '-24.427778', '145.428611', 1, 'true', 0),
('BKS', 'Padangkemiling Arpt', 'BKS', 'Bengkulu', 'INDONESIA', 'ID', '7', '-3.8637', '102.339036', 1, 'true', 0),
('BKW', 'Raleigh Cty Memorial', 'BKW', 'Beckley', 'UNITED STATES', 'US', '-5', '37.7873', '-81.1242', 1, 'true', 0),
('BKX', 'Brookings Municipal', 'BKX', 'Brookings', 'UNITED STATES', 'US', '-6', '44.3048', '-96.8169', 1, 'true', 0),
('BLA', 'Gen J A Anzoategui Arpt', 'BLA', 'Barcelona', 'VENEZUELA', 'VE', '-4', '10.107139', '-64.689161', 1, 'true', 0),
('XXO', 'Leksand Rail Station', 'BLE', 'Borlange', 'SWEDEN', 'SE', '-100', '28.615', '-80.695', 4, '', 0),
('XXU', 'Hedemora Rail Station', 'BLE', 'Borlange', 'SWEDEN', 'SE', '-100', '0', '0', 4, '', 0),
('XYB', 'Borlange Railway Service', 'BLE', 'Borlange', 'SWEDEN', 'SE', '-100', '0', '0', 4, '', 0),
('BLE', 'Dala Airport', 'BLE', 'Borlange', 'SWEDEN', 'SE', '1', '60.422017', '15.515211', 4, 'true', 0),
('BLF', 'Mercer County', 'BLF', 'Bluefield', 'UNITED STATES', 'US', '-5', '37.2958', '-81.2077', 1, 'true', 0),
('BLG', 'Belaga Arpt', 'BLG', 'Belaga', 'MALAYSIA', 'MY', '8', '2.65', '113.767', 1, 'true', 0),
('BLH', 'Blythe Airport', 'BLH', 'Blythe', 'UNITED STATES', 'US', '-8', '33.619167', '-114.716889', 1, 'true', 0),
('BLI', 'Bellingham Intl Arpt', 'BLI', 'Bellingham', 'UNITED STATES', 'US', '-8', '48.792694', '-122.537528', 1, 'true', 0),
('BLJ', 'Batna Arpt', 'BLJ', 'Batna', 'ALGERIA', 'DZ', '1', '35.752106', '6.308589', 1, 'true', 0),
('XQL', 'Lancaster Rail Station', 'BLK', 'Blackpool', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('BLK', 'Blackpool Airport', 'BLK', 'Blackpool', 'UNITED KINGDOM', 'GB', '0', '53.771667', '-3.028611', 2, 'true', 0),
('BLL', 'Billund Airport', 'BLL', 'Billund', 'DENMARK', 'DK', '1', '55.740322', '9.151778', 1, 'true', 0),
('BLQ', 'Guglielmo Marconi', 'BLQ', 'Bologna', 'ITALY', 'IT', '1', '44.535444', '11.288667', 1, 'true', 0),
('BLR', 'Bengaluru Intl Arpt', 'BLR', 'Bangalore', 'INDIA', 'IN', '5', '12.949986', '77.668206', 1, 'true', 0),
('BLT', 'Blackwater Arpt', 'BLT', 'Blackwater', 'AUSTRALIA', 'AU', '10', '-23.6031', '148.807', 1, 'true', 0),
('BLV', 'Scott AFB Mid America', 'BLV', 'Belleville', 'UNITED STATES', 'US', '-6', '38.545178', '-89.835183', 1, 'true', 0),
('BLX', 'Belluno Arpt', 'BLX', 'Belluno', 'ITALY', 'IT', '-100', '0', '0', 1, 'true', 0),
('BLZ', 'Chileka Airport', 'BLZ', 'Blantyre', 'MALAWI', 'MW', '2', '-15.679053', '34.974014', 1, 'true', 0),
('BME', 'Broome Airport', 'BME', 'Broome', 'AUSTRALIA', 'AU', '8', '-17.8', '122.2', 1, 'true', 0),
('BMG', 'Monroe Cty Arpt Indiana', 'BMG', 'Bloomington', 'UNITED STATES', 'US', '-4', '39.146021', '-86.616681', 1, 'true', 0),
('BMI', 'Normal Airport', 'BMI', 'Bloomington', 'UNITED STATES', 'US', '-6', '40.477111', '-88.915917', 1, 'true', 0),
('BMP', 'Brampton Island Arpt', 'BMP', 'Brampton Island', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('BMV', 'Phung Duc Arpt', 'BMV', 'Banmethuot', 'VIET NAM', 'VN', '7', '12.668311', '108.120272', 1, 'true', 0),
('BNA', 'Nashville International Arpt', 'BNA', 'Nashville', 'UNITED STATES', 'US', '-6', '36.124472', '-86.678194', 1, 'true', 0),
('BND', 'Bandar Abbas Arpt', 'BND', 'Bandar Abbas', 'IRAN', 'IR', '4', '27.218317', '56.37785', 1, 'true', 0),
('BNE', 'Brisbane Arpt', 'BNE', 'Brisbane', 'AUSTRALIA', 'AU', '10', '-27.384167', '153.1175', 1, 'true', 0),
('BNJ', 'Bonn Railroad Station', 'BNJ', 'Bonn', 'GERMANY', 'DE', '-100', '50.7319', '7.0967', 1, 'true', 0),
('BNK', 'Ballina Arpt', 'BNK', 'Ballina', 'AUSTRALIA', 'AU', '10', '-28.833889', '153.5625', 1, 'true', 0),
('BNN', 'Bronnoy Arpt', 'BNN', 'Bronnoysund', 'NORWAY', 'NO', '1', '65.461111', '12.2175', 1, 'true', 0),
('BNO', 'Burns Municipal Arpt', 'BNO', 'Burns', 'UNITED STATES', 'US', '-100', '43.5919', '-118.9554', 1, 'true', 0),
('BNU', 'Blumenau Arpt', 'BNU', 'Blumenau', 'BRAZIL', 'BR', '-3', '-26.834239', '-49.091696', 1, 'true', 0),
('BNX', 'Banja Luka Arpt', 'BNX', 'Banja Luka', 'BOSNIA AND HERZEGOVINA', 'BA', '1', '44.941444', '17.297501', 1, 'true', 0),
('BOB', 'Motu Mute Arpt', 'BOB', 'Bora Bora', 'FRENCH POLYNESIA', 'PF', '-10', '-16.444378', '-151.751286', 1, 'true', 0),
('BOC', 'Bocas Del Toro Arpt', 'BOC', 'Bocas Del Toro', 'PANAMA', 'PA', '-5', '9.340853', '-82.250842', 1, 'true', 0),
('ZFQ', 'Gare de Bordeaux', 'BOD', 'Bordeaux', 'FRANCE', 'FR', '-100', '48.6833', '1.1', 2, '', 0),
('BOD', 'Bordeaux Arpt', 'BOD', 'Bordeaux', 'FRANCE', 'FR', '1', '44.828335', '-0.715556', 2, 'true', 0),
('BOG', 'Eldorado Airport', 'BOG', 'Bogota', 'COLOMBIA', 'CO', '-5', '4.701594', '-74.146947', 1, 'true', 0),
('BOH', 'Bournemouth Intl Arpt', 'BOH', 'Bournemouth', 'UNITED KINGDOM', 'GB', '0', '50.78', '-1.8425', 1, 'true', 0),
('BOI', 'Boise Municipal Arpt Gowen Field', 'BOI', 'Boise', 'UNITED STATES', 'US', '-7', '43.564361', '-116.222861', 1, 'true', 0),
('BOJ', 'Bourgas Arpt', 'BOJ', 'Bourgas', 'BULGARIA', 'BG', '2', '42.569583', '27.515236', 1, 'true', 0),
('BOK', 'Brookings State Arpt', 'BOK', 'Brookings', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BOM', 'Chhatrapati Shivaji', 'BOM', 'Mumbai', 'INDIA', 'IN', '5', '19.088686', '72.867919', 1, 'true', 0),
('BON', 'Flamingo Field', 'BON', 'Bonaire', 'NETHERLANDS ANTILLES', 'AN', '-4', '12.131044', '-68.268511', 1, 'true', 0),
('BOO', 'Bodo Arpt', 'BOO', 'Bodo', 'NORWAY', 'NO', '1', '67.269167', '14.365278', 2, 'true', 0),
('ZXM', 'Rognan Rail Station', 'BOO', 'Bodo', 'NORWAY', 'NO', '-100', '0', '0', 2, '', 0),
('BOS', 'Logan Intl Arpt', 'BOS', 'Boston', 'UNITED STATES', 'US', '-5', '42.364347', '-71.005181', 1, 'true', 0),
('BOU', 'Bourges Arpt', 'BOU', 'Bourges', 'FRANCE', 'FR', '1', '47.058056', '2.370278', 1, 'true', 0),
('BOW', 'Bartow Arpt', 'BOW', 'Bartow', 'UNITED STATES', 'US', '-6', '27.9434', '-81.7834', 1, 'true', 0),
('BOX', 'Borroloola Arpt', 'BOX', 'Borroloola', 'AUSTRALIA', 'AU', '3', '51.478506', '7.2222', 1, 'true', 0),
('BOY', 'Borgo Arpt', 'BOY', 'Bobo Dioulasso', 'BURKINA FASO', 'BF', '0', '11.160056', '-4.330969', 1, 'true', 0),
('BPN', 'Sepingan Arpt', 'BPN', 'Balikpapan', 'INDONESIA', 'ID', '8', '-1.268272', '116.894478', 1, 'true', 0),
('BPS', 'Porto Seguro Arpt', 'BPS', 'Porto Seguro', 'BRAZIL', 'BR', '-3', '-16.438611', '-39.080833', 1, 'true', 0),
('BPT', 'Jefferson Cty Arpt', 'BPT', 'Beaumont', 'UNITED STATES', 'US', '-6', '29.950833', '-94.020694', 1, 'true', 0),
('BQB', 'Busselton Arpt', 'BQB', 'Busselton', 'AUSTRALIA', 'AU', '-100', '-33.6867', '115.4', 1, 'true', 0),
('BQK', 'Gylnco Jet Port', 'BQK', 'Brunswick', 'UNITED STATES', 'US', '-5', '31.2588', '-81.4665', 1, 'true', 0),
('BQL', 'Boulia Arpt', 'BQL', 'Boulia', 'AUSTRALIA', 'AU', '10', '-22.9133', '139.9', 1, 'true', 0),
('BQN', 'Borinquen Municipal Arpt', 'BQN', 'Aguadilla', 'UNITED STATES', 'US', '-4', '18.494861', '-67.129444', 1, 'true', 0),
('BQS', 'Blagoveshchensk Arpt', 'BQS', 'Blagoveshchensk', 'RUSSIA', 'RU', '10', '50.425394', '127.412478', 1, 'true', 0),
('BQT', 'Brest Arpt', 'BQT', 'Brest', 'BELARUS', 'BY', '2', '52.06', '23.53', 1, 'true', 0),
('BRA', 'Barreiras Arpt', 'BRA', 'Barreiras', 'BRAZIL', 'BR', '-3', '-12.083333', '-45', 1, 'true', 0),
('BRC', 'San Carlos De Bariloche Intl Arpt', 'BRC', 'San Carlos Bariloche', 'ARGENTINA', 'AR', '-3', '-41.151172', '-71.157542', 1, 'true', 0),
('BRD', 'Crowwing Cty Arpt', 'BRD', 'Brainerd', 'UNITED STATES', 'US', '-6', '46.398308', '-94.138078', 1, 'true', 0),
('BRE', 'Bremen Airport', 'BRE', 'Bremen', 'GERMANY', 'DE', '1', '53.0475', '8.786667', 1, 'true', 0),
('BRF', 'Bradford Rail Station', 'BRF', 'Bradford', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('BRI', 'Bari Airport', 'BRI', 'Bari', 'ITALY', 'IT', '1', '41.138856', '16.760594', 1, 'true', 0),
('BRK', 'Bourke Airport', 'BRK', 'Bourke', 'AUSTRALIA', 'AU', '10', '-30.0392', '145.952', 1, 'true', 0),
('BRL', 'Burlington Municipal Arpt', 'BRL', 'Burlington', 'UNITED STATES', 'US', '-6', '40.7832', '-91.1255', 1, 'true', 0),
('BRM', 'Airport Barquisimeto', 'BRM', 'Barquisimeto', 'VENEZUELA', 'VE', '-4', '10.042747', '-69.358619', 1, 'true', 0),
('BRN', 'Belp Airport', 'BRN', 'Berne', 'SWITZERLAND', 'CH', '1', '46.9141', '7.497153', 2, 'true', 0),
('ZDJ', 'Berne Railroad Station', 'BRN', 'Berne', 'SWITZERLAND', 'CH', '-100', '0', '0', 2, '', 0),
('BRO', 'South Padre Island Intl Arpt', 'BRO', 'Brownsville', 'UNITED STATES', 'US', '-6', '25.906833', '-97.425861', 1, 'true', 0),
('BRQ', 'Turnay Arpt', 'BRQ', 'Brno', 'CZECH REPUBLIC', 'CZ', '1', '49.151269', '16.694433', 1, 'true', 0),
('BRR', 'North Bay Arpt', 'BRR', 'Barra', 'UNITED KINGDOM', 'GB', '0', '57.0228', '-7.44306', 1, 'true', 0),
('BRS', 'Bristol Intl Arpt', 'BRS', 'Bristol', 'UNITED KINGDOM', 'GB', '0', '51.382669', '-2.719089', 1, 'true', 0),
('BRT', 'Bathurst Island Arpt', 'BRT', 'Bathurst Isl', 'AUSTRALIA', 'AU', '9', '-11.769167', '130.619722', 1, 'true', 0),
('CRL', 'Brussels South Charleroi Arpt', 'BRU', 'Brussels', 'BELGIUM', 'BE', '1', '50.459197', '4.453817', 4, '', 0),
('ZYR', 'Midi Railway Station', 'BRU', 'Brussels', 'BELGIUM', 'BE', '1', '50.8', '4.4', 4, '', 0),
('ZYZ', 'Antwerp Berchem Rail Station', 'BRU', 'Brussels', 'BELGIUM', 'BE', '-100', '51.2167', '4.4167', 4, '', 0),
('BRU', 'Brussels National Arpt', 'BRU', 'Brussels', 'BELGIUM', 'BE', '1', '50.901389', '4.484444', 4, 'true', 0),
('BRV', 'Bremerhaven Arpt', 'BRV', 'Bremerhaven', 'GERMANY', 'DE', '1', '53.507081', '8.572878', 1, 'true', 0),
('BRW', 'Barrow WBAS', 'BRW', 'Barrow', 'UNITED STATES', 'US', '-9', '71.285446', '-156.766003', 1, 'true', 0),
('BRX', 'Barahona Arpt', 'BRX', 'Barahona', 'DOMINICAN REPUBLIC', 'DO', '-4', '18.251464', '-71.1204', 1, 'true', 0);
INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('BSB', 'Brasilia Intl Arpt', 'BSB', 'Brasilia', 'BRAZIL', 'BR', '-3', '-15.8711', '-47.918625', 1, 'true', 0),
('BSD', 'Baoshan Arpt', 'BSD', 'Baoshan', 'CHINA', 'CN', '8', '25.053333', '99.168333', 1, 'true', 0),
('BSH', 'Brighton Airport', 'BSH', 'Brighton', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('BSI', 'Blairsville Arpt', 'BSI', 'Blairsville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BSJ', 'Bairnsdale Airport', 'BSJ', 'Bairnsdale', 'AUSTRALIA', 'AU', '-100', '-37.8883', '147.5683', 1, 'true', 0),
('BSK', 'Biskra Arpt', 'BSK', 'Biskra', 'ALGERIA', 'DZ', '1', '34.793289', '5.738231', 1, 'true', 0),
('BSL', 'Basel EuroAirport Swiss', 'BSL', 'Basel', 'SWITZERLAND', 'CH', '1', '47.59', '7.529167', 1, 'true', 0),
('BSQ', 'Bisbee Municipal Arpt', 'BSQ', 'Bisbee', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BSR', 'Basra Intl Arpt', 'BSR', 'Basra', 'IRAQ', 'IQ', '3', '30.549069', '47.662142', 1, 'true', 0),
('BTH', 'Hang Nadim Arpt', 'BTH', 'Batam', 'INDONESIA', 'ID', '7', '1.121028', '104.118753', 1, 'true', 0),
('BTJ', 'Blang Bintang Arpt', 'BTJ', 'Banda Aceh', 'INDONESIA', 'ID', '7', '5.523522', '95.420372', 1, 'true', 0),
('BTK', 'Bratsk Arpt', 'BTK', 'Bratsk', 'RUSSIA', 'RU', '9', '56.370556', '101.698331', 1, 'true', 0),
('BTL', 'WK Kellogg Regional', 'BTL', 'Battle Creek', 'UNITED STATES', 'US', '-100', '42.3075', '-85.2517', 1, 'true', 0),
('BTM', 'Bert Mooney Arpt', 'BTM', 'Butte', 'UNITED STATES', 'US', '-7', '45.954806', '-112.497472', 1, 'true', 0),
('EBR', 'Baton Rouge Downtown Arpt', 'BTR', 'Baton Rouge', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('BTR', 'Ryan Airport', 'BTR', 'Baton Rouge', 'UNITED STATES', 'US', '-6', '30.533167', '-91.149639', 2, 'true', 0),
('ZRG', 'Bratislava Bus Station', 'BTS', 'Bratislava', 'SLOVAKIA', 'SK', '-100', '0', '0', 2, '', 0),
('BTS', 'Ivanka Arpt', 'BTS', 'Bratislava', 'SLOVAKIA', 'SK', '1', '48.170167', '17.212667', 2, 'true', 0),
('BTT', 'Bettles Arpt', 'BTT', 'Bettles', 'UNITED STATES', 'US', '-9', '66.913944', '-151.529056', 1, 'true', 0),
('BTU', 'Bintulu Arpt', 'BTU', 'Bintulu', 'MALAYSIA', 'MY', '8', '3.12385', '113.020472', 1, 'true', 0),
('BTV', 'Burlington Intl Arpt', 'BTV', 'Burlington', 'UNITED STATES', 'US', '-5', '44.471861', '-73.153278', 1, 'true', 0),
('YEI', 'Yenisehir Arpt', 'BTZ', 'Bursa', 'TURKEY', 'TR', '2', '40.255208', '29.562569', 2, '', 0),
('BTZ', 'Bursa Arpt', 'BTZ', 'Bursa', 'TURKEY', 'TR', '2', '40.2489', '29.5494', 2, 'true', 0),
('BUC', 'Burketown Arpt', 'BUC', 'Burketown', 'AUSTRALIA', 'AU', '10', '-17.7486', '139.534', 1, 'true', 0),
('BUD', 'Ferihegy Arpt', 'BUD', 'Budapest', 'HUNGARY', 'HU', '1', '47.436933', '19.255592', 1, 'true', 0),
('EZE', 'Ministro Pistarini', 'BUE', 'Buenos Aires', 'ARGENTINA', 'AR', '-3', '-34.822222', '-58.535833', 2, '', 0),
('AEP', 'Jorge Newbery', 'BUE', 'Buenos Aires', 'ARGENTINA', 'AR', '-3', '-34.559175', '-58.415606', 2, '', 0),
('BUF', 'Greater Buffalo Intl Arpt', 'BUF', 'Buffalo', 'UNITED STATES', 'US', '-5', '42.940525', '-78.732167', 1, 'true', 0),
('OTP', 'Otopeni International', 'BUH', 'Bucharest', 'ROMANIA', 'RO', '2', '44.572161', '26.102178', 2, '', 0),
('BBU', 'Baneasa Airport', 'BUH', 'Bucharest', 'ROMANIA', 'RO', '2', '44.503194', '26.102111', 2, '', 0),
('BUN', 'Buenaventura Arpt', 'BUN', 'Buenaventura', 'COLOMBIA', 'CO', '-5', '3.819628', '-76.989767', 1, 'true', 0),
('BUQ', 'Bulawayo Arpt', 'BUQ', 'Bulawayo', 'ZIMBABWE', 'ZW', '2', '-20.017431', '28.617869', 1, 'true', 0),
('BUR', 'Burbank Glendale Pasadena Arpt', 'BUR', 'Burbank', 'UNITED STATES', 'US', '-8', '34.200667', '-118.358667', 1, 'true', 0),
('BUS', 'Batumi Arpt', 'BUS', 'Batumi', 'GEORGIA', 'GE', '2', '41.610278', '41.599694', 1, 'true', 0),
('BUY', 'Bunbury Arpt', 'BUY', 'Bunbury', 'AUSTRALIA', 'AU', '-4', '36.048543', '-79.474889', 1, 'true', 0),
('BUZ', 'Bushehr Arpt', 'BUZ', 'Bushehr', 'IRAN', 'IR', '4', '28.944811', '50.834637', 1, 'true', 0),
('BVB', 'Boa Vista Arpt', 'BVB', 'Boa Vista', 'BRAZIL', 'BR', '-4', '2.846311', '-60.690069', 1, 'true', 0),
('BVC', 'Rabil Arpt', 'BVC', 'Boa Vista', 'CAPE VERDE', 'CV', '-1', '16.136531', '-22.888897', 1, 'true', 0),
('BVE', 'Laroche Airport', 'BVE', 'Brive La Gaill', 'FRANCE', 'FR', '1', '45.150833', '1.469167', 1, 'true', 0),
('BVH', 'Vilhena Arpt', 'BVH', 'Vilhena', 'BRAZIL', 'BR', '-4', '-12.694375', '-60.098269', 1, 'true', 0),
('BVI', 'Birdsville Arpt', 'BVI', 'Birdsville', 'AUSTRALIA', 'AU', '10', '-25.8975', '139.348', 1, 'true', 0),
('BVO', 'Bartlesville Municipal Arpt', 'BVO', 'Bartlesville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BVR', 'Esperadinha', 'BVR', 'Brava', 'CAPE VERDE', 'CV', '-100', '0', '0', 1, 'true', 0),
('BVX', 'Batesville Municipal', 'BVX', 'Batesville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BVY', 'Beverly Municipal Arpt', 'BVY', 'Beverly', 'UNITED STATES', 'US', '-100', '42.5842', '-70.9165', 1, 'true', 0),
('BWC', 'Brawley Arpt', 'BWC', 'Brawley', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BWD', 'Brownwood Municipal Arpt', 'BWD', 'Brownwood', 'UNITED STATES', 'US', '-6', '31.793611', '-98.9565', 1, 'true', 0),
('BWE', 'Braunschweig Arpt', 'BWE', 'Braunschweig', 'GERMANY', 'DE', '1', '52.319167', '10.556111', 1, 'true', 0),
('BWF', 'Walney Island', 'BWF', 'Barrow In Furness', 'UNITED KINGDOM', 'GB', '0', '54.131167', '-3.263667', 1, 'true', 0),
('BWG', 'Warren Cty Arpt', 'BWG', 'Bowling Green', 'UNITED STATES', 'US', '-5', '36.964528', '-86.419667', 1, 'true', 0),
('BWI', 'Baltimore Washington Intl Arpt', 'BWI', 'Baltimore', 'UNITED STATES', 'US', '-5', '39.175361', '-76.668333', 2, 'true', 0),
('APG', 'Phillips Army Air Field', 'BWI', 'Baltimore', 'UNITED STATES', 'US', '-5', '39.466219', '-76.168808', 2, '', 0),
('BWK', 'Bol Airport', 'BWK', 'Bol Airport', 'CROATIA', 'HR', '1', '43.285719', '16.679719', 1, 'true', 0),
('BWN', 'Brunei Intl Arpt', 'BWN', 'Bandar Seri Begawan', 'BRUNEI DARUSSALAM', 'BN', '8', '4.9442', '114.928353', 1, 'true', 0),
('BWO', 'Balakovo Airport', 'BWO', 'Balakovo Airport', 'RUSSIA', 'RU', '4', '51.8583', '47.7456', 1, 'true', 0),
('BWQ', 'Brewarrina Arpt', 'BWQ', 'Brewarrina', 'AUSTRALIA', 'AU', '-100', '-29.9756', '146.8156', 1, 'true', 0),
('BWT', 'Burnie Wynyard Arpt', 'BWT', 'Burnie', 'AUSTRALIA', 'AU', '10', '-40.9989', '145.731', 1, 'true', 0),
('BWU', 'Bankstown Aerodrome', 'BWU', 'Bankstown', 'AUSTRALIA', 'AU', '10', '-33.924444', '150.988333', 1, 'true', 0),
('BJV', 'Milas Arpt', 'BXN', 'Bodrum', 'TURKEY', 'TR', '2', '37.82', '28.204', 1, '', 0),
('BXS', 'Borrego Valley Arpt', 'BXS', 'Borrego Springs', 'UNITED STATES', 'US', '-7', '33.259028', '-116.320972', 1, 'true', 0),
('BXU', 'Butuan Arpt', 'BXU', 'Butuan', 'PHILIPPINES', 'PH', '8', '8.951322', '125.477972', 1, 'true', 0),
('BYF', 'Albert Arpt', 'BYF', 'Meaulte', 'FRANCE', 'FR', '-100', '49.97', '2.6928', 1, 'true', 0),
('BYI', 'Burley Arpt', 'BYI', 'Burley', 'UNITED STATES', 'US', '-100', '42.5433', '-113.7717', 1, 'true', 0),
('BYR', 'Laeso Airport', 'BYR', 'Laeso Island', 'DENMARK', 'DK', '-100', '57.2772', '11.0001', 1, 'true', 0),
('BYU', 'Bindlacher Berg Arpt', 'BYU', 'Bayreuth', 'GERMANY', 'DE', '1', '49.984428', '11.638569', 1, 'true', 0),
('BYW', 'Blakely Is Municipal', 'BYW', 'Blakely Island', 'UNITED STATES', 'US', '-8', '48.56025', '-122.80243', 1, 'true', 0),
('BZC', 'Buzios Arpt', 'BZC', 'Buzios', 'BRAZIL', 'BR', '-100', '-22.7656', '-41.965', 1, 'true', 0),
('TZA', 'Belize City Municipal', 'BZE', 'Belize City', 'BELIZE', 'BZ', '-6', '17.5344', '-88.298', 2, '', 0),
('BZE', 'Belize Intl Arpt', 'BZE', 'Belize City', 'BELIZE', 'BZ', '-6', '17.539144', '-88.308203', 2, 'true', 0),
('BZG', 'Bydgoszcz Arpt', 'BZG', 'Bydgoszcz', 'POLAND', 'PL', '1', '53.0968', '17.9777', 1, 'true', 0),
('BZH', 'Bumi Hills Arpt', 'BZH', 'Bumi Hills', 'ZIMBABWE', 'ZW', '-100', '0', '0', 1, 'true', 0),
('BZI', 'Balikesir', 'BZI', 'Balikesir', 'TURKEY', 'TR', '2', '39.619258', '27.925958', 2, 'true', 0),
('MQJ', 'Merkez Arpt', 'BZI', 'Balikesir', 'TURKEY', 'TR', '2', '0', '0', 2, '', 0),
('BZN', 'Gallatin Field', 'BZN', 'Bozeman', 'UNITED STATES', 'US', '-7', '45.777643', '-111.160151', 1, 'true', 0),
('BZO', 'Bolzano Arpt', 'BZO', 'Bolzano', 'ITALY', 'IT', '1', '46.460194', '11.326383', 1, 'true', 0),
('BZR', 'Beziers Vias Arpt', 'BZR', 'Beziers', 'FRANCE', 'FR', '1', '43.323522', '3.353903', 1, 'true', 0),
('BZT', 'Brazoria County Arpt', 'BZT', 'Brazoria', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('BZV', 'Maya Maya Arpt', 'BZV', 'Brazzaville', 'CONGO', 'CG', '1', '-4.2517', '15.253031', 1, 'true', 0),
('CAC', 'Cascavel Arpt', 'CAC', 'Cascavel', 'BRAZIL', 'BR', '-3', '-25.000339', '-53.500764', 1, 'true', 0),
('CAD', 'Wexford County Arpt', 'CAD', 'Cadillac', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('OGB', 'Orangeburg Municpal', 'CAE', 'Columbia', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('CAE', 'Columbia Metro Arpt', 'CAE', 'Columbia', 'UNITED STATES', 'US', '-5', '33.938833', '-81.119528', 2, 'true', 0),
('CAG', 'Elmas Airport', 'CAG', 'Cagliari', 'ITALY', 'IT', '1', '39.251469', '9.054283', 1, 'true', 0),
('CAI', 'Cairo Intl Arpt', 'CAI', 'Cairo', 'EGYPT', 'EG', '2', '30.121944', '31.405556', 1, 'true', 0),
('CAK', 'Akron Canton Regional Arpt', 'CAK', 'Akron', 'UNITED STATES', 'US', '-5', '40.916083', '-81.442194', 1, 'true', 0),
('CAL', 'Machrihanish Arpt', 'CAL', 'Campbelltown', 'UNITED KINGDOM', 'GB', '0', '55.4372', '-5.68639', 1, 'true', 0),
('CAM', 'Choreti Arpt', 'CAM', 'Camiri', 'BOLIVIA', 'BO', '-100', '0', '0', 1, 'true', 0),
('CAN', 'Baiyun Airport', 'CAN', 'Guangzhou', 'CHINA', 'CN', '8', '23.392436', '113.298786', 1, 'true', 0),
('CAP', 'Cap Haitien Numicipal', 'CAP', 'Cap Haitien', 'HAITI', 'HT', '-5', '19.732989', '-72.194739', 1, 'true', 0),
('CAR', 'Caribou Municipal Arpt', 'CAR', 'Caribou', 'UNITED STATES', 'US', '-4', '46.8715', '-68.017917', 1, 'true', 0),
('CMN', 'Mohamed V Arpt', 'CAS', 'Casablanca', 'MOROCCO', 'MA', '0', '33.367467', '-7.589967', 2, '', 0),
('CAS', 'Anfa Airport', 'CAS', 'Casablanca', 'MOROCCO', 'MA', '-100', '33.5533', '-7.6614', 2, 'true', 0),
('CAU', 'Caruaru Arpt', 'CAU', 'Caruaru', 'BRAZIL', 'BR', '-3', '-8.28239', '-36.0135', 1, 'true', 0),
('CAW', 'Bartolomeu Lisandro Arpt', 'CAW', 'Campos', 'BRAZIL', 'BR', '-3', '-21.698333', '-41.301669', 1, 'true', 0),
('XPF', 'Penrith Rail Station', 'CAX', 'Carlisle', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('CAX', 'Carlisle Arpt', 'CAX', 'Carlisle', 'UNITED KINGDOM', 'GB', '0', '54.9375', '-2.809167', 2, 'true', 0),
('CAY', 'Rochambeau Airport', 'CAY', 'Cayenne', 'FRENCH GUIANA', 'GF', '-3', '4.819808', '-52.360447', 1, 'true', 0),
('CAZ', 'Cobar Arpt', 'CAZ', 'Cobar', 'AUSTRALIA', 'AU', '10', '-31.5383', '145.794', 1, 'true', 0),
('CBB', 'J Wilsterman Arpt', 'CBB', 'Cochabamba', 'BOLIVIA', 'BO', '-4', '-17.421058', '-66.177114', 1, 'true', 0),
('CBE', 'Cumberland Municipal Arpt', 'CBE', 'Cumberland', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CBF', 'Council Bluffs Municipal Arpt', 'CBF', 'Council Bluffs', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CBG', 'Cambridge Arpt', 'CBG', 'Cambridge', 'UNITED KINGDOM', 'GB', '0', '52.205', '0.175', 1, 'true', 0),
('CBK', 'Colby Municipal Arpt', 'CBK', 'Colby', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CBL', 'Ciudad Bolivar Arpt', 'CBL', 'Ciudad Bolivar', 'VENEZUELA', 'VE', '-4', '8.121898', '-63.537353', 1, 'true', 0),
('CBN', 'Penggung Arpt', 'CBN', 'Cirebon', 'INDONESIA', 'ID', '7', '-6.756144', '108.539672', 1, 'true', 0),
('CBO', 'Awang Arpt', 'CBO', 'Cotabato', 'PHILIPPINES', 'PH', '8', '7.165242', '124.209619', 1, 'true', 0),
('CBP', 'Coimbra Arpt', 'CBP', 'Coimbra', 'PORTUGAL', 'PT', '-100', '0', '0', 1, 'true', 0),
('CBR', 'Canberra Arpt', 'CBR', 'Canberra', 'AUSTRALIA', 'AU', '10', '-35.306944', '149.195', 1, 'true', 0),
('CBS', 'Oro Negro Arpt', 'CBS', 'Cabimas', 'VENEZUELA', 'VE', '-100', '0', '0', 1, 'true', 0),
('CCC', 'Cayo Coco Arpt', 'CCC', 'Cayo Coco', 'CUBA', 'CU', '-5', '22.5132', '-78.511', 1, 'true', 0),
('CCE', 'Grand Case Arpt', 'CCE', 'Saint Martin', 'GUADELOUPE', 'GP', '-100', '18.1006', '-63.0489', 1, 'true', 0),
('CCF', 'Salvaza', 'CCF', 'Carcassonne', 'FRANCE', 'FR', '1', '43.215978', '2.306317', 1, 'true', 0),
('CCJ', 'Kozhikode Arpt', 'CCJ', 'Kozhikode', 'INDIA', 'IN', '5', '11.136839', '75.9553', 1, 'true', 0),
('CCK', 'Cocos Islands Arpt', 'CCK', 'Cocos Islands', 'COCOS (KEELING) ISLANDS', 'CC', '6', '-12.1883', '96.8339', 1, 'true', 0),
('CCM', 'Criciuma Arpt', 'CCM', 'Criciuma', 'BRAZIL', 'BR', '-3', '-28.725817', '-49.424739', 1, 'true', 0),
('CCP', 'Carriel Sur Arpt', 'CCP', 'Concepcion', 'CHILE', 'CL', '-4', '-36.77265', '-73.063106', 1, 'true', 0),
('CCR', 'Buchanan Field', 'CCR', 'Concord', 'UNITED STATES', 'US', '-8', '37.989667', '-122.056889', 1, 'true', 0),
('CCS', 'Simon Bolivar Arpt', 'CCS', 'Caracas', 'VENEZUELA', 'VE', '-4', '10.603117', '-66.990583', 1, 'true', 0),
('CCU', 'Netaji Subhas Chandra Bose Intl', 'CCU', 'Kolkata', 'INDIA', 'IN', '5', '22.654739', '88.446722', 1, 'true', 0),
('CCV', 'Craig Cove Arpt', 'CCV', 'Craig Cove', 'VANUATU', 'VU', '11', '-16.265', '167.924', 1, 'true', 0),
('CDA', 'Cooinda Airport', 'CDA', 'Cooinda', 'AUSTRALIA', 'AU', '9', '-12.9033', '132.532', 1, 'true', 0),
('CDC', 'Cedar City Municipal', 'CDC', 'Cedar City', 'UNITED STATES', 'US', '-7', '37.700967', '-113.098847', 1, 'true', 0),
('CDD', 'Cauquira Arpt', 'CDD', 'Cauquira', 'HONDURAS', 'HN', '-100', '0', '0', 1, 'true', 0),
('CDH', 'Harrell Fieldsandro Arpt', 'CDH', 'Camden', 'UNITED STATES', 'US', '-100', '33.6233', '-92.7633', 1, 'true', 0),
('CDI', 'Cachoeiro De Itapemirim Arpt', 'CDI', 'Cachoeiro De Itapemirim', 'BRAZIL', 'BR', '-5', '39.975028', '-81.577583', 1, 'true', 0),
('CDR', 'Chadron Arpt', 'CDR', 'Chadron', 'UNITED STATES', 'US', '-7', '42.8375', '-103.095556', 1, 'true', 0),
('CDV', 'Mudhole Smith Arpt', 'CDV', 'Cordova', 'UNITED STATES', 'US', '-9', '60.491778', '-145.477556', 1, 'true', 0),
('CDW', 'Caldwell Wright Arpt', 'CDW', 'Caldwell', 'UNITED STATES', 'US', '-4', '40.875222', '-74.281361', 1, 'true', 0),
('CEB', 'Cebu Intl', 'CEB', 'Cebu', 'PHILIPPINES', 'PH', '8', '10.307542', '123.979439', 1, 'true', 0),
('CEC', 'Crescent City Municipal Arpt', 'CEC', 'Crescent City', 'UNITED STATES', 'US', '-8', '41.7802', '-124.237', 1, 'true', 0),
('CED', 'Ceduna Arpt', 'CED', 'Ceduna', 'AUSTRALIA', 'AU', '9', '-32.1306', '133.71', 1, 'true', 0),
('CEE', 'Cherepovets Airport', 'CEE', 'Cherepovets Airport', 'RUSSIA', 'RU', '4', '59.2736', '38.0158', 1, 'true', 0),
('XRC', 'Runcorn Rail Station', 'CEG', 'Chester', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('CEG', 'Chester Arpt', 'CEG', 'Chester', 'UNITED KINGDOM', 'GB', '0', '53.178056', '-2.977778', 2, 'true', 0),
('CEH', 'Chelinda Arpt', 'CEH', 'Chelinda', 'MALAWI', 'MW', '-100', '0', '0', 1, 'true', 0),
('CEI', 'Chaing Rai Arpt', 'CEI', 'Chiang Rai', 'THAILAND', 'TH', '7', '19.952342', '99.882928', 1, 'true', 0),
('CEK', 'Chelyabinsk Arpt', 'CEK', 'Chelyabinsk', 'RUSSIA', 'RU', '6', '55.305836', '61.503333', 1, 'true', 0),
('CEN', 'Ciudad Obregon Arpt', 'CEN', 'Ciudad Obregon', 'MEXICO', 'MX', '-7', '27.392639', '-109.833111', 1, 'true', 0),
('CEQ', 'Mandelieu Arpt', 'CEQ', 'Cannes', 'FRANCE', 'FR', '1', '43.54205', '6.953478', 1, 'true', 0),
('CER', 'Maupertius Arpt', 'CER', 'Cherbourg', 'FRANCE', 'FR', '1', '49.650106', '-1.470281', 1, 'true', 0),
('CES', 'Cessnock Arpt', 'CES', 'Cessnock', 'AUSTRALIA', 'AU', '10', '-32.7875', '151.342', 1, 'true', 0),
('CET', 'Le Pontreau Arpt', 'CET', 'Cholet', 'FRANCE', 'FR', '1', '47.082136', '-0.877064', 1, 'true', 0),
('CEU', 'Clemson Oconee Cty Arpt', 'CEU', 'Clemson', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CEY', 'Calloway Cty Arpt', 'CEY', 'Murray', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CEZ', 'Montezuma County', 'CEZ', 'Cortez', 'UNITED STATES', 'US', '-7', '37.303', '-108.628056', 1, 'true', 0),
('CFB', 'Cabo Frio Arpt', 'CFB', 'Cabo Frio', 'BRAZIL', 'BR', '-3', '-22.921667', '-42.074167', 1, 'true', 0),
('CFE', 'Aulnat Arpt', 'CFE', 'Clermont Ferrand', 'FRANCE', 'FR', '1', '45.786661', '3.169169', 1, 'true', 0),
('CFG', 'Cienfuegos Arpt', 'CFG', 'Cienfuegos', 'CUBA', 'CU', '-5', '22.15', '-80.414167', 1, 'true', 0),
('CFK', 'Chlef Arpt', 'CFK', 'Chlef', 'ALGERIA', 'DZ', '-100', '36.21', '1.33', 1, 'true', 0),
('CFN', 'Donegal Arpt', 'CFN', 'Donegal', 'IRELAND', 'IE', '0', '55.044192', '-8.341', 1, 'true', 0),
('CFQ', 'Creston Arpt', 'CFQ', 'Creston', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('CFR', 'Carpiquet Arpt', 'CFR', 'Caen', 'FRANCE', 'FR', '1', '49.173333', '-0.45', 1, 'true', 0),
('CFS', 'Coffs Harbour Arpt', 'CFS', 'Coffs Harbour', 'AUSTRALIA', 'AU', '10', '-30.320556', '153.116389', 1, 'true', 0),
('CFU', 'I Kapodistrias Arpt', 'CFU', 'Kerkyra', 'GREECE', 'GR', '2', '39.601944', '19.911667', 1, 'true', 0),
('CGA', 'Craig Seaplane Base', 'CGA', 'Craig', 'UNITED STATES', 'US', '-9', '55.478889', '-133.147778', 1, 'true', 0),
('CGB', 'Marechal Rondon Arpt', 'CGB', 'Cuiaba', 'BRAZIL', 'BR', '-4', '-15.652931', '-56.116719', 1, 'true', 0),
('CGD', 'Changde Arpt', 'CGD', 'Changde', 'CHINA', 'CN', '8', '28.9189', '111.64', 1, 'true', 0),
('CGI', 'Cape Girardeau Municipal Arpt', 'CGI', 'Cape Girardeau', 'UNITED STATES', 'US', '-6', '37.2253', '-89.5708', 1, 'true', 0),
('QKL', 'Cologne Railroad Station', 'CGN', 'Cologne', 'GERMANY', 'DE', '1', '50.9', '7.183', 2, '', 0),
('CGN', 'Koeln Bonn Arpt', 'CGN', 'Cologne', 'GERMANY', 'DE', '1', '50.865917', '7.142744', 2, 'true', 0),
('CGO', 'Zhengzhou Arpt', 'CGO', 'Zhengzhou', 'CHINA', 'CN', '8', '34.519672', '113.840889', 1, 'true', 0),
('CGP', 'Patenga Arpt', 'CGP', 'Chittagong', 'BANGLADESH', 'BD', '6', '22.249611', '91.813286', 1, 'true', 0),
('CGQ', 'Changchun Arpt', 'CGQ', 'Changchun', 'CHINA', 'CN', '8', '43.5412', '125.1201', 1, 'true', 0),
('CGR', 'Internacional', 'CGR', 'Campogrande', 'BRAZIL', 'BR', '-4', '-20.468667', '-54.6725', 1, 'true', 0),
('CGY', 'Lumbia Arpt', 'CGY', 'Cagayan', 'PHILIPPINES', 'PH', '8', '8.415619', '124.611219', 1, 'true', 0),
('CHA', 'Chattanooga Lovell Fld', 'CHA', 'Chattanooga', 'UNITED STATES', 'US', '-5', '35.035278', '-85.203808', 1, 'true', 0),
('CHC', 'Christchurch Arpt', 'CHC', 'Christchurch', 'NEW ZEALAND', 'NZ', '12', '-43.489358', '172.532225', 1, 'true', 0),
('CHD', 'Williams AFB Airport', 'CHD', 'Chandler', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PWK', 'Pal Waukee Arpt', 'CHI', 'Chicago', 'UNITED STATES', 'US', '-6', '42.11429', '-87.901538', 5, '', 0),
('RFD', 'Chicago Rockford Arpt', 'CHI', 'Chicago', 'UNITED STATES', 'US', '-6', '42.195361', '-89.097222', 5, '', 0),
('DPA', 'Dupage County Arpt', 'CHI', 'Chicago', 'UNITED STATES', 'US', '-6', '41.907778', '-88.248611', 5, '', 0),
('ORD', 'O\'Hare Intl Arpt', 'CHI', 'Chicago', 'UNITED STATES', 'US', '-6', '41.978603', '-87.904842', 5, '', 0),
('MDW', 'Midway', 'CHI', 'Chicago', 'UNITED STATES', 'US', '-6', '41.785972', '-87.752417', 5, '', 0),
('CHO', 'Charlottesville Albemarle Arpt', 'CHO', 'Charlottesville', 'UNITED STATES', 'US', '-5', '38.138639', '-78.452861', 1, 'true', 0),
('CHQ', 'Souda Arpt', 'CHQ', 'Chania', 'GREECE', 'GR', '2', '35.531747', '24.149678', 1, 'true', 0),
('CHR', 'Chateauroux Arpt', 'CHR', 'Chateauroux', 'FRANCE', 'FR', '1', '46.862194', '1.730667', 1, 'true', 0),
('CHS', 'Charleston Intl Arpt', 'CHS', 'Charleston', 'UNITED STATES', 'US', '-5', '32.898647', '-80.040528', 1, 'true', 0),
('CHW', 'Jiuquan Arpt', 'CHW', 'Jiuquan', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('CHX', 'Changuinola Arpt', 'CHX', 'Changuinola', 'PANAMA', 'PA', '-5', '9.458636', '-82.516806', 1, 'true', 0),
('CIC', 'Chico Municipal Arpt', 'CIC', 'Chico', 'UNITED STATES', 'US', '-8', '39.795383', '-121.858422', 1, 'true', 0),
('CID', 'Cedar Rapids Municipal Arpt', 'CID', 'Cedar Rapids', 'UNITED STATES', 'US', '-6', '41.884694', '-91.710806', 1, 'true', 0),
('CIG', 'Craig Moffat', 'CIG', 'Craig', 'UNITED STATES', 'US', '-100', '40.495', '-107.5214', 1, 'true', 0),
('CIL', 'Melsing Creek Arpt', 'CIL', 'Council', 'UNITED STATES', 'US', '-9', '64.897778', '-163.703333', 1, 'true', 0),
('CIO', 'Mcal Lopez Arpt', 'CIO', 'Concepcion', 'PARAGUAY', 'PY', '2', '45.4715', '21.1136', 1, 'true', 0),
('CIT', 'Shimkent Arpt', 'CIT', 'Shimkent', 'KAZAKHSTAN', 'KZ', '6', '42.364167', '69.478889', 1, 'true', 0),
('CIW', 'Canouan Island Minicipal', 'CIW', 'Canovan Island', 'DOMINICA', 'DM', '-4', '12.699042', '-61.342431', 1, 'true', 0),
('CIX', 'Cornel Ruiz Arpt', 'CIX', 'Chiclayo', 'PERU', 'PE', '-5', '-6.787475', '-79.828097', 1, 'true', 0),
('CIY', 'Comiso Arpt', 'CIY', 'Comiso', 'ITALY', 'IT', '-100', '0', '0', 1, 'true', 0),
('CJB', 'Peelamedu Airport', 'CJB', 'Coimbatore', 'INDIA', 'IN', '5', '11.030031', '77.043383', 1, 'true', 0),
('CJC', 'El Loa Arpt', 'CJC', 'Calama', 'CHILE', 'CL', '-4', '-22.498175', '-68.903575', 1, 'true', 0),
('CJI', 'Ciudad Real City Arpt', 'CJI', 'Ciudad Real City', 'SPAIN', 'ES', '-100', '0', '0', 1, 'true', 0),
('CJJ', 'Cheongju Arpt', 'CJJ', 'Cheongju', 'KOREA, REPUBLIC OF', 'KR', '9', '36.7166', '127.499119', 1, 'true', 0),
('CJM', 'Chumphon Arpt', 'CJM', 'Chumphon', 'THAILAND', 'TH', '7', '10.7112', '99.361706', 1, 'true', 0),
('CJN', 'El Cajon Arpt', 'CJN', 'El Cajon', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CJS', 'Intl Abraham Gonzalez', 'CJS', 'Ciudad Juarez', 'MEXICO', 'MX', '-6', '31.636133', '-106.428667', 1, 'true', 0),
('CJU', 'Jeju Intl Arpt', 'CJU', 'Jeju City', 'KOREA, REPUBLIC OF', 'KR', '9', '33.511306', '126.493028', 1, 'true', 0),
('CKB', 'Clarksburg Benedum Arpt', 'CKB', 'Clarksburg', 'UNITED STATES', 'US', '-5', '39.2966', '-80.2281', 1, 'true', 0),
('CKG', 'Chongqing Arpt', 'CKG', 'Chongqing', 'CHINA', 'CN', '8', '29.719217', '106.641678', 1, 'true', 0),
('CKH', 'Chokurdakh Airport', 'CKH', 'Chokurdakh Airport', 'RUSSIA', 'RU', '12', '70.6231', '147.902', 1, 'true', 0),
('CKM', 'Fletcher Field', 'CKM', 'Clarksdale', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CKS', 'Carajas Arpt', 'CKS', 'Carajas', 'BRAZIL', 'BR', '-3', '-6.11781', '-50.0035', 1, 'true', 0),
('CKV', 'Outlaw Field', 'CKV', 'Clarksville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CKY', 'Conakry Airport', 'CKY', 'Conakry', 'GUINEA', 'GN', '0', '9.576889', '-13.611961', 1, 'true', 0),
('CKZ', 'Canakkale Arpt', 'CKZ', 'Canakkale', 'TURKEY', 'TR', '2', '40.137722', '26.426777', 1, 'true', 0),
('CLC', 'Metroport', 'CLC', 'Clear Lake City', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CLD', 'Carlsbad Arpt', 'CLD', 'Carlsbad', 'UNITED STATES', 'US', '-8', '33.0742', '-117.1648', 1, 'true', 0),
('CGF', 'Cuyahoga County Airport', 'CLE', 'Cleveland', 'UNITED STATES', 'US', '-5', '41.565124', '-81.486356', 3, '', 0),
('CLE', 'Hopkins Intl Arpt', 'CLE', 'Cleveland', 'UNITED STATES', 'US', '-5', '41.411689', '-81.849794', 3, 'true', 0),
('BKL', 'Burke Lakefront Arpt', 'CLE', 'Cleveland', 'UNITED STATES', 'US', '-100', '41.525', '-81.6833', 3, '', 0),
('CLJ', 'Napoca Arpt', 'CLJ', 'Cluj', 'ROMANIA', 'RO', '2', '46.785167', '23.686167', 1, 'true', 0),
('CLL', 'Easterwood Field', 'CLL', 'College Station', 'UNITED STATES', 'US', '-6', '30.588583', '-96.363833', 1, 'true', 0),
('CLM', 'William Fairchild Intl Arpt', 'CLM', 'Port Angeles', 'UNITED STATES', 'US', '-8', '48.1202', '-123.5', 1, 'true', 0),
('CLO', 'Alfonso Bonella Aragon Arpt', 'CLO', 'Cali', 'COLOMBIA', 'CO', '-5', '3.543222', '-76.381583', 1, 'true', 0),
('CLQ', 'Colima Arpt', 'CLQ', 'Colima', 'MEXICO', 'MX', '-6', '19.277011', '-103.577397', 1, 'true', 0),
('CLT', 'Charlotte Douglas Intl Arpt', 'CLT', 'Charlotte', 'UNITED STATES', 'US', '-5', '35.214', '-80.943139', 1, 'true', 0),
('CLU', 'Columbus Municipal Arpt', 'CLU', 'Columbus', 'UNITED STATES', 'US', '-100', '39.2617', '-85.8967', 1, 'true', 0),
('CLW', 'Clearwater Executive Airpark', 'CLW', 'Clearwater', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CLY', 'Ste Catherine Arpt', 'CLY', 'Calvi', 'FRANCE', 'FR', '1', '42.530753', '8.793189', 1, 'true', 0),
('CMA', 'Cunnamulla Arpt', 'CMA', 'Cunnamulla', 'AUSTRALIA', 'AU', '10', '-28.03', '145.622', 1, 'true', 0),
('CMB', 'Bandaranaike Intl Arpt', 'CMB', 'Colombo', 'SRI LANKA', 'LK', '6', '7.180756', '79.884117', 1, 'true', 0),
('CME', 'Ciudad Del Carmen Arpt', 'CME', 'Ciudad Del Carmen', 'MEXICO', 'MX', '-6', '18.653739', '-91.799017', 1, 'true', 0),
('CMF', 'Chambery Aix Les Bains Arpt', 'CMF', 'Chambery', 'FRANCE', 'FR', '1', '45.63805', '5.880225', 1, 'true', 0),
('CMG', 'Internacional Corumba', 'CMG', 'Corumba', 'BRAZIL', 'BR', '-4', '-19.011931', '-57.673053', 1, 'true', 0),
('OSU', 'Ohio State Univ Arpt', 'CMH', 'Columbus', 'UNITED STATES', 'US', '-5', '40.0798', '-83.073', 3, '', 0),
('LCK', 'Rickenbacker Intl Arpt', 'CMH', 'Columbus', 'UNITED STATES', 'US', '-5', '39.813786', '-82.927822', 3, '', 0),
('CMH', 'Port Columbus Intl Arpt', 'CMH', 'Columbus', 'UNITED STATES', 'US', '-5', '39.997972', '-82.891889', 3, 'true', 0),
('CMI', 'Univ Of Illinois Willard Arpt', 'CMI', 'Champaign', 'UNITED STATES', 'US', '-6', '40.03925', '-88.278056', 1, 'true', 0),
('CMQ', 'Clermont Arpt', 'CMQ', 'Clermont', 'AUSTRALIA', 'AU', '-100', '-22.7694', '147.6194', 1, 'true', 0),
('CMR', 'Colmar Houssen Arpt', 'CMR', 'Colmar', 'FRANCE', 'FR', '1', '48.109853', '7.359011', 1, 'true', 0),
('CMV', 'Coromandel Arpt', 'CMV', 'Coromandel', 'NEW ZEALAND', 'NZ', '-100', '0', '0', 1, 'true', 0),
('CMW', 'Ign Agramonte Intl Arpt', 'CMW', 'Camaguey', 'CUBA', 'CU', '-5', '21.420428', '-77.847433', 1, 'true', 0),
('CMX', 'Houghton Cty Memorial Arpt', 'CMX', 'Houghton', 'UNITED STATES', 'US', '-5', '47.1684', '-88.4891', 1, 'true', 0),
('CMY', 'Camp Mccoy Aaf', 'CMY', 'Sparta', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CNB', 'Coonamble Arpt', 'CNB', 'Coonamble', 'AUSTRALIA', 'AU', '10', '-30.9833', '148.376', 1, 'true', 0),
('CNC', 'Coconut Island Arpt', 'CNC', 'Coconut Island', 'AUSTRALIA', 'AU', '10', '-10.05', '143.07', 1, 'true', 0),
('CND', 'Kogalniceanu Arpt', 'CND', 'Constanta', 'ROMANIA', 'RO', '2', '44.362222', '28.488333', 1, 'true', 0),
('CNG', 'Parvaud Arpt', 'CNG', 'Cognac', 'FRANCE', 'FR', '1', '45.658333', '-0.3175', 1, 'true', 0),
('CNJ', 'Cloncurry Arpt', 'CNJ', 'Cloncurry', 'AUSTRALIA', 'AU', '10', '-20.6686', '140.504', 1, 'true', 0),
('CNM', 'Carlsbad Airport', 'CNM', 'Carlsbad', 'UNITED STATES', 'US', '-7', '32.337472', '-104.263278', 1, 'true', 0),
('CNQ', 'Camba Punta Arpt', 'CNQ', 'Corrientes', 'ARGENTINA', 'AR', '-3', '-27.445503', '-58.761864', 1, 'true', 0),
('CNS', 'Cairns Airport', 'CNS', 'Cairns', 'AUSTRALIA', 'AU', '10', '-16.885833', '145.755278', 1, 'true', 0),
('CNX', 'Chiang Mai Intl Arpt', 'CNX', 'Chiang Mai', 'THAILAND', 'TH', '7', '18.766847', '98.962644', 1, 'true', 0),
('CNY', 'Moab Municipal', 'CNY', 'Moab', 'UNITED STATES', 'US', '-7', '38.755', '-109.754722', 1, 'true', 0),
('COC', 'Concordia Arpt', 'COC', 'Concordia', 'ARGENTINA', 'AR', '-3', '-31.296944', '-57.996631', 1, 'true', 0),
('COD', 'Yellowstone Regional Arpt', 'COD', 'Cody', 'UNITED STATES', 'US', '-7', '44.520194', '-109.023806', 1, 'true', 0),
('COE', 'Coeur d Alene Municipal Arpt', 'COE', 'Coeur D Alene', 'UNITED STATES', 'US', '-100', '47.7743', '-116.8196', 1, 'true', 0),
('COF', 'Patrick AFB', 'COI', 'Cocoa Metro Area', 'UNITED STATES', 'US', '-5', '28.234922', '-80.610125', 2, '', 0),
('COI', 'Merrit Island Arpt', 'COI', 'Cocoa Metro Area', 'UNITED STATES', 'US', '-100', '0', '0', 2, 'true', 0),
('COJ', 'Coonabarabran Arpt', 'COJ', 'Coonabarabrn', 'AUSTRALIA', 'AU', '-100', '-31.335', '149.27', 1, 'true', 0),
('COK', 'Kochi Intl Arpt', 'COK', 'Kochi', 'INDIA', 'IN', '5', '10.155556', '76.391389', 1, 'true', 0),
('CON', 'Concord Arpt', 'CON', 'Concord', 'UNITED STATES', 'US', '-5', '43.20267', '-71.50233', 1, 'true', 0),
('COO', 'Cotonou Airport', 'COO', 'Cotonou', 'BENIN', 'BJ', '1', '6.357228', '2.384353', 1, 'true', 0),
('COR', 'Pajas Blanco Arpt', 'COR', 'Cordoba', 'ARGENTINA', 'AR', '-3', '-31.323619', '-64.207953', 1, 'true', 0),
('COS', 'Colorado Springs Municipal Arpt', 'COS', 'Colorado Springs', 'UNITED STATES', 'US', '-7', '38.805805', '-104.700778', 1, 'true', 0),
('COU', 'Columbia Regional', 'COU', 'Columbia', 'UNITED STATES', 'US', '-6', '38.818094', '-92.219631', 1, 'true', 0),
('CPC', 'Chapelco Arpt', 'CPC', 'Chapelco', 'ARGENTINA', 'AR', '-3', '-40.075383', '-71.137294', 1, 'true', 0),
('CPD', 'Coober Pedy Arpt', 'CPD', 'Coober Pedy', 'AUSTRALIA', 'AU', '9', '-29.04', '134.721', 1, 'true', 0),
('CPE', 'Campeche Intl Arpt', 'CPE', 'Campeche', 'MEXICO', 'MX', '-6', '19.816794', '-90.500314', 1, 'true', 0),
('ZGH', 'Copenhagen Rail Station', 'CPH', 'Copenhagen', 'DENMARK', 'DK', '-100', '0', '0', 2, '', 0),
('CPH', 'Copenhagen Arpt', 'CPH', 'Copenhagen', 'DENMARK', 'DK', '1', '55.617917', '12.655972', 2, 'true', 0),
('CPO', 'Chamonate Arpt', 'CPO', 'Copiapo', 'CHILE', 'CL', '-4', '-27', '-70', 1, 'true', 0),
('CPQ', 'International Campinas', 'CPQ', 'Campinas', 'BRAZIL', 'BR', '-4', '-22.8592', '-47.1082', 1, 'true', 0),
('CPR', 'Natrona Cty Intl Arpt', 'CPR', 'Casper', 'UNITED STATES', 'US', '-7', '42.908', '-106.464417', 1, 'true', 0),
('CPT', 'Cape Town International', 'CPT', 'Cape Town', 'SOUTH AFRICA', 'ZA', '2', '-33.964806', '18.601667', 1, 'true', 0),
('CPV', 'Joao Suassuana Arpt', 'CPV', 'Campina Grande', 'BRAZIL', 'BR', '-3', '-7.269917', '-35.896364', 1, 'true', 0),
('CPX', 'Culebra Arpt', 'CPX', 'Culebra', 'UNITED STATES', 'US', '-4', '18.3127', '-65.3034', 1, 'true', 0),
('CQD', 'Shahre Kord Arpt', 'CQD', 'Shahre Kord', 'IRAN', 'IR', '3', '32.2972', '50.8422', 1, 'true', 0),
('CQM', 'Ciudad Real Central Arpt', 'CQM', 'Ciudad Real', 'SPAIN', 'ES', '1', '38.856389', '-3.97', 1, 'true', 0),
('CRA', 'Craiova Arpt', 'CRA', 'Craiova', 'ROMANIA', 'RO', '2', '44.318139', '23.888611', 1, 'true', 0),
('CRD', 'Comodoro Rivadavia Arpt', 'CRD', 'Comodoro Rivadavia', 'ARGENTINA', 'AR', '-3', '-45.785347', '-67.465508', 1, 'true', 0),
('CRK', 'Clark Field Arpt', 'CRK', 'Luzon Island', 'PHILIPPINES', 'PH', '8', '15.185833', '120.560278', 1, 'true', 0),
('CRP', 'Corpus Christi Intl Arpt', 'CRP', 'Corpus Christi', 'UNITED STATES', 'US', '-6', '27.770361', '-97.501222', 1, 'true', 0),
('CRV', 'Crotone Arpt', 'CRV', 'Crotone', 'ITALY', 'IT', '1', '38.997225', '17.080169', 1, 'true', 0),
('CRW', 'Yeager Arpt', 'CRW', 'Charleston', 'UNITED STATES', 'US', '-5', '38.373147', '-81.593189', 1, 'true', 0),
('CRX', 'Roscoe Turner Arpt', 'CRX', 'Corinth', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CRZ', 'Turkmenabad Arpt', 'CRZ', 'Turkmenabad', 'TURKMENISTAN', 'TM', '5', '39.083333', '63.602222', 1, 'true', 0),
('CSF', 'Creil Arpt', 'CSF', 'Creil', 'FRANCE', 'FR', '1', '49.253547', '2.519139', 1, 'true', 0),
('CSG', 'Columbus Metro Ft Benning Arpt', 'CSG', 'Columbus', 'UNITED STATES', 'US', '-5', '32.516333', '-84.938861', 1, 'true', 0),
('CSI', 'Casino Arpt', 'CSI', 'Casino', 'AUSTRALIA', 'AU', '-100', '-28.8833', '153.0583', 1, 'true', 0),
('SBP', 'San Luis Obispo County Arpt', 'CSL', 'San Luis Obispo', 'UNITED STATES', 'US', '-8', '35.2368', '-120.642', 2, '', 0),
('CSL', 'O Sullivan Army Air Field', 'CSL', 'San Luis Obispo', 'UNITED STATES', 'US', '-100', '0', '0', 2, 'true', 0),
('CLK', 'Clinton Municipal Arpt', 'CSM', 'Clinton', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('CSM', 'Sherman Arpt', 'CSM', 'Clinton', 'UNITED STATES', 'US', '-100', '35.34', '-99.2', 2, 'true', 0),
('CSN', 'Carson Arpt', 'CSN', 'Carson City', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CSU', 'Santa Cruz Do Sul Arpt', 'CSU', 'Santa Cruz Do Sul', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('CSX', 'Changsha Arpt', 'CSX', 'Changsha', 'CHINA', 'CN', '8', '28.189158', '113.219633', 1, 'true', 0),
('CSY', 'Cheboksary Arpt', 'CSY', 'Cheboksary', 'RUSSIA', 'RU', '4', '56.0903', '47.3473', 1, 'true', 0),
('CTA', 'Fontanarossa Arpt', 'CTA', 'Catania', 'ITALY', 'IT', '1', '37.466781', '15.0664', 1, 'true', 0),
('CTC', 'Choya Arpt', 'CTC', 'Catamarca', 'ARGENTINA', 'AR', '-3', '-28.593214', '-65.750925', 1, 'true', 0),
('CTD', 'Chitre Airfield', 'CTD', 'Chitre', 'PANAMA', 'PA', '-5', '7.98784', '-80.4097', 1, 'true', 0),
('CTG', 'Rafael Nunez Arpt', 'CTG', 'Cartagena', 'COLOMBIA', 'CO', '-5', '10.442381', '-75.512961', 1, 'true', 0),
('CTL', 'Charleville Arpt', 'CTL', 'Charleville', 'AUSTRALIA', 'AU', '10', '-26.413334', '146.2625', 1, 'true', 0),
('CTM', 'Chetumal International', 'CTM', 'Chetumal', 'MEXICO', 'MX', '-6', '18.504667', '-88.326847', 1, 'true', 0),
('CTN', 'Cooktown Arpt', 'CTN', 'Cooktown', 'AUSTRALIA', 'AU', '10', '-15.4447', '145.184', 1, 'true', 0),
('CTU', 'Chengdu Arpt', 'CTU', 'Chengdu', 'CHINA', 'CN', '8', '30.578528', '103.947086', 1, 'true', 0),
('CTW', 'Cottonwood Airport', 'CTW', 'Cottonwood', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CUA', 'Ciudad Constitucion Arpt', 'CUA', 'Ciudad Constitucion', 'MEXICO', 'MX', '-7', '25.0538', '-111.615', 1, 'true', 0),
('CUC', 'Camilo Dazo Arpt', 'CUC', 'Cucuta', 'COLOMBIA', 'CO', '-5', '7.927567', '-72.511547', 1, 'true', 0),
('CUE', 'Cuenca Arpt', 'CUE', 'Cuenca', 'ECUADOR', 'EC', '-5', '-2.889467', '-78.984397', 1, 'true', 0),
('CUF', 'Levaldigi Arpt', 'CUF', 'Cuneo', 'ITALY', 'IT', '1', '44.547019', '7.623217', 1, 'true', 0),
('CUG', 'Cudal Arpt', 'CUG', 'Cudal', 'AUSTRALIA', 'AU', '-100', '-33.2783', '148.7633', 1, 'true', 0),
('CUL', 'Fedl De Bachigualato Arpt', 'CUL', 'Culiacan', 'MEXICO', 'MX', '-7', '24.764547', '-107.474717', 1, 'true', 0),
('CUM', 'Antonio Jose De Sucre', 'CUM', 'Cumana', 'VENEZUELA', 'VE', '-4', '10.450333', '-64.130472', 1, 'true', 0),
('CUN', 'Cancun Aeropuerto Internacional', 'CUN', 'Cancun', 'MEXICO', 'MX', '-6', '21.036528', '-86.877083', 1, 'true', 0),
('CUQ', 'Coen Arpt', 'CUQ', 'Coen', 'AUSTRALIA', 'AU', '10', '-13.7608', '143.114', 1, 'true', 0),
('CUR', 'Areopuerto Hato Arpt', 'CUR', 'Curacao', 'NETHERLANDS ANTILLES', 'AN', '-4', '12.188853', '-68.959803', 1, 'true', 0),
('CUS', 'Columbus Municipal', 'CUS', 'Columbus', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CUU', 'Chihuahua Airport', 'CUU', 'Chihuahua', 'MEXICO', 'MX', '-6', '28.702875', '-105.964567', 1, 'true', 0),
('CUZ', 'Tte Velazco Astete Arpt', 'CUZ', 'Cuzco', 'PERU', 'PE', '-5', '-13.535722', '-71.938781', 1, 'true', 0),
('CVF', 'Courchevel Arpt', 'CVF', 'Courchevel', 'FRANCE', 'FR', '1', '45.3967', '6.63472', 1, 'true', 0),
('LUK', 'Cincinnati Municipal Arpt', 'CVG', 'Cincinnati', 'UNITED STATES', 'US', '-5', '39.103333', '-84.418611', 2, '', 0),
('CVG', 'Cincinnati No Kentucky Intl Arpt', 'CVG', 'Cincinnati', 'UNITED STATES', 'US', '-5', '39.048836', '-84.667822', 2, 'true', 0),
('CVJ', 'Cuernavaca Arpt', 'CVJ', 'Cuernavaca', 'MEXICO', 'MX', '-6', '18.834764', '-99.2613', 1, 'true', 0),
('CVM', 'Ciudad Victoria Arpt', 'CVM', 'Ciudad Victoria', 'MEXICO', 'MX', '-6', '23.703336', '-98.956486', 1, 'true', 0),
('CVN', 'Clovis Airport', 'CVN', 'Clovis', 'UNITED STATES', 'US', '-6', '34.425139', '-103.079278', 1, 'true', 0),
('QWY', 'Albany Bus Service', 'CVO', 'Corvallis', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('CVO', 'Corvallis Municipal Arpt', 'CVO', 'Corvallis', 'UNITED STATES', 'US', '-100', '0', '0', 2, 'true', 0),
('CVQ', 'Carnarvon Arpt', 'CVQ', 'Carnarvon', 'AUSTRALIA', 'AU', '8', '-24.8806', '113.672', 1, 'true', 0),
('CVT', 'Baginton Arpt', 'CVT', 'Coventry', 'UNITED KINGDOM', 'GB', '0', '52.369722', '-1.479722', 1, 'true', 0),
('CVU', 'Corvo Arpt', 'CVU', 'Corvo Island', 'PORTUGAL', 'PT', '-1', '39.6715', '-31.1136', 1, 'true', 0),
('CWB', 'Afonso Pena Arpt', 'CWB', 'Curitiba', 'BRAZIL', 'BR', '-3', '-25.528475', '-49.175775', 1, 'true', 0),
('CWC', 'Chernovtsy Arpt', 'CWC', 'Chernovtsy', 'UKRAINE', 'UA', '2', '48.259322', '25.980831', 1, 'true', 0),
('CWI', 'Clinton Municipal', 'CWI', 'Clinton', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('CWL', 'Cardiff Wales Arpt', 'CWL', 'Cardiff', 'UNITED KINGDOM', 'GB', '0', '51.396667', '-3.343333', 1, 'true', 0),
('CWT', 'Cowra Arpt', 'CWT', 'Cowra', 'AUSTRALIA', 'AU', '-100', '-33.8467', '148.6494', 1, 'true', 0),
('CXI', 'Cassidy', 'CXI', 'Christmas Island', 'KIRIBATI', 'KI', '-12', '1.986161', '-157.349778', 1, 'true', 0),
('CXJ', 'Campo Dos Bugres Arpt', 'CXJ', 'Caxias Do Sul', 'BRAZIL', 'BR', '-3', '-29.197064', '-51.187536', 1, 'true', 0),
('CXL', 'Calexico Intl Arpt', 'CXL', 'Calexico', 'UNITED STATES', 'US', '-8', '32.669502', '-115.51333', 1, 'true', 0),
('CXO', 'Montgomery Co Arpt', 'CXO', 'Conroe', 'UNITED STATES', 'US', '-6', '30.351833', '-95.414467', 1, 'true', 0),
('CXP', 'Tunggul Wulung Arpt', 'CXP', 'Cilacap', 'INDONESIA', 'ID', '7', '-7.645056', '109.033911', 1, 'true', 0),
('CXR', 'Cam Ranh Arpt', 'CXR', 'Cam Ranh', 'VIET NAM', 'VN', '7', '11.998153', '109.219372', 1, 'true', 0),
('CYB', 'Gerrard Smith Arpt', 'CYB', 'Cayman Brac', 'CAYMAN ISLANDS', 'KY', '-5', '19.686981', '-79.882789', 1, 'true', 0),
('CYO', 'Cayo Largo Del Sur Arpt', 'CYO', 'Cayo Largo Del Sur', 'CUBA', 'CU', '-5', '21.616453', '-81.545989', 1, 'true', 0),
('CYR', 'Colonia Arpt', 'CYR', 'Colonia', 'URUGUAY', 'UY', '-4', '-34.4564', '-57.7706', 1, 'true', 0),
('CYS', 'Cheyenne Arpt', 'CYS', 'Cheyenne', 'UNITED STATES', 'US', '-7', '41.155722', '-104.811839', 1, 'true', 0),
('CZA', 'Chichen Itza Arpt', 'CZA', 'Chichen Itza', 'MEXICO', 'MX', '-100', '20.6413', '-88.4462', 1, 'true', 0),
('CZE', 'Coro Arpt', 'CZE', 'Coro', 'VENEZUELA', 'VE', '-4', '11.414867', '-69.681656', 1, 'true', 0),
('CZL', 'Ain El Bey Arpt', 'CZL', 'Constantine', 'ALGERIA', 'DZ', '1', '36.276028', '6.620386', 1, 'true', 0),
('CZM', 'Aeropuerto Intl De Cozumel', 'CZM', 'Cozumel', 'MEXICO', 'MX', '-6', '20.522403', '-86.925644', 1, 'true', 0),
('CZS', 'Campo Intl Arpt', 'CZS', 'Cruzeiro Do Sul', 'BRAZIL', 'BR', '-5', '-7.599906', '-72.769489', 1, 'true', 0),
('CZX', 'Changzhou Arpt', 'CZX', 'Changzhou', 'CHINA', 'CN', '8', '31.941667', '119.711667', 1, 'true', 0),
('DAB', 'Daytona Beach Regional Arpt', 'DAB', 'Daytona Beach', 'UNITED STATES', 'US', '-5', '29.179917', '-81.058056', 1, 'true', 0),
('DAC', 'Zia Intl Airport', 'DAC', 'Dhaka', 'BANGLADESH', 'BD', '6', '23.843333', '90.397781', 1, 'true', 0),
('DAD', 'Da Nang Arpt', 'DAD', 'Da Nang', 'VIET NAM', 'VN', '7', '16.043917', '108.19937', 1, 'true', 0),
('DAK', 'Dakhla Arpt', 'DAK', 'Dakhla Oasis', 'EGYPT', 'EG', '-100', '25.4117', '29.0017', 1, 'true', 0),
('DAM', 'Damascus Intl', 'DAM', 'Damascus', 'SYRIA', 'SY', '2', '33.410636', '36.514267', 1, 'true', 0),
('DAN', 'Danville Municipal', 'DAN', 'Danville', 'UNITED STATES', 'US', '-100', '36.5729', '-79.3361', 1, 'true', 0),
('DAR', 'Es Salaam Intl', 'DAR', 'Dar Es Salaam', 'TANZANIA', 'TZ', '3', '-6.878111', '39.202625', 1, 'true', 0),
('DAT', 'Datong Arpt', 'DAT', 'Datong', 'CHINA', 'CN', '8', '40.0603', '113.482', 1, 'true', 0),
('DAV', 'Enrique Malek Arpt', 'DAV', 'David', 'PANAMA', 'PA', '-5', '8.391003', '-82.434992', 1, 'true', 0),
('DAY', 'Dayton International Airport', 'DAY', 'Dayton', 'UNITED STATES', 'US', '-5', '39.902375', '-84.219375', 1, 'true', 0),
('DBN', 'Dublin Municipal Arpt', 'DBN', 'Dublin', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('DBO', 'Dubbo Arpt', 'DBO', 'Dubbo', 'AUSTRALIA', 'AU', '10', '-32.216667', '148.574722', 1, 'true', 0),
('DBQ', 'Dubuque Municipal Arpt', 'DBQ', 'Dubuque', 'UNITED STATES', 'US', '-6', '42.402', '-90.709472', 1, 'true', 0),
('DBV', 'Dubrovnik Arpt', 'DBV', 'Dubrovnik', 'CROATIA', 'HR', '1', '42.561353', '18.268244', 1, 'true', 0),
('DBY', 'Dalby', 'DBY', 'Dalby', 'AUSTRALIA', 'AU', '-100', '-27.155', '151.2667', 1, 'true', 0),
('DCM', 'Mazamet Arpt', 'DCM', 'Castres', 'FRANCE', 'FR', '1', '43.55625', '2.289183', 1, 'true', 0),
('DCU', 'Pyor Arpt', 'DCU', 'Decatur', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('DDC', 'Dodge City Municipal Arpt', 'DDC', 'Dodge City', 'UNITED STATES', 'US', '-6', '37.7634', '-99.9656', 1, 'true', 0),
('DDG', 'Dandong Arpt', 'DDG', 'Dandong', 'CHINA', 'CN', '8', '40.0255', '124.2866', 1, 'true', 0),
('DDI', 'Daydream Island Arpt', 'DDI', 'Daydream Island', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('DEB', 'Debrecen Arpt', 'DEB', 'Debrecen', 'HUNGARY', 'HU', '1', '47.488917', '21.615333', 1, 'true', 0),
('DEC', 'Decatur Municipal', 'DEC', 'Decatur', 'UNITED STATES', 'US', '-6', '39.834564', '-88.865689', 1, 'true', 0),
('DED', 'Jolly Grant Airport', 'DED', 'Dehra Dun', 'INDIA', 'IN', '5', '30.189689', '78.180256', 1, 'true', 0),
('DEH', 'Decorah Municipal', 'DEH', 'Decorah', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('DEL', 'Delhi Indira Gandhi Intl', 'DEL', 'Delhi', 'INDIA', 'IN', '5', '28.5665', '77.103088', 1, 'true', 0),
('APA', 'Centennial Arpt', 'DEN', 'Denver', 'UNITED STATES', 'US', '-7', '39.570129', '-104.849294', 3, '', 0),
('DEN', 'Denver Intl Arpt', 'DEN', 'Denver', 'UNITED STATES', 'US', '-7', '39.861656', '-104.673178', 3, 'true', 0),
('QWM', 'Longmont Bus Service', 'DEN', 'Denver', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('DEZ', 'Al Jafrah Arpt', 'DEZ', 'Deirezzor', 'SYRIA', 'SY', '2', '35.285374', '40.175961', 1, 'true', 0),
('DFI', 'Defiance Memorial Arpt', 'DFI', 'Defiance', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('AFW', 'Fort Worth Alliance Arpt', 'DFW', 'Dallas', 'UNITED STATES', 'US', '-6', '32.987778', '-97.318889', 4, '', 0),
('DFW', 'Dallas Ft Worth Intl', 'DFW', 'Dallas', 'UNITED STATES', 'US', '-6', '32.896828', '-97.037997', 4, 'true', 0),
('ADS', 'Addison Arpt', 'DFW', 'Dallas', 'UNITED STATES', 'US', '-5', '32.968559', '-96.836448', 4, '', 0),
('DAL', 'Love Field', 'DFW', 'Dallas', 'UNITED STATES', 'US', '-6', '32.847111', '-96.851778', 4, '', 0),
('DGE', 'Mudgee Arpt', 'DGE', 'Mudgee', 'AUSTRALIA', 'AU', '10', '-32.5625', '149.611', 1, 'true', 0),
('DGM', 'Dongguan Arpt', 'DGM', 'Dongguan', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('DGO', 'Guadalupe Victoria Arpt', 'DGO', 'Durango', 'MEXICO', 'MX', '-6', '24.124194', '-104.528014', 1, 'true', 0),
('DGP', 'Daugavpils Arpt', 'DGP', 'Daugavpils', 'LATVIA', 'LV', '-100', '0', '0', 1, 'true', 0),
('DGT', 'Dumaguete Arpt', 'DGT', 'Dumaguete', 'PHILIPPINES', 'PH', '8', '9.333714', '123.300472', 1, 'true', 0),
('DHA', 'Dhahran Intl', 'DHA', 'Dhahran', 'SAUDI ARABIA', 'SA', '3', '26.265417', '50.152027', 1, 'true', 0),
('DHM', 'Gaggal Arpt', 'DHM', 'Dharamsala', 'INDIA', 'IN', '5', '32.1651', '76.2634', 1, 'true', 0),
('DHN', 'Dothan Municipal', 'DHN', 'Dothan', 'UNITED STATES', 'US', '-6', '31.321339', '-85.449628', 1, 'true', 0),
('DIB', 'Mohanbari Arpt', 'DIB', 'Dibrugarh', 'INDIA', 'IN', '5', '27.4839', '95.0169', 1, 'true', 0),
('DIE', 'Antsiranana Arrachart Arpt', 'DIE', 'Diegosuarez', 'MADAGASCAR', 'MG', '3', '-12.3494', '49.291747', 1, 'true', 0),
('DIG', 'Diging Arpt', 'DIG', 'Diqing', 'CHINA', 'CN', '8', '27.7936', '99.6772', 1, 'true', 0),
('DIJ', 'Longvic Airport', 'DIJ', 'Dijon', 'FRANCE', 'FR', '1', '47.26889', '5.09', 1, 'true', 0),
('DIK', 'Dickinson Municipal', 'DIK', 'Dickinson', 'UNITED STATES', 'US', '-5', '46.7975', '-102.801944', 1, 'true', 0),
('DIL', 'Comoro Arpt', 'DIL', 'Dili', 'TIMOR-LESTE', 'TL', '8', '-8.546553', '125.524719', 1, 'true', 0),
('DIN', 'Gialam Arpt', 'DIN', 'Dien Bien Phu', 'VIET NAM', 'VN', '7', '21.397481', '103.007831', 1, 'true', 0),
('DIR', 'Aba Tenna D Yilma Arpt', 'DIR', 'Dire Dawa', 'ETHIOPIA', 'ET', '3', '9.6247', '41.854203', 1, 'true', 0),
('DIU', 'Diu Arpt', 'DIU', 'Diu In', 'INDIA', 'IN', '5', '20.7131', '70.9211', 1, 'true', 0),
('DIY', 'Diyarbakir Arpt', 'DIY', 'Diyarbakır', 'TURKEY', 'TR', '2', '37.893897', '40.201019', 1, 'true', 0),
('DJB', 'Sultan Taha Syarifudin Arpt', 'DJB', 'Jambi', 'INDONESIA', 'ID', '7', '-1.638017', '103.644378', 1, 'true', 0),
('DJE', 'Melita Airport', 'DJE', 'Djerba', 'TUNISIA', 'TN', '1', '33.875031', '10.775461', 1, 'true', 0),
('DJJ', 'Sentani Arpt', 'DJJ', 'Jayapura', 'INDONESIA', 'ID', '9', '-2.576953', '140.516372', 1, 'true', 0),
('DKI', 'Dunk Island Arpt', 'DKI', 'Dunk Island', 'AUSTRALIA', 'AU', '10', '-17.939722', '146.141944', 1, 'true', 0),
('DKR', 'Leopold Sedar Senghor Arpt', 'DKR', 'Dakar', 'SENEGAL', 'SN', '0', '14.739708', '-17.490225', 1, 'true', 0),
('DKS', 'Dikson Airport', 'DKS', 'Dikson Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('DLA', 'Douala Arpt', 'DLA', 'Douala', 'CAMEROON', 'CM', '1', '4.006081', '9.719481', 1, 'true', 0),
('DLC', 'Dalian Arpt', 'DLC', 'Dalian', 'CHINA', 'CN', '8', '38.965667', '121.5386', 1, 'true', 0),
('DLD', 'Dagali Arpt', 'DLD', 'Geilo', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('DLE', 'Tavaux Arpt', 'DLE', 'Dole', 'FRANCE', 'FR', '1', '47.039014', '5.42725', 1, 'true', 0),
('DLG', 'Dillingham Municipal Arpt', 'DLG', 'Dillingham', 'UNITED STATES', 'US', '-9', '59.044667', '-158.5055', 1, 'true', 0),
('DLH', 'Duluth Intl', 'DLH', 'Duluth', 'UNITED STATES', 'US', '-6', '46.842091', '-92.193649', 1, 'true', 0),
('DLI', 'Lienkhang', 'DLI', 'Dalat', 'VIET NAM', 'VN', '7', '11.75', '108.367', 1, 'true', 0),
('DLL', 'Dillon Arpt', 'DLL', 'Dillon', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('DLM', 'Dalaman Airport', 'DLM', 'Dalaman', 'TURKEY', 'TR', '2', '36.713056', '28.7925', 1, 'true', 0),
('DLS', 'The Dalles Municipal Arpt', 'DLS', 'The Dalles', 'UNITED STATES', 'US', '-100', '45.6185', '-121.1673', 1, 'true', 0),
('DLU', 'Dali Arpt', 'DLU', 'Dali City', 'CHINA', 'CN', '8', '25.649444', '100.319444', 1, 'true', 0),
('DMB', 'ZHAMBYL', 'DMB', 'ZHAMBYL', 'KAZAKHSTAN', 'KZ', '6', '42.853611', '71.303611', 1, 'true', 0),
('DMD', 'Doomadgee Arpt', 'DMD', 'Doomadgee', 'AUSTRALIA', 'AU', '10', '-17.9403', '138.822', 1, 'true', 0),
('DMM', 'King Fahad Arpt', 'DMM', 'Dammam', 'SAUDI ARABIA', 'SA', '3', '26.471161', '49.79789', 1, 'true', 0),
('DMO', 'Sedalia Memorial Arpt', 'DMO', 'Sedalia', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ZDU', 'Dundee ScotRail', 'DND', 'Dundee', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('DND', 'Riverside Park Arpt', 'DND', 'Dundee', 'UNITED KINGDOM', 'GB', '0', '56.452499', '-3.025833', 2, 'true', 0),
('DNH', 'Dunhuang Arpt', 'DNH', 'Dunhuang', 'CHINA', 'CN', '8', '40.094', '94.4818', 1, 'true', 0),
('DNK', 'Dnepropetrovsk Arpt', 'DNK', 'Dnepropetrovsk', 'UKRAINE', 'UA', '2', '48.357222', '35.100556', 1, 'true', 0),
('DNM', 'Denham Arpt', 'DNM', 'Denham', 'AUSTRALIA', 'AU', '8', '-25.8939', '113.577', 1, 'true', 0),
('DNQ', 'Denilinquin Arpt', 'DNQ', 'Deniliquin', 'AUSTRALIA', 'AU', '-100', '-35.5597', '144.9472', 1, 'true', 0),
('DNR', 'Pleurtuit Arpt', 'DNR', 'Dinard', 'FRANCE', 'FR', '1', '48.587683', '-2.079958', 1, 'true', 0),
('DNV', 'Vermillion Cty', 'DNV', 'Danville', 'UNITED STATES', 'US', '-100', '40.1992', '-87.5959', 1, 'true', 0),
('DNZ', 'Cardak Arpt', 'DNZ', 'Denizli', 'TURKEY', 'TR', '2', '37.785567', '29.701297', 1, 'true', 0),
('DOC', 'Dornoch Arpt', 'DOC', 'Dornoch', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('DOH', 'Doha International Arpt', 'DOH', 'Doha', 'QATAR', 'QA', '4', '25.261125', '51.565056', 1, 'true', 0),
('DOK', 'Donetsk Arpt', 'DOK', 'Donetsk', 'UKRAINE', 'UA', '2', '48.073611', '37.739722', 1, 'true', 0),
('DOL', 'Saint Gatien Arpt', 'DOL', 'Deauville', 'FRANCE', 'FR', '1', '49.365339', '0.154306', 1, 'true', 0),
('DCF', 'Canefield Arpt', 'DOM', 'Dominica', 'DOMINICA', 'DM', '-4', '15.336719', '-61.392211', 2, '', 0),
('DOM', 'Melville Hall Arpt', 'DOM', 'Dominica', 'DOMINICA', 'DM', '-4', '15.547028', '-61.3', 2, 'true', 0),
('DVX', 'Delaware Airpark', 'DOV', 'Dover', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('DOV', 'Dover AFB', 'DOV', 'Dover', 'UNITED STATES', 'US', '-5', '39.129539', '-75.465958', 2, 'true', 0),
('DOX', 'Dongara', 'DOX', 'Dongara', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('DPE', 'Dieppe Arpt', 'DPE', 'Dieppe', 'FRANCE', 'FR', '-100', '0', '0', 1, 'true', 0),
('DPL', 'Dipolog Arpt', 'DPL', 'Dipolog', 'PHILIPPINES', 'PH', '8', '8.601261', '123.334481', 1, 'true', 0),
('DPO', 'Devonport Arpt', 'DPO', 'Devonport', 'AUSTRALIA', 'AU', '10', '-41.1697', '146.43', 1, 'true', 0),
('DPS', 'Ngurah Rai Arpt', 'DPS', 'Denpasar Bali', 'INDONESIA', 'ID', '8', '-8.748169', '115.167172', 1, 'true', 0),
('DRB', 'Derby Airport', 'DRB', 'Derby', 'AUSTRALIA', 'AU', '8', '-17.39', '123.68', 1, 'true', 0),
('DRK', 'Drake Bay Arpt', 'DRK', 'Drake Bay Arpt', 'COSTA RICA', 'CR', '-6', '8.71889', '-83.6417', 1, 'true', 0),
('DRO', 'Durango La Plata Cty Arpt', 'DRO', 'Durango', 'UNITED STATES', 'US', '-7', '37.151516', '-107.75377', 2, 'true', 0),
('AMK', 'Animas Airpark', 'DRO', 'Durango', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('DRS', 'Dresden Arpt', 'DRS', 'Dresden', 'GERMANY', 'DE', '1', '51.132767', '13.767161', 1, 'true', 0),
('DRT', 'International Del Rio', 'DRT', 'Del Rio', 'UNITED STATES', 'US', '-6', '29.374208', '-100.927158', 1, 'true', 0),
('DRW', 'Darwin Airport', 'DRW', 'Darwin', 'AUSTRALIA', 'AU', '9', '-12.408333', '130.87266', 1, 'true', 0),
('DSA', 'Finningley Arpt', 'DSA', 'Doncaster', 'UNITED KINGDOM', 'GB', '0', '53.474722', '-1.004444', 1, 'true', 0),
('DSD', 'La Desirade Arpt', 'DSD', 'La Desirade', 'GUADELOUPE', 'GP', '-4', '16.2969', '-61.0844', 1, 'true', 0),
('DSI', 'Destin Arpt', 'DSI', 'Destin', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('DSM', 'Des Moines Municipal Airport', 'DSM', 'Des Moines', 'UNITED STATES', 'US', '-6', '41.533972', '-93.663083', 1, 'true', 0),
('DTM', 'Wickede Dortmund Arpt', 'DTM', 'Dortmund', 'GERMANY', 'DE', '1', '51.518314', '7.612242', 1, 'true', 0),
('UIZ', 'Berz Macomb Arpt', 'DTT', 'Detroit', 'UNITED STATES', 'US', '-100', '0', '0', 5, '', 0),
('YIP', 'Willow Run Arpt', 'DTT', 'Detroit', 'UNITED STATES', 'US', '-5', '42.237928', '-83.530408', 5, '', 0),
('MTC', 'Selfridge Air Natl Guard', 'DTT', 'Detroit', 'UNITED STATES', 'US', '-5', '42.608333', '-82.8355', 5, '', 0),
('DET', 'Detroit City Apt', 'DTT', 'Detroit', 'UNITED STATES', 'US', '-5', '42.409195', '-83.009861', 5, '', 0),
('DTW', 'Detroit Metro Wayne Cnty Arpt', 'DTT', 'Detroit', 'UNITED STATES', 'US', '-5', '42.212444', '-83.353389', 5, '', 0),
('DUB', 'Dublin Arpt', 'DUB', 'Dublin', 'IRELAND', 'IE', '0', '53.421333', '-6.270075', 1, 'true', 0),
('DUC', 'Halliburton Arpt', 'DUC', 'Duncan', 'UNITED STATES', 'US', '-6', '34.471306', '-97.959861', 1, 'true', 0),
('DUD', 'Momona Airport', 'DUD', 'Dunedin', 'NEW ZEALAND', 'NZ', '12', '-45.928055', '170.198333', 1, 'true', 0);
INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('DUG', 'Bisbee Douglas Intl', 'DUG', 'Douglas', 'UNITED STATES', 'US', '-7', '31.469028', '-109.603667', 1, 'true', 0),
('DUJ', 'Dubois Jefferson Cty Arpt', 'DUJ', 'Dubois', 'UNITED STATES', 'US', '-5', '41.1783', '-78.8987', 1, 'true', 0),
('DUQ', 'Duncan/Quam Rail Station', 'DUQ', 'Duncan', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('DUR', 'Durban International', 'DUR', 'Durban', 'SOUTH AFRICA', 'ZA', '2', '-29.970089', '30.950519', 2, 'true', 0),
('VIR', 'Virginia Arpt', 'DUR', 'Durban', 'SOUTH AFRICA', 'ZA', '2', '-29.770606', '31.058406', 2, '', 0),
('NRN', 'Niederrhein Arpt', 'DUS', 'Dusseldorf', 'GERMANY', 'DE', '1', '51.602222', '6.141944', 4, '', 0),
('QDU', 'Dusseldorf Rail Station', 'DUS', 'Dusseldorf', 'GERMANY', 'DE', '1', '51.220278', '6.792778', 4, '', 0),
('DUS', 'Dusseldorf Arpt', 'DUS', 'Dusseldorf', 'GERMANY', 'DE', '1', '51.289453', '6.766775', 4, 'true', 0),
('MGL', 'Moenchen Gi Dus Exp', 'DUS', 'Dusseldorf', 'GERMANY', 'DE', '1', '51.230356', '6.504494', 4, '', 0),
('DUT', 'Emergency Field', 'DUT', 'Dutch Harbor', 'UNITED STATES', 'US', '-9', '53.900139', '-166.5435', 1, 'true', 0),
('DVL', 'Devils Lake Arpt', 'DVL', 'Devils Lake', 'UNITED STATES', 'US', '-6', '48.114444', '-98.908611', 1, 'true', 0),
('DVN', 'Davenport Airport', 'DVN', 'Davenport', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('DVO', 'Mati Airport', 'DVO', 'Davao', 'PHILIPPINES', 'PH', '8', '7.125522', '125.645778', 1, 'true', 0),
('DWD', 'Dawadmi Airport', 'DWD', 'Dawadmi Airport', 'SAUDI ARABIA', 'SA', '3', '24.5', '44.4', 1, 'true', 0),
('SHJ', 'Sharjah Airport', 'DXB', 'Dubai', 'UNITED ARAB EMIRATES', 'AE', '4', '25.328575', '55.51715', 3, '', 0),
('XNB', 'Dubai Bus Station Arpt', 'DXB', 'Dubai', 'UNITED ARAB EMIRATES', 'AE', '-100', '0', '0', 3, '', 0),
('DXB', 'Dubai Intl Arpt', 'DXB', 'Dubai', 'UNITED ARAB EMIRATES', 'AE', '4', '25.252778', '55.364444', 3, 'true', 1),
('DXR', 'Danbury Municipal Arpt', 'DXR', 'Danbury', 'UNITED STATES', 'US', '-4', '41.371535', '-73.482191', 1, 'true', 0),
('DYG', 'Dayong Arpt', 'DYG', 'Dayong', 'CHINA', 'CN', '8', '29.1028', '110.443', 1, 'true', 0),
('DYL', 'Doylestown Arpt', 'DYL', 'Doylestown', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('DYR', 'Anadyr Arpt', 'DYR', 'Anadyr', 'RUSSIA', 'RU', '12', '64.73495', '177.741483', 1, 'true', 0),
('DYU', 'Dushanbe Arpt', 'DYU', 'Dushanbe', 'TAJIKISTAN', 'TJ', '5', '38.543333', '68.825', 1, 'true', 0),
('DZA', 'Dzaoudzi Arpt', 'DZA', 'Dzaoudzi', 'MAYOTTE', 'YT', '3', '-12.804722', '45.281113', 1, 'true', 0),
('DZN', 'ZHEZKAZGAN', 'DZN', 'ZHEZKAZGAN', 'KAZAKHSTAN', 'KZ', '6', '47.708333', '67.733333', 1, 'true', 0),
('EAA', 'Eagle Airport', 'EAA', 'Eagle', 'UNITED STATES', 'US', '-9', '64.778056', '-141.149722', 1, 'true', 0),
('EAM', 'Nejran Arpt', 'EAM', 'Nejran', 'SAUDI ARABIA', 'SA', '3', '17.611436', '44.419169', 1, 'true', 0),
('MHL', 'Mulhouse', 'EAP', 'Mulhouse Basel', 'FRANCE', 'FR', '-100', '0', '0', 4, '', 0),
('MLH', 'Mulhouse Euroairport French', 'EAP', 'Mulhouse Basel', 'FRANCE', 'FR', '1', '47.589583', '7.529914', 4, '', 0),
('ZBA', 'Basel/Mullhouse Rail Service', 'EAP', 'Mulhouse Basel', 'FRANCE', 'CH', '-100', '0', '0', 4, '', 0),
('ZDH', 'Basel/Mullhouse SBB Rail Service', 'EAP', 'Mulhouse Basel', 'FRANCE', 'CH', '-100', '47.6', '7.52', 4, '', 0),
('EAR', 'Kearney Municipal Arrpt', 'EAR', 'Kearney', 'UNITED STATES', 'US', '-6', '40.727', '-99.0068', 1, 'true', 0),
('EAS', 'San Sebastian Arpt', 'EAS', 'San Sebastian', 'SPAIN', 'ES', '1', '43.356519', '-1.790611', 1, 'true', 0),
('EAT', 'Pangborn Memorial Fld', 'EAT', 'Wenatchee', 'UNITED STATES', 'US', '-8', '47.398', '-120.206', 1, 'true', 0),
('EAU', 'Claire Municipal Airport', 'EAU', 'Eau Claire', 'UNITED STATES', 'US', '-6', '44.8658', '-91.4843', 1, 'true', 0),
('EBA', 'Marina Di Campo Arpt', 'EBA', 'Elba Island', 'ITALY', 'IT', '1', '42.760277', '10.239445', 1, 'true', 0),
('EBB', 'Entebbe Airport', 'EBB', 'Entebbe', 'UGANDA', 'UG', '3', '0.042386', '32.443503', 1, 'true', 0),
('EBJ', 'Esbjerg Arpt', 'EBJ', 'Esbjerg', 'DENMARK', 'DK', '1', '55.525942', '8.553403', 1, 'true', 0),
('EBL', 'Erbil Arpt', 'EBL', 'Erbil', 'IRAQ', 'IQ', '3', '36.237611', '43.963158', 1, 'true', 0),
('EBO', 'Ebon Arpt', 'EBO', 'Ebon', 'MARSHALL ISLANDS', 'MH', '1', '51.478506', '7.222781', 1, 'true', 0),
('EBU', 'Boutheon Arpt', 'EBU', 'St Etienne', 'FRANCE', 'FR', '1', '45.540554', '4.296389', 1, 'true', 0),
('ECG', 'Elizabeth Municipal Cgas', 'ECG', 'Elizabeth City', 'UNITED STATES', 'US', '-5', '36.260581', '-76.174572', 1, 'true', 0),
('ECH', 'Echuca Arpt', 'ECH', 'Echuca', 'AUSTRALIA', 'AU', '-100', '-36.1567', '144.7617', 1, 'true', 0),
('ECN', 'Ercan Airport', 'ECN', 'Ercan', 'CYPRUS', 'CY', '2', '35.1547', '33.4961', 1, 'true', 0),
('EDE', 'Edenton Municipal Arpt', 'EDE', 'Edenton', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ZXE', 'Edinburgh ScotRail', 'EDI', 'Edinburgh', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('EDI', 'Edinburgh Arpt', 'EDI', 'Edinburgh', 'UNITED KINGDOM', 'GB', '0', '55.95', '-3.3725', 2, 'true', 0),
('EDL', 'Eldoret Arpt', 'EDL', 'Eldoret', 'KENYA', 'KE', '3', '0.404458', '35.238928', 1, 'true', 0),
('EDM', 'Les Ajoncs Arpt', 'EDM', 'La Roche', 'FRANCE', 'FR', '1', '46.701944', '-1.378625', 1, 'true', 0),
('EDO', 'Edremit Airport', 'EDO', 'Edremit', 'TURKEY', 'TR', '2', '39.5546', '27.0138', 1, 'true', 0),
('EDR', 'Edward River Arpt', 'EDR', 'Edward River', 'AUSTRALIA', 'AU', '10', '-14.8967', '141.609', 1, 'true', 0),
('EED', 'Needles Arpt', 'EED', 'Needles', 'UNITED STATES', 'US', '-100', '34.7667', '-114.6233', 1, 'true', 0),
('EEN', 'Dilliant Hopkins Arpt', 'EEN', 'Keene', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('EFL', 'Argostoli Arpt', 'EFL', 'Kefalonia', 'GREECE', 'GR', '2', '38.120069', '20.500481', 1, 'true', 0),
('EGC', 'Roumaniere Arpt', 'EGC', 'Bergerac', 'FRANCE', 'FR', '1', '44.825279', '0.518611', 1, 'true', 0),
('ZBV', 'Beaver Creek Van Service', 'EGE', 'Eagle', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('QBF', 'Vail Van Service', 'EGE', 'Eagle', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('EGE', 'Eagle County Arpt', 'EGE', 'Eagle', 'UNITED STATES', 'US', '-7', '39.642556', '-106.917694', 3, 'true', 0),
('EGM', 'Sege Arpt', 'EGM', 'Sege', 'SOLOMON ISLANDS', 'SB', '11', '-8.57889', '157.876', 1, 'true', 0),
('EGN', 'Geneina Arpt', 'EGN', 'Geneina', 'SUDAN', 'SD', '2', '13.4817', '22.4672', 1, 'true', 0),
('EGO', 'Belgorod Arpt', 'EGO', 'Belgorod', 'RUSSIA', 'RU', '4', '50.6438', '36.5901', 1, 'true', 0),
('EGP', 'Maverick County Arpt', 'EGP', 'Eagle Pass', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('EGS', 'Egilsstadir Arpt', 'EGS', 'Egilsstadir', 'ICELAND', 'IS', '0', '65.283333', '-14.401389', 1, 'true', 0),
('EGV', 'Eagle River Union Arpt', 'EGV', 'Eagle River', 'UNITED STATES', 'US', '-6', '45.932333', '-89.268283', 1, 'true', 0),
('EHL', 'El Bolson Arpt', 'EHL', 'El Bolson', 'ARGENTINA', 'AR', '-3', '-41.943189', '-71.532289', 1, 'true', 0),
('EHT', 'Rentschler Arpt', 'EHT', 'East Hartford', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('EIB', 'Eisenach Arpt', 'EIB', 'Eisenach', 'GERMANY', 'DE', '-100', '0', '0', 1, 'true', 0),
('EIE', 'Eniseysk Airport', 'EIE', 'Eniseysk', 'RUSSIA', 'RU', '8', '58.4742', '92.1125', 1, 'true', 0),
('ZYE', 'Eindhoven Rail Station', 'EIN', 'Eindhoven', 'NETHERLANDS', 'NL', '-100', '0', '0', 2, '', 0),
('EIN', 'Welschap Arpt', 'EIN', 'Eindhoven', 'NETHERLANDS', 'NL', '1', '51.450139', '5.374528', 2, 'true', 0),
('EIS', 'Beef Island Arpt', 'EIS', 'Beef Island', 'VIRGIN ISLANDS, BRITISH', 'VG', '-4', '18.444834', '-64.542975', 1, 'true', 0),
('EJA', 'Variguies Arpt', 'EJA', 'Barrancabermeja', 'COLOMBIA', 'CO', '-5', '7.024331', '-73.8068', 1, 'true', 0),
('EKI', 'Elkhart Municipal Arpt', 'EKI', 'Elkhart', 'UNITED STATES', 'US', '-100', '37.0007', '-101.88', 1, 'true', 0),
('EKN', 'Randolph County Arpt', 'EKN', 'Elkins', 'UNITED STATES', 'US', '-5', '38.889444', '-79.857139', 1, 'true', 0),
('EKO', 'J C Harris Field', 'EKO', 'Elko', 'UNITED STATES', 'US', '-8', '40.8249', '-115.792', 1, 'true', 0),
('EKT', 'Eskilstuna Arpt', 'EKT', 'Eskilstuna', 'SWEDEN', 'SE', '-100', '59.3522', '16.7083', 2, 'true', 0),
('XFJ', 'Eskilstuna Rail Station', 'EKT', 'Eskilstuna', 'SWEDEN', 'SE', '-100', '0', '0', 2, '', 0),
('EKX', 'Addington Field', 'EKX', 'Elizabethtown', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ELD', 'Goodwin Field', 'ELD', 'El Dorado', 'UNITED STATES', 'US', '-6', '33.220972', '-92.813278', 1, 'true', 0),
('ELH', 'North Eleuthera Intl', 'ELH', 'North Eleuthera', 'BAHAMAS', 'BS', '-5', '25.474861', '-76.683489', 1, 'true', 0),
('ELK', 'Elk City Municipal', 'ELK', 'Elk City', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ELM', 'Elmira Corning Regional Arpt', 'ELM', 'Elmira', 'UNITED STATES', 'US', '-5', '42.159889', '-76.891611', 1, 'true', 0),
('ELP', 'El Paso Intl Arpt', 'ELP', 'El Paso', 'UNITED STATES', 'US', '-7', '31.80725', '-106.377583', 2, 'true', 0),
('BIF', 'Biggs Army Air Field', 'ELP', 'El Paso', 'UNITED STATES', 'US', '-7', '31.849528', '-106.380039', 2, '', 0),
('ELQ', 'Gassim Arpt', 'ELQ', 'Gassim', 'SAUDI ARABIA', 'SA', '3', '26.302822', '43.773911', 1, 'true', 0),
('ELS', 'East London Arpt', 'ELS', 'East London', 'SOUTH AFRICA', 'ZA', '2', '-33.035569', '27.825939', 1, 'true', 0),
('ELY', 'Yelland Field', 'ELY', 'Ely NV', 'UNITED STATES', 'US', '-8', '39.299722', '-114.841944', 1, 'true', 0),
('EMD', 'Emerald Arpt', 'EMD', 'Emerald', 'AUSTRALIA', 'AU', '10', '-23.5675', '148.179167', 1, 'true', 0),
('EMT', 'El Monte Arpt', 'EMT', 'El Monte', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ENA', 'Kenai Municipal Arpt', 'ENA', 'Kenai', 'UNITED STATES', 'US', '-9', '60.573111', '-151.245', 1, 'true', 0),
('ENC', 'Essey Airport', 'ENC', 'Nancy', 'FRANCE', 'FR', '1', '48.692069', '6.230458', 1, 'true', 0),
('ENH', 'Enshi Arpt', 'ENH', 'Enshi', 'CHINA', 'CN', '8', '30.3203', '109.485', 1, 'true', 0),
('ENK', 'St Angelo Arpt', 'ENK', 'Enniskillen', 'IRELAND', 'IE', '0', '54.398889', '-7.651667', 1, 'true', 0),
('ENL', 'Centralia Municipal Arpt', 'ENL', 'Centralia', 'UNITED STATES', 'US', '-100', '38.5151', '-89.0911', 1, 'true', 0),
('ENS', 'Twente Airport', 'ENS', 'Enschede', 'NETHERLANDS', 'NL', '1', '52.27', '6.874167', 1, 'true', 0),
('ENW', 'Kenosha Municipal Arpt', 'ENW', 'Kenosha', 'UNITED STATES', 'US', '-6', '42.595694', '-87.927806', 1, 'true', 0),
('ENY', 'Yanan Arpt', 'ENY', 'Yanan', 'CHINA', 'CN', '8', '36.6369', '109.554', 1, 'true', 0),
('EOI', 'Eday Arpt', 'EOI', 'Eday', 'UNITED KINGDOM', 'GB', '0', '59.1906', '-2.77222', 1, 'true', 0),
('EOK', 'Keokuk Arpt', 'EOK', 'Keokuk', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('EPL', 'Mirecourt Arpt', 'EPL', 'Epinal', 'FRANCE', 'FR', '1', '48.324961', '6.069983', 1, 'true', 0),
('EPR', 'Esperance Arpt', 'EPR', 'Esperance', 'AUSTRALIA', 'AU', '8', '-33.6844', '121.823', 1, 'true', 0),
('EPS', 'El Portillo Arpt', 'EPS', 'El Portillo Samana', 'DOMINICAN REPUBLIC', 'DO', '-4', '19.198586', '-69.429772', 1, 'true', 0),
('EPU', 'Parnu Arpt', 'EPU', 'Parnu', 'ESTONIA', 'EE', '2', '58.419044', '24.472819', 1, 'true', 0),
('EQS', 'Esquel Airport', 'EQS', 'Esquel', 'ARGENTINA', 'AR', '-3', '-42.90795', '-71.139472', 1, 'true', 0),
('ERC', 'Erzincan Arpt', 'ERC', 'Erzincan', 'TURKEY', 'TR', '2', '39.710203', '39.527003', 1, 'true', 0),
('ERF', 'Erfurt Arpt', 'ERF', 'Erfurt', 'GERMANY', 'DE', '1', '50.979811', '10.958106', 1, 'true', 0),
('ERH', 'Errachidia Arpt', 'ERH', 'Errachidia', 'MOROCCO', 'MA', '0', '31.9475', '-4.398333', 1, 'true', 0),
('ERI', 'Erie Intl', 'ERI', 'Erie', 'UNITED STATES', 'US', '-5', '42.082022', '-80.176217', 1, 'true', 0),
('ERV', 'Kerrville Arpt', 'ERV', 'Kerrville', 'UNITED STATES', 'US', '-6', '29.976667', '-99.085472', 1, 'true', 0),
('ERZ', 'Erzurum Arpt', 'ERZ', 'Erzurum', 'TURKEY', 'TR', '2', '39.956501', '41.170166', 1, 'true', 0),
('ESC', 'Delta County', 'ESC', 'Escanaba', 'UNITED STATES', 'US', '-5', '45.722778', '-87.093611', 1, 'true', 0),
('ESD', 'Eastsound Orcas Is Arpt', 'ESD', 'East Sound', 'UNITED STATES', 'US', '-8', '48.708056', '-122.910556', 1, 'true', 0),
('ESE', 'Ensenada Arpt', 'ESE', 'Ensenada', 'MEXICO', 'MX', '-8', '31.795281', '-116.602772', 1, 'true', 0),
('ESK', 'Eskisehir Airport', 'ESK', 'Eskisehir Airport', 'TURKEY', 'TR', '2', '39.784138', '30.582111', 1, 'true', 0),
('ESL', 'Elista Arpt', 'ESL', 'Elista', 'RUSSIA', 'RU', '4', '46.3739', '44.3309', 1, 'true', 0),
('ESN', 'Easton Municipal Arpt', 'ESN', 'Easton', 'UNITED STATES', 'US', '-5', '38.804167', '-76.069', 1, 'true', 0),
('ESP', 'Birchwood Pocono Arpt', 'ESP', 'East Stroudsburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ESR', 'El Salvador Arpt', 'ESR', 'El Salvador', 'CHILE', 'CL', '-4', '-26.3111', '-69.7652', 1, 'true', 0),
('ESS', 'Essen Arpt', 'ESS', 'Essen', 'GERMANY', 'DE', '1', '51.402333', '6.937333', 1, 'true', 0),
('ESU', 'Essaouira Arpt', 'ESU', 'Essaouira', 'MOROCCO', 'MA', '0', '31.3975', '-9.681667', 1, 'true', 0),
('ETB', 'West Bend Arpt', 'ETB', 'West Bend', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ETH', 'Elat Airport', 'ETH', 'Elat', 'ISRAEL', 'IL', '2', '29.561281', '34.960081', 1, 'true', 0),
('ETS', 'Enterprise Municipal', 'ETS', 'Enterprise', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ETZ', 'Metz Nancy Lorraine', 'ETZ', 'Metz Nancy', 'FRANCE', 'FR', '1', '48.982142', '6.251319', 2, 'true', 0),
('XZI', 'Railway Station Metz', 'ETZ', 'Metz Nancy', 'FRANCE', 'FR', '-100', '49.1203', '6.1778', 2, '', 0),
('EUF', 'Weedon Field', 'EUF', 'Eufaula', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('EUG', 'Eugene Arpt', 'EUG', 'Eugene', 'UNITED STATES', 'US', '-8', '44.124583', '-123.211972', 1, 'true', 0),
('EUN', 'Hassan I Arpt', 'EUN', 'El Aaiun', 'MOROCCO', 'MA', '0', '27.1517', '-13.2192', 1, 'true', 0),
('EUX', 'Roosevelt Field', 'EUX', 'St Eustatius', 'NETHERLANDS ANTILLES', 'AN', '-4', '17.496492', '-62.979439', 1, 'true', 0),
('EVE', 'Evenes Arpt', 'EVE', 'Harstad Narvik', 'NORWAY', 'NO', '1', '68.4913', '16.678108', 1, 'true', 0),
('EVG', 'Sveg Arpt', 'EVG', 'Sveg', 'SWEDEN', 'SE', '1', '62.047811', '14.42295', 1, 'true', 0),
('EVM', 'Eveleth Virginia Municipal Arpt', 'EVM', 'Eveleth', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('EVN', 'Yerevan Arpt', 'EVN', 'Yerevan', 'ARMENIA', 'AM', '4', '40.147275', '44.395881', 1, 'true', 0),
('EVV', 'Evansville Regional Arpt', 'EVV', 'Evansville', 'UNITED STATES', 'US', '-6', '38.036997', '-87.532364', 1, 'true', 0),
('EVW', 'Evanston Arpt', 'EVW', 'Evanston', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('EVX', 'Evreux Arpt', 'EVX', 'Evreux', 'FRANCE', 'FR', '-100', '49.0286', '1.22', 1, 'true', 0),
('EWB', 'New Bedford Municipal', 'EWB', 'New Bedford', 'UNITED STATES', 'US', '-5', '41.6761', '-70.9569', 1, 'true', 0),
('EWK', 'Newton City County Arpt', 'EWK', 'Newton', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('EWN', 'Craven County Regional Arpt', 'EWN', 'New Bern', 'UNITED STATES', 'US', '-5', '35.072972', '-77.042944', 1, 'true', 0),
('EWR', 'Newark Liberty Intl Arpt', 'EWR', 'Newark', 'UNITED STATES', 'US', '-5', '40.6925', '-74.168667', 1, 'true', 0),
('EXI', 'Excursion Inlet Municipal', 'EXI', 'Excursion Inlet', 'UNITED STATES', 'US', '-9', '58.420556', '-135.449167', 1, 'true', 0),
('EXM', 'Exmouth Gulf', 'EXM', 'Exmouth Gulf', 'AUSTRALIA', 'AU', '8', '-21.933', '114.128', 1, 'true', 0),
('EXT', 'Exeter Arpt', 'EXT', 'Exeter', 'UNITED KINGDOM', 'GB', '0', '50.734444', '-3.413889', 1, 'true', 0),
('EYW', 'Key West Intl', 'EYW', 'Key West', 'UNITED STATES', 'US', '-5', '24.556111', '-81.759556', 1, 'true', 0),
('EZS', 'Elazig Arpt', 'EZS', 'Elazig', 'TURKEY', 'TR', '2', '38.606925', '39.291417', 1, 'true', 0),
('FAB', 'Farnborough Arpt', 'FAB', 'Farnborough Hampshire', 'UNITED KINGDOM', 'GB', '0', '51.275833', '-0.776333', 1, 'true', 0),
('FAE', 'Faeroe Airport', 'FAE', 'Faeroe Islands', 'DENMARK', 'DK', '0', '62.063628', '-7.277219', 1, 'true', 0),
('FAI', 'Fairbanks Intl Arpt', 'FAI', 'Fairbanks', 'UNITED STATES', 'US', '-9', '64.815114', '-147.856267', 1, 'true', 0),
('FAJ', 'Fajardo Arpt', 'FAJ', 'Fajardo', 'UNITED STATES', 'US', '-4', '18.308889', '-65.661861', 1, 'true', 0),
('FAO', 'Faro Airport', 'FAO', 'Faro', 'PORTUGAL', 'PT', '0', '37.014425', '-7.965911', 1, 'true', 0),
('FAR', 'Hector Airport', 'FAR', 'Fargo', 'UNITED STATES', 'US', '-6', '46.92065', '-96.815764', 1, 'true', 0),
('FAT', 'Fresno Air Terminal', 'FAT', 'Fresno', 'UNITED STATES', 'US', '-8', '36.776194', '-119.71814', 2, 'true', 0),
('FCH', 'Fresno Chandler Arpt', 'FAT', 'Fresno', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('FAY', 'Fayetteville Municipal', 'FAY', 'Fayetteville', 'UNITED STATES', 'US', '-5', '34.9912', '-78.8803', 1, 'true', 0),
('FBD', 'Faizabad Arpt', 'FBD', 'Faizabad', 'AFGHANISTAN', 'AF', '4', '37.1211', '70.5181', 1, 'true', 0),
('FBM', 'Luano', 'FBM', 'Lubumbashi', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', '2', '-11.591333', '27.530889', 1, 'true', 0),
('FCA', 'Glacier Park Intl', 'FCA', 'Kalispell', 'UNITED STATES', 'US', '-7', '48.310472', '-114.256', 1, 'true', 0),
('FCB', 'Ficksburg Sentra Oes', 'FCB', 'Ficksburg', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 1, 'true', 0),
('FCN', 'Cuxhaven Nordholz Arpt', 'FCN', 'Cuxhaven', 'GERMANY', 'DE', '-100', '53.7683', '8.6642', 1, 'true', 0),
('FCY', 'Forrest City Municipal Arpt', 'FCY', 'Forrest City', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('FDE', 'Bringeland Arpt', 'FDE', 'Forde', 'NORWAY', 'NO', '1', '61.25', '5.45', 1, 'true', 0),
('FDF', 'Lamentin Arpt', 'FDF', 'Ft De France', 'MARTINIQUE', 'MQ', '-4', '14.591033', '-61.003175', 1, 'true', 0),
('FDH', 'Friedrichshafen Lowenthal', 'FDH', 'Friedrichshafen', 'GERMANY', 'DE', '1', '47.671317', '9.511486', 1, 'true', 0),
('FDK', 'Frederick Municipal', 'FDK', 'Frederick', 'UNITED STATES', 'US', '-100', '39.4178', '-77.3744', 1, 'true', 0),
('FEG', 'Fergana', 'FEG', 'Fergana', 'UZBEKISTAN', 'UZ', '5', '40.3588', '71.745', 1, 'true', 0),
('FEN', 'Fernando De Noronha Arpt', 'FEN', 'Fernando De Noronha', 'BRAZIL', 'BR', '-2', '-3.854928', '-32.423336', 1, 'true', 0),
('FEZ', 'Fez Airport', 'FEZ', 'Fez Ma', 'MOROCCO', 'MA', '0', '33.927261', '-4.977958', 1, 'true', 0),
('FFM', 'Fergus Falls Municipal', 'FFM', 'Fergus Falls', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('FHU', 'Sierra Vista Municipal', 'FHU', 'Ft Huachuca', 'UNITED STATES', 'US', '-7', '31.588472', '-110.344389', 1, 'true', 0),
('FIE', 'Fair Isle Arpt', 'FIE', 'Fair Isle', 'UNITED KINGDOM', 'GB', '0', '59.5358', '-1.62806', 1, 'true', 0),
('FIH', 'Kinshasa Arpt', 'FIH', 'Kinshasa', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', '1', '-4.38575', '15.444569', 2, 'true', 0),
('NLO', 'N Dolo Airport', 'FIH', 'Kinshasa', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', '1', '-4.326689', '15.327342', 2, '', 0),
('FJR', 'Fujairah Intl Arpt', 'FJR', 'Al Fujairah', 'UNITED ARAB EMIRATES', 'AE', '4', '25.112225', '56.323964', 1, 'true', 0),
('FKB', 'Soellingen Arpt', 'FKB', 'Karlsruhe Baden Baden', 'GERMANY', 'DE', '1', '48.7793', '8.08048', 1, 'true', 0),
('FKL', 'Chess Lamberton Arpt', 'FKL', 'Franklin', 'UNITED STATES', 'US', '-5', '41.377874', '-79.860362', 1, 'true', 0),
('FKS', 'Fukushima Arpt', 'FKS', 'Fukushima', 'JAPAN', 'JP', '9', '37.2274', '140.431', 1, 'true', 0),
('FLB', 'Cangapara Arpt', 'FLB', 'Floriano', 'BRAZIL', 'BR', '-100', '-6.8458', '-43.0775', 1, 'true', 0),
('FLC', 'Falls Creek Arpt', 'FLC', 'Falls Creek', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('FLF', 'Schaferhaus Arpt', 'FLF', 'Flensburg', 'GERMANY', 'DE', '1', '54.771772', '9.378214', 1, 'true', 0),
('FLG', 'Flagstaff Arpt', 'FLG', 'Flagstaff', 'UNITED STATES', 'US', '-7', '35.140318', '-111.669239', 1, 'true', 0),
('FXE', 'Ft Lauderdale Excutive', 'FLL', 'Ft Lauderdale', 'UNITED STATES', 'US', '-5', '26.197281', '-80.170706', 3, '', 0),
('FLL', 'Ft Lauderdale Hollywood Intl Arpt', 'FLL', 'Ft Lauderdale', 'UNITED STATES', 'US', '-5', '26.072583', '-80.15275', 3, 'true', 0),
('BCT', 'Boca Raton Public', 'FLL', 'Ft Lauderdale', 'UNITED STATES', 'US', '-5', '26.3785', '-80.107694', 3, '', 0),
('FLN', 'Hercilio Luz Arpt', 'FLN', 'Florianopolis', 'BRAZIL', 'BR', '-3', '-27.670489', '-48.547181', 1, 'true', 0),
('FLO', 'Gilbert Field', 'FLO', 'Florence', 'UNITED STATES', 'US', '-5', '34.185361', '-79.723889', 1, 'true', 0),
('FLP', 'Flippin Arpt', 'FLP', 'Flippin', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('FLR', 'Amerigo Vespucci Arpt', 'FLR', 'Florence', 'ITALY', 'IT', '1', '43.809953', '11.2051', 1, 'true', 0),
('FLW', 'Aerodromo Das Flores', 'FLW', 'Santa Cruz Flores', 'PORTUGAL', 'PT', '-1', '39.455272', '-31.131361', 1, 'true', 0),
('FMA', 'El Pucu Arpt', 'FMA', 'Formosa', 'ARGENTINA', 'AR', '-3', '-26.212722', '-58.228111', 1, 'true', 0),
('FMH', 'Otis AFB', 'FMH', 'Falmouth', 'UNITED STATES', 'US', '-5', '41.658439', '-70.521417', 1, 'true', 0),
('FMM', 'Allgaeu Arpt', 'FMM', 'Memmingen Allgaeu', 'GERMANY', 'DE', '1', '47.988758', '10.2395', 1, 'true', 0),
('FMN', 'Four Corners Regional Arpt', 'FMN', 'Farmington', 'UNITED STATES', 'US', '-7', '36.74125', '-108.229944', 1, 'true', 0),
('FMO', 'Muenster Airport', 'FMO', 'Muenster', 'GERMANY', 'DE', '1', '52.134642', '7.684831', 1, 'true', 0),
('FMS', 'Fort Madison Municipal', 'FMS', 'Fort Madison', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RSW', 'Regional Southwest Arpt', 'FMY', 'Fort Myers', 'UNITED STATES', 'US', '-5', '26.536167', '-81.755167', 1, '', 0),
('FNA', 'Lungi Intl Arpt', 'FNA', 'Freetown', 'SIERRA LEONE', 'SL', '0', '8.616444', '-13.195489', 1, 'true', 0),
('FNC', 'Madeira Arpt', 'FNC', 'Funchal', 'PORTUGAL', 'PT', '0', '32.697889', '-16.774453', 1, 'true', 0),
('FNI', 'Nimes Airport', 'FNI', 'Nimes', 'FRANCE', 'FR', '1', '43.757444', '4.416347', 1, 'true', 0),
('FNJ', 'Sunan Arpt', 'FNJ', 'Pyongyang', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'KP', '9', '39.224061', '125.67015', 1, 'true', 0),
('QWF', 'Fort Collins Bus Service', 'FNL', 'Ft Collins', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('FNL', 'Municipal Airport', 'FNL', 'Ft Collins', 'UNITED STATES', 'US', '-7', '40.451828', '-105.011336', 3, 'true', 0),
('QWH', 'Loveland Bus Service', 'FNL', 'Ft Collins', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('FNT', 'Bishop Intl Arpt', 'FNT', 'Flint', 'UNITED STATES', 'US', '-5', '42.965424', '-83.743629', 1, 'true', 0),
('FOB', 'Fort Bragg Arpt', 'FOB', 'Fort Bragg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('FOC', 'Fuzhou Arpt', 'FOC', 'Fuzhou', 'CHINA', 'CN', '8', '25.935064', '119.663272', 1, 'true', 0),
('FOD', 'Ft Dodge Municipal', 'FOD', 'Fort Dodge', 'UNITED STATES', 'US', '-6', '42.5512', '-94.191842', 1, 'true', 0),
('FOG', 'Gino Lisa Arpt', 'FOG', 'Foggia', 'ITALY', 'IT', '1', '41.432917', '15.535028', 1, 'true', 0),
('FOK', 'Suffolk County Arpt', 'FOK', 'Westhampton', 'UNITED STATES', 'US', '-5', '40.843656', '-72.631789', 1, 'true', 0),
('FOR', 'Pinto Martines Arpt', 'FOR', 'Fortaleza', 'BRAZIL', 'BR', '-3', '-3.776283', '-38.532556', 1, 'true', 0),
('FOT', 'Forster', 'FOT', 'Forster', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('FPO', 'Grand Bahama Intl Arpt', 'FPO', 'Freeport', 'BAHAMAS', 'BS', '-5', '26.558686', '-78.695553', 1, 'true', 0),
('FPR', 'St Lucie County Arpt', 'FPR', 'Fort Pierce', 'UNITED STATES', 'US', '-100', '27.495', '-80.3683', 1, 'true', 0),
('HHN', 'Hahn Arpt', 'FRA', 'Frankfurt', 'GERMANY', 'DE', '1', '49.948672', '7.263892', 5, '', 0),
('QGV', 'Neu Isenburg Arpt', 'FRA', 'Frankfurt', 'GERMANY', 'DE', '-100', '0', '0', 5, '', 0),
('ZRB', 'Frankfurt HBF Railway Service', 'FRA', 'Frankfurt', 'GERMANY', 'DE', '1', '50.107026', '8.662761', 5, '', 0),
('FRF', 'Rhein-Main Air Force Base', 'FRA', 'Frankfurt', 'GERMANY', 'DE', '2', '50.1', '8.683333', 5, '', 0),
('FRA', 'Frankfurt Intl', 'FRA', 'Frankfurt', 'GERMANY', 'DE', '1', '50.026421', '8.543125', 5, 'true', 0),
('FRD', 'Friday Harbor Airport', 'FRD', 'Friday Harbor', 'UNITED STATES', 'US', '-8', '48.521944', '-123.024444', 1, 'true', 0),
('FRG', 'Republic Arpt', 'FRG', 'Farmingdale', 'UNITED STATES', 'US', '-100', '40.7288', '-73.4134', 1, 'true', 0),
('FRH', 'French Lick Municipal Arpt', 'FRH', 'French Lick', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('FRJ', 'Frejus Arpt', 'FRJ', 'Frejus', 'FRANCE', 'FR', '1', '43.416667', '6.733333', 1, 'true', 0),
('FRL', 'Luigi Ridolfi Arpt', 'FRL', 'Forli', 'ITALY', 'IT', '1', '44.194753', '12.070094', 1, 'true', 0),
('FRM', 'Fairmont Municipal', 'FRM', 'Fairmont', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('FRO', 'Flora Arpt', 'FRO', 'Floro', 'NORWAY', 'NO', '1', '61.583611', '5.024722', 1, 'true', 0),
('FRR', 'Warren County Arpt', 'FRR', 'Front Royal', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('FRS', 'Flores Airport', 'FRS', 'Flores', 'GUATEMALA', 'GT', '-6', '16.913819', '-89.866383', 1, 'true', 0),
('FRU', 'Bishkek Arpt', 'FRU', 'Bishkek', 'KYRGYZSTAN', 'KG', '5', '43.061306', '74.477556', 1, 'true', 0),
('FRW', 'Francistown Arpt', 'FRW', 'Francistown', 'BOTSWANA', 'BW', '2', '-21.159597', '27.474525', 1, 'true', 0),
('FRZ', 'Fritzlar Airbase', 'FRZ', 'Fritzlar', 'GERMANY', 'DE', '-100', '51.1145', '9.2858', 1, 'true', 0),
('FSC', 'Sud Corse Arpt', 'FSC', 'Figari', 'FRANCE', 'FR', '1', '41.500557', '9.097777', 1, 'true', 0),
('FSD', 'Regional Joe Foss Field', 'FSD', 'Sioux Falls', 'UNITED STATES', 'US', '-6', '43.582014', '-96.741914', 1, 'true', 0),
('FSM', 'Ft Smith Municipal', 'FSM', 'Ft Smith', 'UNITED STATES', 'US', '-6', '35.336583', '-94.367444', 1, 'true', 0),
('FSP', 'St Pierre Arpt', 'FSP', 'St Pierre', 'CANADA', 'CA', '-4', '46.762904', '-56.173088', 1, 'true', 0),
('FST', 'Pecos County Arpt', 'FST', 'Fort Stockton', 'UNITED STATES', 'US', '-6', '30.915667', '-102.916139', 1, 'true', 0),
('FTE', 'El Calafate Arpt', 'FTE', 'El Calafate', 'ARGENTINA', 'AR', '-3', '-50.280322', '-72.053103', 1, 'true', 0),
('FTU', 'Marillac Arpt', 'FTU', 'Fort Dauphin', 'MADAGASCAR', 'MG', '3', '-25.038056', '46.956111', 1, 'true', 0),
('FTW', 'Meacham Field', 'FTW', 'Ft Worth', 'UNITED STATES', 'US', '-6', '32.819778', '-97.362444', 1, 'true', 0),
('FUE', 'Fuerteventura Arpt', 'FUE', 'Puerto Del Rosario', 'SPAIN', 'ES', '0', '28.452717', '-13.863761', 1, 'true', 0),
('FUG', 'Fuyang Aprt', 'FUG', 'Fuyang', 'CHINA', 'CN', '8', '32.9', '115.816667', 1, 'true', 0),
('FUJ', 'Fukue Arpt', 'FUJ', 'Fukue', 'JAPAN', 'JP', '9', '32.666269', '128.832808', 1, 'true', 0),
('FUK', 'Itazuke Arpt', 'FUK', 'Fukuoka', 'JAPAN', 'JP', '9', '33.585942', '130.450686', 1, 'true', 0),
('FUL', 'Fullerton Municipal Arpt', 'FUL', 'Fullerton', 'UNITED STATES', 'US', '-7', '33.521925', '-117.584722', 1, 'true', 0),
('FUN', 'Funafuti Intl Arpt', 'FUN', 'Funafuti', 'TUVALU', 'TV', '12', '-8.525', '179.196389', 1, 'true', 0),
('FWA', 'Baer Field', 'FWA', 'Ft Wayne', 'UNITED STATES', 'US', '-5', '40.978472', '-85.195139', 1, 'true', 0),
('FWM', 'Fort William Arpt', 'FWM', 'Fort William', 'UNITED KINGDOM', 'GB', '0', '56.816666', '-5.116667', 1, 'true', 0),
('FYV', 'Fayetteville Municipal Arpt', 'FYV', 'Fayetteville', 'UNITED STATES', 'US', '-6', '36.005094', '-94.170059', 2, 'true', 0),
('XNA', 'Northwest Arkansas Regional Arpt', 'FYV', 'Fayetteville', 'UNITED STATES', 'US', '-6', '36.281869', '-94.306811', 2, '', 0),
('GAD', 'Gadsden Municipal', 'GAD', 'Gadsden', 'UNITED STATES', 'US', '-5', '33.972649', '-86.089083', 1, 'true', 0),
('GAI', 'Montgomery Cty Arpt', 'GAI', 'Gaithersburg', 'UNITED STATES', 'US', '-5', '39.1006', '-77.09576', 1, 'true', 0),
('GAJ', 'Yamagata Airport', 'GAJ', 'Yamagata', 'JAPAN', 'JP', '9', '38.411894', '140.371331', 1, 'true', 0),
('GAL', 'Galena Arpt', 'GAL', 'Galena', 'UNITED STATES', 'US', '-9', '64.736178', '-156.937417', 1, 'true', 0),
('GAN', 'Gan International Arpt', 'GAN', 'Gan Island', 'MALDIVES', 'MV', '5', '-0.693342', '73.1556', 1, 'true', 0),
('GAR', 'Garaina Arpt', 'GAR', 'Garaina', 'PAPUA NEW GUINEA', 'PG', '-100', '0', '0', 1, 'true', 0),
('GAT', 'Tallard Arpt', 'GAT', 'Gap France', 'FRANCE', 'FR', '-100', '0', '0', 1, 'true', 0),
('GAU', 'Lokpriya Gopinath Bordoloi Intl Arpt', 'GAU', 'Guwahati', 'INDIA', 'IN', '5', '26.106092', '91.585939', 1, 'true', 0),
('GAY', 'Gaya Arpt', 'GAY', 'Gaya', 'INDIA', 'IN', '5', '24.744308', '84.951175', 1, 'true', 0),
('GBD', 'Greate Bend Municipal', 'GBD', 'Great Bend', 'UNITED STATES', 'US', '-100', '38.3443', '-98.8592', 1, 'true', 0),
('GBE', 'Gaborone Arpt', 'GBE', 'Gaborone', 'BOTSWANA', 'BW', '2', '-24.555225', '25.918208', 1, 'true', 0),
('GBG', 'Galesburg Arpt', 'GBG', 'Galesburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GBK', 'Gbangbatok Arpt', 'GBK', 'Gbangbatok', 'SIERRA LEONE', 'SL', '0', '7.767', '-12.383', 1, 'true', 0),
('GBN', 'San Giovanni Rotondo Arpt', 'GBN', 'San Giovanni Rotondo', 'ITALY', 'IT', '-5', '38.344167', '-98.859167', 1, 'true', 0),
('GBQ', 'Muharraq Arpt', 'GBQ', 'Muharraq Town', 'BAHRAIN', 'BH', '-100', '0', '0', 1, 'true', 0),
('GBR', 'Great Barrington Arpt', 'GBR', 'Great Barrington', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GBZ', 'Great Barrier Island Arpt', 'GBZ', 'Great Barrier Island', 'NEW ZEALAND', 'NZ', '11', '-36.1429', '175.2819', 1, 'true', 0),
('GCC', 'Campbell Cty Arpt', 'GCC', 'Gillette', 'UNITED STATES', 'US', '-7', '44.348917', '-105.539361', 1, 'true', 0),
('GCI', 'Guernsey Arpt', 'GCI', 'Guernsey', 'UNITED KINGDOM', 'GB', '0', '49.434956', '-2.601969', 1, 'true', 0),
('GCK', 'Garden City Municipal', 'GCK', 'Garden City', 'UNITED STATES', 'US', '-6', '37.927528', '-100.724417', 1, 'true', 0),
('GCM', 'Owen Roberts Arpt', 'GCM', 'Grand Cayman Island', 'CAYMAN ISLANDS', 'KY', '-5', '19.292778', '-81.35775', 1, 'true', 0),
('GCN', 'Grand Canyon Natl Park Arpt', 'GCN', 'Grand Canyon', 'UNITED STATES', 'US', '-7', '35.952361', '-112.146972', 1, 'true', 0),
('GCV', 'Gravatai Arpt', 'GCV', 'Gravatai', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('GCY', 'Municipal Greeneville Arpt', 'GCY', 'Greeneville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GDG', 'Magdagachi Airport', 'GDG', 'Magdagachi Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('GDL', 'Miguel Hidalgo Arpt', 'GDL', 'Guadalajara', 'MEXICO', 'MX', '-6', '20.5218', '-103.311167', 1, 'true', 0),
('GDN', 'Rebiechowo', 'GDN', 'Gdansk', 'POLAND', 'PL', '1', '54.377569', '18.466222', 1, 'true', 0),
('GDT', 'Grand Turk Is Arpt', 'GDT', 'Grand Turk', 'TURKS AND CAICOS ISLANDS', 'TC', '-5', '21.4445', '-71.1423', 1, 'true', 0),
('GDX', 'Magadan Arpt', 'GDX', 'Magadan', 'RUSSIA', 'RU', '12', '59.910989', '150.720439', 1, 'true', 0),
('GDZ', 'Gelendzhik Arpt.', 'GDZ', 'Gelendzhik Arpt.', 'RUSSIA', 'RU', '4', '44.566667', '38.016667', 1, 'true', 0),
('GED', 'Sussex County Arpt', 'GED', 'Georgetown', 'UNITED STATES', 'US', '-5', '38.689194', '-75.358889', 1, 'true', 0),
('SFF', 'Felts Field', 'GEG', 'Spokane', 'UNITED STATES', 'US', '-8', '47.682819', '-117.322558', 2, '', 0),
('GEG', 'Spokane Intl Arpt', 'GEG', 'Spokane', 'UNITED STATES', 'US', '-8', '47.619861', '-117.533833', 2, 'true', 0),
('GEO', 'Cheddi Jagan Intl', 'GEO', 'Georgetown', 'GUYANA', 'GY', '-4', '6.498553', '-58.254119', 1, 'true', 0),
('GER', 'Rafael Cabrera Arpt', 'GER', 'Nueva Gerona', 'CUBA', 'CU', '-5', '21.834689', '-82.783819', 1, 'true', 0),
('GES', 'Buayan Arpt', 'GES', 'General Santos', 'PHILIPPINES', 'PH', '8', '6.106439', '125.2353', 1, 'true', 0),
('GET', 'Geraldton Arpt', 'GET', 'Geraldton', 'AUSTRALIA', 'AU', '8', '-28.7961', '114.707', 1, 'true', 0),
('GEV', 'Gallivare Arpt', 'GEV', 'Gallivare', 'SWEDEN', 'SE', '1', '67.132408', '20.814636', 1, 'true', 0),
('GEX', 'Geelong Arpt', 'GEX', 'Geelong', 'AUSTRALIA', 'AU', '10', '-38.225', '144.333', 1, 'true', 0),
('GFD', 'Pope Field Arpt', 'GFD', 'Greenfield', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GFF', 'Griffith Arpt', 'GFF', 'Griffith', 'AUSTRALIA', 'AU', '10', '-34.2508', '146.067', 1, 'true', 0),
('GFK', 'Grand Forks Mark Andrews Intl', 'GFK', 'Grand Forks', 'UNITED STATES', 'US', '-6', '47.949256', '-97.176111', 1, 'true', 0),
('GFL', 'Warren County', 'GFL', 'Glens Falls', 'UNITED STATES', 'US', '-100', '43.3411', '-73.6103', 1, 'true', 0),
('GFN', 'Grafton Arpt', 'GFN', 'Grafton', 'AUSTRALIA', 'AU', '10', '-29.7594', '153.03', 1, 'true', 0),
('GGG', 'Greg County Arpt', 'GGG', 'Longview', 'UNITED STATES', 'US', '-6', '32.384014', '-94.711486', 1, 'true', 0),
('GGT', 'George Town Airport', 'GGT', 'George Town', 'BAHAMAS', 'BS', '-5', '23.562631', '-75.877958', 1, 'true', 0),
('GGW', 'International Glasgow', 'GGW', 'Glasgow', 'UNITED STATES', 'US', '-7', '48.2125', '-106.615', 1, 'true', 0),
('GHA', 'Noumerate Arpt', 'GHA', 'Ghardaia', 'ALGERIA', 'DZ', '1', '32.384106', '3.794114', 1, 'true', 0),
('GHB', 'Governors Harbour Municipal Arpt', 'GHB', 'Governor S Harbour', 'BAHAMAS', 'BS', '-5', '25.284706', '-76.331011', 1, 'true', 0),
('GIB', 'North Front Arpt', 'GIB', 'Gibraltar', 'GIBRALTAR', 'GI', '1', '36.151219', '-5.349664', 1, 'true', 0),
('GIC', 'Boigu Island Arpt', 'GIC', 'Boigu Island', 'AUSTRALIA', 'AU', '10', '-9.23278', '142.218', 1, 'true', 0),
('GIF', 'Gilbert Fld', 'GIF', 'Winter Haven', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GIL', 'Gilgit Arpt', 'GIL', 'Gilgit', 'PAKISTAN', 'PK', '5', '35.918786', '74.333644', 1, 'true', 0),
('GIR', 'Girardot Arpt', 'GIR', 'Girardot', 'COLOMBIA', 'CO', '-100', '4.2761', '-74.7958', 1, 'true', 0),
('GIS', 'Gisborne Arpt', 'GIS', 'Gisborne', 'NEW ZEALAND', 'NZ', '12', '-38.663333', '177.978333', 1, 'true', 0),
('GIZ', 'Gizan Aprt', 'GIZ', 'Gizan', 'SAUDI ARABIA', 'SA', '3', '16.901111', '42.585833', 1, 'true', 0),
('GJT', 'Walker Field Arpt', 'GJT', 'Grand Junction', 'UNITED STATES', 'US', '-7', '39.122413', '-108.526735', 1, 'true', 0),
('GKA', 'Goroka Arpt', 'GKA', 'Goroka', 'PAPUA NEW GUINEA', 'PG', '10', '-6.081689', '145.391881', 1, 'true', 0),
('GKD', 'GOKCEADA', 'GKD', 'GOKCEADA', 'TURKEY', 'TR', '1', '0', '0', 1, 'true', 0),
('GKT', 'Gatlinburg Arpt', 'GKT', 'Gatlinburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PIK', 'Prestwick Arpt', 'GLA', 'Glasgow', 'UNITED KINGDOM', 'GB', '0', '55.509444', '-4.586667', 3, '', 0),
('ZGG', 'Glasgow ScotRail', 'GLA', 'Glasgow', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 3, '', 0),
('GLA', 'Glasgow Intl', 'GLA', 'Glasgow', 'UNITED KINGDOM', 'GB', '0', '55.871944', '-4.433056', 3, 'true', 0),
('GLD', 'Goodland Municipal', 'GLD', 'Goodland', 'UNITED STATES', 'US', '-6', '39.370621', '-101.698992', 1, 'true', 0),
('GLE', 'Gainesville Municipal Arpt', 'GLE', 'Gainesville', 'UNITED STATES', 'US', '-100', '33.6514', '-97.1969', 1, 'true', 0),
('GLH', 'Greenville Municipal', 'GLH', 'Greenville', 'UNITED STATES', 'US', '-6', '33.4829', '-90.9856', 1, 'true', 0),
('GLI', 'Glen Innes Arpt', 'GLI', 'Glen Innes', 'AUSTRALIA', 'AU', '-100', '-29.6767', '151.6917', 1, 'true', 0),
('XKZ', 'Vinstra Rail Station', 'GLL', 'Gol City', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('XGP', 'Dombas Rail Station', 'GLL', 'Gol City', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('GLL', 'Klanten Arpt', 'GLL', 'Gol City', 'NORWAY', 'NO', '-100', '0', '0', 3, 'true', 0),
('GLO', 'Staverton Arpt', 'GLO', 'Gloucester', 'UNITED KINGDOM', 'GB', '0', '51.894167', '-2.167222', 1, 'true', 0),
('GLR', 'Otsego Arpt', 'GLR', 'Gaylord', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GLS', 'Scholes Field', 'GLS', 'Galveston', 'UNITED STATES', 'US', '-6', '29.265322', '-94.860406', 1, 'true', 0),
('GLT', 'Gladstone Airport', 'GLT', 'Gladstone', 'AUSTRALIA', 'AU', '10', '-23.8697', '151.223', 1, 'true', 0),
('GLW', 'Glasgow Municipal Arpt', 'GLW', 'Glasgow', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GME', 'Gomel Arpt', 'GME', 'Gomel', 'BELARUS', 'BY', '2', '52.527022', '31.016692', 1, 'true', 0),
('GMN', 'Greymouth Arpt', 'GMN', 'Greymouth', 'NEW ZEALAND', 'NZ', '-100', '-42.4617', '171.19', 1, 'true', 0),
('GMR', 'Gambier Island Arpt', 'GMR', 'Gambier Island', 'FRENCH POLYNESIA', 'PF', '-9', '-23.079861', '-134.890333', 1, 'true', 0),
('GMZ', 'La Gomera Arpt', 'GMZ', 'San Sebastian De La Gomera', 'SPAIN', 'ES', '0', '28.0296', '-17.2146', 1, 'true', 0),
('GNA', 'Grodna Arpt', 'GNA', 'Grodna', 'BELARUS', 'BY', '2', '53.602', '24.0538', 1, 'true', 0),
('GNB', 'Saint Geoirs Arpt', 'GNB', 'Grenoble', 'FRANCE', 'FR', '1', '45.362944', '5.329375', 1, 'true', 0),
('GND', 'Port Saline Intl', 'GND', 'Grenada', 'DOMINICA', 'DM', '-4', '12.004247', '-61.786192', 1, 'true', 0),
('GNS', 'Gunungsitoli Arpt', 'GNS', 'Gunungsitoli', 'INDONESIA', 'ID', '7', '1.166381', '97.704681', 1, 'true', 0),
('GNT', 'Grants Milan Municipal Arpt', 'GNT', 'Grants', 'UNITED STATES', 'US', '-7', '35.167286', '-107.901989', 1, 'true', 0),
('GNV', 'Gainesville Regional', 'GNV', 'Gainesville', 'UNITED STATES', 'US', '-5', '29.690056', '-82.271778', 1, 'true', 0),
('GOA', 'Christoforo Colombo', 'GOA', 'Genoa', 'ITALY', 'IT', '1', '44.413333', '8.8375', 1, 'true', 0),
('GOH', 'Nuuk Arpt', 'GOH', 'Nuuk', 'GREENLAND', 'GL', '-3', '64.190922', '-51.678064', 1, 'true', 0),
('GOI', 'Dabolim Arpt', 'GOI', 'Goa In', 'INDIA', 'IN', '5', '15.380833', '73.831422', 1, 'true', 0),
('GOJ', 'Nizhniy Novgorod Arpt', 'GOJ', 'Nizhniy Novgorod', 'RUSSIA', 'RU', '4', '56.230119', '43.784042', 1, 'true', 0),
('GON', 'Groton New London Arpt', 'GON', 'New London', 'UNITED STATES', 'US', '-5', '41.330056', '-72.045139', 1, 'true', 0),
('GOO', 'Goondiwindi Arpt', 'GOO', 'Goondiwindi', 'AUSTRALIA', 'AU', '-100', '-28.5217', '150.32', 1, 'true', 0),
('GOP', 'Gorakhpur Arpt', 'GOP', 'Gorakhpur', 'INDIA', 'IN', '5', '26.739708', '83.449708', 1, 'true', 0),
('GOQ', 'Golmud Arpt', 'GOQ', 'Golmud', 'CHINA', 'CN', '8', '34.633', '98.867', 1, 'true', 0),
('GSE', 'Saeve Arpt', 'GOT', 'Gothenburg', 'SWEDEN', 'SE', '1', '57.774722', '11.870372', 3, '', 0),
('GOT', 'Landvetter Arpt', 'GOT', 'Gothenburg', 'SWEDEN', 'SE', '1', '57.662836', '12.279819', 3, 'true', 0),
('XWL', 'Gothenburg Rail', 'GOT', 'Gothenburg', 'SWEDEN', 'SE', '-100', '0', '0', 3, '', 0),
('GOU', 'Garoua Arpt', 'GOU', 'Garoua', 'CAMEROON', 'CM', '1', '9.335892', '13.370103', 1, 'true', 0),
('GOV', 'Nhulunbuy Arpt', 'GOV', 'Gove', 'AUSTRALIA', 'AU', '9', '-12.2694', '136.818', 1, 'true', 0),
('GPA', 'Araxos Arpt', 'GPA', 'Patras', 'GREECE', 'GR', '2', '38.151111', '21.425556', 1, 'true', 0),
('GPS', 'Baltra Arpt', 'GPS', 'Galapagos Is', 'ECUADOR', 'EC', '-6', '-0.453758', '-90.265914', 1, 'true', 0),
('GPT', 'Biloxi Regional Arpt', 'GPT', 'Gulfport', 'UNITED STATES', 'US', '-6', '30.407278', '-89.070111', 1, 'true', 0),
('GPZ', 'Itasca County', 'GPZ', 'Grand Rapids', 'UNITED STATES', 'US', '-6', '47.211111', '-93.509722', 1, 'true', 0),
('GQQ', 'Galion Municipal Arpt', 'GQQ', 'Galion', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GRB', 'Austin Straubel Fld', 'GRB', 'Green Bay', 'UNITED STATES', 'US', '-6', '44.485072', '-88.129589', 1, 'true', 0),
('GRI', 'Hall Cty Regional', 'GRI', 'Grand Island', 'UNITED STATES', 'US', '-6', '40.9675', '-98.3096', 1, 'true', 0),
('GRJ', 'George Arpt', 'GRJ', 'George', 'SOUTH AFRICA', 'ZA', '2', '-34.005553', '22.378889', 1, 'true', 0),
('GRO', 'Costa Brava Arpt', 'GRO', 'Gerona', 'SPAIN', 'ES', '1', '41.900969', '2.760547', 1, 'true', 0),
('GRQ', 'Eelde Arpt', 'GRQ', 'Groningen', 'NETHERLANDS', 'NL', '1', '53.11972', '6.579444', 1, 'true', 0),
('GRR', 'Kent County Intl', 'GRR', 'Grand Rapids', 'UNITED STATES', 'US', '-5', '42.880833', '-85.522806', 1, 'true', 0),
('GRS', 'Baccarini Arpt', 'GRS', 'Grosseto', 'ITALY', 'IT', '1', '42.759747', '11.071897', 1, 'true', 0),
('GRV', 'Groznyj', 'GRV', 'Groznyj', 'RUSSIA', 'RU', '4', '43.2981', '45.7841', 1, 'true', 0),
('GRW', 'Graciosa Arpt', 'GRW', 'Graciosa Island', 'PORTUGAL', 'PT', '-1', '39.092169', '-28.029847', 1, 'true', 0),
('GRX', 'Granada Arpt', 'GRX', 'Granada', 'SPAIN', 'ES', '1', '37.188731', '-3.777356', 1, 'true', 0),
('GRZ', 'Thalerhof Arpt', 'GRZ', 'Graz', 'AUSTRIA', 'AT', '1', '46.991067', '15.439628', 1, 'true', 0),
('GSB', 'Seymour Johnson AFB', 'GSB', 'Goldsboro', 'UNITED STATES', 'US', '-5', '35.339383', '-77.960589', 1, 'true', 0),
('GSO', 'Piedmont Triad Intl', 'GSO', 'Greensboro', 'UNITED STATES', 'US', '-5', '36.09775', '-79.937306', 1, 'true', 0),
('SPA', 'Downtown Memorial', 'GSP', 'Greenville', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('GSP', 'Greenville Spartanburg Arpt', 'GSP', 'Greenville', 'UNITED STATES', 'US', '-5', '34.895556', '-82.218889', 3, 'true', 0),
('GMU', 'Greenville Downtown Arpt', 'GSP', 'Greenville', 'UNITED STATES', 'US', '-100', '34.8481', '-82.35', 3, '', 0),
('GST', 'Gustavus Arpt', 'GST', 'Glacier Bay', 'UNITED STATES', 'US', '-9', '58.4253', '-135.707', 1, 'true', 0),
('GSY', 'Binbrook Arpt', 'GSY', 'Grimsby', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('GTE', 'Alyangula Arpt', 'GTE', 'Groote Eylandt', 'AUSTRALIA', 'AU', '9', '-13.975', '136.46', 1, 'true', 0),
('GTF', 'Great Falls Intl Arpt', 'GTF', 'Great Falls', 'UNITED STATES', 'US', '-7', '47.482', '-111.370689', 1, 'true', 0),
('GTI', 'Guettin Arpt', 'GTI', 'Guettin', 'GERMANY', 'DE', '1', '54.383333', '13.325278', 1, 'true', 0),
('GTY', 'Gettysburg Arpt', 'GTY', 'Gettysburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GUA', 'La Aurora Arpt', 'GUA', 'Guatemala City', 'GUATEMALA', 'GT', '-6', '14.583272', '-90.527475', 1, 'true', 0),
('GUC', 'Gunnison Cty', 'GUC', 'Gunnison', 'UNITED STATES', 'US', '-7', '38.533889', '-106.933056', 1, 'true', 0),
('GUF', 'Edwards Arpt', 'GUF', 'Gulf Shores', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GUH', 'Gunnedah Airport', 'GUH', 'Gunnedah', 'AUSTRALIA', 'AU', '-100', '-30.9611', '150.2506', 1, 'true', 0),
('UAM', 'Anderson Air Force Base', 'GUM', 'Guam', 'GUAM', 'GU', '10', '13.583953', '144.930025', 2, '', 0),
('GUM', 'Antonio B Won Pat Intl', 'GUM', 'Guam', 'GUAM', 'GU', '10', '13.48345', '144.795983', 2, 'true', 0),
('GUP', 'Gallup Municipal', 'GUP', 'Gallup', 'UNITED STATES', 'US', '-7', '35.511058', '-108.789308', 1, 'true', 0),
('GUR', 'Gurney Arpt', 'GUR', 'Alotau', 'PAPUA NEW GUINEA', 'PG', '10', '-10.3115', '150.334', 1, 'true', 0),
('GUT', 'Guetersloh Arpt', 'GUT', 'Gutersloh', 'GERMANY', 'DE', '1', '51.922833', '8.306333', 1, 'true', 0),
('GUW', 'Atyrau Arpt', 'GUW', 'Atyrau', 'KAZAKHSTAN', 'KZ', '5', '47.121944', '51.821389', 1, 'true', 0),
('GUY', 'Guymon Municipal Arpt', 'GUY', 'Guymon', 'UNITED STATES', 'US', '-100', '36.6853', '-101.5078', 1, 'true', 0),
('GVA', 'Geneve Cointrin', 'GVA', 'Geneva', 'SWITZERLAND', 'CH', '1', '46.238064', '6.10895', 1, 'true', 0),
('GVR', 'Governador Valadares Arpt', 'GVR', 'Governador Valadares', 'BRAZIL', 'BR', '-3', '-18.8952', '-41.9822', 1, 'true', 0),
('XFU', 'Tierp Rail Station', 'GVX', 'Gavle', 'SWEDEN', 'SE', '-100', '0', '0', 3, '', 0),
('GVX', 'Sandviken Arpt', 'GVX', 'Gavle', 'SWEDEN', 'SE', '1', '60.593333', '16.951389', 3, 'true', 0),
('QYU', 'Gavle Rail Station', 'GVX', 'Gavle', 'SWEDEN', 'SE', '-100', '0', '0', 3, '', 0),
('GWE', 'Gweru Airport', 'GWE', 'Gweru', 'ZIMBABWE', 'ZW', '2', '-19.436394', '29.861911', 1, 'true', 0),
('GWL', 'Gwalior Airport', 'GWL', 'Gwalior', 'INDIA', 'IN', '5', '26.293336', '78.227753', 1, 'true', 0),
('GWO', 'Leflore Arpt', 'GWO', 'Greenwood', 'UNITED STATES', 'US', '-6', '33.494328', '-90.084706', 1, 'true', 0),
('GWS', 'Glenwood Springs Arpt', 'GWS', 'Glenwood Springs', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GWT', 'Westerland Airport', 'GWT', 'Westerland', 'GERMANY', 'DE', '1', '54.91325', '8.340472', 1, 'true', 0),
('GWY', 'Carnmore Arpt', 'GWY', 'Galway', 'IRELAND', 'IE', '0', '53.300175', '-8.941592', 1, 'true', 0),
('GXQ', 'Teniente Vidal Arpt', 'GXQ', 'Coyhaique', 'CHILE', 'CL', '-4', '-45.594211', '-72.106133', 1, 'true', 0),
('GXY', 'Weld County Regional Arpt', 'GXY', 'Greeley', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('GYE', 'Simon Bolivar Airport', 'GYE', 'Guayaquil', 'ECUADOR', 'EC', '-5', '-2.157419', '-79.883558', 1, 'true', 0),
('GYI', 'Gisenyi Arpt', 'GYI', 'Gisenyi', 'RWANDA', 'RW', '2', '-1.677203', '29.258875', 1, 'true', 0),
('GYM', 'Gen Jose M Yanez Arpt', 'GYM', 'Guaymas', 'MEXICO', 'MX', '-7', '27.968983', '-110.925169', 1, 'true', 0),
('GYN', 'Santa Genoveva', 'GYN', 'Goiania', 'BRAZIL', 'BR', '-3', '-16.632033', '-49.220686', 1, 'true', 0),
('GYP', 'Gympie Arpt', 'GYP', 'Gympie', 'AUSTRALIA', 'AU', '-100', '-26.2833', '152.7', 1, 'true', 0),
('GYR', 'Litchfield Goodyear Arpt', 'GYR', 'Goodyear', 'UNITED STATES', 'US', '-100', '33.4237', '-112.3745', 1, 'true', 0),
('GYS', 'Guang Yuan Arpt', 'GYS', 'Guang Yuan', 'CHINA', 'CN', '8', '32.3911', '105.702', 1, 'true', 0),
('GYY', 'Gary International Arpt', 'GYY', 'Gary', 'UNITED STATES', 'US', '-6', '41.6163', '-87.4128', 1, 'true', 0),
('GZA', 'Gaza International Arpt', 'GZA', 'Gaza', 'PALESTINIAN TERRITORY, OCCUPIED', 'PS', '2', '31.246389', '34.276111', 1, 'true', 0),
('GZM', 'Gozo Arpt', 'GZM', 'Gozo', 'MALTA', 'MT', '1', '36.027222', '14.272778', 1, 'true', 0),
('GZO', 'Gizo Arpt', 'GZO', 'Gizo', 'SOLOMON ISLANDS', 'SB', '11', '-8.09778', '156.864', 1, 'true', 0),
('GZP', 'Gazipasa Arpt', 'GZP', 'Gazipasa', 'TURKEY', 'TR', '2', '36.2993', '32.3014', 1, 'true', 0),
('GZT', 'Gaziantep Arpt', 'GZT', 'Gaziantep', 'TURKEY', 'TR', '2', '36.947183', '37.478683', 1, 'true', 0),
('HAC', 'Hachijo Jima Arpt', 'HAC', 'Hachijo Jima', 'JAPAN', 'JP', '9', '33.115', '139.785833', 1, 'true', 0),
('HAD', 'Halmstad Arpt', 'HAD', 'Halmstad', 'SWEDEN', 'SE', '1', '56.691128', '12.820211', 2, 'true', 0),
('XYM', 'Falkenberg Rail Station', 'HAD', 'Halmstad', 'SWEDEN', 'SE', '-100', '0', '0', 2, '', 0),
('ZVR', 'Hanover HBF Railway Service', 'HAJ', 'Hanover', 'GERMANY', 'DE', '-100', '52.376', '9.741', 2, '', 0),
('HAJ', 'Hanover Arpt', 'HAJ', 'Hanover', 'GERMANY', 'DE', '1', '52.461056', '9.685078', 2, 'true', 0),
('HAK', 'Haikou Arpt', 'HAK', 'Haikou', 'CHINA', 'CN', '8', '19.934856', '110.458961', 1, 'true', 0),
('ZMB', 'Hamburg Railway Service', 'HAM', 'Hamburg', 'GERMANY', 'DE', '-100', '53.58', '9.98', 3, '', 0),
('HAM', 'Fuhlsbuettel Arpt', 'HAM', 'Hamburg', 'GERMANY', 'DE', '1', '53.630389', '9.988228', 3, 'true', 0),
('LBC', 'Blankensee Arpt', 'HAM', 'Hamburg', 'GERMANY', 'DE', '1', '53.805367', '10.719222', 3, '', 0),
('HAN', 'Noibai Arpt', 'HAN', 'Hanoi', 'VIET NAM', 'VN', '7', '21.221192', '105.807178', 1, 'true', 0),
('HAP', 'Long Island Arpt', 'HAP', 'Long Island', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('MDT', 'Harrisburg Intl', 'HAR', 'Harrisburg', 'UNITED STATES', 'US', '-5', '40.193494', '-76.763403', 1, '', 0),
('HAS', 'Hail Arpt', 'HAS', 'Hail', 'SAUDI ARABIA', 'SA', '3', '27.437917', '41.686292', 1, 'true', 0),
('HAU', 'Karmoy Arpt', 'HAU', 'Haugesund', 'NORWAY', 'NO', '1', '59.345267', '5.208364', 1, 'true', 0),
('HAV', 'Jose Marti Intl Arpt', 'HAV', 'Havana', 'CUBA', 'CU', '-5', '22.989153', '-82.409086', 1, 'true', 0),
('HBA', 'Hobart International Arpt', 'HBA', 'Hobart', 'AUSTRALIA', 'AU', '10', '-42.836111', '147.510278', 1, 'true', 0),
('HBE', 'Borg El Arab Arpt', 'HBE', 'Borg El Arab', 'EGYPT', 'EG', '2', '30.917669', '29.696408', 1, 'true', 0),
('HBG', 'Bobby L Chain Municipal', 'HBG', 'Hattiesburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HBI', 'Harbour Island Arpt', 'HBI', 'Harbour Island', 'BAHAMAS', 'BS', '-100', '0', '0', 1, 'true', 0),
('HBT', 'Hafr Albatin Arpt', 'HBT', 'Hafr Albatin', 'SAUDI ARABIA', 'SA', '3', '27.900917', '45.528194', 1, 'true', 0),
('HBX', 'Hubli Arpt', 'HBX', 'Hubli', 'INDIA', 'IN', '5', '15.3617', '75.0849', 1, 'true', 0),
('HCN', 'Hengchun Arpt', 'HCN', 'Hengchun', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '22.041075', '120.730208', 1, 'true', 0),
('HCQ', 'Halls Creek Arpt', 'HCQ', 'Halls Creek', 'AUSTRALIA', 'AU', '8', '-18.233889', '127.669722', 1, 'true', 0),
('HDB', 'Heidelberg Arpt', 'HDB', 'Heidelberg', 'GERMANY', 'DE', '1', '49.393333', '8.6525', 1, 'true', 0),
('HDD', 'Hyderabad', 'HDD', 'Hyderabad', 'PAKISTAN', 'PK', '5', '25.3181', '68.3661', 1, 'true', 0),
('HDF', 'Heringsdorf Arpt', 'HDF', 'Heringsdorf', 'GERMANY', 'DE', '1', '53.878706', '14.152347', 1, 'true', 0),
('HDN', 'Hayden Arpt', 'HDN', 'Hayden', 'UNITED STATES', 'US', '-7', '40.481181', '-107.21766', 1, 'true', 0),
('HDS', 'Hoedspruit Arpt', 'HDS', 'Hoedspruit', 'SOUTH AFRICA', 'ZA', '2', '-24.368642', '31.048744', 1, 'true', 0),
('HDY', 'Hat Yai Arpt', 'HDY', 'Hat Yai', 'THAILAND', 'TH', '7', '6.933206', '100.392975', 1, 'true', 0),
('HEA', 'Herat Arpt', 'HEA', 'Herat', 'AFGHANISTAN', 'AF', '5', '34.210017', '62.2283', 1, 'true', 0),
('HEH', 'Heho Arpt', 'HEH', 'Heho', 'MYANMAR', 'MM', '6', '20.747036', '96.792044', 1, 'true', 0),
('HEI', 'Heide Arpt', 'HEI', 'Heide Buesum', 'GERMANY', 'DE', '1', '54.1533', '8.90167', 1, 'true', 0),
('HEL', 'Helsinki Arpt', 'HEL', 'Helsinki', 'FINLAND', 'FI', '2', '60.317222', '24.963333', 1, 'true', 0),
('HER', 'N Kazantzakis Arpt', 'HER', 'Heraklion', 'GREECE', 'GR', '2', '35.339719', '25.180297', 1, 'true', 0),
('HET', 'Hohhot Arpt', 'HET', 'Hohhot', 'CHINA', 'CN', '8', '40.851422', '111.824103', 1, 'true', 0),
('HEZ', 'Natchez Adams Cty', 'HEZ', 'Natchez', 'UNITED STATES', 'US', '-100', '31.6133', '-91.2967', 1, 'true', 0),
('HFA', 'Haifa Arpt', 'HFA', 'Haifa', 'ISRAEL', 'IL', '2', '32.809444', '35.043056', 1, 'true', 0),
('BDL', 'Bradley Intl Arpt', 'HFD', 'Hartford', 'UNITED STATES', 'US', '-5', '41.938889', '-72.683222', 2, '', 0),
('HFD', 'Brainard Arpt', 'HFD', 'Hartford', 'UNITED STATES', 'US', '-5', '41.736722', '-72.649444', 2, 'true', 0),
('HFE', 'Hefei Arpt', 'HFE', 'Hefei', 'CHINA', 'CN', '8', '31.780019', '117.298436', 1, 'true', 0),
('HFN', 'Hornafjordur Arpt', 'HFN', 'Hornafjordur', 'ICELAND', 'IS', '0', '64.295556', '-15.227222', 1, 'true', 0),
('HFT', 'Hammerfest Arpt', 'HFT', 'Hammerfest', 'NORWAY', 'NO', '1', '70.679722', '23.668889', 1, 'true', 0),
('HGA', 'Hargeisa Arpt', 'HGA', 'Hargeisa', 'SOMALIA', 'SO', '3', '9.518167', '44.088758', 1, 'true', 0),
('HGD', 'Hughenden Arpt', 'HGD', 'Hughenden', 'AUSTRALIA', 'AU', '10', '-20.815', '144.225', 1, 'true', 0),
('HGH', 'Hangzhou Arpt', 'HGH', 'Hangzhou', 'CHINA', 'CN', '8', '30.229503', '120.434453', 1, 'true', 0),
('HGL', 'Helgoland Arpt', 'HGL', 'Helgoland', 'GERMANY', 'DE', '1', '54.1853', '7.91583', 1, 'true', 0);
INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('HGN', 'Mae Hong Son Arpt', 'HGN', 'Mae Hongson', 'THAILAND', 'TH', '7', '19.301667', '97.975', 1, 'true', 0),
('HGR', 'Washington Cty Regional', 'HGR', 'Hagerstown', 'UNITED STATES', 'US', '-5', '39.7079', '-77.7295', 1, 'true', 0),
('HGU', 'Kagamuga Arpt', 'HGU', 'Mt Hagen', 'PAPUA NEW GUINEA', 'PG', '10', '-5.826789', '144.295861', 1, 'true', 0),
('HHA', 'Changsha Huanghua Arpt', 'HHA', 'Huanghua', 'CHINA', 'CN', '8', '28.189158', '113.219633', 1, 'true', 0),
('HHE', 'Hachinohe Arpt', 'HHE', 'Hachinohe', 'JAPAN', 'JP', '-100', '40.5522', '141.4672', 1, 'true', 0),
('HHH', 'Hilton Head Municipal', 'HHH', 'Hilton Head', 'UNITED STATES', 'US', '-5', '32.216', '-80.752', 1, 'true', 0),
('HHQ', 'Hua Hin Arpt', 'HHQ', 'Hua Hin', 'THAILAND', 'TH', '7', '12.636225', '99.951533', 1, 'true', 0),
('HHR', 'Hawthorne Arpt', 'HHR', 'Hawthorne', 'UNITED STATES', 'US', '-8', '33.922839', '-118.335186', 1, 'true', 0),
('HIB', 'Hibbing Chisolm Arpt', 'HIB', 'Hibbing', 'UNITED STATES', 'US', '-6', '47.3866', '-92.838994', 1, 'true', 0),
('HID', 'Horn Island Arpt', 'HID', 'Horn Island', 'AUSTRALIA', 'AU', '10', '-10.5864', '142.29', 1, 'true', 0),
('HIE', 'Mt washington Regional Arpt', 'HIE', 'Whitefield', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HII', 'Lake Havasu City Municipal Airport', 'HII', 'Lake Havasu Cty', 'UNITED STATES', 'US', '-7', '34.571111', '-114.358278', 1, 'true', 0),
('HIJ', 'Hiroshima Airport', 'HIJ', 'Hiroshima', 'JAPAN', 'JP', '9', '34.436111', '132.919444', 1, 'true', 0),
('HIN', 'Sacheon Arpt', 'HIN', 'Chinju', 'KOREA, REPUBLIC OF', 'KR', '9', '35.088543', '128.07037', 1, 'true', 0),
('HIO', 'Portland Hillsboro Arpt', 'HIO', 'Hillsboro', 'UNITED STATES', 'US', '-8', '45.540394', '-122.949825', 1, 'true', 0),
('HIR', 'Henderson Intl Arpt', 'HIR', 'Honiara', 'SOLOMON ISLANDS', 'SB', '11', '-9.428', '160.054789', 1, 'true', 0),
('HIS', 'Hayman Island Arpt', 'HIS', 'Hayman Island', 'AUSTRALIA', 'AU', '10', '-20.066668', '148.86667', 1, 'true', 0),
('HJR', 'Khajuraho Arpt', 'HJR', 'Khajuraho', 'INDIA', 'IN', '5', '24.817197', '79.918597', 1, 'true', 0),
('HKA', 'Blytheville Municipal Arpt', 'HKA', 'Blytheville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HKB', 'Healy Lake Arpt', 'HKB', 'Healy Lake', 'UNITED STATES', 'US', '-9', '63.8675', '-148.968889', 1, 'true', 0),
('HKD', 'Hakodate Arpt', 'HKD', 'Hakodate', 'JAPAN', 'JP', '9', '41.77', '140.821944', 1, 'true', 0),
('HKG', 'Hong Kong Intl', 'HKG', 'Hong Kong', 'HONG KONG', 'HK', '8', '22.308919', '113.914603', 1, 'true', 0),
('HKK', 'Hokitika Airport', 'HKK', 'Hokitika', 'NEW ZEALAND', 'NZ', '12', '-42.713611', '170.985278', 1, 'true', 0),
('HKN', 'Hoskins Arpt', 'HKN', 'Hoskins', 'PAPUA NEW GUINEA', 'PG', '10', '-5.46217', '150.405', 1, 'true', 0),
('HKT', 'Phuket Intl Airport', 'HKT', 'Phuket', 'THAILAND', 'TH', '7', '8.1132', '98.316872', 1, 'true', 0),
('HKY', 'Hickory Municipal', 'HKY', 'Hickory', 'UNITED STATES', 'US', '-5', '35.741147', '-81.38955', 1, 'true', 0),
('HLB', 'Hillenbrand', 'HLB', 'Batesville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HLD', 'Hailer Arpt', 'HLD', 'Hailar', 'CHINA', 'CN', '8', '49.204997', '119.825', 1, 'true', 0),
('HLF', 'Hultsfred Arpt', 'HLF', 'Hultsfred', 'SWEDEN', 'SE', '1', '57.525833', '15.823333', 1, 'true', 0),
('HLM', 'Park Township', 'HLM', 'Holland', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HLN', 'Helena Municipal', 'HLN', 'Helena', 'UNITED STATES', 'US', '-7', '46.606806', '-111.98275', 1, 'true', 0),
('HLS', 'St Helens Arpt', 'HLS', 'St Helens', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('HLW', 'Hluhluwe Arpt', 'HLW', 'Hluhluwe', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 1, 'true', 0),
('HLY', 'Holyhead Rail Station', 'HLY', 'Holyhead', 'UNITED KINGDOM', 'GB', '0', '53.248097', '-4.535339', 1, 'true', 0),
('HLZ', 'Hamilton Arpt', 'HLZ', 'Hamilton', 'NEW ZEALAND', 'NZ', '12', '-37.866661', '175.332056', 1, 'true', 0),
('HMA', 'Khanty Mansiysk Arpt', 'HMA', 'Khanty Mansiysk', 'RUSSIA', 'RU', '6', '61.028479', '69.086067', 1, 'true', 0),
('HMB', 'Mubarak International Arpt', 'HMB', 'Mubarak International Arpt', 'EGYPT', 'EG', '2', '26.341189', '31.742983', 1, 'true', 0),
('HME', 'Oued Irara Arpt', 'HME', 'Hassi Messaoud', 'ALGERIA', 'DZ', '1', '31.672972', '6.140444', 1, 'true', 0),
('HMJ', '(HMJ) Khmelnitskiy Airport, UA', 'HMJ', '(HMJ) Khmelnitskiy Airport, UA', 'UKRAINE', 'UA', '0', '0', '0', 1, 'true', 0),
('HMO', 'Gen Ignacio Pesqueira Garcia Arpt', 'HMO', 'Hermosillo', 'MEXICO', 'MX', '-7', '29.095858', '-111.047858', 1, 'true', 0),
('HMR', 'Hamar Arpt', 'HMR', 'Hamar', 'NORWAY', 'NO', '1', '60.8181', '11.068', 1, 'true', 0),
('HMV', 'Hemavan Flyg', 'HMV', 'Hemavan', 'SWEDEN', 'SE', '1', '65.806111', '15.082778', 1, 'true', 0),
('HNA', 'Hanamaki Arpt', 'HNA', 'Morioka', 'JAPAN', 'JP', '9', '39.428611', '141.135278', 1, 'true', 0),
('HNB', 'Huntingburg Municipal', 'HNB', 'Huntingburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HNH', 'Hoonah Municipal Arpt', 'HNH', 'Hoonah', 'UNITED STATES', 'US', '-9', '58.096111', '-135.409722', 1, 'true', 0),
('HIK', 'Hickam Air Force Base', 'HNL', 'Honolulu', 'UNITED STATES', 'US', '-100', '21.3187', '-157.9224', 2, '', 0),
('HNL', 'Honolulu Intl', 'HNL', 'Honolulu', 'UNITED STATES', 'US', '-10', '21.318681', '-157.922428', 2, 'true', 0),
('HNM', 'Hana Municipal', 'HNM', 'Hana', 'UNITED STATES', 'US', '-10', '20.795636', '-156.014439', 1, 'true', 0),
('HNS', 'Haines Municipal Arpt', 'HNS', 'Haines', 'UNITED STATES', 'US', '-9', '59.2438', '-135.524', 1, 'true', 0),
('HNY', 'Hengyang Arpt', 'HNY', 'Hengyang', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('HOB', 'Lea County Arpt', 'HOB', 'Hobbs', 'UNITED STATES', 'US', '-7', '32.687528', '-103.217028', 1, 'true', 0),
('HOD', 'Hodeidah Arpt', 'HOD', 'Hodeidah', 'YEMEN', 'YE', '3', '14.753', '42.976336', 1, 'true', 0),
('HOF', 'Alahsa Arpt', 'HOF', 'Hofuf', 'SAUDI ARABIA', 'SA', '3', '25.285306', '49.485189', 1, 'true', 0),
('HOG', 'Frank Pias Arpt', 'HOG', 'Holguin', 'CUBA', 'CU', '-5', '20.785589', '-76.315108', 1, 'true', 0),
('HOI', 'Hao Island Arpt', 'HOI', 'Hao Island', 'FRENCH POLYNESIA', 'PF', '-10', '-18.074814', '-140.945886', 1, 'true', 0),
('HOM', 'Homer Municipal Arpt', 'HOM', 'Homer', 'UNITED STATES', 'US', '-9', '59.645556', '-151.476583', 1, 'true', 0),
('HON', 'Huron Municipal', 'HON', 'Huron', 'UNITED STATES', 'US', '-6', '44.3852', '-98.228542', 1, 'true', 0),
('HOP', 'Hopkinsville Christian Country Arpt', 'HOP', 'Hopkinsville', 'UNITED STATES', 'US', '-6', '36.668567', '-87.496183', 1, 'true', 0),
('HOQ', 'Hof Pirk Arpt', 'HOQ', 'Hof De', 'GERMANY', 'DE', '1', '50.288836', '11.854919', 1, 'true', 0),
('HOR', 'Horta Arpt', 'HOR', 'Horta', 'PORTUGAL', 'PT', '-1', '38.519894', '-28.715872', 1, 'true', 0),
('HOT', 'Memorial Field', 'HOT', 'Hot Springs', 'UNITED STATES', 'US', '-6', '34.478', '-93.0962', 1, 'true', 0),
('IAH', 'George Bush Intercontinental', 'HOU', 'Houston', 'UNITED STATES', 'US', '-6', '29.984433', '-95.341442', 5, '', 0),
('IWS', 'West Houston', 'HOU', 'Houston', 'UNITED STATES', 'US', '-6', '29.818194', '-95.672611', 5, '', 0),
('HOU', 'Houston Hobby Arpt', 'HOU', 'Houston', 'UNITED STATES', 'US', '-6', '29.645419', '-95.278889', 5, 'true', 0),
('DWH', 'David Wayne Hooks Arpt', 'HOU', 'Houston', 'UNITED STATES', 'US', '-6', '30.063746', '-95.554276', 5, '', 0),
('EFD', 'Ellington Field', 'HOU', 'Houston', 'UNITED STATES', 'US', '-6', '29.607333', '-95.15875', 5, '', 0),
('HOV', 'Hovden Arpt', 'HOV', 'Orsta Volda', 'NORWAY', 'NO', '1', '62.18', '6.0742', 1, 'true', 0),
('HPA', 'Salote Pilolevu Arpt', 'HPA', 'Ha Apai', 'TONGA', 'TO', '13', '-19.777', '-174.341', 1, 'true', 0),
('HPH', 'Catbi Arpt', 'HPH', 'Haiphong', 'VIET NAM', 'VN', '7', '20.819386', '106.724989', 1, 'true', 0),
('HPN', 'Westchester County Arpt', 'HPN', 'White Plains', 'UNITED STATES', 'US', '-5', '41.066959', '-73.707575', 1, 'true', 0),
('HPV', 'Princeville Arpt', 'HPV', 'Princeville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HPY', 'Baytown Arpt', 'HPY', 'Baytown', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HRB', 'Harbin Arpt', 'HRB', 'Harbin', 'CHINA', 'CN', '8', '45.623403', '126.250328', 1, 'true', 0),
('HRE', 'Harare Arpt', 'HRE', 'Harare', 'ZIMBABWE', 'ZW', '2', '-17.931806', '31.092847', 1, 'true', 0),
('HRG', 'Hurghada Airport', 'HRG', 'Hurghada', 'EGYPT', 'EG', '2', '27.178317', '33.799436', 1, 'true', 0),
('HRK', 'Kharkov Arpt', 'HRK', 'Kharkov', 'UKRAINE', 'UA', '2', '49.924786', '36.289986', 1, 'true', 0),
('HRL', 'Rio Grande Valley Intl Arpt', 'HRL', 'Harlingen', 'UNITED STATES', 'US', '-6', '26.2285', '-97.654389', 1, 'true', 0),
('HRO', 'Boone County Arpt', 'HRO', 'Harrison', 'UNITED STATES', 'US', '-6', '36.261519', '-93.154728', 1, 'true', 0),
('HRS', 'Harrismith Arpt', 'HRS', 'Harrismith', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 1, 'true', 0),
('XTK', 'Thirsk Rail Station', 'HRT', 'Harrogate', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('HRT', 'Linton On Ouse', 'HRT', 'Harrogate', 'UNITED KINGDOM', 'GB', '-6', '30.427803', '-86.689278', 2, 'true', 0),
('HRZ', 'Horizontina Arpt', 'HRZ', 'Horizontina', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('HSG', 'Saga Arpt', 'HSG', 'Saga', 'JAPAN', 'JP', '9', '33.1497', '130.302', 1, 'true', 0),
('HSI', 'Hastings Municipal', 'HSI', 'Hastings', 'UNITED STATES', 'US', '-100', '40.6053', '-98.4278', 1, 'true', 0),
('HSL', 'Huslia Arpt', 'HSL', 'Huslia', 'UNITED STATES', 'US', '-9', '65.697778', '-156.351389', 1, 'true', 0),
('HSN', 'Zhoushan Arpt', 'HSN', 'Zhoushan', 'CHINA', 'CN', '8', '29.9342', '122.362', 1, 'true', 0),
('HSP', 'Ingalls Field', 'HSP', 'Hot Springs', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HST', 'Homestead Municipal', 'HST', 'Homestead', 'UNITED STATES', 'US', '-5', '25.48855', '-80.383567', 1, 'true', 0),
('HSV', 'Huntsville Intl Arpt', 'HSV', 'Huntsville', 'UNITED STATES', 'US', '-6', '34.637194', '-86.775056', 1, 'true', 0),
('HSZ', 'Hsinchun Arpt', 'HSZ', 'Hsinchun', 'TAIWAN, PROVINCE OF CHINA', 'TW', '-100', '24.8167', '120.9333', 1, 'true', 0),
('HTA', 'Chita Arpt', 'HTA', 'Chita', 'RUSSIA', 'RU', '10', '52.026317', '113.305556', 1, 'true', 0),
('HTF', 'Hatfield Arpt', 'HTF', 'Hatfield', 'UNITED KINGDOM', 'GB', '0', '51.765', '-0.24833', 1, 'true', 0),
('HTG', 'Khatanga Airport', 'HTG', 'Khatanga Airport', 'RUSSIA', 'RU', '8', '71.978058', '102.490514', 1, 'true', 0),
('HTI', 'Hamilton Island Arpt', 'HTI', 'Hamilton Island', 'AUSTRALIA', 'AU', '10', '-20.3581', '148.952', 1, 'true', 0),
('HTO', 'East Hampton Arpt', 'HTO', 'East Hampton', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HTS', 'Tri State Milton Arpt', 'HTS', 'Huntington', 'UNITED STATES', 'US', '-5', '38.3667', '-82.558', 2, 'true', 0),
('PMH', 'Portsmith Regional', 'HTS', 'Huntington', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('HTV', 'Huntsville Arpt', 'HTV', 'Huntsville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HTY', 'Hatay Airport', 'HTY', 'Hatay', 'TURKEY', 'TR', '2', '36.362778', '36.282222', 1, 'true', 0),
('HUC', 'Humacao Arpt', 'HUC', 'Humacao', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HUF', 'Hulman Field', 'HUF', 'Terre Haute', 'UNITED STATES', 'US', '-5', '39.451464', '-87.307561', 1, 'true', 0),
('HUH', 'Huahine Arpt', 'HUH', 'Huahine', 'FRENCH POLYNESIA', 'PF', '-10', '-16.687242', '-151.021667', 1, 'true', 0),
('HUI', 'Phu Bai Arpt', 'HUI', 'Hu PG', 'VIET NAM', 'VN', '7', '16.401499', '107.702614', 1, 'true', 0),
('HUL', 'Houlton International', 'HUL', 'Houlton', 'UNITED STATES', 'US', '-4', '46.123083', '-67.792056', 1, 'true', 0),
('HUM', 'Terrebonne Arpt', 'HUM', 'Houma', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HUN', 'Hualien Arpt', 'HUN', 'Hualien', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '24.023725', '121.616906', 1, 'true', 0),
('HUS', 'Hughes Municipal Arpt', 'HUS', 'Hughes', 'UNITED STATES', 'US', '-9', '66.039167', '-154.264722', 1, 'true', 0),
('HUT', 'Hutchinson Municipal', 'HUT', 'Hutchinson', 'UNITED STATES', 'US', '-6', '38.0655', '-97.8606', 1, 'true', 0),
('HUU', 'Huanuco Arpt', 'HUU', 'Huanuco', 'PERU', 'PE', '-5', '-9.878811', '-76.204797', 1, 'true', 0),
('HUV', 'Hudiksvall Arpt', 'HUV', 'Hudiksvall', 'SWEDEN', 'SE', '1', '61.768092', '17.080719', 1, 'true', 0),
('HUX', 'Bahia De Huatulco Arpt', 'HUX', 'Santa Cruz Huatulco', 'MEXICO', 'MX', '-6', '15.775317', '-96.262572', 1, 'true', 0),
('HUY', 'Humberside Arpt', 'HUY', 'Humberside', 'UNITED KINGDOM', 'GB', '0', '53.574444', '-0.350833', 1, 'true', 0),
('HUZ', 'Huizhou Arpt', 'HUZ', 'Huizhou', 'CHINA', 'CN', '8', '23.083332', '114.36667', 1, 'true', 0),
('HVB', 'Hervey Bay', 'HVB', 'Hervey Bay', 'AUSTRALIA', 'AU', '10', '-25.318889', '152.880278', 1, 'true', 0),
('HVE', 'Intermediate Arpt', 'HVE', 'Hanksville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HVG', 'Valan Arpt', 'HVG', 'Honningsvag', 'NORWAY', 'NO', '1', '70.99', '25.83', 1, 'true', 0),
('HVN', 'Tweed New Haven Arpt', 'HVN', 'New Haven', 'UNITED STATES', 'US', '-5', '41.26375', '-72.886806', 1, 'true', 0),
('HVR', 'City County', 'HVR', 'Havre', 'UNITED STATES', 'US', '-7', '48.542983', '-109.762342', 1, 'true', 0),
('HWD', 'Hayward Air Terminal', 'HWD', 'Hayward', 'UNITED STATES', 'US', '-100', '37.6589', '-122.1217', 1, 'true', 0),
('HWN', 'Hwange Arpt', 'HWN', 'Hwange', 'ZIMBABWE', 'ZW', '-100', '-18.6339', '27.0081', 1, 'true', 0),
('HYA', 'Barnstable Cty Arpt', 'HYA', 'Hyannis', 'UNITED STATES', 'US', '-5', '41.669336', '-70.280356', 1, 'true', 0),
('HYD', 'Rajiv Gandhi Intl Arpt', 'HYD', 'Shamshabad', 'INDIA', 'IN', '5', '17.453117', '78.467586', 1, 'true', 0),
('HYN', 'Huangyan Arpt', 'HYN', 'Huangyan', 'CHINA', 'CN', '8', '28.5622', '121.429', 1, 'true', 0),
('HYR', 'Hayward Municipal', 'HYR', 'Hayward', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('HYS', 'Hays Municipal', 'HYS', 'Hays', 'UNITED STATES', 'US', '-5', '38.8422', '-99.2732', 1, 'true', 0),
('HZB', 'Merville Calonne Arpt', 'HZB', 'Hazebrouck', 'FRANCE', 'FR', '-100', '50.6167', '2.64', 1, 'true', 0),
('HZG', 'Hanzhong Arpt', 'HZG', 'Hanzhong', 'CHINA', 'CN', '8', '33.0636', '107.008', 1, 'true', 0),
('HZK', 'Husavik Arpt', 'HZK', 'Husavik', 'ICELAND', 'IS', '0', '65.952328', '-17.425978', 1, 'true', 0),
('IAA', 'Igarka Airport', 'IAA', 'Igarka Airport', 'RUSSIA', 'RU', '8', '67.4372', '86.6219', 1, 'true', 0),
('IAG', 'Niagara Falls Intl Arpt', 'IAG', 'Niagara Falls', 'UNITED STATES', 'US', '-5', '43.107333', '-78.946194', 1, 'true', 0),
('IAR', 'Yaroslavl Arpt', 'IAR', 'Yaroslavl', 'RUSSIA', 'RU', '4', '57.560667', '40.157369', 1, 'true', 0),
('IAS', 'Iasi Arpt', 'IAS', 'Iasi', 'ROMANIA', 'RO', '2', '47.178492', '27.620631', 1, 'true', 0),
('IBE', 'Ibague Arpt', 'IBE', 'Ibague', 'COLOMBIA', 'CO', '-5', '4.421608', '-75.1333', 1, 'true', 0),
('IBZ', 'Ibiza Airport', 'IBZ', 'Ibiza', 'SPAIN', 'ES', '1', '38.872858', '1.373117', 1, 'true', 0),
('ICT', 'Mid Continent Arpt', 'ICT', 'Wichita', 'UNITED STATES', 'US', '-6', '37.649944', '-97.433056', 1, 'true', 0),
('IDA', 'Fanning Field', 'IDA', 'Idaho Falls', 'UNITED STATES', 'US', '-7', '43.514556', '-112.07075', 1, 'true', 0),
('IDI', 'Indiana County Arpt', 'IDI', 'Indiana', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('IDR', 'Devi Ahilya Bai Holkar Arpt', 'IDR', 'Indore', 'INDIA', 'IN', '5', '22.721786', '75.801086', 1, 'true', 0),
('IEG', 'Babimost Arpt', 'IEG', 'Zielona', 'POLAND', 'PL', '1', '52.138517', '15.798556', 1, 'true', 0),
('IEV', 'Zhulhany Arpt', 'IEV', 'Kiev', 'UKRAINE', 'UA', '2', '50.401694', '30.449697', 2, 'true', 0),
('KBP', 'Borispol Arpt', 'IEV', 'Kiev', 'UKRAINE', 'UA', '2', '50.345', '30.894722', 2, '', 0),
('IFJ', 'Isafjordur Arpt', 'IFJ', 'Isafjordur', 'ICELAND', 'IS', '0', '66.058056', '-23.135278', 1, 'true', 0),
('IFN', 'Isfahan Arpt', 'IFN', 'Isfahan', 'IRAN', 'IR', '3', '32.750836', '51.861267', 1, 'true', 1),
('IFO', 'Ivano Frankovsk Arpt', 'IFO', 'Ivano Frankovsk', 'UKRAINE', 'UA', '2', '48.884167', '24.686111', 1, 'true', 0),
('IFP', 'Laughlin Bullhead Intl Arpt', 'IFP', 'Bullhead City', 'UNITED STATES', 'US', '-7', '35.1574', '-114.56', 1, 'true', 0),
('IGD', 'Iğdır Havalimanı', 'IGD', 'Iğdır Havalimanı', 'TURKEY', 'TR', '3', '0', '0', 1, 'true', 0),
('IGH', 'Ingham Arpt', 'IGH', 'Ingham', 'AUSTRALIA', 'AU', '-100', '-18.6656', '146.1475', 1, 'true', 0),
('IGM', 'Mohave County', 'IGM', 'Kingman', 'UNITED STATES', 'US', '-7', '35.2595', '-113.938', 1, 'true', 0),
('IGR', 'Iguazu Intl', 'IGR', 'Iguazu', 'ARGENTINA', 'AR', '-3', '-25.737281', '-54.473444', 1, 'true', 0),
('IGU', 'Cataratas Arpt', 'IGU', 'Iguassu Falls', 'BRAZIL', 'BR', '-3', '-25.59615', '-54.487206', 1, 'true', 0),
('IJK', 'Izhevsk Arpt', 'IJK', 'Izhevsk', 'RUSSIA', 'RU', '6', '56.8281', '53.4575', 1, 'true', 0),
('IJX', 'Jacksonville Municipal Arpt', 'IJX', 'Jacksonville', 'UNITED STATES', 'US', '-100', '39.7744', '-90.2386', 1, 'true', 0),
('IKK', 'Greater Kankakee Arpt', 'IKK', 'Kankakee', 'UNITED STATES', 'US', '-6', '41.071389', '-87.846278', 1, 'true', 0),
('IKS', 'Tiksi Airport', 'IKS', 'Tiksi Airport', 'RUSSIA', 'RU', '10', '71.6977', '128.903', 1, 'true', 0),
('IKT', 'Irkutsk Airport', 'IKT', 'Irkutsk', 'RUSSIA', 'RU', '9', '52.268028', '104.388975', 1, 'true', 0),
('GRK', 'Gray AAF', 'ILE', 'Killeen', 'UNITED STATES', 'US', '-6', '31.06725', '-97.828917', 2, '', 0),
('ILE', 'Killeen Municipal', 'ILE', 'Killeen', 'UNITED STATES', 'US', '-100', '0', '0', 2, 'true', 0),
('ILF', 'Ilford Rail Station', 'ILF', 'Ilford', 'CANADA', 'CA', '-6', '56.0614', '-95.6139', 1, 'true', 0),
('ILG', 'Greater Wilmington New Castle', 'ILG', 'Wilmington', 'UNITED STATES', 'US', '-5', '39.678722', '-75.606528', 1, 'true', 0),
('ILM', 'New Hanover Cty Arpt', 'ILM', 'Wilmington', 'UNITED STATES', 'US', '-5', '34.270615', '-77.902569', 1, 'true', 0),
('ILO', 'Mandurriao Arpt', 'ILO', 'Iloilo', 'PHILIPPINES', 'PH', '8', '10.713044', '122.545297', 1, 'true', 0),
('ILP', 'Ile Des Pins Arpt', 'ILP', 'Ile Des Pins', 'NEW CALEDONIA', 'NC', '11', '-22.5889', '167.456', 1, 'true', 0),
('ILY', 'Islay Arpt', 'ILY', 'Islay', 'UNITED KINGDOM', 'GB', '0', '55.681944', '-6.256667', 1, 'true', 0),
('ILZ', 'Zilina Arpt', 'ILZ', 'Zilina', 'SLOVAKIA', 'SK', '1', '49.231528', '18.6135', 1, 'true', 0),
('IMF', 'Tulihal Arpt', 'IMF', 'Imphal', 'INDIA', 'IN', '5', '24.75995', '93.896697', 1, 'true', 0),
('IMP', 'Imperatriz Arpt', 'IMP', 'Imperatriz', 'BRAZIL', 'BR', '-3', '-5.531292', '-47.46005', 1, 'true', 0),
('IMT', 'Ford Arpt', 'IMT', 'Iron Mountain', 'UNITED STATES', 'US', '-5', '45.818361', '-88.114556', 1, 'true', 0),
('INA', 'Inta Airport', 'INA', 'Inta Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('INC', 'Yinchuan Arpt', 'INC', 'Yinchuan', 'CHINA', 'CN', '8', '38.481944', '106.009167', 1, 'true', 0),
('IND', 'Indianapolis Intl Arpt', 'IND', 'Indianapolis', 'UNITED STATES', 'US', '-5', '39.717331', '-86.294383', 1, 'true', 0),
('INI', 'Nis Arpt', 'INI', 'Nis Rs', 'SERBIA', 'RS', '1', '43.337289', '21.853722', 1, 'true', 0),
('INL', 'Intl Falls Arpt', 'INL', 'International Falls', 'UNITED STATES', 'US', '-6', '48.566186', '-93.403067', 1, 'true', 0),
('INN', 'Kranebitten Airport', 'INN', 'Innsbruck', 'AUSTRIA', 'AT', '1', '47.260219', '11.343964', 1, 'true', 0),
('INT', 'Smith Reynolds Arpt', 'INT', 'Winston-Salem', 'UNITED STATES', 'US', '-5', '36.133722', '-80.222', 1, 'true', 0),
('INU', 'Nauru Intl Arpt', 'INU', 'Nauru Island', 'NAURU', 'NR', '12', '-0.547458', '166.9191', 1, 'true', 0),
('ZIV', 'Inverness ScotRail Station', 'INV', 'Inverness', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('INV', 'Inverness Arpt', 'INV', 'Inverness', 'UNITED KINGDOM', 'GB', '0', '57.5425', '-4.0475', 2, 'true', 0),
('INW', 'Winslow Municipal', 'INW', 'Winslow', 'UNITED STATES', 'US', '-7', '35.021917', '-110.722528', 1, 'true', 0),
('IOA', 'Ioannina Arpt', 'IOA', 'Ioannina', 'GREECE', 'GR', '2', '39.696388', '20.8225', 1, 'true', 0),
('IOM', 'Ronaldsway Arpt', 'IOM', 'Isle Of Man', 'UNITED KINGDOM', 'GB', '0', '54.083333', '-4.623889', 1, 'true', 0),
('IOS', 'Eduardo Gomes Airport', 'IOS', 'Ilheus', 'BRAZIL', 'BR', '-3', '-14.815964', '-39.033197', 1, 'true', 0),
('IOW', 'Iowa City Municipal Airport', 'IOW', 'Iowa City', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('IPC', 'Mataveri Intl Arpt', 'IPC', 'Easter Island', 'CHILE', 'CL', '-6', '-27.164792', '-109.421831', 1, 'true', 0),
('IPH', 'Ipoh Arpt', 'IPH', 'Ipoh', 'MALAYSIA', 'MY', '8', '4.567972', '101.092194', 1, 'true', 0),
('IPI', 'San Luis Arpt', 'IPI', 'Ipiales', 'COLOMBIA', 'CO', '-5', '0.861925', '-77.671764', 1, 'true', 0),
('IPL', 'Imperial County', 'IPL', 'El Centro', 'UNITED STATES', 'US', '-8', '32.834219', '-115.578744', 1, 'true', 0),
('IPN', 'Usiminas Arpt', 'IPN', 'Ipatinga', 'BRAZIL', 'BR', '-3', '-19.470722', '-42.487583', 1, 'true', 0),
('IPT', 'Williamsport Lycoming Municipal', 'IPT', 'Williamsport', 'UNITED STATES', 'US', '-5', '41.241836', '-76.921094', 1, 'true', 0),
('IPW', 'Ipswitch Rail Station', 'IPW', 'Ipswich', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('IQQ', 'Cavancha Chucumata Arpt', 'IQQ', 'Iquique', 'CHILE', 'CL', '-4', '-20.535222', '-70.181275', 1, 'true', 0),
('IQT', 'C F Secada Arpt', 'IQT', 'Iquitos', 'PERU', 'PE', '-5', '-3.784739', '-73.308806', 1, 'true', 0),
('IRG', 'Lockhart River Arpt', 'IRG', 'Lockhart', 'AUSTRALIA', 'AU', '10', '-12.7869', '143.305', 1, 'true', 0),
('IRJ', 'La Rioja Arpt', 'IRJ', 'La Rioja', 'ARGENTINA', 'AR', '-3', '-29.381636', '-66.795839', 1, 'true', 0),
('IRK', 'Kirksville Municipal', 'IRK', 'Kirksville', 'UNITED STATES', 'US', '-6', '40.0935', '-92.5449', 1, 'true', 0),
('IRS', 'Kirsch Municipal', 'IRS', 'Sturgis', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ISA', 'Mount Isa Arpt', 'ISA', 'Mount Isa', 'AUSTRALIA', 'AU', '10', '-20.663889', '139.488611', 1, 'true', 0),
('ISB', 'Islamabad Intl', 'ISB', 'Islamabad', 'PAKISTAN', 'PK', '5', '33.616653', '73.099233', 1, 'true', 0),
('ISC', 'St Marys Arpt', 'ISC', 'Isles Of Scilly', 'UNITED KINGDOM', 'GB', '0', '49.919', '-6.3075', 2, 'true', 0),
('TSO', 'Tresco Arpt', 'ISC', 'Isles Of Scilly', 'UNITED KINGDOM', 'GB', '0', '49.945556', '-6.331389', 2, '', 0),
('ISE', 'Isparta Suleyman Demirel Airport', 'ISE', 'Isparta', 'TURKEY', 'TR', '2', '37.8554', '30.3684', 1, 'true', 0),
('ISG', 'Ishigaki Airport', 'ISG', 'Ishigaki', 'JAPAN', 'JP', '9', '24.344525', '124.186983', 1, 'true', 0),
('ISH', 'Ischia Arpt', 'ISH', 'Ischia', 'ITALY', 'IT', '-100', '0', '0', 1, 'true', 0),
('ISJ', 'Isla Mujeres Arpt', 'ISJ', 'Isla Mujeres', 'MEXICO', 'MX', '-6', '21.245033', '-86.739967', 1, 'true', 0),
('ISM', 'Kissimmee Municipal Arpt', 'ISM', 'Kissimmee', 'UNITED STATES', 'US', '-5', '28.289806', '-81.437083', 1, 'true', 0),
('ISN', 'Sloulin Field Intl Arpt', 'ISN', 'Williston', 'UNITED STATES', 'US', '-7', '48.177939', '-103.642347', 1, 'true', 0),
('ISO', 'East Reg Jetport Stallings', 'ISO', 'Kinston', 'UNITED STATES', 'US', '7', '35.331389', '-77.608889', 1, 'true', 0),
('ISP', 'Long Island Macarthur Arpt', 'ISP', 'Islip', 'UNITED STATES', 'US', '-5', '40.79525', '-73.100222', 1, 'true', 0),
('ISQ', 'Schoolcraft County Arpt', 'ISQ', 'Manistique', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ISS', 'Wiscasset Arpt', 'ISS', 'Wiscasset', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('IST', 'Ataturk Arpt', 'IST', 'Istanbul', 'TURKEY', 'TR', '2', '40.976922', '28.814606', 2, 'true', 0),
('SAW', 'Sabiha Gokcen Arpt', 'IST', 'Istanbul', 'TURKEY', 'TR', '2', '40.898553', '29.309219', 2, '', 0),
('ISU', 'Sulaimaniyah International Airport', 'ISU', 'Sulaimaniyah', 'IRAQ', 'IQ', '3', '35.5608', '45.3147', 1, 'true', 0),
('ISW', 'Alexander Field', 'ISW', 'Wisconsin Rapids', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ITH', 'Tomkins County', 'ITH', 'Ithaca', 'UNITED STATES', 'US', '-5', '42.491028', '-76.458444', 1, 'true', 0),
('ITO', 'Hilo Hawaii Intl', 'ITO', 'Hilo', 'UNITED STATES', 'US', '-10', '19.721375', '-155.048469', 1, 'true', 0),
('ITP', 'Itaperuna Arpt', 'ITP', 'Itaperuna', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('IUE', 'Hanan Arpt', 'IUE', 'Niue Island', 'NIUE', 'NU', '-11', '-19.080028', '-169.925639', 1, 'true', 0),
('IVC', 'Invercargill Arpt', 'IVC', 'Invercargill', 'NEW ZEALAND', 'NZ', '12', '-46.412408', '168.312992', 1, 'true', 0),
('IVL', 'Ivalo Arpt', 'IVL', 'Ivalo', 'FINLAND', 'FI', '2', '68.607269', '27.405328', 1, 'true', 0),
('IVR', 'Inverell Arpt', 'IVR', 'Inverell', 'AUSTRALIA', 'AU', '-100', '-29.8894', '151.1469', 1, 'true', 0),
('IWA', 'Ivanovo Arpt', 'IWA', 'Ivanovo', 'RUSSIA', 'RU', '4', '56.939444', '40.940833', 1, 'true', 0),
('IWD', 'Ironwood Arpt', 'IWD', 'Ironwood', 'UNITED STATES', 'US', '-6', '46.527475', '-90.131397', 1, 'true', 0),
('IWJ', 'Iwami Arpt', 'IWJ', 'Iwami', 'JAPAN', 'JP', '9', '34.6764', '131.79', 1, 'true', 0),
('IXA', 'Singerbhil Arpt', 'IXA', 'Agartala', 'INDIA', 'IN', '5', '23.886978', '91.24045', 1, 'true', 0),
('IXB', 'Bagdogra Arpt', 'IXB', 'Bagdogra', 'INDIA', 'IN', '5', '26.681206', '88.328567', 1, 'true', 0),
('IXC', 'Chandigarh Arpt', 'IXC', 'Chandigarh', 'INDIA', 'IN', '5', '30.673469', '76.788542', 1, 'true', 0),
('IXD', 'Bamrauli Arpt', 'IXD', 'Allahabad', 'INDIA', 'IN', '5', '25.440064', '81.733872', 1, 'true', 0),
('IXE', 'Bajpe Arpt', 'IXE', 'Mangalore', 'INDIA', 'IN', '5', '12.961267', '74.890069', 1, 'true', 0),
('IXG', 'Sambre Arpt', 'IXG', 'Belgaum', 'INDIA', 'IN', '5', '15.859286', '74.618292', 1, 'true', 0),
('IXI', 'Lilabari Arpt', 'IXI', 'Lilabari', 'INDIA', 'IN', '5', '27.295494', '94.09765', 1, 'true', 0),
('IXJ', 'Satwari Arpt', 'IXJ', 'Jammu', 'INDIA', 'IN', '5', '32.689142', '74.837389', 1, 'true', 0),
('IXL', 'Leh Kushok Bakula Rimpochee Arpt', 'IXL', 'Leh IN', 'INDIA', 'IN', '5', '34.135872', '77.546514', 1, 'true', 0),
('IXM', 'Madurai Airport', 'IXM', 'Madurai', 'INDIA', 'IN', '5', '9.834508', '78.093378', 1, 'true', 0),
('IXP', 'Pathankot Arpt', 'IXP', 'Pathankot', 'INDIA', 'IN', '5', '32.233778', '75.634628', 1, 'true', 0),
('IXR', 'Birsa Munda Arpt', 'IXR', 'Ranchi', 'INDIA', 'IN', '5', '23.31425', '85.321675', 1, 'true', 0),
('IXS', 'Kumbhigram Arpt', 'IXS', 'Silchar', 'INDIA', 'IN', '5', '24.912928', '92.978742', 1, 'true', 0),
('IXU', 'Chikkalthana Arpt', 'IXU', 'Aurangabad', 'INDIA', 'IN', '5', '19.862728', '75.398114', 1, 'true', 0),
('IXY', 'Kandla Arpt', 'IXY', 'Kandla', 'INDIA', 'IN', '5', '23.112719', '70.100289', 1, 'true', 0),
('IXZ', 'Veer Savarkar Arpt', 'IXZ', 'Port Blair', 'INDIA', 'IN', '5', '11.641161', '92.729744', 1, 'true', 0),
('IYK', 'Kern Cty Airport', 'IYK', 'Inyokern', 'UNITED STATES', 'US', '-8', '35.658889', '-117.829444', 1, 'true', 0),
('ADB', 'Adnan Menderes Airport', 'IZM', 'Izmir', 'TURKEY', 'TR', '2', '38.292392', '27.156953', 1, '', 0),
('IZO', 'Izumo Arpt', 'IZO', 'Izumo', 'JAPAN', 'JP', '9', '35.413611', '132.89', 1, 'true', 0),
('IZT', 'Ixtepec Arpt', 'IZT', 'Ixtepec', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('JAB', 'Jabiru Arpt', 'JAB', 'Jabiru', 'AUSTRALIA', 'AU', '9', '-12.6571', '132.893', 1, 'true', 0),
('JAC', 'Jackson Hole Arpt', 'JAC', 'Jackson', 'UNITED STATES', 'US', '-7', '43.607333', '-110.73775', 1, 'true', 0),
('JAI', 'Sanganeer Arpt', 'JAI', 'Jaipur', 'INDIA', 'IN', '5', '26.824192', '75.812161', 1, 'true', 0),
('JAL', 'Jalapa Arpt', 'JAL', 'Jalapa', 'MEXICO', 'MX', '-6', '19.475083', '-96.797506', 1, 'true', 0),
('HKS', 'Hawkins Field', 'JAN', 'Jackson', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('JAN', 'Jackson Evers Intl Arpt', 'JAN', 'Jackson', 'UNITED STATES', 'US', '-6', '32.311167', '-90.075889', 2, 'true', 0),
('JAP', 'Punta Renes Arpt', 'JAP', 'Punta Renes', 'COSTA RICA', 'CR', '-100', '0', '0', 1, 'true', 0),
('JAV', 'Ilulissat Arpt', 'JAV', 'Ilulissat', 'GREENLAND', 'GL', '-3', '69.23444', '-51.05111', 1, 'true', 0),
('JAX', 'Jacksonville Intl Arpt', 'JAX', 'Jacksonville', 'UNITED STATES', 'US', '-5', '30.494056', '-81.687861', 4, 'true', 0),
('NIP', 'Jacksonville Nas', 'JAX', 'Jacksonville', 'UNITED STATES', 'US', '-5', '30.235834', '-81.680556', 4, '', 0),
('NZC', 'Cecil Field Nas', 'JAX', 'Jacksonville', 'UNITED STATES', 'US', '-5', '30.2187', '-81.8767', 4, '', 0),
('CRG', 'Craig Municipal Arpt', 'JAX', 'Jacksonville', 'UNITED STATES', 'US', '-100', '0', '0', 4, '', 0),
('JBQ', 'Dr Joaquin Balaguer', 'JBQ', 'Higuero', 'DOMINICAN REPUBLIC', 'DO', '-4', '18.5725', '-69.9856', 1, 'true', 0),
('JBR', 'Jonesboro Municipal', 'JBR', 'Jonesboro', 'UNITED STATES', 'US', '-6', '35.831708', '-90.646417', 1, 'true', 0),
('JCB', 'Joacaba Arpt', 'JCB', 'Joacaba', 'BRAZIL', 'BR', '-3', '-27.172778', '-51.500833', 1, 'true', 0),
('JCK', 'Julia Creek Arpt', 'JCK', 'Julia Creek', 'AUSTRALIA', 'AU', '10', '-20.6683', '141.723', 1, 'true', 0),
('JDF', 'Francisco De Assis Arpt', 'JDF', 'Juiz De Fora', 'BRAZIL', 'BR', '-3', '-21.7915', '-43.386778', 1, 'true', 0),
('JDH', 'Jodhpur Arpt', 'JDH', 'Jodhpur', 'INDIA', 'IN', '5', '26.251092', '73.048869', 1, 'true', 0),
('JDO', 'Regional Do Cariri Arpt', 'JDO', 'Juazeiro Do Norte', 'BRAZIL', 'BR', '-3', '-7.218958', '-39.2701', 1, 'true', 0),
('JDZ', 'Jingdezhen Arpt', 'JDZ', 'Jingdezhen', 'CHINA', 'CN', '8', '29.3386', '117.176', 1, 'true', 0),
('JED', 'Jeddah Intl', 'JED', 'Jeddah', 'SAUDI ARABIA', 'SA', '3', '21.679564', '39.156536', 1, 'true', 0),
('JEF', 'Jefferson City Memorial', 'JEF', 'Jefferson City', 'UNITED STATES', 'US', '-6', '38.5912', '-92.1561', 1, 'true', 0),
('JEG', 'Aasiaat Arpt', 'JEG', 'Aasiaat', 'GREENLAND', 'GL', '-3', '68.7', '-52.75', 1, 'true', 0),
('JER', 'States Airport', 'JER', 'Jersey', 'UNITED KINGDOM', 'GB', '0', '49.207947', '-2.195508', 1, 'true', 0),
('JGA', 'Govardhanpur Arpt', 'JGA', 'Jamnagar', 'INDIA', 'IN', '5', '22.465522', '70.012556', 1, 'true', 0),
('JGN', 'Jiayuguan Arpt', 'JGN', 'Jiayuguan', 'CHINA', 'CN', '8', '39.8569', '98.3414', 1, 'true', 0),
('JGS', 'Jing Gang Shan Arpt', 'JGS', 'Jian', 'CHINA', 'CN', '8', '26.8997', '114.7375', 1, 'true', 0),
('JHB', 'Sultan Ismail Intl Arpt', 'JHB', 'Johor Bahru', 'MALAYSIA', 'MY', '8', '1.641308', '103.669619', 1, 'true', 0),
('XWP', 'Hassleholm Rail Station', 'JHE', 'Helsingborg', 'SWEDEN', 'SE', '-100', '0', '0', 2, '', 0),
('XYH', 'Helsingborg Railway service', 'JHE', 'Helsingborg', 'SWEDEN', 'SE', '-100', '0', '0', 2, '', 0),
('JHG', 'Jinghong Arpt', 'JHG', 'Jinghong', 'CHINA', 'CN', '8', '21.973914', '100.759611', 1, 'true', 0),
('JHM', 'Kapalua Arpt', 'JHM', 'Kapalua', 'UNITED STATES', 'US', '-10', '20.962936', '-156.673031', 1, 'true', 0),
('JHS', 'Sisimiut Arpt', 'JHS', 'Sisimiut', 'GREENLAND', 'GL', '-3', '66.9513', '-53.7293', 1, 'true', 0),
('JHW', 'Chautauqua Cty Arpt', 'JHW', 'Jamestown', 'UNITED STATES', 'US', '-5', '42.153333', '-79.258056', 1, 'true', 0),
('JIB', 'Ambouli Airport', 'JIB', 'Djibouti', 'DJIBOUTI', 'DJ', '3', '11.5472', '43.1594', 1, 'true', 0),
('JIK', 'Ikaria Arpt', 'JIK', 'Ikaria Island', 'GREECE', 'GR', '2', '37.682717', '26.347061', 1, 'true', 0),
('JIL', 'Jilin Arpt', 'JIL', 'Jilin', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('JIM', 'Jimma Arpt', 'JIM', 'Jimma', 'ETHIOPIA', 'ET', '3', '7.666094', '36.816639', 1, 'true', 0),
('JIU', 'Jiujiang Airport', 'JIU', 'Jiujiang', 'CHINA', 'CN', '8', '29.733', '115.983', 1, 'true', 0),
('JJN', 'Jinjiang Arpt', 'JJN', 'Jinjiang', 'CHINA', 'CN', '8', '24.7964', '118.59', 1, 'true', 0),
('JJU', 'Qaqortoq Arpt', 'JJU', 'Qaqortoq', 'GREENLAND', 'GL', '-3', '60.7158', '-46.0294', 1, 'true', 0),
('XYC', 'Herrljunga Rail Station', 'JKG', 'Jonkoping', 'SWEDEN', 'SE', '-100', '0', '0', 3, '', 0),
('XYF', 'Falkoping Rail Station', 'JKG', 'Jonkoping', 'SWEDEN', 'SE', '-100', '0', '0', 3, '', 0),
('JKG', 'Axamo Airport', 'JKG', 'Jonkoping', 'SWEDEN', 'SE', '1', '57.757594', '14.068731', 3, 'true', 0),
('JKH', 'Chios Arpt', 'JKH', 'Chios', 'GREECE', 'GR', '2', '38.343175', '26.140572', 1, 'true', 0),
('JKL', 'Kalymnos Arpt', 'JKL', 'Kalymnos Island', 'GREECE', 'GR', '2', '36.963333', '26.940556', 1, 'true', 0),
('HLP', 'Halim Perdana Kusuma Arpt', 'JKT', 'Jakarta', 'INDONESIA', 'ID', '7', '-6.26661', '106.891', 2, '', 0),
('CGK', 'Soekarno Hatta Intl', 'JKT', 'Jakarta', 'INDONESIA', 'ID', '7', '-6.125567', '106.655897', 2, '', 0),
('JKV', 'Cherokee County Arpt', 'JKV', 'Jacksonville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('JLN', 'Joplin Municipal Arpt', 'JLN', 'Joplin', 'UNITED STATES', 'US', '-6', '37.151814', '-94.498269', 1, 'true', 0),
('JMC', 'Marin County Arpt', 'JMC', 'Sausalito', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('JMK', 'Mykonos Greece Arpt', 'JMK', 'Mykonos', 'GREECE', 'GR', '2', '37.435128', '25.348103', 1, 'true', 0),
('JMS', 'Jamestown Arpt', 'JMS', 'Jamestown', 'UNITED STATES', 'US', '-6', '46.9297', '-98.6782', 1, 'true', 0),
('HLA', 'Lanseria International Arpt', 'JNB', 'Johannesburg', 'SOUTH AFRICA', 'ZA', '2', '-25.938514', '27.926133', 4, '', 0),
('QRA', 'Randgermiston Arpt', 'JNB', 'Johannesburg', 'SOUTH AFRICA', 'ZA', '2', '-26.242506', '28.151169', 4, '', 0),
('GCJ', 'Grand Central Arpt', 'JNB', 'Johannesburg', 'SOUTH AFRICA', 'ZA', '2', '-25.986267', '28.140061', 4, '', 0),
('JNB', 'O R Tambo International Arpt', 'JNB', 'Johannesburg', 'SOUTH AFRICA', 'ZA', '2', '-26.139166', '28.246', 4, 'true', 0),
('JNN', 'Nanortalik Arpt', 'JNN', 'Nanortalik', 'GREENLAND', 'GL', '-3', '60.14', '-45.2317', 1, 'true', 0),
('JNS', 'Narsaq Heleport', 'JNS', 'Narsaq', 'GREENLAND', 'GL', '-3', '60.9167', '-46.0586', 1, 'true', 0),
('JNU', 'Juneau Arpt', 'JNU', 'Juneau', 'UNITED STATES', 'US', '-9', '58.354972', '-134.576278', 1, 'true', 0),
('JNX', 'Naxos Arpt', 'JNX', 'Naxos', 'GREECE', 'GR', '2', '37.080556', '25.368056', 1, 'true', 0),
('JNZ', 'Jinzhou Arpt', 'JNZ', 'Jinzhou', 'CHINA', 'CN', '8', '41.1014', '121.062', 1, 'true', 0),
('JOE', 'Joensuu Arpt', 'JOE', 'Joensuu', 'FINLAND', 'FI', '2', '62.662906', '29.60755', 1, 'true', 0),
('JOG', 'Adisutjipto Arpt', 'JOG', 'Yogyakarta', 'INDONESIA', 'ID', '7', '-7.788181', '110.431758', 1, 'true', 0),
('JOI', 'Cubatao Arpt', 'JOI', 'Joinville', 'BRAZIL', 'BR', '-3', '-26.224453', '-48.797364', 1, 'true', 0),
('JOK', 'Yoshkar-Ola Airport', 'JOK', 'Yoshkar-Ola Airport', 'RUSSIA', 'RU', '4', '56.7006', '47.9047', 1, 'true', 0),
('JOT', 'Joliet Park District Arpt', 'JOT', 'Joliet', 'UNITED STATES', 'US', '-100', '41.5178', '-88.1756', 1, 'true', 0),
('JPA', 'Castro Pinto Arpt', 'JPA', 'Joao Pessoa', 'BRAZIL', 'BR', '-3', '-7.148381', '-34.950681', 1, 'true', 0),
('JPR', 'Ji Parana Arpt', 'JPR', 'Ji Parana', 'BRAZIL', 'BR', '-4', '-10.8708', '-61.8465', 1, 'true', 0),
('JQA', 'Qaarsut Arpt', 'JQA', 'Qaarsut', 'GREENLAND', 'GL', '-3', '70.7342', '-52.6962', 1, 'true', 0),
('JRH', 'Rowriah Arpt', 'JRH', 'Jorhat', 'INDIA', 'IN', '5', '26.731528', '94.175536', 1, 'true', 0),
('JRO', 'Kilimanjaro Arpt', 'JRO', 'Kilimanjaro', 'TANZANIA', 'TZ', '3', '-3.429406', '37.074461', 1, 'true', 0),
('JRS', 'Atarot Airport', 'JRS', 'Jerusalem', 'ISRAEL', 'IL', '-100', '31.8647', '35.2192', 1, 'true', 0),
('JSA', 'Jaisalmer Arpt', 'JSA', 'Jaisalmer', 'INDIA', 'IN', '5', '26.888653', '70.864967', 1, 'true', 0),
('JSI', 'Skiathos Arpt', 'JSI', 'Skiathos', 'GREECE', 'GR', '2', '39.1771', '23.503675', 1, 'true', 0),
('XEZ', 'Sodertalje S Rail Station', 'JSO', 'Sodertalje', 'SWEDEN', 'SE', '-100', '0', '0', 1, '', 0),
('JST', 'Johnstown Cambria Arpt', 'JST', 'Johnstown', 'UNITED STATES', 'US', '-5', '40.316111', '-78.833889', 1, 'true', 0),
('JSU', 'Maniitsoq Heleport', 'JSU', 'Maniitsoq', 'GREENLAND', 'GL', '-3', '65.4125', '-52.9394', 1, 'true', 0),
('JSY', 'Syros Island Arpt', 'JSY', 'Syros Island', 'GREECE', 'GR', '2', '37.422792', '24.950936', 1, 'true', 0),
('JTR', 'Santorini Arpt', 'JTR', 'Thira Island', 'GREECE', 'GR', '2', '36.399169', '25.479333', 1, 'true', 0),
('JTY', 'Astypalaia Arpt', 'JTY', 'Astypalaia Island', 'GREECE', 'GR', '2', '36.579886', '26.375822', 1, 'true', 0),
('JUB', 'Juba Arpt', 'JUB', 'Juba', 'SUDAN', 'SD', '2', '4.872006', '31.601117', 1, 'true', 0),
('JUI', 'Juist Arpt', 'JUI', 'Juist', 'GERMANY', 'DE', '1', '53.681572', '7.055731', 1, 'true', 0),
('JUJ', 'El Cadillal Airport', 'JUJ', 'Jujuy', 'ARGENTINA', 'AR', '-3', '-24.392778', '-65.097778', 1, 'true', 0),
('JUL', 'Juliaca Arpt', 'JUL', 'Juliaca', 'PERU', 'PE', '-5', '-15.467103', '-70.158169', 1, 'true', 0),
('JUO', 'Jurado Arpt', 'JUO', 'Jurado', 'COLOMBIA', 'CO', '-100', '0', '0', 1, 'true', 0),
('JUZ', 'Juzhou Arpt', 'JUZ', 'Juzhou', 'CHINA', 'CN', '8', '28.9658', '118.899', 1, 'true', 0),
('JVL', 'Rock County Arpt', 'JVL', 'Beloit', 'UNITED STATES', 'US', '-6', '42.62025', '-89.041556', 1, 'true', 0),
('JWN', 'Zanjan Arpt', 'JWN', 'Zanjan', 'IRAN', 'IR', '-100', '36.7747', '48.3592', 1, 'true', 0),
('JXN', 'Jackson Reynolds Municipal', 'JXN', 'Jackson', 'UNITED STATES', 'US', '-100', '42.2598', '-84.4594', 1, 'true', 0),
('JYV', 'Jyvaskyla Arpt', 'JYV', 'Jyvaskyla', 'FINLAND', 'FI', '2', '62.399453', '25.678253', 1, 'true', 0),
('JZH', 'Jiu Zhai Huang Long Arpt', 'JZH', 'Songpan', 'CHINA', 'CN', '8', '32.857', '103.683', 1, 'true', 0),
('KAB', 'Kariba Arpt', 'KAB', 'Kariba Dam', 'ZIMBABWE', 'ZW', '2', '-16.519761', '28.884981', 1, 'true', 0),
('KAE', 'Kake Arpt', 'KAE', 'Kake', 'UNITED STATES', 'US', '-9', '56.973056', '-133.945556', 1, 'true', 0),
('KAJ', 'Kajaani Airport', 'KAJ', 'Kajaani', 'FINLAND', 'FI', '2', '64.285472', '27.692414', 1, 'true', 0),
('KAN', 'Aminu Kano Intl Arpt', 'KAN', 'Kano', 'NIGERIA', 'NG', '1', '12.047589', '8.524622', 1, 'true', 0),
('KAO', 'Kuusamo', 'KAO', 'Kuusamo', 'FINLAND', 'FI', '2', '65.987575', '29.239381', 1, 'true', 0),
('KAT', 'Kaitaia Arpt', 'KAT', 'Kaitaia', 'NEW ZEALAND', 'NZ', '12', '-35.07', '173.285278', 1, 'true', 0),
('KBJ', 'Kings Canyon Arpt', 'KBJ', 'Kings Canyon', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('KBL', 'Khwaja Rawash Arpt', 'KBL', 'Kabul', 'AFGHANISTAN', 'AF', '5', '34.565853', '69.212328', 1, 'true', 0),
('KBR', 'Pengkalan Chepa', 'KBR', 'Kota Bharu', 'MALAYSIA', 'MY', '8', '6.16685', '102.293014', 1, 'true', 0),
('KBV', 'Krabi Arpt', 'KBV', 'Krabi', 'THAILAND', 'TH', '7', '8.095969', '98.988764', 1, 'true', 0),
('KBZ', 'Kaikoura Arpt', 'KBZ', 'Kaikoura', 'NEW ZEALAND', 'NZ', '12', '-42.416668', '173.68333', 1, 'true', 0),
('KCE', 'Collinsville Arpt', 'KCE', 'Collinsville', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('KCH', 'Kuching Airport', 'KCH', 'Kuching', 'MALAYSIA', 'MY', '8', '1.484697', '110.346933', 1, 'true', 0),
('OJC', 'Johnson Executive Arpt', 'KCK', 'Kansas City', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('KCK', 'Fairfax Municipal Arpt', 'KCK', 'Kansas City', 'UNITED STATES', 'US', '-100', '0', '0', 2, 'true', 0),
('KCM', 'Kahramanmaras aRPT', 'KCM', 'Kahramanmaras', 'TURKEY', 'TR', '2', '37.539', '36.9534', 1, 'true', 0),
('KCO', 'Kocaeli', 'KCO', 'Kocaeli', 'TURKEY', 'TR', '2', '0', '0', 1, 'true', 0),
('KCP', 'Kamenets Podolski Arpt', 'KCP', 'Kamenets Podolski', 'UKRAINE', 'UA', '-100', '0', '0', 1, 'true', 0),
('KCZ', 'Kochi Airport', 'KCZ', 'Kochi', 'JAPAN', 'JP', '9', '33.546111', '133.669444', 1, 'true', 0),
('KDH', 'Kandahar Airport', 'KDH', 'Kandahar Airport', 'AFGHANISTAN', 'AF', '5', '31.505756', '65.847822', 1, 'true', 0),
('KEJ', 'Kemerovo Arpt', 'KEJ', 'Kemerovo', 'RUSSIA', 'RU', '8', '55.270094', '86.107208', 1, 'true', 0),
('KEL', 'Holtenau Arpt', 'KEL', 'Kiel', 'GERMANY', 'DE', '1', '54.3795', '10.145167', 1, 'true', 0),
('KEM', 'Kemi Tornio Arpt', 'KEM', 'Kemi', 'FINLAND', 'FI', '2', '65.781889', '24.5991', 1, 'true', 0),
('KER', 'Kerman Arpt', 'KER', 'Kerman', 'IRAN', 'IR', '4', '30.274444', '56.951111', 1, 'true', 0),
('KFS', 'Kastamonu Arpt', 'KFS', 'Kastamonu', 'TURKEY', 'TR', '3', '41.305557', '33.79111', 1, 'true', 0),
('KGC', 'Kingscote Arpt', 'KGC', 'Kingscote', 'AUSTRALIA', 'AU', '9', '-35.713889', '137.521389', 1, 'true', 0),
('KGD', 'Kaliningrad Arpt', 'KGD', 'Kaliningrad', 'RUSSIA', 'RU', '3', '54.89005', '20.592633', 1, 'true', 0),
('KGF', 'Karaganda Arpt', 'KGF', 'Karaganda', 'KAZAKHSTAN', 'KZ', '5', '49.670833', '73.334444', 1, 'true', 0),
('KGI', 'Kalgoorlie Arpt', 'KGI', 'Kalgoorlie', 'AUSTRALIA', 'AU', '8', '-30.789444', '121.461667', 1, 'true', 0),
('KGL', 'Kigali Intl Arpt', 'KGL', 'Kigali', 'RWANDA', 'RW', '2', '-1.968628', '30.13945', 1, 'true', 0),
('KGP', 'Kogalym Airport', 'KGP', 'Kogalym Airport', 'RUSSIA', 'RU', '6', '62.18', '74.53', 1, 'true', 0),
('KGS', 'Kos Arpt', 'KGS', 'Kos Gr', 'GREECE', 'GR', '2', '36.793335', '27.091667', 1, 'true', 0),
('KHD', 'Khorramabad Arpt', 'KHD', 'Khorramabad', 'IRAN', 'IR', '3', '33.435378', '48.282889', 1, 'true', 0),
('KHG', 'Kashi Arpt', 'KHG', 'Kashi', 'CHINA', 'CN', '8', '39.542922', '76.019956', 1, 'true', 0),
('KHH', 'Kaohsiung Intl', 'KHH', 'Kaohsiung', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '22.577094', '120.350006', 1, 'true', 0),
('KHI', 'Quaid E Azam International', 'KHI', 'Karachi', 'PAKISTAN', 'PK', '5', '24.906547', '67.160797', 1, 'true', 0),
('KHN', 'Nanchang Arpt', 'KHN', 'Nanchang', 'CHINA', 'CN', '8', '28.865', '115.9', 1, 'true', 0),
('KHV', 'Novyy Arpt', 'KHV', 'Khabarovsk', 'RUSSIA', 'RU', '11', '48.528044', '135.188361', 1, 'true', 0),
('KIC', 'Mesa Del Rey Arpt', 'KIC', 'King City', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('XYU', 'Solvesborg Rail Station', 'KID', 'Kristianstad', 'SWEDEN', 'SE', '-100', '0', '0', 2, '', 0),
('KID', 'Kristianstad Arpt', 'KID', 'Kristianstad', 'SWEDEN', 'SE', '1', '55.921686', '14.085536', 2, 'true', 0),
('KIH', 'Kish Island Arpt', 'KIH', 'Kish Island', 'IRAN', 'IR', '4', '26.526156', '53.980211', 1, 'true', 0),
('KIJ', 'Niigata Arpt', 'KIJ', 'Niigata', 'JAPAN', 'JP', '9', '37.5711', '139.0646', 1, 'true', 0),
('KIM', 'Kimberley Arpt', 'KIM', 'Kimberley', 'SOUTH AFRICA', 'ZA', '2', '-28.802834', '24.765167', 1, 'true', 0),
('KIN', 'Norman Manly Arpt', 'KIN', 'Kingston', 'JAMAICA', 'JM', '-5', '17.935667', '-76.7875', 2, 'true', 0),
('KTP', 'Tinson Arpt', 'KIN', 'Kingston', 'JAMAICA', 'JM', '-5', '17.988558', '-76.823761', 2, '', 0),
('KIR', 'Kerry County Arpt', 'KIR', 'Kerry County', 'IRELAND', 'IE', '0', '52.180878', '-9.523783', 1, 'true', 0),
('KIS', 'Kisumu Arpt', 'KIS', 'Kisumu', 'KENYA', 'KE', '3', '-0.086139', '34.728892', 1, 'true', 0),
('KIT', 'Kithira Arpt', 'KIT', 'Kithira', 'GREECE', 'GR', '2', '36.274258', '23.016978', 1, 'true', 0),
('KIV', 'Chisinau Arpt', 'KIV', 'Chisinau', 'MOLDOVA, REPUBLIC OF', 'MD', '2', '46.927744', '28.930978', 1, 'true', 0),
('KJA', 'Krasnojarsk Arpt', 'KJA', 'Krasnoyarsk', 'RUSSIA', 'RU', '8', '56.18', '92.475', 1, 'true', 0),
('KJK', 'Kortrijk Arpt', 'KJK', 'Kortrijk', 'BELGIUM', 'BE', '-100', '50.8172', '3.2047', 1, 'true', 0),
('KKC', 'Khon Kaen Arpt', 'KKC', 'Khon Kaen', 'THAILAND', 'TH', '7', '16.466628', '102.783661', 1, 'true', 0),
('KKE', 'Kerikeri Arpt', 'KKE', 'Kerikeri', 'NEW ZEALAND', 'NZ', '12', '-35.262779', '173.911944', 1, 'true', 0),
('KKJ', 'Kokura Arpt', 'KKJ', 'Kita Kyushu', 'JAPAN', 'JP', '9', '33.845942', '131.034689', 1, 'true', 0),
('KKN', 'Hoeybuktmoen Arpt', 'KKN', 'Kirkenes', 'NORWAY', 'NO', '1', '69.725781', '29.891295', 1, 'true', 0),
('KKT', 'Kentland Arpt', 'KKT', 'Kentland', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('KLD', 'Migalovo Arpt', 'KLD', 'Tver', 'RUSSIA', 'RU', '4', '56.824736', '35.757678', 1, 'true', 0),
('KLF', 'Kaluga Grabtsevo AirportINA', 'KLF', 'Kaluga Grabtsevo AirportINA', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('KLG', 'Kalskag Municipal Arpt', 'KLG', 'Kalskag', 'UNITED STATES', 'US', '-9', '61.5363', '-160.341', 1, 'true', 0),
('KLH', 'Kolhapur Arpt', 'KLH', 'Kolhapur', 'INDIA', 'IN', '5', '16.664658', '74.289353', 1, 'true', 0),
('KLJ', 'Klaipeda Arpt', 'KLJ', 'Klaipeda', 'LITHUANIA', 'LT', '-100', '0', '0', 1, 'true', 0),
('KLO', 'Kalibo Arpt', 'KLO', 'Kalibo', 'PHILIPPINES', 'PH', '8', '11.679431', '122.376294', 1, 'true', 0),
('KLR', 'Kalmar Arpt', 'KLR', 'Kalmar', 'SWEDEN', 'SE', '1', '56.685531', '16.287578', 1, 'true', 0),
('KLS', 'Kelso Longview Regional Arpt', 'KLS', 'Kelso', 'UNITED STATES', 'US', '-8', '46.118', '-122.898389', 1, 'true', 0),
('KLT', 'Kaiserslautern Rail Station', 'KLT', 'Kaiserslautern', 'GERMANY', 'DE', '-100', '0', '0', 1, 'true', 0),
('KLU', 'Klagenfurt Arpt', 'KLU', 'Klagenfurt', 'AUSTRIA', 'AT', '1', '46.642514', '14.337739', 1, 'true', 0),
('KLV', 'Karlovy Vary Arpt', 'KLV', 'Karlovy Vary', 'CZECH REPUBLIC', 'CZ', '1', '50.202978', '12.914983', 1, 'true', 0),
('KLW', 'Klawock Arpt', 'KLW', 'Klawock', 'UNITED STATES', 'US', '-9', '55.579167', '-133.076111', 1, 'true', 0),
('KLX', 'Kalamata Airport', 'KLX', 'Kalamata', 'GREECE', 'GR', '2', '37.068319', '22.025525', 1, 'true', 0),
('KMG', 'Kunming Airport', 'KMG', 'Kunming', 'CHINA', 'CN', '8', '24.992364', '102.743536', 1, 'true', 0),
('KMH', 'Kuruman Arpt', 'KMH', 'Kuruman', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 1, 'true', 0),
('KMI', 'Miyazaki Arpt', 'KMI', 'Miyazaki', 'JAPAN', 'JP', '9', '31.877222', '131.448611', 1, 'true', 0),
('KMJ', 'Kumamoto Airport', 'KMJ', 'Kumamoto', 'JAPAN', 'JP', '9', '32.837319', '130.85505', 1, 'true', 0),
('KMQ', 'Komatsu Airport', 'KMQ', 'Komatsu', 'JAPAN', 'JP', '9', '36.394611', '136.406544', 1, 'true', 0),
('KMS', 'Sunyani', 'KMS', 'Kumasi', 'GHANA', 'GH', '0', '6.714564', '-1.590818', 1, 'true', 0),
('KMW', 'Kostroma Arpt', 'KMW', 'Kostroma', 'RUSSIA', 'RU', '4', '57.7961', '41.0204', 1, 'true', 0),
('KMX', 'Khamis Mushait Arpt', 'KMX', 'Khamis Mushait', 'SAUDI ARABIA', 'SA', '-100', '18.3011', '42.8009', 1, 'true', 0),
('KNA', 'Vina Del Mar Arpt', 'KNA', 'Vina Del Mar', 'CHILE', 'CL', '-100', '-32.9497', '-71.4786', 1, 'true', 0),
('KNF', 'Marham Raf', 'KNF', 'Kings Lynn', 'UNITED KINGDOM', 'GB', '0', '52.648353', '0.550692', 1, 'true', 0),
('KNH', 'Shang Yi Arpt', 'KNH', 'Kinmen', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '24.427892', '118.359197', 1, 'true', 0),
('KNS', 'King Island Arpt', 'KNS', 'King Island', 'AUSTRALIA', 'AU', '10', '-39.8775', '143.878', 1, 'true', 0),
('KNT', 'Kennett Municipal Arpt', 'KNT', 'Kennett', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('KNU', 'Chakeri Arpt', 'KNU', 'Kanpur', 'INDIA', 'IN', '5', '26.441444', '80.364864', 1, 'true', 0),
('KNX', 'Kununurra Airport', 'KNX', 'Kununurra', 'AUSTRALIA', 'AU', '8', '-15.778056', '128.7075', 1, 'true', 0),
('KOA', 'Keahole Arpt', 'KOA', 'Kona', 'UNITED STATES', 'US', '-10', '19.738767', '-156.045631', 1, 'true', 0),
('KOB', 'Koutaba Arpt', 'KOB', 'Koutaba', 'CAMEROON', 'CM', '-100', '0', '0', 1, 'true', 0),
('KOC', 'Koumac Arpt', 'KOC', 'Koumac', 'NEW CALEDONIA', 'NC', '11', '-20.546314', '164.255625', 1, 'true', 0),
('KOI', 'Kirkwall Arpt', 'KOI', 'Kirkwall', 'UNITED KINGDOM', 'GB', '0', '58.957778', '-2.905', 1, 'true', 0),
('KOJ', 'Kagoshima Arpt', 'KOJ', 'Kagoshima', 'JAPAN', 'JP', '9', '31.803397', '130.719408', 1, 'true', 0),
('KOK', 'Kokkola Arpt', 'KOK', 'Kokkola', 'FINLAND', 'FI', '2', '63.721172', '23.143131', 1, 'true', 0),
('KOP', 'Nakhon Phanom Arpt', 'KOP', 'Nakhon Phanom', 'THAILAND', 'TH', '7', '17.383794', '104.643022', 1, 'true', 0),
('KOR', 'Kokoro Arpt', 'KOR', 'Kokoro', 'PAPUA NEW GUINEA', 'PG', '-100', '0', '0', 1, 'true', 0),
('KOS', 'Sihanoukville Arpt', 'KOS', 'Sihanoukville', 'CAMBODIA', 'KH', '7', '10.579686', '103.636828', 1, 'true', 0),
('KOV', 'KOKSHETAU', 'KOV', 'KOKSHETAU', 'KAZAKHSTAN', 'KZ', '6', '53.3291', '69.5946', 1, 'true', 0),
('KOW', 'Ganzhou Arpt', 'KOW', 'Ganzhou', 'CHINA', 'CN', '8', '25.8258', '114.912', 1, 'true', 0),
('KPD', 'King Of Prussia Arpt', 'KPD', 'King Of Prussia', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('KPO', 'Pohang Arpt', 'KPO', 'Pohang', 'KOREA, REPUBLIC OF', 'KR', '9', '35.987858', '129.420486', 1, 'true', 0),
('KPS', 'Kempsey Arpt', 'KPS', 'Kempsey', 'AUSTRALIA', 'AU', '-100', '-31.06', '152.7897', 1, 'true', 0),
('KRB', 'Karumba Arpt', 'KRB', 'Karumba', 'AUSTRALIA', 'AU', '10', '-17.4567', '140.83', 1, 'true', 0),
('KRF', 'Kramfors Arpt', 'KRF', 'Kramfors', 'SWEDEN', 'SE', '1', '63.048597', '17.768856', 1, 'true', 0),
('KRK', 'John Paul Ii International', 'KRK', 'Krakow', 'POLAND', 'PL', '1', '50.077731', '19.784836', 1, 'true', 0),
('KRL', 'Korla Arpt', 'KRL', 'Korla', 'CHINA', 'CN', '8', '41.6978', '86.1289', 1, 'true', 0),
('KRN', 'Kiruna Airport', 'KRN', 'Kiruna', 'SWEDEN', 'SE', '1', '67.821986', '20.336764', 1, 'true', 0),
('KRO', 'Kurgan Airport', 'KRO', 'Kurgan Airport', 'RUSSIA', 'RU', '6', '55.4753', '65.4156', 1, 'true', 0),
('KRP', 'Karup Arpt', 'KRP', 'Karup', 'DENMARK', 'DK', '1', '56.297458', '9.124628', 1, 'true', 0),
('KRR', 'Krasnodar Arpt', 'KRR', 'Krasnodar', 'RUSSIA', 'RU', '4', '45.034689', '39.170539', 1, 'true', 0),
('XGD', 'Arendal Rail Station', 'KRS', 'Kristiansand', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('XKR', 'Kristiansand Rail Station', 'KRS', 'Kristiansand', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('KRS', 'Kjevik Airport', 'KRS', 'Kristiansand', 'NORWAY', 'NO', '1', '58.204214', '8.085369', 3, 'true', 0),
('KRT', 'Civil Arpt', 'KRT', 'Khartoum', 'SUDAN', 'SD', '2', '15.589497', '32.553161', 1, 'true', 0),
('KRW', 'Turkmanbashi Arpt', 'KRW', 'Turkmanbashi', 'TURKMENISTAN', 'TM', '5', '40.063333', '53.007222', 1, 'true', 0),
('KRY', 'Karamay Arpt', 'KRY', 'Karamay', 'CHINA', 'CN', '8', '45.617', '84.883', 1, 'true', 0),
('KSC', 'Barca Arpt', 'KSC', 'Kosice', 'SLOVAKIA', 'SK', '1', '48.663055', '21.241112', 1, 'true', 0),
('KSD', 'Karlstad Arpt', 'KSD', 'Karlstad', 'SWEDEN', 'SE', '1', '59.4447', '13.3374', 1, 'true', 0),
('KSF', 'Kassel Calden Arpt', 'KSF', 'Kassel', 'GERMANY', 'DE', '1', '51.408394', '9.377631', 1, 'true', 0),
('KSH', 'Kermanshah Arpt', 'KSH', 'Kermanshah', 'IRAN', 'IR', '4', '34.345853', '47.158128', 1, 'true', 0),
('KSN', 'Kostanay Arpt', 'KSN', 'Kostanay', 'KAZAKHSTAN', 'KZ', '6', '53.206944', '63.550278', 1, 'true', 0),
('KSO', 'Aristoteles Arpt', 'KSO', 'Kastoria', 'GREECE', 'GR', '2', '40.446294', '21.282186', 1, 'true', 0),
('KSQ', 'Karshi Arpt', 'KSQ', 'Karshi Arpt', 'UZBEKISTAN', 'UZ', '5', '38.8336', '65.9215', 1, 'true', 0),
('KSR', 'SANDY RIVER', 'KSR', 'SANDY RIVER', 'UNITED STATES', 'US', '1', '0', '0', 1, 'true', 0),
('XGI', 'Andalsnes Rail Station', 'KSU', 'Kristiansund', 'NORWAY', 'NO', '-100', '0', '0', 2, '', 0),
('KSU', 'Kvernberget Arpt', 'KSU', 'Kristiansund', 'NORWAY', 'NO', '1', '63.111781', '7.824522', 2, 'true', 0),
('KSW', 'Kiryat Shmona Arpt', 'KSW', 'Kiryat Shmona', 'ISRAEL', 'IL', '-100', '0', '0', 1, 'true', 0),
('KSY', 'Kars Arpt', 'KSY', 'Kars', 'TURKEY', 'TR', '2', '40.562222', '43.115002', 1, 'true', 0);
INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('KSZ', 'Kotlas Airport', 'KSZ', 'Kotlas Airport', 'RUSSIA', 'RU', '4', '61.2358', '46.6975', 1, 'true', 0),
('KTA', 'Karratha Airport', 'KTA', 'Karratha', 'AUSTRALIA', 'AU', '8', '-20.712222', '116.773333', 1, 'true', 0),
('KTE', 'Kertech Arpt', 'KTE', 'Kerteh', 'MALAYSIA', 'MY', '8', '4.537222', '103.426756', 1, 'true', 0),
('KTM', 'Tribuvan Arpt', 'KTM', 'Kathmandu', 'NEPAL', 'NP', '5', '27.696583', '85.3591', 1, 'true', 0),
('KTN', 'Ketchikan Intl Arpt', 'KTN', 'Ketchikan', 'UNITED STATES', 'US', '-9', '55.355556', '-131.71375', 1, 'true', 0),
('KTR', 'Tindal Airport', 'KTR', 'Katherine', 'AUSTRALIA', 'AU', '9', '-14.5211', '132.378', 1, 'true', 0),
('KTS', 'Brevig Mission Arpt', 'KTS', 'Brevig Mission', 'UNITED STATES', 'US', '-9', '65.331389', '-166.465833', 1, 'true', 0),
('KTT', 'Kittila Arpt', 'KTT', 'Kittila', 'FINLAND', 'FI', '2', '67.701022', '24.84685', 1, 'true', 0),
('KTW', 'Pyrzowice', 'KTW', 'Katowice', 'POLAND', 'PL', '1', '50.474253', '19.080019', 1, 'true', 0),
('KUA', 'Kuantan Arpt', 'KUA', 'Kuantan', 'MALAYSIA', 'MY', '8', '3.775389', '103.209056', 1, 'true', 0),
('KUB', 'Kuala Belait Arpt', 'KUB', 'Kuala Belait', 'BRUNEI DARUSSALAM', 'BN', '-100', '0', '0', 1, 'true', 0),
('KUD', 'Kudat Arpt', 'KUD', 'Kudat', 'MALAYSIA', 'MY', '8', '6.9225', '116.836', 1, 'true', 0),
('KUF', 'Samara Arpt', 'KUF', 'Samara', 'RUSSIA', 'RU', '4', '53.5', '50.15', 1, 'true', 0),
('KUH', 'Kushiro Arpt', 'KUH', 'Kushiro', 'JAPAN', 'JP', '9', '43.041', '144.193', 1, 'true', 0),
('KUL', 'Kuala Lumpur International Arpt', 'KUL', 'Kuala Lumpur', 'MALAYSIA', 'MY', '8', '2.745578', '101.709917', 2, 'true', 0),
('SZB', 'Sultan Abdul Aziz Shah Arpt', 'KUL', 'Kuala Lumpur', 'MALAYSIA', 'MY', '8', '3.130583', '101.549333', 2, '', 0),
('KUN', 'Kaunas Arpt', 'KUN', 'Kaunas', 'LITHUANIA', 'LT', '2', '54.963919', '24.084778', 1, 'true', 0),
('KUO', 'Kuopio Arpt', 'KUO', 'Kuopio', 'FINLAND', 'FI', '2', '63.00715', '27.797756', 1, 'true', 0),
('KUS', 'Kulusuk Arpt', 'KUS', 'Kulusuk', 'GREENLAND', 'GL', '-2', '65.566667', '-37.116667', 1, 'true', 0),
('KUT', 'Kutaisi Arpt', 'KUT', 'Kutaisi Arpt', 'GEORGIA', 'GE', '4', '42.25', '42.7', 1, 'true', 0),
('KUU', 'Bhuntar Arpt', 'KUU', 'Kulu', 'INDIA', 'IN', '5', '31.876706', '77.154367', 1, 'true', 0),
('KUV', 'Kunsan Arpt', 'KUV', 'Kunsan', 'KOREA, REPUBLIC OF', 'KR', '9', '35.903756', '126.615906', 1, 'true', 0),
('KVA', 'Megas Alexandros', 'KVA', 'Kavalla', 'GREECE', 'GR', '2', '40.913306', '24.619223', 1, 'true', 0),
('KVB', 'Skovde Arpt', 'KVB', 'Skovde', 'SWEDEN', 'SE', '1', '58.4564', '13.972672', 1, 'true', 0),
('KVD', 'Ganja', 'KVD', 'Ganja', 'AZERBAIJAN', 'AZ', '4', '40.7377', '46.3176', 1, 'true', 0),
('KVG', 'Kavieng Arpt', 'KVG', 'Kavieng', 'PAPUA NEW GUINEA', 'PG', '10', '-2.5794', '150.808', 1, 'true', 0),
('KVK', 'Kirovsk-Apatity Airport', 'KVK', 'Kirovsk-Apatity Airport', 'RUSSIA', 'RU', '4', '67.4633', '33.5883', 1, 'true', 0),
('KVX', 'Pobedilovo Airport', 'KVX', 'Kirov', 'RUSSIA', 'RU', '4', '58.5033', '49.3483', 1, 'true', 0),
('KWA', 'Kwajalein Arpt', 'KWA', 'Kwajalein', 'MARSHALL ISLANDS', 'MH', '12', '8.720122', '167.731661', 1, 'true', 0),
('KWE', 'Guiyang Arpt', 'KWE', 'Guiyang', 'CHINA', 'CN', '8', '26.538522', '106.800703', 1, 'true', 0),
('KWG', 'Krivoy Rog Arpt', 'KWG', 'Krivoy Rog', 'UKRAINE', 'UA', '2', '48.0433', '33.21', 1, 'true', 0),
('KWI', 'Kuwait Intl', 'KWI', 'Kuwait', 'KUWAIT', 'KW', '3', '29.226567', '47.968928', 1, 'true', 0),
('KWJ', 'Kwangju Arpt', 'KWJ', 'Kwangju', 'KOREA, REPUBLIC OF', 'KR', '9', '35.126389', '126.808889', 1, 'true', 0),
('KWL', 'Guilin Airport', 'KWL', 'Guilin', 'CHINA', 'CN', '8', '25.218106', '110.039197', 1, 'true', 0),
('KXK', 'Komsomolsk Na Amure Arpt', 'KXK', 'Komsomolsk Na Amure', 'RUSSIA', 'RU', '11', '50.4094', '136.934', 1, 'true', 0),
('KYA', 'Konya Arpt', 'KYA', 'Konya', 'TURKEY', 'TR', '2', '37.979', '32.561861', 1, 'true', 0),
('KYL', 'Port Largo Arpt', 'KYL', 'Key Largo', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('KYN', 'Milton Keynes Rail Station', 'KYN', 'Milton Keynes', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('KYS', 'KAYES', 'KYS', 'KAYES', 'MALI', 'ML', '0', '14.481233', '-11.404397', 1, 'true', 0),
('KYZ', 'Kyzyl Airport', 'KYZ', 'Kyzyl Airport', 'RUSSIA', 'RU', '8', '51.6694', '94.4006', 1, 'true', 0),
('KZB', 'Zachar Bay Sea Plane Base', 'KZB', 'Zachar Bay', 'UNITED STATES', 'US', '-9', '57.55', '-153.75', 1, 'true', 0),
('KZI', 'Philippos Arpt', 'KZI', 'Kozani', 'GREECE', 'GR', '2', '40.28611', '21.840834', 1, 'true', 0),
('KZN', 'Kazan Arpt', 'KZN', 'Kazan', 'RUSSIA', 'RU', '4', '55.606186', '49.278728', 1, 'true', 0),
('KZO', 'Kzyl Orda Arpt', 'KZO', 'Kzyl Orda', 'KAZAKHSTAN', 'KZ', '6', '44.709', '65.591', 1, 'true', 0),
('KZR', 'Zafer Arpt', 'KZR', 'Kütahya Zafer Arpt', 'TURKEY', 'TR', '2', '39.4', '30', 1, 'true', 0),
('KZS', 'Kastelorizo Arpt', 'KZS', 'Kastelorizo', 'GREECE', 'GR', '2', '36.127777', '29.566656', 1, 'true', 0),
('LAA', 'Lamar Arpt', 'LAA', 'Lamar', 'UNITED STATES', 'US', '-7', '38.069694', '-102.6885', 1, 'true', 0),
('LAD', 'Four De Fevereiro Arpt', 'LAD', 'Luanda', 'ANGOLA', 'AO', '1', '-8.858375', '13.231178', 1, 'true', 0),
('LAE', 'Nadzab Arpt', 'LAE', 'Lae Pg', 'PAPUA NEW GUINEA', 'PG', '10', '-6.569828', '146.726242', 1, 'true', 0),
('LAF', 'Lafayette Arpt', 'LAF', 'Lafayette', 'UNITED STATES', 'US', '-5', '40.412306', '-86.936889', 1, 'true', 0),
('LAG', 'La Guaira Arpt', 'LAG', 'La Guaira Arpt', 'VENEZUELA', 'VE', '-4', '10.6', '-66.933334', 1, 'true', 0),
('LAI', 'Servel Airport', 'LAI', 'Lannion', 'FRANCE', 'FR', '1', '48.754378', '-3.471656', 1, 'true', 0),
('LAJ', 'Lages Arpt', 'LAJ', 'Lajes', 'BRAZIL', 'BR', '-100', '-27.7828', '-50.2806', 1, 'true', 0),
('LAL', 'Lakeland Arpt', 'LAL', 'Lakeland', 'UNITED STATES', 'US', '-4', '27.988917', '-82.018556', 1, 'true', 0),
('LAM', 'Los Alamos Municipal', 'LAM', 'Los Alamos', 'UNITED STATES', 'US', '-6', '35.879802', '-106.269415', 1, 'true', 0),
('LAN', 'Lansing Arpt', 'LAN', 'Lansing', 'UNITED STATES', 'US', '-5', '42.7787', '-84.587357', 1, 'true', 0),
('LAO', 'Laoag Arpt', 'LAO', 'Laoag', 'PHILIPPINES', 'PH', '8', '18.178092', '120.531522', 1, 'true', 0),
('LAP', 'Aeropuerto Gen Marquez De Leon', 'LAP', 'La Paz', 'MEXICO', 'MX', '-7', '24.072694', '-110.362475', 1, 'true', 0),
('SAA', 'Lar Shively Arpt', 'LAR', 'Laramie', 'UNITED STATES', 'US', '-6', '41.444859', '-106.823526', 2, '', 0),
('LAR', 'General Brees Fld', 'LAR', 'Laramie', 'UNITED STATES', 'US', '-7', '41.3121', '-105.675', 2, 'true', 0),
('HSH', 'Henderson Sky Harbor Arpt', 'LAS', 'Las Vegas', 'UNITED STATES', 'US', '-8', '35.972778', '-115.134444', 4, '', 0),
('VGT', 'Las Vegas North Air Terminal', 'LAS', 'Las Vegas', 'UNITED STATES', 'US', '-7', '36.210694', '-115.194444', 4, '', 0),
('LAS', 'McCarran Intl', 'LAS', 'Las Vegas', 'UNITED STATES', 'US', '-8', '36.080056', '-115.15225', 4, 'true', 0),
('BLD', 'Boulder City Municipal Arpt', 'LAS', 'Las Vegas', 'UNITED STATES', 'US', '-8', '35.5651', '-114.514', 4, '', 0),
('LAU', 'Lamu Arpt', 'LAU', 'Lamu', 'KENYA', 'KE', '3', '-2.252417', '40.913097', 1, 'true', 0),
('LAW', 'Lawton Municipal', 'LAW', 'Lawton', 'UNITED STATES', 'US', '-6', '34.567714', '-98.416637', 1, 'true', 0),
('VNY', 'Van Nuys Arpt', 'LAX', 'Los Angeles', 'UNITED STATES', 'US', '-8', '34.209811', '-118.489972', 3, '', 0),
('SMO', 'Santa Monica Municipal Arpt', 'LAX', 'Los Angeles', 'UNITED STATES', 'US', '-7', '34.015833', '-118.451306', 3, '', 0),
('LAX', 'Los Angeles Intl Arpt', 'LAX', 'Los Angeles', 'UNITED STATES', 'US', '-8', '33.942536', '-118.408075', 3, 'true', 0),
('LAY', 'Ladysmith Arpt', 'LAY', 'Ladysmith', 'SOUTH AFRICA', 'ZA', '2', '-28.581667', '29.749722', 1, 'true', 0),
('LBA', 'Leeds Bradford Arpt', 'LBA', 'Leeds', 'UNITED KINGDOM', 'GB', '0', '53.865897', '-1.660569', 1, 'true', 0),
('LBB', 'Lubbock Preston Smith Intl Arpt', 'LBB', 'Lubbock', 'UNITED STATES', 'US', '-6', '33.663639', '-101.822778', 1, 'true', 0),
('LBD', 'Khudzhand Arpt', 'LBD', 'LBD', 'TAJIKISTAN', 'TJ', '5', '40.2154', '69.6947', 1, 'true', 0),
('LBE', 'Westmorland County', 'LBE', 'Latrobe', 'UNITED STATES', 'US', '-5', '40.2759', '-79.4048', 1, 'true', 0),
('LBF', 'Lee Bird Field', 'LBF', 'North Platte', 'UNITED STATES', 'US', '-6', '41.1262', '-100.684', 1, 'true', 0),
('LBI', 'Le Sequestre Arpt', 'LBI', 'Albi', 'FRANCE', 'FR', '1', '43.913887', '2.113056', 1, 'true', 0),
('LBL', 'Liberal Municipal', 'LBL', 'Liberal', 'UNITED STATES', 'US', '-6', '37.044222', '-100.95986', 1, 'true', 0),
('LBP', 'Long Banga Airfield Arpt', 'LBP', 'Long Banga', 'MALAYSIA', 'MY', '8', '3.18495', '115.454', 1, 'true', 0),
('LBS', 'Labasa Arpt', 'LBS', 'Labasa', 'FIJI', 'FJ', '12', '-16.466749', '179.33986', 1, 'true', 0),
('LBT', 'Lumberton Arpt', 'LBT', 'Lumberton', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('LBU', 'Labuan Arpt', 'LBU', 'Labuan', 'MALAYSIA', 'MY', '8', '5.300683', '115.250181', 1, 'true', 0),
('LBV', 'Libreville Arpt', 'LBV', 'Libreville', 'GABON', 'GA', '1', '0.4586', '9.412283', 1, 'true', 0),
('LBY', 'Montoir Arpt', 'LBY', 'La Baule', 'FRANCE', 'FR', '-100', '0', '0', 1, 'true', 0),
('LCA', 'Larnaca Intl', 'LCA', 'Larnaca', 'CYPRUS', 'CY', '2', '34.875117', '33.62485', 1, 'true', 0),
('LCC', 'Galatina Arpt', 'LCC', 'Lecce', 'ITALY', 'IT', '1', '40.239228', '18.133325', 1, 'true', 0),
('LCE', 'Goloson Intl Arpt', 'LCE', 'La Ceiba', 'HONDURAS', 'HN', '-6', '15.742481', '-86.853036', 1, 'true', 0),
('LCF', 'Las Vegas Airport', 'LCF', 'Rio Dulce', 'GUATEMALA', 'GT', '-100', '0', '0', 1, 'true', 0),
('LCG', 'La Coruna Arpt', 'LCG', 'La Coruna', 'SPAIN', 'ES', '1', '43.302061', '-8.377256', 1, 'true', 0),
('LCH', 'Lake Charles Municipal', 'LCH', 'Lake Charles', 'UNITED STATES', 'US', '-6', '30.126112', '-93.223335', 1, 'true', 0),
('LCI', 'Laconia Municipal Arpt', 'LCI', 'Laconia', 'UNITED STATES', 'US', '-100', '43.5736', '-71.4189', 1, 'true', 0),
('LCJ', 'Lodz Lublinek Arpt', 'LCJ', 'Lodz', 'POLAND', 'PL', '1', '51.721881', '19.398133', 1, 'true', 0),
('LCV', 'Lucca Arpt', 'LCV', 'Lucca', 'ITALY', 'IT', '-100', '0', '0', 1, 'true', 0),
('LDB', 'Londrina Arpt', 'LDB', 'Londrina', 'BRAZIL', 'BR', '-3', '-23.333625', '-51.130072', 1, 'true', 0),
('LDE', 'Tarbes Intl Arpt', 'LDE', 'Lourdes', 'FRANCE', 'FR', '1', '43.178675', '-0.006439', 1, 'true', 0),
('LDG', 'Leshukonskoye Airport', 'LDG', 'Leshukonskoye Airport', 'RUSSIA', 'RU', '4', '64.895833', '45.722778', 1, 'true', 0),
('LDH', 'Lord Howe Island Arpt', 'LDH', 'Lord Howe Island', 'AUSTRALIA', 'AU', '10', '-31.5383', '159.077', 1, 'true', 0),
('LDJ', 'Linden Municipal', 'LDJ', 'Linden', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('LDK', 'Hovby Airport', 'LDK', 'Lidkoping', 'SWEDEN', 'SE', '1', '58.465522', '13.174414', 1, 'true', 0),
('LDU', 'Lahad Datu Arpt', 'LDU', 'Lahad Datu', 'MALAYSIA', 'MY', '8', '5.032247', '118.324036', 1, 'true', 0),
('LDX', 'Saint Laurent du Maroni Arpt', 'LDX', 'Saint Laurent du Maroni', 'FRENCH GUIANA', 'GF', '-4', '5.483056', '-54.034444', 1, 'true', 0),
('LDY', 'Eglinton Arpt', 'LDY', 'Londonderry', 'UNITED KINGDOM', 'GB', '0', '55.042778', '-7.161111', 1, 'true', 0),
('LEA', 'Learmonth Arpt', 'LEA', 'Learmonth', 'AUSTRALIA', 'AU', '8', '-22.235556', '114.088611', 1, 'true', 0),
('CNH', 'Claremont Municipal', 'LEB', 'Lebanon', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('LEB', 'Lebanon Regional', 'LEB', 'Lebanon', 'UNITED STATES', 'US', '-5', '43.6261', '-72.3042', 2, 'true', 0),
('LEC', 'Chapada Diamantina Arpt', 'LEC', 'Lencois', 'BRAZIL', 'BR', '-3', '-12.4823', '-41.277', 1, 'true', 0),
('LED', 'Pulkovo Airport', 'LED', 'St Petersburg', 'RUSSIA', 'RU', '4', '59.800292', '30.262503', 2, 'true', 0),
('RVH', 'Rzhevka Arpt', 'LED', 'St Petersburg', 'RUSSIA', 'RU', '-100', '0', '0', 2, '', 0),
('LEE', 'Leesburg Municipal Arpt', 'LEE', 'Leesburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('LEH', 'Octeville Arpt', 'LEH', 'Le Havre', 'FRANCE', 'FR', '1', '49.533889', '0.088056', 1, 'true', 0),
('LEI', 'Almeria Arpt', 'LEI', 'Almeria', 'SPAIN', 'ES', '1', '36.843936', '-2.370097', 1, 'true', 0),
('LEJ', 'Leipzig Arpt', 'LEJ', 'Leipzig', 'GERMANY', 'DE', '1', '51.432447', '12.241633', 1, 'true', 0),
('LEN', 'Leon Arpt', 'LEN', 'Leon', 'SPAIN', 'ES', '1', '42.589', '-5.655556', 1, 'true', 0),
('LEQ', 'St Just Arpt', 'LEQ', 'Lands End', 'UNITED KINGDOM', 'GB', '0', '50.1028', '-5.67056', 1, 'true', 0),
('LER', 'Leinster Arpt', 'LER', 'Leinster', 'AUSTRALIA', 'AU', '8', '-27.8433', '120.703', 1, 'true', 0),
('LES', 'Lesobeng Arpt', 'LES', 'Lesobeng', 'LESOTHO', 'LS', '2', '47.75', '10.601', 1, 'true', 0),
('LET', 'General A V Cobo Arpt', 'LET', 'Leticia', 'COLOMBIA', 'CO', '-5', '-4.193549', '-69.943163', 1, 'true', 0),
('LEW', 'Auburn Lewiston Arpt', 'LEW', 'Lewiston', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('LEX', 'Blue Grass Field', 'LEX', 'Lexington', 'UNITED STATES', 'US', '-5', '38.0365', '-84.605889', 1, 'true', 0),
('LEY', 'Lelystad Arpt', 'LEY', 'Lelystad', 'NETHERLANDS', 'NL', '1', '52.4603', '5.52722', 1, 'true', 0),
('LFK', 'Angelina Cty Arpt', 'LFK', 'Lufkin', 'UNITED STATES', 'US', '-6', '31.234014', '-94.75', 1, 'true', 0),
('LFT', 'Lafayette Municipal', 'LFT', 'Lafayette', 'UNITED STATES', 'US', '-6', '30.205278', '-91.987611', 1, 'true', 0),
('LFW', 'Lome Airport', 'LFW', 'Lome', 'TOGO', 'TG', '1', '6.165611', '1.254511', 1, 'true', 0),
('LGB', 'Long Beach Municipal', 'LGB', 'Long Beach', 'UNITED STATES', 'US', '-8', '33.817722', '-118.151611', 1, 'true', 0),
('LGC', 'Calloway Arpt', 'LGC', 'La Grange', 'UNITED STATES', 'US', '-4', '33.008861', '-85.072611', 1, 'true', 0),
('LGG', 'Bierset Airport', 'LGG', 'Liege', 'BELGIUM', 'BE', '1', '50.637417', '5.443222', 1, 'true', 0),
('LGI', 'Deadmans Cay Arpt', 'LGI', 'Deadmans Cay', 'BAHAMAS', 'BS', '-5', '23.179014', '-75.093597', 1, 'true', 0),
('LGK', 'Langkawi Arpt', 'LGK', 'Langkawi', 'MALAYSIA', 'MY', '8', '6.329728', '99.728667', 1, 'true', 0),
('LGL', 'Long Lellang Arpt', 'LGL', 'Long Lellang', 'MALAYSIA', 'MY', '8', '3.421', '115.154', 1, 'true', 0),
('LGP', 'Legaspi Arpt', 'LGP', 'Legaspi', 'PHILIPPINES', 'PH', '8', '13.157064', '123.746247', 1, 'true', 0),
('LGS', 'Malargue Arpt', 'LGS', 'Malargue', 'ARGENTINA', 'AR', '-3', '-35.493597', '-69.574267', 1, 'true', 0),
('LGU', 'Logan Arpt', 'LGU', 'Logan', 'UNITED STATES', 'US', '-7', '41.791', '-111.852', 1, 'true', 0),
('LHA', 'Lahr Arpt', 'LHA', 'Lahr', 'GERMANY', 'DE', '1', '48.3693', '7.82772', 1, 'true', 0),
('LHE', 'Lahore Arpt', 'LHE', 'Lahore', 'PAKISTAN', 'PK', '5', '31.521564', '74.403594', 1, 'true', 0),
('LHG', 'Lightning Ridge Arpt', 'LHG', 'Lightning Ridge', 'AUSTRALIA', 'AU', '10', '-29.4567', '147.984', 1, 'true', 0),
('LHW', 'Lanzhou Arpt', 'LHW', 'Lanzhou', 'CHINA', 'CN', '8', '36.117', '103.617', 1, 'true', 0),
('LIA', 'Lianping Arpt', 'LIA', 'Lianping', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('LIF', 'Lifou Arpt', 'LIF', 'Lifou', 'NEW CALEDONIA', 'NC', '11', '-20.7748', '167.239864', 1, 'true', 0),
('LIG', 'Bellegarde Arpt', 'LIG', 'Limoges', 'FRANCE', 'FR', '1', '45.862778', '1.179444', 1, 'true', 0),
('LIH', 'Lihue Municipal', 'LIH', 'Lihue', 'UNITED STATES', 'US', '-10', '21.975983', '-159.338958', 1, 'true', 0),
('XDB', 'Europe Railway Service', 'LIL', 'Lille', 'FRANCE', 'FR', '1', '50.563333', '3.08805', 3, '', 0),
('LIL', 'Lesquin Arpt', 'LIL', 'Lille', 'FRANCE', 'FR', '1', '50.561942', '3.089444', 3, 'true', 0),
('XFA', 'Lille Flanders Rail Service', 'LIL', 'Lille', 'FRANCE', 'FR', '-100', '50.6325', '3.0583', 3, '', 0),
('LIM', 'Jorge Chavez International Arpt', 'LIM', 'Lima', 'PERU', 'PE', '-5', '-12.021889', '-77.114319', 1, 'true', 0),
('LIO', 'Limon Arpt', 'LIO', 'Limon', 'COSTA RICA', 'CR', '-6', '9.957961', '-83.022006', 1, 'true', 0),
('LIR', 'Liberia Arpt', 'LIR', 'Liberia', 'COSTA RICA', 'CR', '-6', '10.593289', '-85.544408', 1, 'true', 0),
('LIS', 'Lisboa', 'LIS', 'Lisbon', 'PORTUGAL', 'PT', '0', '38.781311', '-9.135919', 1, 'true', 0),
('LIT', 'Little Rock Regional', 'LIT', 'Little Rock', 'UNITED STATES', 'US', '-6', '34.729444', '-92.224306', 1, 'true', 0),
('LJG', 'Lijiang Arpt', 'LJG', 'Lijiang City', 'CHINA', 'CN', '8', '26.883333', '100.23333', 1, 'true', 0),
('LJN', 'Lake Jackson Arpt', 'LJN', 'Lake Jackson', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('LJU', 'Brnik Airport', 'LJU', 'Ljubljana', 'SLOVENIA', 'SI', '1', '46.223686', '14.457611', 1, 'true', 0),
('LKG', 'Lokichoggio Arpt', 'LKG', 'Lokichoggio', 'KENYA', 'KE', '3', '4.204117', '34.348186', 1, 'true', 0),
('LKH', 'Long Akah Arpt', 'LKH', 'Long Akah', 'MALAYSIA', 'MY', '8', '3.3', '114.783', 1, 'true', 0),
('LKL', 'Banak Airport', 'LKL', 'Lakselv', 'NORWAY', 'NO', '1', '70.068814', '24.973489', 1, 'true', 0),
('LKN', 'Leknes Arpt', 'LKN', 'Leknes', 'NORWAY', 'NO', '1', '68.1525', '13.6094', 1, 'true', 0),
('LKO', 'Amausi Arpt', 'LKO', 'Lucknow', 'INDIA', 'IN', '5', '26.760594', '80.889339', 1, 'true', 0),
('LLA', 'Kallax Airport', 'LLA', 'Lulea', 'SWEDEN', 'SE', '1', '65.543758', '22.121989', 1, 'true', 0),
('LLE', 'Municipal Arpt', 'LLE', 'Malelane', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 1, 'true', 0),
('LLF', 'Ling Ling Arpt', 'LLF', 'Ling Ling', 'CHINA', 'CN', '-100', '26.7008', '111.9575', 1, 'true', 0),
('LLK', 'Lankaran International Arpt', 'LLK', 'Lankaran International Arpt', 'AZERBAIJAN', 'AZ', '5', '38.74203', '48.824093', 1, 'true', 0),
('LLU', 'Alluitsup Paa Arpt', 'LLU', 'Alluitsup Paa', 'GREENLAND', 'GL', '-3', '60.4644', '-45.5778', 1, 'true', 0),
('LLW', 'Lilongwe Intl Arpt', 'LLW', 'Lilongwe', 'MALAWI', 'MW', '2', '-13.789378', '33.781', 1, 'true', 0),
('LLY', 'Burlington Country Arpt', 'LLY', 'Mount Holly', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('LME', 'Arnage Arpt', 'LME', 'Le Mans', 'FRANCE', 'FR', '1', '47.948611', '0.201667', 1, 'true', 0),
('LMM', 'Federal Los Mochis Arpt', 'LMM', 'Los Mochis', 'MEXICO', 'MX', '-7', '25.685194', '-109.080806', 1, 'true', 0),
('LMN', 'Limbang Arpt', 'LMN', 'Limbang', 'MALAYSIA', 'MY', '8', '4.808303', '115.010439', 1, 'true', 0),
('LMP', 'Lampedusa Arpt', 'LMP', 'Lampedusa', 'ITALY', 'IT', '1', '35.497914', '12.618083', 1, 'true', 0),
('LMS', 'Louisville Winston County Arpt', 'LMS', 'Louisville', 'UNITED STATES', 'US', '-100', '33.1462', '-89.0625', 1, 'true', 0),
('LMT', 'Kingsley Field', 'LMT', 'Klamath Falls', 'UNITED STATES', 'US', '-8', '42.1561', '-121.733', 1, 'true', 0),
('LNK', 'Lincoln Municipal', 'LNK', 'Lincoln', 'UNITED STATES', 'US', '-6', '40.850971', '-96.75925', 1, 'true', 0),
('LNO', 'Leonora Arpt', 'LNO', 'Leonora', 'AUSTRALIA', 'AU', '8', '-28.8781', '121.315', 1, 'true', 0),
('LNS', 'Lancaster Arpt', 'LNS', 'Lancaster', 'UNITED STATES', 'US', '-5', '40.1217', '-76.2961', 1, 'true', 0),
('LNV', 'Lihir Island Arpt', 'LNV', 'Lihir Island', 'PAPUA NEW GUINEA', 'PG', '10', '-3.04361', '152.629', 1, 'true', 0),
('LNY', 'Lanai Airport', 'LNY', 'Lanai', 'UNITED STATES', 'US', '-10', '20.785611', '-156.951419', 1, 'true', 0),
('LNZ', 'Hoersching Arpt', 'LNZ', 'Linz', 'AUSTRIA', 'AT', '1', '48.233219', '14.187511', 1, 'true', 0),
('LOE', 'Loei Arpt', 'LOE', 'Loei', 'THAILAND', 'TH', '7', '17.439133', '101.722064', 1, 'true', 0),
('LOH', 'Aeropuerto Camilo Enriquez', 'LOH', 'Loja', 'ECUADOR', 'EC', '-5', '-3.99589', '-79.3719', 1, 'true', 0),
('LOM', 'Francisco P V Y R', 'LOM', 'Lagos De Moreno', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('QQP', 'London - Paddington Rail Service', 'LON', 'London', 'UNITED KINGDOM', 'GB', '0', '51.515833', '-0.176111', 12, '', 0),
('QQS', 'QQS St Pancras Intl Rail St', 'LON', 'London', 'UNITED KINGDOM', 'GB', '0', '51.532519', '-0.1263', 12, '', 0),
('QQU', 'London - Euston Rail Service', 'LON', 'London', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 12, '', 0),
('QQW', 'London - Waterloo Rail Service', 'LON', 'London', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 12, '', 0),
('XQE', 'XQE Ebbsfleet Kent Rail St', 'LON', 'London', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 12, '', 0),
('ZEP', 'London - Victoria Railway Station', 'LON', 'London', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 12, '', 0),
('LGW', 'Gatwick Arpt', 'LON', 'London', 'UNITED KINGDOM', 'GB', '0', '51.148056', '-0.190278', 12, '', 0),
('LHR', 'Heathrow', 'LON', 'London', 'UNITED KINGDOM', 'GB', '0', '51.4775', '-0.461389', 12, '', 0),
('QQK', 'London - Kings Cross Rail Service', 'LON', 'London', 'UNITED KINGDOM', 'GB', '-100', '20.2461', '0.9808', 12, '', 0),
('LCY', 'London City Arpt', 'LON', 'London', 'UNITED KINGDOM', 'GB', '0', '51.505278', '0.055278', 12, '', 0),
('STN', 'Stansted Arpt', 'LON', 'London', 'UNITED KINGDOM', 'GB', '0', '51.885', '0.235', 12, '', 0),
('QQH', 'Harwich Rail Station', 'LON', 'London', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 12, '', 0),
('LOS', 'Murtala Muhammed Arpt', 'LOS', 'Lagos', 'NIGERIA', 'NG', '1', '6.577369', '3.321156', 1, 'true', 0),
('LOV', 'Monclova Arpt', 'LOV', 'Monclova', 'MEXICO', 'MX', '-6', '26.955733', '-101.470136', 1, 'true', 0),
('LOZ', 'Corbin London Arpt', 'LOZ', 'London', 'UNITED STATES', 'US', '-100', '37.087', '-84.0773', 1, 'true', 0),
('LPA', 'Aeropuerto De Gran Canaria', 'LPA', 'Gran Canaria', 'SPAIN', 'ES', '0', '27.931886', '-15.386586', 1, 'true', 0),
('LPB', 'El Alto Arpt', 'LPB', 'La Paz', 'BOLIVIA', 'BO', '-4', '-16.513339', '-68.192256', 1, 'true', 0),
('LPG', 'La Plata Arpt', 'LPG', 'La Plata', 'ARGENTINA', 'AR', '-3', '-34.972222', '-57.894694', 1, 'true', 0),
('LPH', 'Lochgilphead Heliport', 'LPH', 'Lochgilphead', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('LPI', 'Saab Airport', 'LPI', 'Linkoping', 'SWEDEN', 'SE', '1', '58.40615', '15.680508', 1, 'true', 0),
('LPK', 'Lipetsk Airport', 'LPK', 'Lipetsk Airport', 'RUSSIA', 'RU', '4', '52.7028', '39.5378', 1, 'true', 0),
('LPL', 'Liverpool Arpt', 'LPL', 'Liverpool', 'UNITED KINGDOM', 'GB', '0', '53.333611', '-2.849722', 3, 'true', 0),
('ZLS', 'Liverpool Street Station', 'LPL', 'Liverpool', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 3, '', 0),
('XWN', 'Warrington B Q Rail Station', 'LPL', 'Liverpool', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 3, '', 0),
('LPO', 'La Porte Arpt', 'LPO', 'La Porte', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('LPP', 'Lappeenranta Arpt', 'LPP', 'Lappeenranta', 'FINLAND', 'FI', '2', '61.044553', '28.144397', 1, 'true', 0),
('LPQ', 'Louangphrabang Arpt', 'LPQ', 'Louangphrabang', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LA', '7', '19.897914', '102.160764', 1, 'true', 0),
('LPS', 'Lopez Island Arpt', 'LPS', 'Lopez Island', 'UNITED STATES', 'US', '-8', '48.4839', '-122.938', 1, 'true', 0),
('LPT', 'Lampang Arpt', 'LPT', 'Lampang', 'THAILAND', 'TH', '7', '18.270933', '99.504167', 1, 'true', 0),
('LPX', 'Liepaya Arpt', 'LPX', 'Liepaja', 'LATVIA', 'LV', '2', '56.5175', '21.096944', 1, 'true', 0),
('LPY', 'Loudes Airport', 'LPY', 'Le Puy', 'FRANCE', 'FR', '1', '45.080689', '3.762889', 1, 'true', 0),
('LRA', 'Larisa Arpt', 'LRA', 'Larisa', 'GREECE', 'GR', '2', '39.650253', '22.4655', 1, 'true', 0),
('LRD', 'Laredo Intl', 'LRD', 'Laredo', 'UNITED STATES', 'US', '-6', '27.54375', '-99.461556', 1, 'true', 0),
('LRE', 'Longreach Arpt', 'LRE', 'Longreach', 'AUSTRALIA', 'AU', '10', '-23.4342', '144.28', 1, 'true', 0),
('LRH', 'Laleu Airport', 'LRH', 'La Rochelle', 'FRANCE', 'FR', '1', '46.1792', '-1.19528', 1, 'true', 0),
('LRM', 'La Romana Arpt', 'LRM', 'La Romana', 'DOMINICAN REPUBLIC', 'DO', '-4', '18.450711', '-68.911833', 1, 'true', 0),
('LRS', 'Leros Arpt', 'LRS', 'Leros', 'GREECE', 'GR', '2', '37.184903', '26.800289', 1, 'true', 0),
('LRT', 'Lann Bihoue Arpt', 'LRT', 'Lorient', 'FRANCE', 'FR', '1', '47.760555', '-3.44', 1, 'true', 0),
('LRU', 'Las Cruces Crawford Arpt', 'LRU', 'Las Cruces', 'UNITED STATES', 'US', '-7', '32.289417', '-106.921972', 1, 'true', 0),
('LSC', 'La Florida', 'LSC', 'La Serena', 'CHILE', 'CL', '-4', '-29.916233', '-71.199522', 1, 'true', 0),
('LSE', 'La Crosse Municipal', 'LSE', 'La Crosse', 'UNITED STATES', 'US', '-6', '43.878986', '-91.256711', 1, 'true', 0),
('LSI', 'Sumburgh Airport', 'LSI', 'Lerwick', 'UNITED KINGDOM', 'GB', '0', '59.878889', '-1.295556', 2, 'true', 0),
('LWK', 'Tingwall Arpt', 'LSI', 'Lerwick', 'UNITED KINGDOM', 'GB', '0', '60.1922', '-1.24361', 2, '', 0),
('LSN', 'Los Banos Arpt', 'LSN', 'Los Banos', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('LSO', 'Talmont Arpt', 'LSO', 'Les Sables', 'FRANCE', 'FR', '-100', '0', '0', 1, 'true', 0),
('LSP', 'Josefa Camejo Arpt', 'LSP', 'Las Piedras', 'VENEZUELA', 'VE', '-4', '11.780775', '-70.151497', 1, 'true', 0),
('LSQ', 'Maria Dolores Arpt', 'LSQ', 'Los Angeles', 'CHILE', 'CL', '-4', '-37.401731', '-72.425444', 1, 'true', 0),
('LST', 'Launceston Arpt', 'LST', 'Launceston', 'AUSTRALIA', 'AU', '10', '-41.545278', '147.214167', 1, 'true', 0),
('LSY', 'Lismore Airport', 'LSY', 'Lismore', 'AUSTRALIA', 'AU', '10', '-28.8303', '153.26', 1, 'true', 0),
('LTA', 'Letaba Aprt', 'LTA', 'Tzaneen', 'SOUTH AFRICA', 'ZA', '2', '-23.824417', '30.329306', 1, 'true', 0),
('LTK', 'Hmelmin Airport', 'LTK', 'Latakia', 'SYRIA', 'SY', '2', '35.401094', '35.948681', 1, 'true', 0),
('LTN', 'Luton Arpt', 'LTN', 'Luton', 'UNITED KINGDOM', 'GB', '0', '51.874722', '-0.368333', 1, 'true', 0),
('LTO', 'Loreto Intl Arpt', 'LTO', 'Loreto', 'MEXICO', 'MX', '-7', '25.989194', '-111.348361', 1, 'true', 0),
('LTQ', 'Le Touquet Arpt', 'LTQ', 'Le Touquet', 'FRANCE', 'FR', '1', '50.517385', '1.620587', 1, 'true', 0),
('AXS', 'Altus Municipal Arpt', 'LTS', 'Altus', 'UNITED STATES', 'US', '-100', '0', '0', 1, '', 0),
('LTT', 'La Mole Arpt', 'LTT', 'St Tropez', 'FRANCE', 'FR', '1', '43.2054', '6.482', 1, 'true', 0),
('LTU', 'Latur Arpt', 'LTU', 'Latur', 'INDIA', 'IN', '5', '18.411944', '76.465', 1, 'true', 0),
('LTX', 'Cotapaxi Intl Arpt', 'LTX', 'Latacunga', 'ECUADOR', 'EC', '-5', '-0.5425', '-78.3657', 1, 'true', 0),
('LUD', 'Luderitz Arpt', 'LUD', 'Luderitz', 'NAMIBIA', 'NA', '1', '-26.6874', '15.2429', 1, 'true', 0),
('LUG', 'Agno Airport', 'LUG', 'Lugano', 'SWITZERLAND', 'CH', '1', '46.004275', '8.910578', 1, 'true', 0),
('LUH', 'Ludhiana Arpt', 'LUH', 'Ludhiana', 'INDIA', 'IN', '5', '30.854681', '75.952592', 1, 'true', 0),
('PIB', 'Hattiesburg Laurel Regional Arpt', 'LUL', 'Laurel', 'UNITED STATES', 'US', '-6', '31.4671', '-89.3371', 2, '', 0),
('LUL', 'Hesler Noble Field', 'LUL', 'Laurel', 'UNITED STATES', 'US', '-100', '0', '0', 2, 'true', 0),
('LUN', 'Lusaka Airport', 'LUN', 'Lusaka', 'ZAMBIA', 'ZM', '2', '-15.330817', '28.452628', 1, 'true', 0),
('LUP', 'Kalaupapa Municipal', 'LUP', 'Kalaupapa', 'UNITED STATES', 'US', '-10', '21.211', '-156.974', 1, 'true', 0),
('LUQ', 'San Luis Cty Arpt', 'LUQ', 'San Luis', 'ARGENTINA', 'AR', '-3', '-33.273192', '-66.356422', 1, 'true', 0),
('LUX', 'Luxembourg Arpt', 'LUX', 'Luxembourg', 'LUXEMBOURG', 'LU', '1', '49.626575', '6.211517', 1, 'true', 0),
('LVI', 'Livingstone Arpt', 'LVI', 'Livingstone', 'ZAMBIA', 'ZM', '2', '-17.821756', '25.822692', 1, 'true', 0),
('LVK', 'Bron Airport', 'LVK', 'Livermore', 'UNITED STATES', 'US', '-8', '37.41362', '-121.49133', 1, 'true', 0),
('LVM', 'Mission Field', 'LVM', 'Livingston', 'UNITED STATES', 'US', '-7', '45.699389', '-110.448306', 1, 'true', 0),
('LVO', 'Laverton Airport', 'LVO', 'Laverton', 'AUSTRALIA', 'AU', '8', '-28.6136', '122.424', 1, 'true', 0),
('LVS', 'Las Vegas Arpt', 'LVS', 'Las Vegas', 'UNITED STATES', 'US', '-7', '35.654222', '-105.142389', 2, 'true', 0),
('TCC', 'Tucumcari Arpt', 'LVS', 'Las Vegas', 'UNITED STATES', 'US', '-7', '35.182777', '-103.603186', 2, '', 0),
('LWB', 'Greenbrier Valley Arpt', 'LWB', 'Lewisburg', 'UNITED STATES', 'US', '-5', '37.858333', '-80.399444', 1, 'true', 0),
('LWC', 'Lawrence Municipal', 'LWC', 'Lawrence', 'UNITED STATES', 'US', '-4', '39.009167', '-95.2175', 1, 'true', 0),
('LWM', 'Lawrence Arpt', 'LWM', 'Lawrence', 'UNITED STATES', 'US', '-4', '42.717194', '-71.123417', 1, 'true', 0),
('LWO', 'Snilow Arpt', 'LWO', 'Lvov', 'UKRAINE', 'UA', '2', '49.8125', '23.956111', 1, 'true', 0),
('LWS', 'Lewiston Nez Pierce Arpt', 'LWS', 'Lewiston', 'UNITED STATES', 'US', '-8', '46.3745', '-117.015389', 1, 'true', 0),
('LWT', 'Lewistown Municipal', 'LWT', 'Lewistown', 'UNITED STATES', 'US', '-7', '47.0493', '-109.467', 1, 'true', 0),
('LWY', 'Lawas Arpt', 'LWY', 'Lawas', 'MALAYSIA', 'MY', '8', '4.84917', '115.408', 1, 'true', 0),
('LXA', 'Lhasa Arpt', 'LXA', 'Lhasa', 'CHINA', 'CN', '8', '29.297778', '90.911944', 1, 'true', 0),
('LXN', 'Jim Kelley Field', 'LXN', 'Lexington', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('LXR', 'Luxor Airport', 'LXR', 'Luxor', 'EGYPT', 'EG', '2', '25.671028', '32.706583', 1, 'true', 0),
('LXS', 'Limnos Airport', 'LXS', 'Limnos', 'GREECE', 'GR', '2', '39.917072', '25.236308', 1, 'true', 0),
('SEB', 'Sebha Airport', 'LY', 'Sebha Airport', 'LIBYAN ARAB JAMAHIRIYA', 'LY', '2', '27.016666', '14.4625', 1, '', 0),
('LYA', 'Luoyang Arpt', 'LYA', 'Luoyang', 'CHINA', 'CN', '8', '34.41', '112.28', 1, 'true', 0),
('LYB', 'Little Cayman Arpt', 'LYB', 'Little Cayman', 'CAYMAN ISLANDS', 'KY', '-5', '19.659167', '-80.090833', 1, 'true', 0),
('LYC', 'Hedlunda Arpt', 'LYC', 'Lycksele', 'SWEDEN', 'SE', '1', '64.548322', '18.716219', 1, 'true', 0),
('LYG', 'Lianyungang Arpt', 'LYG', 'Lianyungang', 'CHINA', 'CN', '8', '34.55', '119.25', 1, 'true', 0),
('LYH', 'Lynchburg Municipal', 'LYH', 'Lynchburg', 'UNITED STATES', 'US', '-5', '37.3267', '-79.2004', 1, 'true', 0),
('LYI', 'Linyi Arpt', 'LYI', 'Linyi', 'CHINA', 'CN', '8', '35.0461', '118.412', 1, 'true', 0),
('LYP', 'Faisalabad International Arpt', 'LYP', 'Faisalabad', 'PAKISTAN', 'PK', '5', '31.365014', '72.994842', 1, 'true', 0),
('LYR', 'Svalbard Arpt', 'LYR', 'Longyearbyen', 'NORWAY', 'NO', '1', '78.246111', '15.465556', 1, 'true', 0),
('LYS', 'Lyon Saint Exupery Arpt', 'LYS', 'Lyon', 'FRANCE', 'FR', '1', '45.726387', '5.090833', 3, 'true', 0),
('XYD', 'Lyon Rail Station', 'LYS', 'Lyon', 'FRANCE', 'FR', '1', '46', '5', 3, '', 0),
('LYN', 'Bron Arpt', 'LYS', 'Lyon', 'FRANCE', 'FR', '1', '45.727172', '4.944275', 3, '', 0),
('LYU', 'Ely Municipal Arpt', 'LYU', 'Ely Mn', 'UNITED STATES', 'US', '-6', '47.824444', '-91.830833', 1, 'true', 0),
('LYX', 'Lydd Intl Arpt', 'LYX', 'Lydd', 'UNITED KINGDOM', 'GB', '0', '50.956111', '0.939167', 1, 'true', 0),
('LZC', 'Lazaro Cardenas Arpt', 'LZC', 'Lazaro Cardenas Michoacan', 'MEXICO', 'MX', '-6', '18.001731', '-102.220525', 1, 'true', 0),
('LZH', 'Liuzhou Airport', 'LZH', 'Liuzhou', 'CHINA', 'CN', '8', '24.2075', '109.391', 1, 'true', 0),
('LZO', 'Luzhou Arpt', 'LZO', 'Luzhou', 'CHINA', 'CN', '8', '28.8522', '105.393', 1, 'true', 0),
('LZR', 'Lizard Island Arpt', 'LZR', 'Lizard Island', 'AUSTRALIA', 'AU', '10', '-14.673056', '145.454444', 1, 'true', 0),
('MAA', 'Chennai Arpt', 'MAA', 'Chennai', 'INDIA', 'IN', '5', '12.994414', '80.180517', 1, 'true', 0),
('MAB', 'Maraba Arpt', 'MAB', 'Maraba', 'BRAZIL', 'BR', '-3', '-5.368589', '-49.138025', 1, 'true', 0),
('MAD', 'Barajas Arpt', 'MAD', 'Madrid', 'SPAIN', 'ES', '1', '40.493556', '-3.566764', 1, 'true', 0),
('MAE', 'Madera Municipal Arpt', 'MAE', 'Madera', 'UNITED STATES', 'US', '-8', '36.988611', '-120.112444', 1, 'true', 0),
('MAF', 'Midland Intl Arpt', 'MAF', 'Midland', 'UNITED STATES', 'US', '-6', '31.942528', '-102.201914', 1, 'true', 0),
('MAG', 'Madang Arpt', 'MAG', 'Madang', 'PAPUA NEW GUINEA', 'PG', '10', '-5.207083', '145.7887', 1, 'true', 0),
('MAH', 'Aerop De Menorca', 'MAH', 'Menorca', 'SPAIN', 'ES', '1', '39.862597', '4.218647', 1, 'true', 0),
('MAJ', 'Amata Kabua Intl Arpt', 'MAJ', 'Majuro', 'MARSHALL ISLANDS', 'MH', '12', '7.064758', '171.272022', 1, 'true', 0),
('MAK', 'Malakal Arpt', 'MAK', 'Malakal', 'SUDAN', 'SD', '2', '9.558969', '31.652242', 1, 'true', 0),
('MAM', 'Servando Canales Arpt', 'MAM', 'Matamoros', 'MEXICO', 'MX', '-6', '25.769894', '-97.525311', 1, 'true', 0),
('QQM', 'Manchester - Piccadilly Rail Station', 'MAN', 'Manchester', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 3, '', 0),
('XVC', 'Crewe Rail Station', 'MAN', 'Manchester', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 3, '', 0),
('MAN', 'Manchester Intl', 'MAN', 'Manchester', 'UNITED KINGDOM', 'GB', '0', '53.353744', '-2.27495', 3, 'true', 0),
('MAO', 'Intl Arpt Eduardo Gomes', 'MAO', 'Manaus', 'BRAZIL', 'BR', '-4', '-3.038611', '-60.049721', 1, 'true', 0),
('MAQ', 'Mae Sot Arpt', 'MAQ', 'Mae Sot', 'THAILAND', 'TH', '7', '16.699856', '98.545056', 1, 'true', 0),
('MAR', 'La Chinita Arpt', 'MAR', 'Maracaibo', 'VENEZUELA', 'VE', '-4', '10.558208', '-71.727856', 1, 'true', 0),
('MAS', 'Momote Arpt', 'MAS', 'Manus Island', 'PAPUA NEW GUINEA', 'PG', '10', '-2.06189', '147.424', 1, 'true', 0),
('MAZ', 'Eugenio M De Hostos Arpt', 'MAZ', 'Mayaguez', 'UNITED STATES', 'US', '-4', '18.255694', '-67.148472', 1, 'true', 0),
('MBA', 'Moi Intl', 'MBA', 'Mombasa', 'KENYA', 'KE', '3', '-4.034833', '39.59425', 1, 'true', 0),
('MBD', 'Mmabatho International Arpt', 'MBD', 'Mmabatho', 'SOUTH AFRICA', 'ZA', '2', '-25.798444', '25.548028', 1, 'true', 0),
('MBH', 'Maryborough Arpt', 'MBH', 'Maryborough', 'AUSTRALIA', 'AU', '10', '-25.5133', '152.715', 1, 'true', 0),
('MBJ', 'Sangster Arpt', 'MBJ', 'Montego Bay', 'JAMAICA', 'JM', '-5', '18.503717', '-77.913358', 1, 'true', 0),
('MBL', 'Manistee Arpt', 'MBL', 'Manistee', 'UNITED STATES', 'US', '-5', '44.2725', '-86.246944', 1, 'true', 0),
('MBS', 'Saginaw Arpt', 'MBS', 'Saginaw', 'UNITED STATES', 'US', '-5', '43.532913', '-84.079647', 1, 'true', 0),
('MBT', 'Murfreesboro Municipal Arpt', 'MBT', 'Masbate', 'PHILIPPINES', 'PH', '8', '12.3694', '123.629', 1, 'true', 0),
('MBW', 'Moorabbin Arpt', 'MBW', 'Moorabbin', 'AUSTRALIA', 'AU', '10', '-37.975833', '145.102222', 1, 'true', 0),
('MBX', 'Maribor Arpt', 'MBX', 'Maribor', 'SLOVENIA', 'SI', '1', '46.479861', '15.686131', 1, 'true', 0),
('MCE', 'Merced Municipal Arpt', 'MCE', 'Merced', 'UNITED STATES', 'US', '-8', '37.284722', '-120.513889', 1, 'true', 0),
('MCK', 'McCook Municipal', 'MCK', 'McCook', 'UNITED STATES', 'US', '-6', '40.206389', '-100.592222', 1, 'true', 0),
('MCM', 'Hel De Monte Carlo Airport', 'MCM', 'Monte Carlo', 'MONACO', 'MC', '1', '43.733333', '7.416667', 1, 'true', 0),
('MCN', 'Lewis B Wilson', 'MCN', 'Macon', 'UNITED STATES', 'US', '-5', '32.69285', '-83.649211', 1, 'true', 0),
('MCP', 'Macapa Intl Arpt', 'MCP', 'Macapa', 'BRAZIL', 'BR', '-3', '0.050664', '-51.072178', 1, 'true', 0),
('MCQ', 'Miskolc Arpt', 'MCQ', 'Miskolc', 'HUNGARY', 'HU', '-100', '0', '0', 1, 'true', 0),
('MCT', 'Seeb Intl', 'MCT', 'Muscat', 'OMAN', 'OM', '4', '23.593278', '58.284444', 1, 'true', 0),
('MCU', 'Gueret Arpt', 'MCU', 'Montlucon', 'FRANCE', 'FR', '1', '46.352525', '2.570486', 1, 'true', 0),
('MCV', 'McArthur River Arpt', 'MCV', 'McArthur River', 'AUSTRALIA', 'AU', '9', '-16.4425', '136.084', 1, 'true', 0),
('MCW', 'Mason City Municipal', 'MCW', 'Mason City', 'UNITED STATES', 'US', '-5', '43.2247', '-93.4067', 1, 'true', 0),
('MCX', 'Makhachkala Airport', 'MCX', 'Makhachkala Airport', 'RUSSIA', 'RU', '4', '42.816822', '47.652294', 1, 'true', 0),
('MCY', 'Maroochydore Arpt', 'MCY', 'Maroochydore', 'AUSTRALIA', 'AU', '10', '-26.603333', '153.091111', 1, 'true', 0),
('MCZ', 'Palmeres Airport', 'MCZ', 'Maceio', 'BRAZIL', 'BR', '-3', '-9.510808', '-35.791678', 1, 'true', 0),
('MDC', 'Samratulang Arpt', 'MDC', 'Manado', 'INDONESIA', 'ID', '8', '1.549447', '124.925878', 1, 'true', 0),
('EOH', 'Enrique Olaya Herrara', 'MDE', 'Medellin', 'COLOMBIA', 'CO', '-5', '6.219958', '-75.590519', 2, '', 0),
('MDE', 'Jose Marie Cordova', 'MDE', 'Medellin', 'COLOMBIA', 'CO', '-5', '6.164536', '-75.423119', 2, 'true', 0),
('MDG', 'Mudanjiang Arpt', 'MDG', 'Mudanjiang', 'CHINA', 'CN', '8', '44.523889', '129.568889', 1, 'true', 0),
('MDH', 'Southern Illinois Arpt', 'MDH', 'Carbondale', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MDI', 'Makurdi Arpt', 'MDI', 'Makurdi', 'NIGERIA', 'NG', '1', '7.703883', '8.613939', 1, 'true', 0),
('MDL', 'Annisaton Arpt', 'MDL', 'Mandalay', 'MYANMAR', 'MM', '6', '21.702156', '95.977928', 1, 'true', 0),
('MDQ', 'Mar Del Plata Arpt', 'MDQ', 'Mar Del Plata', 'ARGENTINA', 'AR', '-3', '-37.934167', '-57.573333', 1, 'true', 0),
('MDU', 'Mendi Arpt', 'MDU', 'Mendi', 'PAPUA NEW GUINEA', 'PG', '10', '-6.14774', '143.657', 1, 'true', 0),
('MDY', 'Sand Island Field', 'MDY', 'Midway Island', 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM', '-11', '28.201725', '-177.380636', 1, 'true', 0),
('MDZ', 'El Plumerillo Airport', 'MDZ', 'Mendoza', 'ARGENTINA', 'AR', '-3', '-32.831717', '-68.792856', 1, 'true', 0),
('MEA', 'Macae Arpt', 'MEA', 'Macae', 'BRAZIL', 'BR', '-3', '-22.343', '-41.766', 1, 'true', 0),
('MEC', 'Manta Arpt', 'MEC', 'Manta', 'ECUADOR', 'EC', '-5', '-0.946078', '-80.678808', 1, 'true', 0),
('MED', 'Prince Mohammad Bin Abdulaziz Arpt', 'MED', 'Madinah', 'SAUDI ARABIA', 'SA', '3', '24.553422', '39.705061', 1, 'true', 0),
('MEH', 'Mehamn Arpt', 'MEH', 'Mehamn', 'NORWAY', 'NO', '1', '71.029722', '27.826667', 1, 'true', 0),
('MEI', 'Key Field', 'MEI', 'Meridian', 'UNITED STATES', 'US', '-6', '32.332624', '-88.751868', 1, 'true', 0),
('MEB', 'Essendon Arpt', 'MEL', 'Melbourne', 'AUSTRALIA', 'AU', '10', '-37.728056', '144.901944', 3, '', 0),
('AVV', 'Avalon Arpt', 'MEL', 'Melbourne', 'AUSTRALIA', 'AU', '10', '-38.039444', '144.469444', 3, '', 0),
('MEL', 'Tullamarine Arpt', 'MEL', 'Melbourne', 'AUSTRALIA', 'AU', '10', '-37.673333', '144.843333', 3, 'true', 0),
('AWM', 'West Memphis Municipal Arpt', 'MEM', 'Memphis', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('NQA', 'Memphis Naval Air Station', 'MEM', 'Memphis', 'UNITED STATES', 'US', '-6', '35.356667', '-89.870278', 3, '', 0),
('MEM', 'Memphis Intl', 'MEM', 'Memphis', 'UNITED STATES', 'US', '-6', '35.042417', '-89.976667', 3, 'true', 0),
('MEO', 'Dare County Regional Arpt', 'MEO', 'Manteo', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MES', 'Polonia Arpt', 'MES', 'Medan', 'INDONESIA', 'ID', '7', '3.558056', '98.671722', 1, 'true', 0),
('MEU', 'Monte Dourado Arpt', 'MEU', 'Monte Dourado', 'BRAZIL', 'BR', '-100', '-0.8894', '-52.6017', 1, 'true', 0),
('MEV', 'Douglas County Arpt', 'MEV', 'Minden', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MEX', 'Benito Juarez Intl Airport', 'MEX', 'Mexico City', 'MEXICO', 'MX', '-6', '19.436303', '-99.072097', 1, 'true', 0),
('MEZ', 'Messina Arpt', 'MEZ', 'Messina', 'SOUTH AFRICA', 'ZA', '2', '-25.704458', '26.908978', 1, 'true', 0),
('MFD', 'Mansfield Municipal', 'MFD', 'Mansfield', 'UNITED STATES', 'US', '-5', '40.821417', '-82.516639', 1, 'true', 0),
('MFE', 'Miller Intl', 'MFE', 'McAllen', 'UNITED STATES', 'US', '-6', '26.175833', '-98.238611', 1, 'true', 0),
('MFH', 'Mesquite Arpt', 'MFH', 'Mesquite', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MFI', 'Marshfield Municipal Arpt', 'MFI', 'Marshfield', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MFK', 'Matsu Arpt', 'MFK', 'Matsu', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '26.224153', '120.00275', 1, 'true', 0),
('MFM', 'Macau Arpt', 'MFM', 'Macau', 'MACAO', 'MO', '8', '22.149556', '113.591558', 1, 'true', 0),
('MFN', 'Milford Sound Arpt', 'MFN', 'Milford Sound', 'NEW ZEALAND', 'NZ', '12', '-44.67333', '167.92333', 1, 'true', 0),
('MFR', 'Medford Jackson Cty', 'MFR', 'Medford', 'UNITED STATES', 'US', '-8', '42.374228', '-122.8735', 1, 'true', 0),
('MFT', 'Machu Picchu Arpt', 'MFT', 'Machu Picchu', 'PERU', 'PE', '-5', '-13.1167', '-72.5667', 1, 'true', 0),
('MGA', 'Augusto C Sandino', 'MGA', 'Managua', 'NICARAGUA', 'NI', '-6', '12.141494', '-86.168178', 1, 'true', 0),
('MGB', 'Mount Gambier Arpt', 'MGB', 'Mt Gambier', 'AUSTRALIA', 'AU', '9', '-37.7456', '140.785', 1, 'true', 0),
('MGC', 'Michigan City Arpt', 'MGC', 'Michigan City', 'UNITED STATES', 'US', '-5', '41.7033', '-86.8211', 1, 'true', 0),
('MGE', 'Dobbins Air Force Base', 'MGE', 'Marietta', 'UNITED STATES', 'US', '-5', '33.915382', '-84.516319', 1, 'true', 0),
('MGF', 'Regional De Maringa Arpt', 'MGF', 'Maringa', 'BRAZIL', 'BR', '-3', '-23.476392', '-52.016406', 1, 'true', 0),
('MGH', 'Margate Arpt', 'MGH', 'Margate', 'SOUTH AFRICA', 'ZA', '2', '-30.857408', '30.343019', 1, 'true', 0),
('MGJ', 'Orange County Arpt', 'MGJ', 'Montgomery', 'UNITED STATES', 'US', '-4', '41.509988', '-74.264644', 1, 'true', 0),
('MGM', 'Dannelly Field', 'MGM', 'Montgomery', 'UNITED STATES', 'US', '-6', '32.300639', '-86.393972', 1, 'true', 0),
('MGQ', 'Mogadishu International Airport', 'MGQ', 'Mogadishu', 'SOMALIA', 'SO', '3', '2.01444', '45.3047', 1, 'true', 0),
('MGR', 'Moultrie Arpt', 'MGR', 'Moultrie', 'UNITED STATES', 'US', '-4', '31.084917', '-83.80325', 1, 'true', 0),
('MGV', 'Margaret River Station Arpt', 'MGV', 'Margaret River Station', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('MGW', 'Morgantown Municipal', 'MGW', 'Morgantown', 'UNITED STATES', 'US', '-5', '39.642908', '-79.916314', 1, 'true', 0),
('MHD', 'Mashad Arpt', 'MHD', 'Mashad', 'IRAN', 'IR', '3', '36', '59', 1, 'true', 0),
('MHE', 'Mitchell Municipal', 'MHE', 'Mitchell', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MHG', 'Mannheim Neuostheim', 'MHG', 'Mannheim Germany', 'GERMANY', 'DE', '1', '49.472706', '8.514264', 1, 'true', 0),
('MHH', 'Marsh Harbour Intl Arpt', 'MHH', 'Marsh Harbour', 'BAHAMAS', 'BS', '-5', '26.511406', '-77.083472', 1, 'true', 0),
('MHK', 'Manhattan Municipal Arpt', 'MHK', 'Manhattan', 'UNITED STATES', 'US', '-6', '39.140972', '-96.670833', 1, 'true', 0),
('MHQ', 'Mariehamn Arpt', 'MHQ', 'Mariehamn', 'FINLAND', 'FI', '1', '60.122203', '19.898156', 1, 'true', 0),
('MHT', 'Manchester Arpt', 'MHT', 'Manchester', 'UNITED STATES', 'US', '-5', '42.932556', '-71.435667', 1, 'true', 0),
('MHU', 'Mount Hotham Arpt', 'MHU', 'Mount Hotham', 'AUSTRALIA', 'AU', '10', '-37.0475', '147.334', 1, 'true', 0),
('MHV', 'Kern County Arpt', 'MHV', 'Mojave', 'UNITED STATES', 'US', '-8', '35.059364', '-118.151856', 1, 'true', 0),
('MHZ', 'Mildenhall Arpt', 'MHZ', 'Mildenhall', 'UNITED KINGDOM', 'GB', '0', '52.361933', '0.486406', 1, 'true', 0),
('OPF', 'Opa Locka Arpt', 'MIA', 'Miami', 'UNITED STATES', 'US', '-5', '25.907', '-80.278389', 4, '', 0),
('MIA', 'Miami Intl', 'MIA', 'Miami', 'UNITED STATES', 'US', '-5', '25.79325', '-80.290556', 4, 'true', 0),
('MPB', 'Mpb Seaplane Base', 'MIA', 'Miami', 'UNITED STATES', 'US', '-5', '25.7783', '-80.1703', 4, '', 0),
('TMB', 'Tamiami Airport', 'MIA', 'Miami', 'UNITED STATES', 'US', '-5', '25.647889', '-80.432777', 4, '', 0),
('MID', 'Merida Intl', 'MID', 'Merida', 'MEXICO', 'MX', '-6', '20.936981', '-89.657672', 1, 'true', 0),
('MIE', 'Johnson Field', 'MIE', 'Muncie', 'UNITED STATES', 'US', '-5', '40.242472', '-85.39575', 1, 'true', 0),
('MIG', 'Mian Yang Arpt', 'MIG', 'Mian Yang', 'CHINA', 'CN', '8', '31.4281', '104.741', 1, 'true', 0),
('MII', 'Dr Gastao Vidigal', 'MII', 'Marilia', 'BRAZIL', 'BR', '-3', '-22.196892', '-49.9264', 1, 'true', 0),
('MIK', 'Mikkeli Aprt', 'MIK', 'Mikkeli', 'FINLAND', 'FI', '2', '61.6866', '27.201794', 1, 'true', 0),
('MXP', 'Malpensa Arpt', 'MIL', 'Milan', 'ITALY', 'IT', '1', '45.630606', '8.728111', 4, '', 0),
('XIK', 'Milan Central Station Railway', 'MIL', 'Milan', 'ITALY', 'IT', '-100', '0', '0', 4, '', 0),
('SWK', 'Segrate Arpt', 'MIL', 'Milan', 'ITALY', 'IT', '-100', '0', '0', 4, '', 0),
('LIN', 'Linate Arpt', 'MIL', 'Milan', 'ITALY', 'IT', '1', '45.445103', '9.276739', 4, '', 0),
('MIM', 'Merimbula Arpt', 'MIM', 'Merimbula', 'AUSTRALIA', 'AU', '10', '-36.9086', '149.901', 1, 'true', 0),
('MIR', 'Habib Bourguiba Intl', 'MIR', 'Monastir', 'TUNISIA', 'TN', '1', '35.758056', '10.754722', 1, 'true', 0),
('MIV', 'Millville Arpt', 'MIV', 'Millville', 'UNITED STATES', 'US', '-5', '39.367806', '-75.072222', 1, 'true', 0),
('MIW', 'Marshalltown Municipal', 'MIW', 'Marshalltown', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MJD', 'Mohenjodaro Arpt', 'MJD', 'Mohenjodaro', 'PAKISTAN', 'PK', '5', '27.335156', '68.143053', 1, 'true', 0),
('MJF', 'Kjaerstad Arpt', 'MJF', 'Mosjoen', 'NORWAY', 'NO', '1', '65.783997', '13.214914', 1, 'true', 0),
('MJI', 'MITIGA', 'MJI', 'Maji', 'ETHIOPIA', 'LY', '1', '32.8941', '13.276', 1, 'true', 0),
('MJK', 'Shark Bay Arpt', 'MJK', 'Monkey Mia', 'AUSTRALIA', 'AU', '-100', '-25.8939', '113.5772', 1, 'true', 0),
('MJN', 'Amborovy Arpt', 'MJN', 'Majunga', 'MADAGASCAR', 'MG', '3', '-15.667144', '46.351828', 1, 'true', 0),
('MJR', 'Miramar Arpt', 'MJR', 'Miramar', 'ARGENTINA', 'AR', '-100', '0', '0', 1, 'true', 0),
('MJT', 'Mytilene Arpt', 'MJT', 'Mytilene', 'GREECE', 'GR', '2', '39.056667', '26.598333', 1, 'true', 0),
('MJU', 'Mamuju Arpt', 'MJU', 'Mamuju', 'INDONESIA', 'ID', '9', '-2.5', '118.833336', 1, 'true', 0),
('MJV', 'San Javier Airport', 'MJV', 'Murcia', 'SPAIN', 'ES', '1', '37.774972', '-0.812389', 1, 'true', 0),
('MJW', 'Mahenye Airfield', 'MJW', 'Mahenye', 'ZIMBABWE', 'ZW', '-100', '0', '0', 1, 'true', 0),
('MJZ', 'Mirnyj Arpt', 'MJZ', 'Mirnyj', 'RUSSIA', 'RU', '10', '62.534689', '114.038928', 1, 'true', 0),
('MKA', 'Marianske Lazne Arpt', 'MKA', 'Marianske Lazne', 'CZECH REPUBLIC', 'CZ', '-100', '0', '0', 1, 'true', 0),
('MCI', 'Kansas City Intl', 'MKC', 'Kansas City', 'UNITED STATES', 'US', '-6', '39.297606', '-94.713905', 3, '', 0),
('JCI', 'Johnson Industrial Arpt', 'MKC', 'Kansas City', 'UNITED STATES', 'US', '-6', '38.830917', '-94.890306', 3, '', 0),
('MKC', 'Kansas City Municipal Arpt', 'MKC', 'Kansas City', 'UNITED STATES', 'US', '-6', '39.1275', '-94.598889', 3, 'true', 0),
('MKE', 'General Mitchell Intl Arpt', 'MKE', 'Milwaukee', 'UNITED STATES', 'US', '-6', '42.947222', '-87.896583', 1, 'true', 0),
('MKG', 'Muskegon Cty Intl', 'MKG', 'Muskegon', 'UNITED STATES', 'US', '-5', '43.1695', '-86.2382', 1, 'true', 0),
('MKK', 'Molokai Arpt', 'MKK', 'Hoolehua', 'UNITED STATES', 'US', '-10', '21.152886', '-157.096256', 1, 'true', 0),
('MKL', 'McKellar Fld', 'MKL', 'Jackson', 'UNITED STATES', 'US', '-6', '35.599889', '-88.915611', 1, 'true', 0),
('MKM', 'Mukah Arpt', 'MKM', 'Mukah', 'MALAYSIA', 'MY', '8', '2.90639', '112.08', 1, 'true', 0),
('MKO', 'Davis Field', 'MKO', 'Muskogee', 'UNITED STATES', 'US', '-6', '35.656489', '-95.366656', 1, 'true', 0),
('MKR', 'Meekatharra Arpt', 'MKR', 'Meekathara', 'AUSTRALIA', 'AU', '8', '-26.6117', '118.548', 1, 'true', 0),
('MKT', 'Mankato Municipal Arpt', 'MKT', 'Mankato', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MKW', 'Rendani Arpt', 'MKW', 'Manokwari', 'INDONESIA', 'ID', '9', '-0.891833', '134.049183', 1, 'true', 0),
('MKX', 'Mukalla Arpt', 'MKX', 'Mukalla', 'YEMEN', 'YE', '-100', '0', '0', 1, 'true', 0),
('MKY', 'Mackay Arpt', 'MKY', 'Mackay', 'AUSTRALIA', 'AU', '10', '-21.171667', '149.179722', 1, 'true', 0),
('MKZ', 'Batu Berendum Arpt', 'MKZ', 'Malacca', 'MALAYSIA', 'MY', '8', '2.263361', '102.251553', 1, 'true', 0),
('MLA', 'Luqa Airport', 'MLA', 'Malta', 'MALTA', 'MT', '1', '35.857497', '14.4775', 1, 'true', 0),
('MLB', 'Melbourne Regional', 'MLB', 'Melbourne', 'UNITED STATES', 'US', '-5', '28.102753', '-80.645258', 1, 'true', 0),
('MLC', 'McAlester Municipal Arpt', 'MLC', 'McAlester', 'UNITED STATES', 'US', '-6', '34.882403', '-95.783463', 1, 'true', 0),
('MLE', 'Male Intl Arpt', 'MLE', 'Male', 'MALDIVES', 'MV', '5', '4.191833', '73.529128', 1, 'true', 0),
('MLG', 'Malang Arpt', 'MLG', 'Malang', 'INDONESIA', 'ID', '7', '-7.926556', '112.714514', 1, 'true', 0),
('MLI', 'Quad City Arpt', 'MLI', 'Moline', 'UNITED STATES', 'US', '-6', '41.448528', '-90.507539', 1, 'true', 0),
('MLM', 'Michoacan Municipal Arpt', 'MLM', 'Morelia', 'MEXICO', 'MX', '-6', '19.849944', '-101.0255', 1, 'true', 0),
('MLN', 'Melilla Arpt', 'MLN', 'Melilla', 'SPAIN', 'ES', '0', '35.279817', '-2.956256', 1, 'true', 0),
('MLO', 'Milos Arpt', 'MLO', 'Milos', 'GREECE', 'GR', '2', '36.696111', '24.4775', 1, 'true', 0),
('MLS', 'Miles City Municipal Arpt', 'MLS', 'Miles City', 'UNITED STATES', 'US', '-7', '46.428', '-105.886', 1, 'true', 0),
('MLT', 'Millinocket Arpt', 'MLT', 'Millinocket', 'UNITED STATES', 'US', '-5', '45.647836', '-68.685561', 1, 'true', 0),
('MLU', 'Monroe Regional', 'MLU', 'Monroe', 'UNITED STATES', 'US', '-6', '32.510864', '-92.037689', 1, 'true', 0),
('ROB', 'Roberts Intl', 'MLW', 'Monrovia', 'LIBERIA', 'LR', '0', '6.233789', '-10.362311', 2, '', 0),
('MLW', 'Sprigg Payne Arpt', 'MLW', 'Monrovia', 'LIBERIA', 'LR', '0', '6.289061', '-10.758722', 2, 'true', 0),
('MLX', 'Malatya Arpt', 'MLX', 'Malatya', 'TURKEY', 'TR', '2', '38.435347', '38.091006', 1, 'true', 0),
('MLZ', 'Melo Arpt', 'MLZ', 'Melo', 'URUGUAY', 'UY', '-100', '-32.3425', '-54.2219', 1, 'true', 0),
('XFP', 'Malmo Railway Service', 'MMA', 'Malmo', 'SWEDEN', 'SE', '-100', '0', '0', 4, '', 0),
('XFR', 'Malmo South Railway Service', 'MMA', 'Malmo', 'SWEDEN', 'SE', '-100', '0', '0', 4, '', 0),
('MMA', 'Malmo Metropolitan Area Arpt', 'MMA', 'Malmo', 'SWEDEN', 'SE', '-100', '0', '0', 4, 'true', 0),
('MMX', 'Sturup Arpt', 'MMA', 'Malmo', 'SWEDEN', 'SE', '1', '55.530193', '13.371639', 4, '', 0),
('MMB', 'Memanbetsu Arpt', 'MMB', 'Memambetsu', 'JAPAN', 'JP', '9', '43.880606', '144.164053', 1, 'true', 0),
('MMC', 'Ciudad Mante Arpt', 'MMC', 'Ciudad Mante', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('MME', 'Durham Tees Valley Arpt', 'MME', 'Teesside', 'UNITED KINGDOM', 'GB', '0', '54.509189', '-1.429406', 3, 'true', 0),
('XVG', 'Darlington Rail Station', 'MME', 'Teesside', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 3, '', 0),
('XNO', 'Northallerton Rail Station', 'MME', 'Teesside', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 3, '', 0),
('MMG', 'Mount Magnet Arpt', 'MMG', 'Mount Magnet', 'AUSTRALIA', 'AU', '8', '-28.1161', '117.842', 1, 'true', 0),
('MMH', 'Mammoth Lakes Municipal', 'MMH', 'Mammoth Lakes', 'UNITED STATES', 'US', '-8', '37.624049', '-118.837772', 1, 'true', 0),
('MMI', 'McMinn County Arpt', 'MMI', 'Athens', 'UNITED STATES', 'US', '-5', '35.39919', '-84.56177', 1, 'true', 0),
('MMJ', 'Matsumoto Arpt', 'MMJ', 'Matsumoto', 'JAPAN', 'JP', '9', '36.166758', '137.922669', 1, 'true', 0),
('MMK', 'Murmansk Arpt', 'MMK', 'Murmansk', 'RUSSIA', 'RU', '4', '68.781672', '32.750822', 1, 'true', 0),
('MML', 'Marshall Municipal', 'MML', 'Marshall', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MMM', 'Middlemount Arpt', 'MMM', 'Middlemount', 'AUSTRALIA', 'AU', '-100', '-22.8025', '148.7047', 1, 'true', 0),
('MMO', 'Vila Do Maio Arpt', 'MMO', 'Maio', 'CAPE VERDE', 'CV', '-1', '15.155928', '-23.213703', 1, 'true', 0),
('MMU', 'Morristown Arpt', 'MMU', 'Morristown', 'UNITED STATES', 'US', '-5', '40.79935', '-74.414875', 1, 'true', 0),
('MMY', 'Hirara Arpt', 'MMY', 'Miyako Jima', 'JAPAN', 'JP', '9', '24.782833', '125.295111', 1, 'true', 0),
('MNI', 'Bramble Arpt', 'MNI', 'Montserrat', 'DOMINICA', 'DM', '1', '16.791389', '-62.193333', 1, 'true', 0);
INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('MNK', 'Maiana Airport', 'MNK', 'Maiana', 'KIRIBATI', 'KI', '10', '0.933333', '173', 1, 'true', 0),
('MNL', 'Ninoy Aquino Intl', 'MNL', 'Manila', 'PHILIPPINES', 'PH', '8', '14.508647', '121.019581', 1, 'true', 0),
('MNM', 'Menominee County', 'MNM', 'Menominee', 'UNITED STATES', 'US', '-5', '45.12665', '-87.638443', 1, 'true', 0),
('MNO', 'Manono Arpt', 'MNO', 'Manono', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', '-100', '0', '0', 1, 'true', 0),
('MNQ', 'Monto Arpt', 'MNQ', 'Monto', 'AUSTRALIA', 'AU', '-100', '-24.8917', '151.1083', 1, 'true', 0),
('MNZ', 'Manassas Arpt', 'MNZ', 'Manassas', 'UNITED STATES', 'US', '-100', '0', '0', 2, 'true', 0),
('EZF', 'Shannon Airport', 'MNZ', 'Manassas', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('MOB', 'Mobile Municipal', 'MOB', 'Mobile', 'UNITED STATES', 'US', '-6', '30.691231', '-88.242814', 1, 'true', 0),
('MOC', 'Montes Claros Arpt', 'MOC', 'Montes Claros', 'BRAZIL', 'BR', '-3', '-16.706925', '-43.8189', 1, 'true', 0),
('MOD', 'Harry Sham Fld', 'MOD', 'Modesto', 'UNITED STATES', 'US', '-8', '37.625817', '-120.954422', 1, 'true', 0),
('MOI', 'Mitiaro Island Arpt', 'MOI', 'Mitiaro Island', 'COOK ISLANDS', 'CK', '-10', '-19.8425', '-157.703', 1, 'true', 0),
('MOL', 'Aro Arpt', 'MOL', 'Molde', 'NORWAY', 'NO', '1', '62.744722', '7.2625', 1, 'true', 0),
('MON', 'Mount Cook Arpt', 'MON', 'Mount Cook', 'NEW ZEALAND', 'NZ', '12', '-43.906666', '170.128333', 1, 'true', 0),
('MOP', 'Mt Pleasant Municipal', 'MOP', 'Mount Pleasant', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MOQ', 'Morondava Arpt', 'MOQ', 'Morondava', 'MADAGASCAR', 'MG', '3', '-20.28475', '44.317614', 1, 'true', 0),
('MOT', 'Minot Intl', 'MOT', 'Minot', 'UNITED STATES', 'US', '-6', '48.259378', '-101.280333', 1, 'true', 0),
('MOU', 'Mountain Village Arpt', 'MOU', 'Mountain Village', 'UNITED STATES', 'US', '-9', '62.0954', '-163.682', 1, 'true', 0),
('MOV', 'Moranbah Arpt', 'MOV', 'Moranbah', 'RUSSIA', 'AU', '10', '-22.0578', '148.077', 1, 'true', 0),
('DME', 'Domodedovo Arpt', 'MOW', 'Moscow', 'RUSSIA', 'RU', '4', '55.408611', '37.906111', 3, '', 0),
('VKO', 'Vnukovo Arpt', 'MOW', 'Moscow', 'RUSSIA', 'RU', '4', '55.591531', '37.261486', 3, '', 0),
('SVO', 'Sheremetyevo Arpt', 'MOW', 'Moscow', 'RUSSIA', 'RU', '4', '55.972642', '37.414589', 3, '', 0),
('MOZ', 'Temae Airport', 'MOZ', 'Moorea', 'FRENCH POLYNESIA', 'PF', '-10', '-17.489972', '-149.761869', 1, 'true', 0),
('MPA', 'Mpacha Aerodrome', 'MPA', 'Mpache', 'NAMIBIA', 'NA', '1', '-17.6344', '24.1767', 1, 'true', 0),
('MPH', 'Malay Arpt', 'MPH', 'Caticlan', 'PHILIPPINES', 'PH', '8', '11.9215', '121.953', 1, 'true', 0),
('MPK', 'Mokpo Arpt', 'MPK', 'Mokpo', 'KOREA, REPUBLIC OF', 'KR', '9', '34.758906', '126.379872', 1, 'true', 0),
('MPL', 'Frejorgues Arpt', 'MPL', 'Montpellier', 'FRANCE', 'FR', '1', '43.576194', '3.963014', 1, 'true', 0),
('MPM', 'Maputo Intl', 'MPM', 'Maputo', 'MOZAMBIQUE', 'MZ', '2', '-25.920836', '32.572606', 1, 'true', 0),
('MPN', 'Mount Pleasant Arpt', 'MPN', 'Mount Pleasant', 'FALKLAND ISLANDS (MALVINAS)', 'FK', '-4', '-51.822777', '-58.447222', 1, 'true', 0),
('MPQ', 'Maan Arpt', 'MPQ', 'Maan', 'JORDAN', 'JO', '-100', '0', '0', 1, 'true', 0),
('MPR', 'McPherson Arpt', 'MPR', 'McPherson', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MPV', 'E F Knapp Arpt', 'MPV', 'Montpelier', 'UNITED STATES', 'US', '-5', '44.203503', '-72.562328', 1, 'true', 0),
('MPW', 'Mariupol Arpt', 'MPW', 'Mariupol', 'UKRAINE', 'UA', '2', '47.0761', '37.4496', 1, 'true', 0),
('MQF', 'Magnitogorsk Arpt', 'MQF', 'Magnitogorsk', 'RUSSIA', 'RU', '6', '53.393131', '58.755661', 1, 'true', 0),
('MQK', 'San Matias Arpt', 'MQK', 'San Matias', 'BOLIVIA', 'BO', '-100', '0', '0', 1, 'true', 0),
('MQL', 'Mildura Arpt', 'MQL', 'Mildura', 'AUSTRALIA', 'AU', '10', '-34.2292', '142.086', 1, 'true', 0),
('MQM', 'Mardin Arpt', 'MQM', 'Mardin', 'TURKEY', 'TR', '2', '37.2233', '40.6317', 1, 'true', 0),
('MQN', 'Rossvoll', 'MQN', 'Mo I Rana', 'NORWAY', 'NO', '1', '66.3639', '14.3014', 1, 'true', 0),
('MQS', 'Mustique Arpt', 'MQS', 'Mustique', 'DOMINICA', 'DM', '-4', '12.887947', '-61.180161', 1, 'true', 0),
('MQT', 'Sawyer Intl Airport', 'MQT', 'Marquette', 'UNITED STATES', 'US', '-5', '46.353611', '-87.395278', 1, 'true', 0),
('MQY', 'Smyrna Arpt', 'MQY', 'Smyrna', 'UNITED STATES', 'US', '-100', '36.009', '-86.52', 1, 'true', 0),
('MQZ', 'Margaret River Arpt', 'MQZ', 'Margaret River', 'AUSTRALIA', 'AU', '-100', '-33.93', '115.1', 1, 'true', 0),
('MRA', 'Misurata', 'MRA', 'Misurata', 'LIBYAN ARAB JAMAHIRIYA', 'LB', '1', '32.325', '15.061', 1, 'true', 0),
('MRB', 'Martinsburgh Regional Arpt', 'MRB', 'Martinsburg', 'UNITED STATES', 'US', '-5', '39.2407', '-77.591', 1, 'true', 0),
('MRC', 'Maury Country Arpt', 'MRC', 'Columbia', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MRD', 'Alberto Carnevalli Arpt', 'MRD', 'Merida', 'VENEZUELA', 'VE', '-4', '8.582294', '-71.161186', 1, 'true', 0),
('MRE', 'Mara Lodges Arpt', 'MRE', 'Mara Lodges', 'KENYA', 'KE', '3', '-1.406111', '35.008056', 1, 'true', 0),
('MRO', 'Masterton Arpt', 'MRO', 'Masterton', 'NEW ZEALAND', 'NZ', '12', '-40.973333', '175.633611', 1, 'true', 0),
('XRF', 'Marseille Rail Station', 'MRS', 'Marseille', 'FRANCE', 'FR', '-100', '47.0667', '3', 2, '', 0),
('MRS', 'Marseille Provence Arpt', 'MRS', 'Marseille', 'FRANCE', 'FR', '1', '43.435555', '5.213611', 2, 'true', 0),
('MRU', 'Plaisance Arptt', 'MRU', 'Mauritius', 'MAURITIUS', 'MU', '5', '-20.430235', '57.6836', 1, 'true', 0),
('MRV', 'Mineralnye Vody Arpt', 'MRV', 'Mineralnye Vody', 'RUSSIA', 'RU', '4', '44.225072', '43.081889', 1, 'true', 0),
('MRX', 'Mahshahr Airport', 'MRX', 'Mahshahr Airport', 'IRAN', 'IR', '4', '30.556192', '49.151879', 1, 'true', 0),
('MRY', 'Monterey Peninsula', 'MRY', 'Monterey', 'UNITED STATES', 'US', '-8', '36.587', '-121.842944', 1, 'true', 0),
('MRZ', 'Moree Arpt', 'MRZ', 'Moree', 'AUSTRALIA', 'AU', '10', '-29.4989', '149.845', 1, 'true', 0),
('MSB', 'Marigot Seaplane Base', 'MSB', 'Marigot St Martin', 'GUADELOUPE', 'GP', '-100', '0', '0', 1, 'true', 0),
('MSC', 'Falcon Field', 'MSC', 'Mesa', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MSE', 'Kent International Arpt', 'MSE', 'Manston', 'UNITED KINGDOM', 'GB', '0', '51.342222', '1.346111', 1, 'true', 0),
('MSJ', 'Misawa Arpt', 'MSJ', 'Misawa', 'JAPAN', 'JP', '9', '40.703222', '141.368364', 1, 'true', 0),
('MSL', 'Muscle Shoals Arpt', 'MSL', 'Muscle Shoals', 'UNITED STATES', 'US', '-6', '34.7453', '-87.6102', 1, 'true', 0),
('MSN', 'Dane County Regional', 'MSN', 'Madison', 'UNITED STATES', 'US', '-6', '43.139858', '-89.337514', 1, 'true', 0),
('MSO', 'Missoula Intl', 'MSO', 'Missoula', 'UNITED STATES', 'US', '-7', '46.916306', '-114.090556', 1, 'true', 0),
('MIC', 'Crystal Arpt', 'MSP', 'Minneapolis', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('FCM', 'Flying Cloud Arpt', 'MSP', 'Minneapolis', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('MSP', 'Minneapolis St Paul Intl', 'MSP', 'Minneapolis', 'UNITED STATES', 'US', '-6', '44.881956', '-93.221767', 3, 'true', 0),
('MHP', 'Minsk Intl 1', 'MSQ', 'Minsk', 'BELARUS', 'BY', '2', '53.864472', '27.539683', 2, '', 0),
('MSQ', 'Minsk Intl 2', 'MSQ', 'Minsk', 'BELARUS', 'BY', '2', '53.882469', '28.030731', 2, 'true', 0),
('MSR', 'Mus Arpt', 'MSR', 'Mus Tr', 'TURKEY', 'TR', '2', '38.747769', '41.661236', 1, 'true', 0),
('MSS', 'Richards Field', 'MSS', 'Massena', 'UNITED STATES', 'US', '-5', '44.935833', '-74.845547', 1, 'true', 0),
('MST', 'Maastricht Aachen Arpt', 'MST', 'Maastricht', 'NETHERLANDS', 'NL', '1', '50.911658', '5.770144', 2, 'true', 0),
('ZYT', 'Maastricht Rail Station', 'MST', 'Maastricht', 'NETHERLANDS', 'NL', '-100', '0', '0', 2, '', 0),
('MSU', 'Moshoeshoe Intl Arpt', 'MSU', 'Maseru', 'LESOTHO', 'LS', '2', '-29.462256', '27.552503', 1, 'true', 0),
('MSV', 'Catskills Sulivan', 'MSV', 'Monticello', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MSY', 'Louis Armstrong Intl Arpt', 'MSY', 'New Orleans', 'UNITED STATES', 'US', '-6', '29.993389', '-90.258028', 2, 'true', 0),
('NEW', 'New Lakefront Arpt', 'MSY', 'New Orleans', 'UNITED STATES', 'US', '-100', '30.0424', '-90.0283', 2, '', 0),
('MTH', 'Marathon Arpt', 'MTH', 'Marathon', 'UNITED STATES', 'US', '-5', '24.726111', '-81.051389', 1, 'true', 0),
('MTJ', 'Montrose County', 'MTJ', 'Montrose', 'UNITED STATES', 'US', '-7', '38.509794', '-107.894242', 1, 'true', 0),
('MTL', 'Maitland Airport', 'MTL', 'Maitland', 'AUSTRALIA', 'AU', '10', '-32.7033', '151.488', 1, 'true', 0),
('MTO', 'Coles County', 'MTO', 'Mattoon', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MTP', 'Sky Portal Arpt', 'MTP', 'Montauk', 'UNITED STATES', 'US', '-100', '41.0765', '-71.9208', 1, 'true', 0),
('MTR', 'S Jeronimo Arpt', 'MTR', 'Monteria', 'COLOMBIA', 'CO', '-5', '8.823744', '-75.825831', 1, 'true', 0),
('MTS', 'Matsapha Intl Arpt', 'MTS', 'Manzini', 'SWAZILAND', 'SZ', '2', '-26.529022', '31.307519', 1, 'true', 0),
('MTT', 'Minatitlan Municipal Arpt', 'MTT', 'Minatitlan', 'MEXICO', 'MX', '-6', '18.103419', '-94.580681', 1, 'true', 0),
('MTW', 'Manitowoc Municipal Arpt', 'MTW', 'Manitowoc', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MTY', 'Escobedo Arpt', 'MTY', 'Monterrey', 'MEXICO', 'MX', '-6', '25.778489', '-100.106878', 2, 'true', 0),
('NTR', 'Aeropuerto Del Norte', 'MTY', 'Monterrey', 'MEXICO', 'MX', '-6', '25.865572', '-100.237239', 2, '', 0),
('MUA', 'Munda Arpt', 'MUA', 'Munda', 'SOLOMON ISLANDS', 'SB', '11', '-8.32797', '157.263', 1, 'true', 0),
('MUB', 'Maun Arpt', 'MUB', 'Maun', 'BOTSWANA', 'BW', '2', '-19.972564', '23.431086', 1, 'true', 0),
('ZMU', 'Munich HBF Railway Service', 'MUC', 'Munich', 'GERMANY', 'DE', '1', '48.1408', '11.555', 2, '', 0),
('MUC', 'Munich Intl Arpt', 'MUC', 'Munich', 'GERMANY', 'DE', '1', '48.353783', '11.786086', 2, 'true', 0),
('MUE', 'Waimea Arpt', 'MUE', 'Kamuela', 'UNITED STATES', 'US', '-10', '20.001328', '-155.668108', 1, 'true', 0),
('MUN', 'Quiriquire Arpt', 'MUN', 'Maturin', 'VENEZUELA', 'VE', '-4', '9.749067', '-63.1534', 1, 'true', 0),
('MUO', 'Mountain Home AFB', 'MUO', 'Mountain Home', 'UNITED STATES', 'US', '-7', '43.043603', '-115.872431', 1, 'true', 0),
('MUR', 'Marudi Arpt', 'MUR', 'Marudi', 'MALAYSIA', 'MY', '8', '4.1775', '114.321944', 1, 'true', 0),
('MUX', 'Multan Arpt', 'MUX', 'Multan', 'PAKISTAN', 'PK', '5', '30.203222', '71.419111', 1, 'true', 0),
('MUZ', 'Musoma Arpt', 'MUZ', 'Musoma', 'TANZANIA', 'TZ', '3', '-1.483', '33.8', 1, 'true', 0),
('MVB', 'Franceville Mvengue Arpt', 'MVB', 'Franceville Mvengue', 'GABON', 'GA', '1', '-1.656156', '13.438036', 1, 'true', 0),
('MVC', 'Monroe County Arpt', 'MVC', 'Monroeville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MVD', 'Carrasco Arpt', 'MVD', 'Montevideo', 'URUGUAY', 'UY', '-3', '-34.838417', '-56.030806', 1, 'true', 0),
('MVF', 'Dixsept Rosado Arpt', 'MVF', 'Mossoro', 'BRAZIL', 'BR', '-3', '-5.20192', '-37.3643', 1, 'true', 0),
('MVN', 'Mt Vernon Outland Arpt', 'MVN', 'Mt Vernon', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MVQ', 'Mogilev Arpt', 'MVQ', 'Mogilev', 'BELARUS', 'BY', '2', '53.9549', '30.0951', 1, 'true', 0),
('MVR', 'Salam Arpt', 'MVR', 'Maroua', 'CAMEROON', 'CM', '1', '10.451392', '14.257361', 1, 'true', 0),
('MVV', 'Megeve Arpt', 'MVV', 'Megeve', 'FRANCE', 'FR', '1', '45.8208', '6.65222', 1, 'true', 0),
('MVY', 'Dukes County', 'MVY', 'Martha S Vineyard', 'UNITED STATES', 'US', '-5', '41.391667', '-70.615278', 1, 'true', 0),
('MVZ', 'Ft Victoria Arpt', 'MVZ', 'Masvingo', 'ZIMBABWE', 'ZW', '2', '-20.055333', '30.859111', 1, 'true', 0),
('MWA', 'Williamson County', 'MWA', 'Marion', 'UNITED STATES', 'US', '-5', '37.754957', '-89.011094', 1, 'true', 0),
('MWH', 'Grant County', 'MWH', 'Moses Lake', 'UNITED STATES', 'US', '-8', '47.207708', '-119.32019', 1, 'true', 0),
('MWO', 'Hook Field', 'MWO', 'Middletown', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MWZ', 'Mwanza Arpt', 'MWZ', 'Mwanza', 'TANZANIA', 'TZ', '3', '-2.444486', '32.932667', 1, 'true', 0),
('MXC', 'San Juan County Arpt', 'MXC', 'Monticello', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MXL', 'Rodolfg Sachez Taboada', 'MXL', 'Mexicali', 'MEXICO', 'MX', '-8', '32.630634', '-115.241637', 1, 'true', 0),
('MXN', 'Morlaix Arpt', 'MXN', 'Morlaix', 'FRANCE', 'FR', '1', '48.603222', '-3.815783', 1, 'true', 0),
('MXS', 'Maota Arpt', 'MXS', 'Maota', 'SAMOA', 'WS', '-11', '-13.733', '-172.3', 1, 'true', 0),
('MXX', 'Mora Arpt', 'MXX', 'Mora', 'SWEDEN', 'SE', '1', '60.957908', '14.511383', 1, 'true', 0),
('MXY', 'McCarthy Arpt', 'MXY', 'Mccarthy', 'UNITED STATES', 'US', '-8', '61.437061', '-142.903074', 1, 'true', 0),
('MXZ', 'Meixian Arpt', 'MXZ', 'Meixian', 'CHINA', 'CN', '8', '24.35', '116.133', 1, 'true', 0),
('MYA', 'Moruya Arpt', 'MYA', 'Moruya', 'AUSTRALIA', 'AU', '10', '-35.8978', '150.144', 1, 'true', 0),
('MYC', 'Maracay Arpt', 'MYC', 'Maracay', 'VENEZUELA', 'VE', '-4', '10.249978', '-67.649419', 1, 'true', 0),
('MYD', 'Malindi Arpt', 'MYD', 'Malindi', 'KENYA', 'KE', '3', '-3.22931', '40.1017', 1, 'true', 0),
('MYJ', 'Matsuyama Airport', 'MYJ', 'Matsuyama', 'JAPAN', 'JP', '9', '33.827222', '132.699722', 1, 'true', 0),
('MYL', 'Mccall Arpt', 'MYL', 'Mccall', 'UNITED STATES', 'US', '-7', '44.889722', '-116.101389', 1, 'true', 0),
('MYP', 'Mary Arpt', 'MYP', 'Mary', 'TURKMENISTAN', 'TM', '5', '37.6194', '61.8967', 1, 'true', 0),
('MYQ', 'Mysore Arpt', 'MYQ', 'Mysore', 'INDIA', 'IN', '5', '12.3072', '76.6497', 1, 'true', 0),
('MYR', 'Myrtle Beach Jetway', 'MYR', 'Myrtle Beach', 'UNITED STATES', 'US', '-5', '33.67975', '-78.928333', 3, 'true', 0),
('CRE', 'Grand Strand Arpt', 'MYR', 'Myrtle Beach', 'UNITED STATES', 'US', '-100', '33.8118', '-78.7239', 3, '', 0),
('GGE', 'George Town Arpt', 'MYR', 'Myrtle Beach', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('MYV', 'Yuba County Arpt', 'MYV', 'Marysville', 'UNITED STATES', 'US', '-8', '39.0553', '-121.3411', 1, 'true', 0),
('MYW', 'Mtwara Arpt', 'MYW', 'Mtwara', 'TANZANIA', 'TZ', '2', '-10.339058', '40.181781', 1, 'true', 0),
('MYY', 'Miri Arpt', 'MYY', 'Miri', 'MALAYSIA', 'MY', '8', '4.322014', '113.986806', 1, 'true', 0),
('MZG', 'Makung Arpt', 'MZG', 'Makung', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '23.568669', '119.628311', 1, 'true', 0),
('MZH', 'Merzifon Airport', 'MZH', 'Merzifon', 'TURKEY', 'TR', '2', '40.829375', '35.521992', 1, 'true', 0),
('MZI', 'Mopti Arpt', 'MZI', 'Mopti', 'MALI', 'ML', '0', '14.512803', '-4.079561', 1, 'true', 0),
('MZL', 'Santaguida Arpt', 'MZL', 'Manizales', 'COLOMBIA', 'CO', '-5', '5.029597', '-75.464708', 1, 'true', 0),
('MZM', 'Frescaty Airport', 'MZM', 'Metz', 'FRANCE', 'FR', '1', '49.071667', '6.131667', 1, 'true', 0),
('MZO', 'Sierra Maestra Arpt', 'MZO', 'Manzanillo', 'CUBA', 'CU', '-5', '20.288172', '-77.0893', 1, 'true', 0),
('MZR', 'Mazar I Sharif Arpt', 'MZR', 'Mazar I Sharif', 'AFGHANISTAN', 'AF', '5', '36.706914', '67.209678', 1, 'true', 0),
('MZT', 'Buelina Arpt', 'MZT', 'Mazatlan', 'MEXICO', 'MX', '-7', '23.161356', '-106.266072', 1, 'true', 0),
('MZV', 'Mulu Arpt', 'MZV', 'Mulu', 'MALAYSIA', 'MY', '8', '4.048333', '114.805', 1, 'true', 0),
('NAA', 'Narrabri Arpt', 'NAA', 'Narrabri', 'AUSTRALIA', 'AU', '10', '-30.3192', '149.827', 1, 'true', 0),
('NAC', 'Naracoorte Arpt', 'NAC', 'Naracoorte', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('NAG', 'Dr Ambedkar Intl Arpt', 'NAG', 'Nagpur', 'INDIA', 'IN', '5', '21.092192', '79.047183', 1, 'true', 0),
('NAJ', 'Nakhichevan', 'NAJ', 'Nakhichevan', 'AZERBAIJAN', 'AZ', '3', '39.1888', '45.4584', 1, 'true', 0),
('NAK', 'Nakhon Ratchasima Arpt', 'NAK', 'Nakhon Ratchasima', 'THAILAND', 'TH', '7', '14.949497', '102.312736', 1, 'true', 0),
('NAL', 'Nalchik Arpt', 'NAL', 'Nalchik', 'RUSSIA', 'RU', '4', '43.5129', '43.6366', 1, 'true', 0),
('NAM', 'Namlea Arpt', 'NAM', 'Namlea', 'INDONESIA', 'ID', '-100', '0', '0', 1, 'true', 0),
('NAN', 'Nadi Intl', 'NAN', 'Nadi', 'FIJI', 'FJ', '12', '-17.755392', '177.443378', 1, 'true', 0),
('NAO', 'Nanchong Arpt', 'NAO', 'Nanchong', 'CHINA', 'CN', '8', '30.754', '106.062', 1, 'true', 0),
('NAP', 'Capodichino Arpt', 'NAP', 'Naples', 'ITALY', 'IT', '1', '40.886033', '14.290781', 1, 'true', 0),
('NAR', 'Nare Arpt', 'NAR', 'Nare', 'COLOMBIA', 'CO', '-100', '0', '0', 1, 'true', 0),
('WZY', 'Seaplane Base Arpt', 'NAS', 'Nassau', 'BAHAMAS', 'BS', '-5', '25.0872', '-77.3239', 3, '', 0),
('PID', 'Paradise Island Arpt', 'NAS', 'Nassau', 'BAHAMAS', 'BS', '-5', '25.083', '-77.3', 3, '', 0),
('NAS', 'Nassau Intl', 'NAS', 'Nassau', 'BAHAMAS', 'BS', '-5', '25.038958', '-77.466231', 3, 'true', 0),
('NAT', 'Augusto Severo Intl Arpt', 'NAT', 'Natal', 'BRAZIL', 'BR', '-3', '-5.911417', '-35.247717', 1, 'true', 0),
('NAV', 'Nevsehir Arpt', 'NAV', 'Nevsehir', 'TURKEY', 'TR', '2', '38.771867', '34.53455', 1, 'true', 0),
('NAW', 'Narathiwat Arpt', 'NAW', 'Narathiwat', 'THAILAND', 'TH', '7', '6.519922', '101.7434', 1, 'true', 0),
('NBC', 'Nijnekamsk Arpt', 'NBC', 'Naberevnye Chelny', 'RUSSIA', 'RU', '-5', '32.477411', '-80.723161', 1, 'true', 0),
('NBE', 'Hammamet International Arpt', 'NBE', 'Hammamet', 'TUNISIA', 'TN', '1', '36.075833', '10.438611', 1, 'true', 0),
('WIL', 'Wilson Airport', 'NBO', 'Nairobi', 'KENYA', 'KE', '3', '-1.321719', '36.814833', 2, '', 0),
('NBO', 'Jomo Kenyatta Intl', 'NBO', 'Nairobi', 'KENYA', 'KE', '3', '-1.319167', '36.9275', 2, 'true', 0),
('NCA', 'North Caicos Municipal Arpt', 'NCA', 'North Caicos', 'TURKS AND CAICOS ISLANDS', 'TC', '-5', '21.917475', '-71.939561', 1, 'true', 0),
('NCE', 'Cote D Azur Arpt', 'NCE', 'Nice', 'FRANCE', 'FR', '1', '43.658411', '7.215872', 1, 'true', 0),
('NCL', 'Newcastle Arpt', 'NCL', 'Newcastle', 'UNITED KINGDOM', 'GB', '0', '55.0375', '-1.691667', 2, 'true', 0),
('XVU', 'Durham Rail Station', 'NCL', 'Newcastle', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('NCS', 'Newcastle Intl Arpt', 'NCS', 'Newcastle', 'SOUTH AFRICA', 'ZA', '2', '-27.770586', '29.976894', 1, 'true', 0),
('NCU', 'Nukus', 'NCU', 'Nukus', 'UZBEKISTAN', 'UZ', '5', '42.4884', '59.6233', 1, 'true', 0),
('NCY', 'Annecy Meythet Arpt', 'NCY', 'Annecy', 'FRANCE', 'FR', '1', '45.929233', '6.098764', 1, 'true', 0),
('NDB', 'Nouadhibou Arpt', 'NDB', 'Nouadhibou', 'MAURITANIA', 'MR', '0', '20.933067', '-17.029956', 1, 'true', 0),
('NDG', 'Qiqihar Arpt', 'NDG', 'Qiqihar', 'CHINA', 'CN', '8', '47.239628', '123.918131', 1, 'true', 0),
('NDJ', 'N Djamena Arpt', 'NDJ', 'N Djamena', 'CHAD', 'TD', '1', '12.133689', '15.034019', 1, 'true', 0),
('NDK', 'Namdrik Arpt', 'NDK', 'Namdrik', 'MARSHALL ISLANDS', 'MH', '12', '5.63167', '168.125', 1, 'true', 0),
('NDR', 'Nador Arpt', 'NDR', 'Nador', 'MOROCCO', 'MA', '0', '34.9888', '-3.02821', 1, 'true', 0),
('NDY', 'Sanday Arpt', 'NDY', 'Sanday', 'UNITED KINGDOM', 'GB', '0', '59.2503', '-2.57667', 1, 'true', 0),
('NEF', 'Neftekamsk Airport', 'NEF', 'Neftekamsk Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('NEG', 'Negril Arpt', 'NEG', 'Negril', 'JAMAICA', 'JM', '-5', '18.34', '-78.335556', 1, 'true', 0),
('NER', 'Neryungri Chulman', 'NER', 'Neryungri Chulman', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('NEV', 'Nevis Airport', 'NEV', 'Nevis', 'SAINT KITTS AND NEVIS', 'KN', '-4', '17.205678', '-62.589869', 1, 'true', 0),
('NFG', 'Nefteyugansk Arpt', 'NFG', 'Nefteyugansk', 'RUSSIA', 'RU', '6', '61.1083', '72.65', 1, 'true', 0),
('FLX', 'Fallon Municipal Arpt', 'NFL', 'Fallon', 'UNITED STATES', 'US', '-100', '0', '0', 1, '', 0),
('NGA', 'Young Arpt', 'NGA', 'Young', 'AUSTRALIA', 'AU', '-100', '-34.25', '148.2483', 1, 'true', 0),
('NGB', 'Ningbo Arpt', 'NGB', 'Ningbo', 'CHINA', 'CN', '8', '29.826683', '121.461906', 1, 'true', 0),
('NGE', 'N Gaoundere Arpt', 'NGE', 'N Gaoundere', 'CAMEROON', 'CM', '1', '7.357011', '13.559242', 1, 'true', 0),
('NKM', 'Nagoya Komaki Arpt', 'NGO', 'Nagoya', 'JAPAN', 'JP', '9', '35.255', '136.924', 2, '', 0),
('NGO', 'Chubu Centrair Intl Arpt', 'NGO', 'Nagoya', 'JAPAN', 'JP', '9', '34.858414', '136.805408', 2, 'true', 0),
('NGS', 'Nagasaki Airport', 'NGS', 'Nagasaki', 'JAPAN', 'JP', '9', '32.916944', '129.913611', 1, 'true', 0),
('NHA', 'Nha Trang Arpt', 'NHA', 'Nha Trang', 'VIET NAM', 'VN', '7', '12.227467', '109.192322', 1, 'true', 0),
('NHZ', 'Naval Air Station', 'NHZ', 'Brunswick', 'UNITED STATES', 'US', '-100', '43.8917', '-69.9425', 1, 'true', 0),
('NIM', 'Niamey Airport', 'NIM', 'Niamey', 'NIGER', 'NE', '1', '13.481547', '2.183614', 1, 'true', 0),
('NJC', 'Nizhnevartovsk Arpt', 'NJC', 'Nizhnevartovsk', 'RUSSIA', 'RU', '6', '60.949272', '76.483617', 1, 'true', 0),
('NJF', 'Al Najaf International Arpt', 'NJF', 'Al Najaf International Arpt', 'IRAQ', 'IQ', '3', '31.991667', '44.404167', 1, 'true', 0),
('NKC', 'Nouakchott Arpt', 'NKC', 'Nouakchott', 'MAURITANIA', 'MR', '0', '18.097856', '-15.947956', 1, 'true', 0),
('NKG', 'Nanjing Arpt', 'NKG', 'Nanjing', 'CHINA', 'CN', '8', '31.742042', '118.862025', 1, 'true', 0),
('NLA', 'Ndola Arpt', 'NLA', 'N Dola', 'ZAMBIA', 'ZM', '2', '-12.998139', '28.664944', 1, 'true', 0),
('NLC', 'Nas Reeves Field', 'NLC', 'Lemoore', 'UNITED STATES', 'US', '-8', '36.333012', '-119.95208', 1, 'true', 0),
('NLD', 'Quetzalcoatl Intl', 'NLD', 'Nuevo Laredo', 'MEXICO', 'MX', '-6', '27.443918', '-99.57046', 1, 'true', 0),
('NLK', 'Norfolk Island Intl Arpt', 'NLK', 'Norfolk Island', 'NORFOLK ISLAND', 'NF', '11', '-29.041625', '167.938742', 1, 'true', 0),
('NLP', 'Nelspruit Airport', 'NLP', 'Nelspruit', 'SOUTH AFRICA', 'ZA', '2', '-25.5', '30.9138', 2, 'true', 0),
('MQP', 'Kruger Mpumalanga Intl Arpt', 'NLP', 'Nelspruit', 'SOUTH AFRICA', 'ZA', '2', '-25.3832', '31.1056', 2, '', 0),
('NLV', 'Nikolaev Arpt', 'NLV', 'Nikolaev', 'UKRAINE', 'UA', '2', '47.0579', '31.9198', 1, 'true', 0),
('NMA', 'Namangrad Airport', 'NMA', 'Namangrad', 'UZBEKISTAN', 'UZ', '5', '40.9846', '71.5567', 1, 'true', 0),
('NNG', 'Nanning Arpt', 'NNG', 'Nanning', 'CHINA', 'CN', '8', '22.608267', '108.172442', 1, 'true', 0),
('NNM', 'Naryan-Mar Airport', 'NNM', 'Naryan Mar', 'RUSSIA', 'RU', '4', '67.380537', '53.051016', 1, 'true', 0),
('NNR', 'Connemara Arpt', 'NNR', 'Spiddal', 'IRELAND', 'IE', '0', '53.2303', '-9.46778', 1, 'true', 0),
('NNT', 'Nan Arpt', 'NNT', 'Nan Th', 'THAILAND', 'TH', '7', '18.807914', '100.783419', 1, 'true', 0),
('NOA', 'Nowra Arpt', 'NOA', 'Nowra', 'AUSTRALIA', 'AU', '10', '-34.9489', '150.537', 1, 'true', 0),
('NOB', 'Nosara Beach Arpt', 'NOB', 'Nosara Beach', 'COSTA RICA', 'CR', '-6', '9.97649', '-85.653', 1, 'true', 0),
('NOC', 'Knock International', 'NOC', 'Knock', 'IRELAND', 'IE', '0', '53.910297', '-8.818492', 1, 'true', 0),
('NOG', 'Nogales Arpt', 'NOG', 'Nogales', 'MEXICO', 'MX', '-7', '31.226083', '-110.975831', 1, 'true', 0),
('NOJ', 'Nojabrxsk Arpt', 'NOJ', 'Nojabrxsk', 'RUSSIA', 'RU', '6', '63.110079', '75.162243', 1, 'true', 0),
('NOS', 'Fascene Arpt', 'NOS', 'Nossi Be', 'MADAGASCAR', 'MG', '3', '-13.312067', '48.314822', 1, 'true', 0),
('NOT', 'Novato Arpt', 'NOT', 'Novato', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('NOU', 'Tontouta Arpt', 'NOU', 'Noumea', 'NEW CALEDONIA', 'NC', '11', '-22.014553', '166.212972', 2, 'true', 0),
('GEA', 'Magenta Arpt', 'NOU', 'Noumea', 'NEW CALEDONIA', 'NC', '11', '-22.258278', '166.472806', 2, '', 0),
('NOZ', 'Novokuznetsk Arpt', 'NOZ', 'Novokuznetsk', 'RUSSIA', 'RU', '8', '53.8114', '86.8772', 1, 'true', 0),
('NPE', 'Hawkes Bay Arpt', 'NPE', 'Napier Hastings', 'NEW ZEALAND', 'NZ', '12', '-39.465833', '176.87', 1, 'true', 0),
('NPL', 'New Plymouth Arpt', 'NPL', 'New Plymouth', 'NEW ZEALAND', 'NZ', '12', '-39.008611', '174.179167', 1, 'true', 0),
('NPT', 'Newport State Arpt', 'NPT', 'Newport', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('NQI', 'Naval Air Station Arpt', 'NQI', 'Kingsville', 'UNITED STATES', 'US', '-6', '27.507223', '-97.809723', 1, 'true', 0),
('NQN', 'Neuquen Airport', 'NQN', 'Neuquen', 'ARGENTINA', 'AR', '-3', '-38.949', '-68.155711', 1, 'true', 0),
('EMA', 'East Midlands Arpt', 'NQT', 'Nottingham Uk', 'UNITED KINGDOM', 'GB', '0', '52.831111', '-1.328056', 2, '', 0),
('NQT', 'Nottingham Arpt', 'NQT', 'Nottingham Uk', 'UNITED KINGDOM', 'GB', '0', '52.92', '-1.079167', 2, 'true', 0),
('NQY', 'Newquay Civil Arpt', 'NQY', 'Newquay', 'UNITED KINGDOM', 'GB', '0', '50.440558', '-4.995408', 1, 'true', 0),
('NRA', 'Narrandera Arpt', 'NRA', 'Narrandera', 'AUSTRALIA', 'AU', '10', '-34.7022', '146.512', 1, 'true', 0),
('XYK', 'Norrkoping Railway Service', 'NRK', 'Norrkoping', 'SWEDEN', 'SE', '-100', '0', '0', 2, '', 0),
('NRK', 'Kungsangen Arpt', 'NRK', 'Norrkoping', 'SWEDEN', 'SE', '1', '58.586253', '16.250622', 2, 'true', 0),
('NRL', 'North Ronaldsay Arpt', 'NRL', 'North Ronaldsay', 'UNITED KINGDOM', 'GB', '0', '59.3675', '-2.43444', 1, 'true', 0),
('NSA', 'Noosa Airport', 'NSA', 'Noosa', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('NSE', 'Whiting Field Nas', 'NSE', 'Milton', 'UNITED STATES', 'US', '-6', '30.724167', '-87.021944', 1, 'true', 0),
('NSK', 'Norilsk Arpt', 'NSK', 'Norilsk', 'RUSSIA', 'RU', '8', '69.311053', '87.332183', 1, 'true', 0),
('NSM', 'Norseman Arpt', 'NSM', 'Norseman', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('NSN', 'Nelson Arpt', 'NSN', 'Nelson', 'NEW ZEALAND', 'NZ', '12', '-41.298333', '173.221111', 1, 'true', 0),
('NSO', 'Scone Airport', 'NSO', 'Scone', 'AUSTRALIA', 'AU', '10', '-32.0372', '150.832', 1, 'true', 0),
('NST', 'Nakhon Si Thammarat Arpt', 'NST', 'Nakhon Si Thammarat', 'THAILAND', 'TH', '7', '8.539617', '99.944725', 1, 'true', 0),
('NTB', 'Notodden Arpt', 'NTB', 'Notodden', 'NORWAY', 'NO', '-100', '59.5655', '9.2123', 1, 'true', 0),
('QJZ', 'Nantes Rail Station', 'NTE', 'Nantes', 'FRANCE', 'FR', '-100', '47.1667', '-1.6167', 2, '', 0),
('NTE', 'Nantes Atlantique', 'NTE', 'Nantes', 'FRANCE', 'FR', '1', '47.153189', '-1.610725', 2, 'true', 0),
('NTG', 'Nantong Arpt', 'NTG', 'Nantong', 'CHINA', 'CN', '8', '32.0708', '120.976', 1, 'true', 0),
('NTL', 'Williamtown Arpt', 'NTL', 'Newcastle', 'AUSTRALIA', 'AU', '10', '-32.78', '151.83', 2, 'true', 0),
('BEO', 'Belmont Arpt', 'NTL', 'Newcastle', 'AUSTRALIA', 'AU', '-100', '0', '0', 2, '', 0),
('NTN', 'Normanton Arpt', 'NTN', 'Normanton', 'AUSTRALIA', 'AU', '10', '-17.6836', '141.07', 1, 'true', 0),
('NTO', 'Santo Antao Arpt', 'NTO', 'Santo Antao', 'CAPE VERDE', 'CV', '-100', '0', '0', 1, 'true', 0),
('NTY', 'Pilansberg Arpt', 'NTY', 'Sun City', 'SOUTH AFRICA', 'ZA', '2', '-25.333822', '27.173358', 1, 'true', 0),
('NUE', 'Nuremberg Arpt', 'NUE', 'Nuremberg', 'GERMANY', 'DE', '1', '49.4987', '11.066897', 2, 'true', 0),
('ZAQ', 'Nuremberg Rail Station', 'NUE', 'Nuremberg', 'GERMANY', 'DE', '1', '49.446389', '11.081944', 2, '', 0),
('NUL', 'Nulato Arpt', 'NUL', 'Nulato', 'UNITED STATES', 'US', '-9', '64.729444', '-158.074167', 1, 'true', 0),
('NUQ', 'Moffett Field', 'NUQ', 'Mountain View', 'UNITED STATES', 'US', '-8', '37.416142', '-122.049139', 1, 'true', 0),
('NUR', 'Nullarbor Arpt', 'NUR', 'Nullarbor', 'AUSTRALIA', 'AU', '2', '49.446', '11.081944', 1, 'true', 0),
('NUX', 'Novy Urengoy Arpt', 'NUX', 'Novy Urengoy', 'RUSSIA', 'RU', '6', '66.041811', '76.313938', 1, 'true', 0),
('NVK', 'Framnes Arpt', 'NVK', 'Narvik', 'NORWAY', 'NO', '1', '68.435833', '17.388056', 1, 'true', 0),
('NVR', 'Yurievo Airport', 'NVR', 'Novgorod', 'RUSSIA', 'RU', '4', '0', '0', 1, 'true', 0),
('NVS', 'Nevers Arpt', 'NVS', 'Nevers', 'FRANCE', 'FR', '1', '47.002625', '3.113333', 1, 'true', 0),
('NVT', 'Navegantes Arpt', 'NVT', 'Navegantes', 'BRAZIL', 'BR', '-3', '-26.879999', '-48.65139', 1, 'true', 0),
('NWI', 'Norwich Airport', 'NWI', 'Norwich', 'UNITED KINGDOM', 'GB', '0', '52.675833', '1.282778', 1, 'true', 0),
('NYA', 'Nyagan Airport', 'NYA', 'Nyagan Airport', 'RUSSIA', 'RU', '6', '62.11', '65.615', 1, 'true', 0),
('JFK', 'John F Kennedy Intl', 'NYC', 'New York', 'UNITED STATES', 'US', '-5', '40.639751', '-73.778925', 2, '', 0),
('LGA', 'La Guardia', 'NYC', 'New York', 'UNITED STATES', 'US', '-5', '40.777245', '-73.872608', 2, '', 0),
('NYE', 'Nyeri Arpt', 'NYE', 'Nyeri', 'KENYA', 'KE', '-100', '0', '0', 1, 'true', 0),
('NYK', 'Nanyuki Arpt', 'NYK', 'Nanyuki', 'KENYA', 'KE', '3', '-0.067', '37.033', 1, 'true', 0),
('NYM', 'Nadym Airport', 'NYM', 'Nadym Airport', 'RUSSIA', 'RU', '6', '65.4809', '72.6989', 1, 'true', 0),
('NYN', 'Nyngan Arpt', 'NYN', 'Nyngan', 'AUSTRALIA', 'AU', '-100', '-31.5531', '147.2031', 1, 'true', 0),
('NYU', 'Nyaung U Arpt', 'NYU', 'Nyaung', 'MYANMAR', 'MM', '6', '21.173833', '94.924667', 1, 'true', 0),
('OAG', 'Springhill Arpt', 'OAG', 'Orange', 'AUSTRALIA', 'AU', '10', '-33.3817', '149.133', 1, 'true', 0),
('OAJ', 'Albert J Ellis', 'OAJ', 'Jacksonville', 'UNITED STATES', 'US', '-5', '34.829164', '-77.612139', 1, 'true', 0),
('OAK', 'Metro Oakland Intl Arpt', 'OAK', 'Oakland', 'UNITED STATES', 'US', '-8', '37.721278', '-122.220722', 1, 'true', 0),
('OAL', 'Cacoal Arpt', 'OAL', 'Cacoal', 'BRAZIL', 'BR', '2', '47.78', '10.627', 1, 'true', 0),
('OAM', 'Oamaru Airport', 'OAM', 'Oamaru', 'NEW ZEALAND', 'NZ', '12', '-44.97', '171.081667', 1, 'true', 0),
('OAX', 'Xoxocotlan Arpt', 'OAX', 'Oaxaca', 'MEXICO', 'MX', '-6', '16.999906', '-96.726639', 1, 'true', 0),
('OBE', 'Okeechobee County Arpt', 'OBE', 'Okeechobee', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('OBN', 'Connel Arpt', 'OBN', 'Oban', 'UNITED KINGDOM', 'GB', '0', '56.464', '-5.4', 1, 'true', 0),
('OBO', 'Obihiro Arpt', 'OBO', 'Obihiro', 'JAPAN', 'JP', '9', '42.733333', '143.217222', 1, 'true', 0),
('OBS', 'Vals Lanas Arpt', 'OBS', 'Aubenas', 'FRANCE', 'FR', '1', '44.544236', '4.372192', 1, 'true', 0),
('OCA', 'Ocean Reef Arpt', 'OCA', 'Ocean Reef', 'UNITED STATES', 'US', '-5', '25.325393', '-80.274775', 1, 'true', 0),
('OCE', 'Ocean City Airport', 'OCE', 'Ocean City', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('OCF', 'Taylor Field Arpt', 'OCF', 'Ocala', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('OCJ', 'Boscobel Arpt', 'OCJ', 'Ocho Rios', 'JAMAICA', 'JM', '-5', '18.404247', '-76.969017', 1, 'true', 0),
('OCN', 'Oceanside Municipal Arpt', 'OCN', 'Oceanside', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ODB', 'Cordoba Airport', 'ODB', 'Cordoba', 'SPAIN', 'ES', '1', '37.842006', '-4.848878', 1, 'true', 0),
('ZBQ', 'Odense Railroad Station', 'ODE', 'Odense', 'DENMARK', 'DK', '-100', '0', '0', 3, '', 0),
('ZIM', 'Odense Bus Service', 'ODE', 'Odense', 'DENMARK', 'DK', '-100', '0', '0', 3, '', 0),
('ODE', 'Odense Airport', 'ODE', 'Odense', 'DENMARK', 'DK', '1', '55.476664', '10.330933', 3, 'true', 0),
('ODN', 'Long Seridan Arpt', 'ODN', 'Long Seridan', 'MALAYSIA', 'MY', '8', '3.967', '115.05', 1, 'true', 0),
('ODS', 'Central Arpt', 'ODS', 'Odessa', 'UKRAINE', 'UA', '2', '46.426767', '30.676464', 1, 'true', 0),
('ODW', 'Oak Harbour Municipal', 'ODW', 'Oak Harbor', 'UNITED STATES', 'US', '-100', '48.2515', '-122.6737', 1, 'true', 0),
('OEA', 'Oneal Arpt', 'OEA', 'Vincennes', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('OEL', 'Oryol Yuzhny Airport', 'OEL', 'Oryol Yuzhny Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('OER', 'Ornskoldsvik Arpt', 'OER', 'Ornskoldsvik', 'SWEDEN', 'SE', '1', '63.408339', '18.990039', 1, 'true', 0),
('OFK', 'Karl Stefan Fld', 'OFK', 'Norfolk', 'UNITED STATES', 'US', '-100', '41.9856', '-97.4353', 1, 'true', 0),
('OGA', 'Searle Field', 'OGA', 'Ogallala', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('OGD', 'Ogden Municipal', 'OGD', 'Ogden', 'UNITED STATES', 'US', '-100', '41.1961', '-112.0122', 1, 'true', 0),
('OGG', 'Kahului Airport', 'OGG', 'Maui', 'UNITED STATES', 'US', '-10', '20.89865', '-156.430458', 1, 'true', 0),
('OGS', 'Ogdensburg Municipal', 'OGS', 'Ogdensburg', 'UNITED STATES', 'US', '-5', '44.681854', '-75.4655', 1, 'true', 0),
('OGZ', 'VLADIKAVKAZ', 'OGZ', 'VLADIKAVKAZ', 'RUSSIA', 'RU', '4', '43.2051', '44.6066', 1, 'true', 0),
('OHD', 'Ohrid Arpt', 'OHD', 'Ohrid', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK', '1', '41.179956', '20.742325', 1, 'true', 0),
('OHH', 'Okha Airport', 'OHH', 'Okha Airport', 'RUSSIA', 'RU', '11', '53.583333', '142.933333', 1, 'true', 0),
('OHO', 'Okhotsk Airport', 'OHO', 'Okhotsk Airport', 'RUSSIA', 'RU', '11', '59.4101', '143.057', 1, 'true', 0),
('OIA', 'Ourilandia Arpt', 'OIA', 'Ourilandia', 'BRAZIL', 'BR', '-4', '-6.763056', '-51.05', 1, 'true', 0),
('OIM', 'Oshima Arpt', 'OIM', 'Oshima', 'JAPAN', 'JP', '9', '34.782033', '139.360306', 1, 'true', 0),
('OIT', 'Oita Arpt', 'OIT', 'Oita', 'JAPAN', 'JP', '9', '33.479444', '131.737222', 1, 'true', 0),
('OKA', 'Naha Field', 'OKA', 'Okinawa', 'JAPAN', 'JP', '9', '26.195814', '127.645869', 1, 'true', 0),
('PWA', 'Wiley Post Arpt', 'OKC', 'Oklahoma City', 'UNITED STATES', 'US', '-100', '35.5342', '-97.6471', 3, '', 0),
('DWN', 'Downtown Airpark', 'OKC', 'Oklahoma City', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('OKC', 'Will Rogers World Arpt', 'OKC', 'Oklahoma City', 'UNITED STATES', 'US', '-6', '35.393089', '-97.600733', 3, 'true', 0),
('OKE', 'Okino Erabu Arpt', 'OKE', 'Okino Erabu', 'JAPAN', 'JP', '-100', '27.4317', '128.7056', 1, 'true', 0),
('OKJ', 'Okayama Arpt', 'OKJ', 'Okayama', 'JAPAN', 'JP', '9', '34.756944', '133.855278', 1, 'true', 0),
('OKK', 'Kokomo Municipal', 'OKK', 'Kokomo', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('OKT', 'Oktyabrsky Airport', 'OKT', 'Oktyabrsky Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('OKY', 'Oakey Arpt', 'OKY', 'Oakey', 'AUSTRALIA', 'AU', '10', '-27.411389', '151.735278', 1, 'true', 0),
('OLB', 'Costa Smeralda Arpt', 'OLB', 'Olbia', 'ITALY', 'IT', '1', '40.898661', '9.517628', 1, 'true', 0),
('OLK', 'Fuerte Olimpo Arpt', 'OLK', 'Fuerte Olimpo', 'PARAGUAY', 'PY', '-100', '60.3883', '120.4717', 1, 'true', 0),
('OLM', 'Olympia Arpt', 'OLM', 'Olympia', 'UNITED STATES', 'US', '-7', '46.969404', '-122.902545', 1, 'true', 0),
('OLP', 'Olympic Dam Arpt', 'OLP', 'Olympic Dam', 'AUSTRALIA', 'AU', '9', '-30.485', '136.877', 1, 'true', 0),
('OLS', 'International Arpt', 'OLS', 'Nogales', 'UNITED STATES', 'US', '-7', '31.417722', '-110.84789', 1, 'true', 0),
('OLU', 'Columbus Arpt', 'OLU', 'Columbus', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('MIQ', 'Millard Airport', 'OMA', 'Omaha', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('OMA', 'Eppley Airfield', 'OMA', 'Omaha', 'UNITED STATES', 'US', '-6', '41.303167', '-95.894069', 2, 'true', 0),
('OMD', 'Oranjemund Arpt', 'OMD', 'Oranjemund', 'NAMIBIA', 'NA', '1', '-28.5847', '16.4467', 1, 'true', 0),
('OME', 'Nome Arpt', 'OME', 'Nome', 'UNITED STATES', 'US', '-9', '64.512203', '-165.445247', 1, 'true', 0),
('OMO', 'Mostar Arpt', 'OMO', 'Mostar', 'BOSNIA AND HERZEGOVINA', 'BA', '1', '43.2829', '17.845878', 1, 'true', 0),
('OMR', 'Oradea Arpt', 'OMR', 'Oradea', 'ROMANIA', 'RO', '2', '47.025278', '21.9025', 1, 'true', 0),
('OMS', 'Omsk Arpt', 'OMS', 'Omsk', 'RUSSIA', 'RU', '7', '54.967042', '73.310514', 1, 'true', 0),
('OND', 'Ondangwa Arpt', 'OND', 'Ondangwa', 'NAMIBIA', 'NA', '1', '-17.8782', '15.9526', 1, 'true', 0),
('ONG', 'Mornington Arpt', 'ONG', 'Mornington', 'AUSTRALIA', 'AU', '9', '-16.6625', '139.178', 1, 'true', 0),
('ONH', 'Oneonta Municpal', 'ONH', 'Oneonta', 'UNITED STATES', 'US', '-5', '42.524722', '-75.064444', 1, 'true', 0),
('ONJ', 'Odate Noshiro Arpt', 'ONJ', 'Odate Noshiro', 'JAPAN', 'JP', '9', '40.1919', '140.371', 1, 'true', 0),
('ONM', 'Socorro Municipal Arpt', 'ONM', 'Socorro', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ONP', 'Newport Municipal Arpt', 'ONP', 'Newport', 'UNITED STATES', 'US', '8', '44.580361', '-124.057917', 1, 'true', 0),
('ONQ', 'Zonguldak Airport', 'ONQ', 'Zonguldak', 'TURKEY', 'TR', '2', '41.506111', '32.088611', 1, 'true', 0),
('ONT', 'Ontario Intl', 'ONT', 'Ontario', 'UNITED STATES', 'US', '-8', '34.056', '-117.601194', 1, 'true', 0),
('OOL', 'Gold Coast Arpt', 'OOL', 'Gold Coast', 'AUSTRALIA', 'AU', '10', '-28.164444', '153.504722', 1, 'true', 0),
('OOM', 'Cooma Airport', 'OOM', 'Cooma', 'AUSTRALIA', 'AU', '10', '-36.3006', '148.974', 1, 'true', 0),
('OPA', 'Kopasker Arpt', 'OPA', 'Kopasker', 'ICELAND', 'IS', '-100', '0', '0', 1, 'true', 0),
('OPO', 'Porto Airport', 'OPO', 'Porto', 'PORTUGAL', 'PT', '0', '41.248055', '-8.681389', 1, 'true', 0),
('XWR', 'Orebro Bofors Railway Service', 'ORB', 'Orebro Bofors', 'SWEDEN', 'SE', '-100', '0', '0', 3, '', 0),
('ORB', 'Orebro Bofors Arpt', 'ORB', 'Orebro Bofors', 'SWEDEN', 'SE', '1', '59.223733', '15.037956', 3, 'true', 0),
('XWM', 'Hallsberg Rail Station', 'ORB', 'Orebro Bofors', 'SWEDEN', 'SE', '-100', '0', '0', 3, '', 0),
('ORE', 'Orleans Arpt', 'ORE', 'Orleans', 'FRANCE', 'FR', '1', '47.987778', '1.760556', 1, 'true', 0),
('ORF', 'Norfolk Intl Arpt', 'ORF', 'Norfolk', 'UNITED STATES', 'US', '-5', '36.894611', '-76.201222', 1, 'true', 0),
('ORH', 'Worcester Arpt', 'ORH', 'Worcester', 'UNITED STATES', 'US', '-5', '42.2673', '-71.8757', 1, 'true', 0),
('ORK', 'Cork International Arpt', 'ORK', 'Cork', 'IRELAND', 'IE', '0', '51.841269', '-8.491111', 1, 'true', 0),
('ORL', 'Herndon Arpt', 'ORL', 'Orlando', 'UNITED STATES', 'US', '-5', '28.545464', '-81.332936', 2, 'true', 0),
('MCO', 'Orlando Intl Arpt', 'ORL', 'Orlando', 'UNITED STATES', 'US', '-5', '28.429394', '-81.308994', 2, '', 0),
('ORM', 'Northampton Rail Station', 'ORM', 'Northampton', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('ORN', 'Es Senia', 'ORN', 'Oran', 'ALGERIA', 'DZ', '1', '35.623858', '-0.621183', 1, 'true', 0),
('ORS', 'Waterport Arpt', 'ORS', 'Orpheus Island', 'AUSTRALIA', 'AU', '10', '-18.634', '146.5', 1, 'true', 0),
('ITM', 'Itami Arpt', 'OSA', 'Osaka', 'JAPAN', 'JP', '9', '34.785528', '135.438222', 2, '', 0),
('KIX', 'Kansai International Arpt', 'OSA', 'Osaka', 'JAPAN', 'JP', '9', '34.434722', '135.244167', 2, '', 0),
('OSD', 'Froesoe Airport', 'OSD', 'Ostersund', 'SWEDEN', 'SE', '1', '63.1944', '14.5003', 1, 'true', 0),
('OSH', 'Wittman Field', 'OSH', 'Oshkosh', 'UNITED STATES', 'US', '-5', '44.024983', '-88.551336', 1, 'true', 0),
('OSI', 'Osijek Arpt', 'OSI', 'Osijek', 'CROATIA', 'HR', '1', '45.462667', '18.810156', 1, 'true', 0),
('OSK', 'Oskarshamn', 'OSK', 'Oskarshamn', 'SWEDEN', 'SE', '1', '57.350453', '16.497972', 1, 'true', 0),
('OSL', 'Oslo Arpt', 'OSL', 'Oslo', 'NORWAY', 'NO', '1', '60.193917', '11.100361', 13, 'true', 0),
('TRF', 'Sandefjord Arpt', 'OSL', 'Oslo', 'NORWAY', 'NO', '1', '59.186703', '10.258628', 13, '', 0),
('RYG', 'Moss Rygge Arpt', 'OSL', 'Oslo', 'NORWAY', 'NO', '1', '59.378933', '10.785389', 13, '', 0),
('XZO', 'Oslo Central Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('XND', 'Drammen Rail Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('XKQ', 'Sarpsborg Rail Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('XKM', 'Moss Rail Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('XKI', 'Lillestrom Rail Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('XKF', 'Fredrikstad Rail Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('XKE', 'Rena Rail Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('XKD', 'Halden Rail Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('XKB', 'Kongsberg Rail Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('XGU', 'Asker Rail Station', 'OSL', 'Oslo', 'NORWAY', 'NO', '-100', '0', '0', 13, '', 0),
('OSM', 'Mosul Airport', 'OSM', 'Mosul', 'IRAQ', 'IQ', '3', '36.305833', '43.1475', 1, 'true', 0),
('OSR', 'Mosnov Arpt', 'OSR', 'Ostrava', 'CZECH REPUBLIC', 'CZ', '1', '49.696292', '18.111053', 1, 'true', 0),
('OSS', 'Osh Airport', 'OSS', 'Osh', 'KYRGYZSTAN', 'KG', '5', '40.608989', '72.793269', 1, 'true', 0),
('OST', 'Ostend Airport', 'OST', 'Ostende', 'BELGIUM', 'BE', '1', '51.198889', '2.862222', 1, 'true', 0),
('OSY', 'Namsos Arpt', 'OSY', 'Namsos', 'NORWAY', 'NO', '1', '64.4722', '11.5786', 1, 'true', 0),
('OTG', 'Worthington Arpt', 'OTG', 'Worthington', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('OTH', 'North Bend Municipal', 'OTH', 'North Bend', 'UNITED STATES', 'US', '-8', '43.4171', '-124.246', 1, 'true', 0),
('OTM', 'Industrial Arpt', 'OTM', 'Ottumwa', 'UNITED STATES', 'US', '-100', '41.1066', '-92.4479', 1, 'true', 0),
('OTS', 'Ancortes Arpt', 'OTS', 'Ancortes', 'UNITED STATES', 'US', '-8', '48.498889', '-122.6625', 1, 'true', 0),
('OTZ', 'Ralph Wien Memorial', 'OTZ', 'Kotzebue', 'UNITED STATES', 'US', '-9', '66.884678', '-162.59855', 1, 'true', 0),
('OUA', 'Ouagadougou Arpt', 'OUA', 'Ouagadougou', 'BURKINA FASO', 'BF', '0', '12.353194', '-1.512417', 1, 'true', 0),
('OUD', 'Les Angades Arpt', 'OUD', 'Oujda', 'MOROCCO', 'MA', '1', '34.78715', '-1.923986', 1, 'true', 0),
('OUH', 'Oudtshoorn Arpt', 'OUH', 'Oudtshoorn', 'SOUTH AFRICA', 'ZA', '-100', '-33.6', '22.1833', 1, 'true', 0),
('OUL', 'Oulu Airport', 'OUL', 'Oulu', 'FINLAND', 'FI', '2', '64.930061', '25.354564', 1, 'true', 0),
('OUZ', 'Zouerate Arpt', 'OUZ', 'Zouerate', 'MAURITANIA', 'MR', '-100', '0', '0', 1, 'true', 0),
('OVB', 'Tolmachevo Arpt', 'OVB', 'Novosibirsk', 'RUSSIA', 'RU', '7', '55.012622', '82.650656', 1, 'true', 0),
('OVD', 'Asturias Airport', 'OVD', 'Asturias', 'SPAIN', 'ES', '1', '43.563567', '-6.034622', 1, 'true', 0),
('OVS', 'Sovetsky Airport', 'OVS', 'Boscobel', 'UNITED STATES', 'RU', '6', '61.32', '63.6044', 1, 'true', 0),
('OWA', 'Owatonna Arpt', 'OWA', 'Owatonna', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('OWB', 'Daviess County Arpt', 'OWB', 'Owensboro', 'UNITED STATES', 'US', '-6', '37.7401', '-87.1668', 1, 'true', 0),
('OWD', 'Norwood Ma Arpt', 'OWD', 'Norwood', 'UNITED STATES', 'US', '-4', '42.190528', '-71.172944', 1, 'true', 0),
('OXB', 'Airport Osvaldo Viera', 'OXB', 'Bissau', 'GUINEA-BISSAU', 'GW', '0', '11.89485', '-15.653681', 1, 'true', 0),
('OXC', 'Waterbury Oxford Arpt', 'OXC', 'Oxford', 'UNITED STATES', 'US', '-4', '41.478556', '-73.13525', 1, 'true', 0),
('OXF', 'Kidlington Arpt', 'OXF', 'Oxford', 'UNITED KINGDOM', 'GB', '0', '51.836944', '-1.32', 2, 'true', 0),
('BZZ', 'Brize Norton Raf Station', 'OXF', 'Oxford', 'UNITED KINGDOM', 'GB', '0', '51.749964', '-1.583617', 2, '', 0),
('OXR', 'Oxnard Ventura Arpt', 'OXR', 'Oxnard', 'UNITED STATES', 'US', '-8', '34.200833', '-119.207222', 1, 'true', 0),
('OYO', 'Tres Arroyos Arpt', 'OYO', 'Tres Arroyos', 'ARGENTINA', 'AR', '-100', '0', '0', 1, 'true', 0),
('OZC', 'Labo Arpt', 'OZC', 'Labo Arpt', 'PHILIPPINES', 'PH', '8', '8.178508', '123.841731', 1, 'true', 0),
('OZH', 'Zaporozhye Arpt', 'OZH', 'Zaporozhe', 'UKRAINE', 'UA', '2', '47.867', '35.3157', 1, 'true', 0),
('OZZ', 'Ourzazate', 'OZZ', 'Ourzazate', 'MOROCCO', 'MA', '0', '30.939053', '-6.909431', 1, 'true', 0),
('PAD', 'Paderborn Airport', 'PAD', 'Paderborn', 'GERMANY', 'DE', '1', '51.614089', '8.616317', 1, 'true', 0),
('PAE', 'Snohomish Cty Arpt', 'PAE', 'Everett', 'UNITED STATES', 'US', '-8', '47.906342', '-122.281564', 1, 'true', 0),
('PAH', 'Barkley Regional', 'PAH', 'Paducah', 'UNITED STATES', 'US', '-6', '37.060288', '-88.772958', 1, 'true', 0),
('PAO', 'Palo Alto Arpt', 'PAO', 'Palo Alto', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PAP', 'Mais Gate Arpt', 'PAP', 'Port Au Prince', 'HAITI', 'HT', '-5', '18.58005', '-72.292542', 1, 'true', 0),
('ORY', 'Orly Arpt', 'PAR', 'Paris', 'FRANCE', 'FR', '1', '48.725278', '2.359444', 7, '', 0),
('JDP', 'Issy Les Moulineaux Arpt', 'PAR', 'Paris', 'FRANCE', 'FR', '-100', '0', '0', 7, '', 0),
('LBG', 'Le Bourget Arpt', 'PAR', 'Paris', 'FRANCE', 'FR', '1', '48.969444', '2.441389', 7, '', 2),
('CDG', 'Charles De Gaulle Intl Arpt', 'PAR', 'Paris', 'FRANCE', 'FR', '1', '49.012779', '2.55', 7, '', 0),
('BVA', 'Beauvais Tille Arpt', 'PAR', 'Paris', 'FRANCE', 'FR', '1', '49.454444', '2.112778', 7, '', 0),
('XPG', 'Gare du Nord Railway Station', 'PAR', 'Paris', 'FRANCE', 'FR', '1', '48.880931', '2.355323', 7, '', 0),
('XCR', 'Vatry Arpt', 'PAR', 'Paris', 'FRANCE', 'FR', '-100', '48.7733', '4.2061', 7, '', 0),
('PAS', 'Paros Community Arpt', 'PAS', 'Paros', 'GREECE', 'GR', '2', '37.010278', '25.127778', 1, 'true', 0),
('PAT', 'Jai Prakash Narayan Arpt', 'PAT', 'Patna', 'INDIA', 'IN', '5', '25.591317', '85.087992', 1, 'true', 0),
('PAZ', 'Tajin Arpt', 'PAZ', 'Poza Rica', 'MEXICO', 'MX', '-6', '20.602671', '-97.460839', 1, 'true', 0),
('PBC', 'Huejostingo Arpt', 'PBC', 'Puebla', 'MEXICO', 'MX', '-6', '19.158144', '-98.371447', 1, 'true', 0),
('PBD', 'Porbandar Arpt', 'PBD', 'Porbandar', 'INDIA', 'IN', '5', '21.648675', '69.657219', 1, 'true', 0),
('PBF', 'Pine Bluff Arpt', 'PBF', 'Pine Bluff', 'UNITED STATES', 'US', '-6', '34.173142', '-91.935597', 1, 'true', 0),
('PBG', 'Plattsburgh Intl Arpt', 'PBG', 'Plattsburgh', 'UNITED STATES', 'US', '-5', '44.650944', '-73.468139', 1, 'true', 0),
('PBH', 'Paro Arpt', 'PBH', 'Paro', 'BHUTAN', 'BT', '6', '27.403192', '89.424606', 1, 'true', 0),
('LNA', 'Palm Beach County Arpt', 'PBI', 'West Palm Beach', 'UNITED STATES', 'US', '-5', '26.593', '-80.085056', 2, '', 0),
('PBI', 'Palm Beach Intl Arpt', 'PBI', 'West Palm Beach', 'UNITED STATES', 'US', '-5', '26.683161', '-80.095589', 2, 'true', 0),
('PBM', 'Zanderij Intl Arpt', 'PBM', 'Paramaribo', 'SURINAME', 'SR', '-3', '5.452831', '-55.187783', 2, 'true', 0),
('ORG', 'Zorg En Hoop Arpt', 'PBM', 'Paramaribo', 'SURINAME', 'SR', '-3', '5.81108', '-55.1907', 2, '', 0),
('PBO', 'Paraburdoo Arpt', 'PBO', 'Paraburdoo', 'AUSTRALIA', 'AU', '8', '-23.1711', '117.745', 1, 'true', 0),
('PBR', 'Puerto Barrios Arpt', 'PBR', 'Puerto Barrios', 'GUATEMALA', 'GT', '-6', '15.730878', '-88.583767', 1, 'true', 0),
('PBZ', 'Plettenberg Bay Arpt', 'PBZ', 'Plettenberg Bay', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 1, 'true', 0),
('PCD', 'Prairie Du Chien Municipal Arpt', 'PCD', 'Prairie Du Chien', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PCJ', 'Puerto La Victoria Arpt', 'PCJ', 'Puerto La Victoria', 'PARAGUAY', 'PY', '-100', '0', '0', 1, 'true', 0),
('PCL', 'Capitan Rolden Arpt', 'PCL', 'Pucallpa', 'PERU', 'PE', '-5', '-8.377939', '-74.574297', 1, 'true', 0),
('PCM', 'Playa Del Carmen Arpt', 'PCM', 'Playa Del Carmen', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('PCN', 'Koromiko', 'PCN', 'Picton', 'NEW ZEALAND', 'NZ', '12', '-41.348333', '173.955278', 1, 'true', 0),
('PCT', 'Princeton Arpt', 'PCT', 'Princeton', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PDG', 'Tabing Arpt', 'PDG', 'Padang', 'INDONESIA', 'ID', '7', '-0.874989', '100.351881', 1, 'true', 0),
('PDL', 'Nordela Arpt', 'PDL', 'Ponta Delgada', 'PORTUGAL', 'PT', '-1', '37.741184', '-25.69787', 1, 'true', 0),
('PDP', 'Cap Curbelo Arpt', 'PDP', 'Punta Del Este', 'URUGUAY', 'UY', '-3', '-34.855139', '-55.094278', 1, 'true', 0),
('PDS', 'Piedras Negras Intl Arpt', 'PDS', 'Piedras Negras', 'MEXICO', 'MX', '-6', '28.627394', '-100.535211', 1, 'true', 0),
('PDT', 'Pendleton Municipal', 'PDT', 'Pendleton', 'UNITED STATES', 'US', '-7', '45.695', '-118.841389', 1, 'true', 0),
('PDU', 'Paysandu Arpt', 'PDU', 'Paysandu', 'URUGUAY', 'UY', '-100', '0', '0', 1, 'true', 0),
('PDV', 'Plovdiv Arpt', 'PDV', 'Plovdiv', 'BULGARIA', 'BG', '2', '42.067806', '24.850833', 1, 'true', 0),
('PDX', 'Portland Intl Arpt', 'PDX', 'Portland', 'UNITED STATES', 'US', '-8', '45.588722', '-122.5975', 1, 'true', 0),
('PED', 'Pardubice Arpt', 'PED', 'Pardubice', 'CZECH REPUBLIC', 'CZ', '1', '50.013419', '15.738647', 1, 'true', 0),
('PEE', 'Perm Arpt', 'PEE', 'Perm', 'RUSSIA', 'RU', '6', '57.914517', '56.021214', 1, 'true', 0),
('PEF', 'Peenemuende Arpt', 'PEF', 'Peenemuende', 'GERMANY', 'DE', '-100', '0', '0', 1, 'true', 0),
('PEG', 'Sant Egidio Arpt', 'PEG', 'Perugia', 'ITALY', 'IT', '1', '43.095906', '12.513222', 1, 'true', 0),
('PEI', 'Matecana Arpt', 'PEI', 'Pereira', 'COLOMBIA', 'CO', '-5', '4.812675', '-75.739519', 1, 'true', 0),
('PEJ', 'Peschiei Arpt', 'PEJ', 'Peschiei', 'ITALY', 'IT', '-100', '0', '0', 1, 'true', 0),
('PEM', 'Puerto Maldonado Arpt', 'PEM', 'Puerto Maldonado', 'PERU', 'PE', '-5', '-12.613611', '-69.228611', 1, 'true', 0),
('PEN', 'Penang Intl Arpt', 'PEN', 'Penang', 'MALAYSIA', 'MY', '8', '5.297139', '100.276864', 1, 'true', 0),
('PER', 'Perth Arpt', 'PER', 'Perth', 'AUSTRALIA', 'AU', '8', '-31.940278', '115.966944', 1, 'true', 0),
('PES', 'Petrozavodsk Arpt', 'PES', 'Petrozavodsk', 'RUSSIA', 'RU', '4', '61.8852', '34.1547', 1, 'true', 0),
('PET', 'Pelotas Federal Arpt', 'PET', 'Pelotas', 'BRAZIL', 'BR', '-3', '-31.718353', '-52.327689', 1, 'true', 0),
('PEV', 'Pecs Arpt', 'PEV', 'Pecs', 'HUNGARY', 'HU', '1', '45.990928', '18.240983', 1, 'true', 0),
('PEW', 'Peshawar Arpt', 'PEW', 'Peshawar', 'PAKISTAN', 'PK', '5', '33.993911', '71.514581', 1, 'true', 0),
('PEX', 'Pechora Airport', 'PEX', 'Pechora Airport', 'RUSSIA', 'RU', '4', '65.070387', '57.082045', 1, 'true', 0),
('PEZ', 'Penza Arpt', 'PEZ', 'Penza', 'RUSSIA', 'RU', '4', '53.1106', '45.0211', 1, 'true', 0),
('PFB', 'Passo Fundo Arpt', 'PFB', 'Passo Fundo', 'BRAZIL', 'BR', '-3', '-28.243989', '-52.326558', 1, 'true', 0),
('ECP', 'Northwest Florida Beaches Intl Arpt', 'PFN', 'Panama City', 'UNITED STATES', 'US', '-6', '30.3417', '-85.7973', 2, '', 0),
('PFN', 'Bay County Arpt', 'PFN', 'Panama City', 'UNITED STATES', 'US', '-6', '30.212083', '-85.682806', 2, 'true', 0),
('PFO', 'Paphos Intl Airport', 'PFO', 'Paphos', 'CYPRUS', 'CY', '2', '34.718039', '32.485731', 1, 'true', 0),
('PFQ', 'Parsabad Arpt', 'PFQ', 'Parsabad Arpt', 'IRAN', 'IR', '3', '39.603606', '47.8815', 1, 'true', 0),
('PGA', 'Page Airport', 'PGA', 'Page', 'UNITED STATES', 'US', '-7', '36.9261', '-111.4483', 1, 'true', 0),
('PGD', 'Charlotte County', 'PGD', 'Punta Gorda', 'UNITED STATES', 'US', '-5', '26.919722', '-81.990556', 1, 'true', 0),
('PGF', 'Llabanere Arpt', 'PGF', 'Perpignan', 'FRANCE', 'FR', '1', '42.740442', '2.870667', 1, 'true', 0),
('PGH', 'Pantnagar Arpt', 'PGH', 'Pantnagar', 'INDIA', 'IN', '5', '29.033408', '79.473744', 1, 'true', 0),
('PGL', 'Jackson Cnty', 'PGL', 'Pascagoula', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PGO', 'Stevens Field Arpt', 'PGO', 'Pagosa Springs', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PGU', 'Ala\'Marvdasht Arpt', 'PGU', 'Ala\'Marvdasht Arpt', 'IRAN', 'IR', '3', '27.379444', '52.7375', 1, 'true', 0),
('PGV', 'Pitt Greenville Arpt', 'PGV', 'Greenville', 'UNITED STATES', 'US', '-5', '35.635278', '-77.385278', 1, 'true', 0),
('PGX', 'Perigueux Arpt', 'PGX', 'Perigueux', 'FRANCE', 'FR', '1', '45.198055', '0.815556', 1, 'true', 0),
('PHB', 'Santos Dumont Airport', 'PHB', 'Parnaiba', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('PHC', 'Port Harcourt Arpt', 'PHC', 'Port Harcourt', 'NIGERIA', 'NG', '1', '5.015494', '6.949594', 2, 'true', 0),
('PHG', 'Port Harcourt City Arpt', 'PHC', 'Port Harcourt', 'NIGERIA', 'NG', '-100', '4.85', '7.0167', 2, '', 0);
INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('PHE', 'Port Hedland Arpt', 'PHE', 'Port Hedland', 'AUSTRALIA', 'AU', '8', '-20.377778', '118.626389', 1, 'true', 0),
('PHF', 'Williamsburg Intl Arpt', 'PHF', 'Newport News', 'UNITED STATES', 'US', '-5', '37.131894', '-76.492989', 1, 'true', 0),
('PHH', 'Phan Thiet Arpt', 'PHH', 'Phan Thiet', 'VIET NAM', 'VN', '-100', '0', '0', 1, 'true', 0),
('PNE', 'N Philadelphia', 'PHL', 'Philadelphia', 'UNITED STATES', 'US', '-5', '40.081944', '-75.010586', 2, '', 0),
('PHL', 'Philadelphia Intl Arpt', 'PHL', 'Philadelphia', 'UNITED STATES', 'US', '-5', '39.871944', '-75.241139', 2, 'true', 0),
('PHN', 'St Clair County Intl Arpt', 'PHN', 'Port Huron', 'UNITED STATES', 'US', '-5', '42.910957', '-82.528862', 1, 'true', 0),
('PHS', 'Phitsanulok Arpt', 'PHS', 'Phitsanulok', 'THAILAND', 'TH', '7', '16.782939', '100.279122', 1, 'true', 0),
('PHT', 'Henry County Arpt', 'PHT', 'Paris', 'UNITED STATES', 'US', '-100', '39.7002', '-87.6696', 1, 'true', 0),
('PHW', 'Phalaborwa Arpt', 'PHW', 'Phalaborwa', 'SOUTH AFRICA', 'ZA', '2', '-23.937166', '31.15539', 1, 'true', 0),
('PHX', 'Sky Harbor Intl Arpt', 'PHX', 'Phoenix', 'UNITED STATES', 'US', '-7', '33.434278', '-112.011583', 3, 'true', 0),
('AZA', 'Williams Gateway Arpt', 'PHX', 'Phoenix', 'UNITED STATES', 'US', '-7', '33.307833', '-111.655', 3, '', 0),
('DVT', 'Phoenix Deer Valley Airport', 'PHX', 'Phoenix', 'UNITED STATES', 'US', '-7', '33.4117', '112.457', 3, '', 0),
('PIA', 'Greater Peoria Arpt', 'PIA', 'Peoria', 'UNITED STATES', 'US', '-6', '40.664203', '-89.693258', 1, 'true', 0),
('PIH', 'Pocatello Municipal Arpt', 'PIH', 'Pocatello', 'UNITED STATES', 'US', '-7', '42.9098', '-112.596', 1, 'true', 0),
('PIR', 'Pierre Municipal', 'PIR', 'Pierre', 'UNITED STATES', 'US', '-6', '44.3827', '-100.286', 1, 'true', 0),
('XOP', 'Poitiers Rail Station', 'PIS', 'Poitiers', 'FRANCE', 'FR', '-100', '46.58', '0.3', 2, '', 0),
('PIS', 'Biard Airport', 'PIS', 'Poitiers', 'FRANCE', 'FR', '1', '46.587745', '0.306666', 2, 'true', 0),
('AGC', 'Allegheny Cty Arpt', 'PIT', 'Pittsburgh', 'UNITED STATES', 'US', '-5', '40.3544', '-79.9302', 2, '', 0),
('PIT', 'Pittsburgh Intl Arpt', 'PIT', 'Pittsburgh', 'UNITED STATES', 'US', '-5', '40.491467', '-80.232872', 2, 'true', 0),
('PIU', 'Piura Arpt', 'PIU', 'Piura', 'PERU', 'PE', '-5', '-5.20575', '-80.616444', 1, 'true', 0),
('PIW', 'Pikwitonei Rail Station', 'PIW', 'Pikwitonei', 'CANADA', 'CA', '-100', '55.5889', '-97.1642', 1, 'true', 0),
('PIX', 'Pico Arpt', 'PIX', 'Pico Island', 'PORTUGAL', 'PT', '-1', '38.554333', '-28.441333', 1, 'true', 0),
('PIZ', 'Dew Station Arpt', 'PIZ', 'Point Lay', 'UNITED STATES', 'US', '-9', '69.732875', '-163.005342', 1, 'true', 0),
('PJA', 'Pajala Arpt', 'PJA', 'Pajala', 'SWEDEN', 'SE', '1', '67.2456', '23.0689', 1, 'true', 0),
('PJB', 'Payson Arpt', 'PJB', 'Payson', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PKB', 'Wood County', 'PKB', 'Parkersburg', 'UNITED STATES', 'US', '-5', '39.345104', '-81.439203', 1, 'true', 0),
('PKC', 'Petropavlovsk Kamchatskiy Arpt', 'PKC', 'Petropavlovsk Kamchatskiy', 'RUSSIA', 'RU', '12', '53.167889', '158.453669', 1, 'true', 0),
('PKD', 'Park Rapids Municipal Arpt', 'PKD', 'Park Rapids', 'UNITED STATES', 'US', '-100', '46.9006', '-95.0731', 1, 'true', 0),
('PKE', 'Parkes Arpt', 'PKE', 'Parkes', 'AUSTRALIA', 'AU', '10', '-33.1314', '148.239', 1, 'true', 0),
('PKG', 'Pangkor Arpt', 'PKG', 'Pangkor', 'MALAYSIA', 'MY', '8', '4.24472', '100.553', 1, 'true', 0),
('PKH', 'Alexion Arpt', 'PKH', 'Portoheli', 'GREECE', 'GR', '2', '37.298792', '23.148986', 1, 'true', 0),
('PKJ', 'Playa Grand Arpt', 'PKJ', 'Playa Grande', 'GUATEMALA', 'GT', '-100', '0', '0', 1, 'true', 0),
('PKN', 'Pangkalanbuun Arpt', 'PKN', 'Pangkalanbun', 'INDONESIA', 'ID', '7', '-2.705197', '111.673208', 1, 'true', 0),
('PKR', 'Pokhara Arpt', 'PKR', 'Pokhara', 'NEPAL', 'NP', '5', '28.200881', '83.982056', 1, 'true', 0),
('PKU', 'Simpang Tiga Arpt', 'PKU', 'Pekanbaru', 'INDONESIA', 'ID', '7', '0.460786', '101.444539', 1, 'true', 0),
('PKV', 'Pskov Arpt', 'PKV', 'Pskov', 'RUSSIA', 'RU', '4', '57.783917', '28.395614', 1, 'true', 0),
('PKW', 'Selebi Phikwe Arpt', 'PKW', 'Selebi Phikwe', 'BOTSWANA', 'BW', '2', '-22.05835', '27.828767', 1, 'true', 0),
('PKZ', 'Pakse Arpt', 'PKZ', 'Pakse', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LA', '7', '15.132053', '105.781417', 1, 'true', 0),
('PLD', 'Playa Samara Arpt', 'PLD', 'Playa Samara', 'COSTA RICA', 'CR', '-6', '10.25', '-85.417', 1, 'true', 0),
('PLH', 'Roborough Arpt', 'PLH', 'Plymouth', 'UNITED KINGDOM', 'GB', '0', '50.422778', '-4.105833', 1, 'true', 0),
('PLJ', 'Placencia Arpt', 'PLJ', 'Placencia', 'BELIZE', 'BZ', '-6', '16.536944', '-88.361667', 1, 'true', 0),
('PLK', 'M Graham Clark Arpt', 'PLK', 'Point Lookout', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PLM', 'Mahmud Badaruddin Li Arpt', 'PLM', 'Palembang', 'INDONESIA', 'ID', '7', '-2.89825', '104.699903', 1, 'true', 0),
('PLN', 'Emmet Cty Arpt', 'PLN', 'Pellston', 'UNITED STATES', 'US', '-5', '45.5709', '-84.7967', 1, 'true', 0),
('PLO', 'Port Lincoln Arpt', 'PLO', 'Port Lincoln', 'AUSTRALIA', 'AU', '9', '-34.6053', '135.88', 1, 'true', 0),
('PLP', 'LA PALMA', 'PLP', 'LA PALMA', 'PANAMA', 'PA', '-5', '8.40667', '-78.1417', 1, 'true', 0),
('PLQ', 'Palanga Intl Arpt', 'PLQ', 'Palanga', 'LITHUANIA', 'LT', '2', '55.973228', '21.093856', 1, 'true', 0),
('PLS', 'Providenciales Intl', 'PLS', 'Providenciales', 'TURKS AND CAICOS ISLANDS', 'TC', '-5', '21.773625', '-72.265886', 1, 'true', 0),
('PLV', 'Poltava Arpt', 'PLV', 'Poltava', 'UKRAINE', 'UA', '3', '49.34261', '34.23551', 1, 'true', 0),
('PLW', 'Mutiara Arpt', 'PLW', 'Palu', 'INDONESIA', 'ID', '8', '-0.918542', '119.909642', 1, 'true', 0),
('PLX', 'SEMIPALATINSK', 'PLX', 'SEMIPALATINSK', 'KAZAKHSTAN', 'KZ', '6', '50.3513', '80.2344', 1, 'true', 0),
('PLY', 'Plymouth Municipal Arpt', 'PLY', 'Plymouth', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PLZ', 'Port Elizabeth Airport', 'PLZ', 'Port Elizabeth', 'SOUTH AFRICA', 'ZA', '2', '-33.984919', '25.617275', 1, 'true', 0),
('PMC', 'Tepual Arpt', 'PMC', 'Puerto Montt', 'CHILE', 'CL', '-4', '-41.438886', '-73.093953', 1, 'true', 0),
('PMD', 'La Palmdale Regional Arpt', 'PMD', 'Palmdale', 'UNITED STATES', 'US', '-8', '34.629391', '-118.08456', 1, 'true', 0),
('PME', 'Portsmouth Arpt', 'PME', 'Portsmouth', 'UNITED KINGDOM', 'GB', '0', '50.8', '-1.083333', 1, 'true', 0),
('PMF', 'Parma Arpt', 'PMF', 'Parma', 'ITALY', 'IT', '1', '44.824483', '10.296367', 1, 'true', 0),
('PMG', 'International', 'PMG', 'Ponta Pora', 'BRAZIL', 'BR', '-4', '-22.549639', '-55.702614', 1, 'true', 0),
('PMI', 'Palma Mallorca Arpt', 'PMI', 'Palma Mallorca', 'SPAIN', 'ES', '1', '39.55361', '2.727778', 1, 'true', 0),
('PMK', 'Palm Island Arpt', 'PMK', 'Palm Island', 'AUSTRALIA', 'AU', '10', '-18.7553', '146.581', 1, 'true', 0),
('PMO', 'Punta Raisi Arpt', 'PMO', 'Palermo', 'ITALY', 'IT', '1', '38.175958', '13.091019', 1, 'true', 0),
('PMR', 'Palmerston North Arpt', 'PMR', 'Palmerston', 'NEW ZEALAND', 'NZ', '12', '-40.320556', '175.616944', 1, 'true', 0),
('PMS', 'Palmyra Arpt', 'PMS', 'Palmyra', 'SYRIA', 'SY', '2', '34.557361', '38.316889', 1, 'true', 0),
('PMV', 'Delcaribe Gen S Marino Arpt', 'PMV', 'Porlamar', 'VENEZUELA', 'VE', '-4', '10.912926', '-63.967581', 1, 'true', 0),
('PMW', 'Palmas Arpt', 'PMW', 'Palmas', 'BRAZIL', 'BR', '-3', '-10.241667', '-48.35278', 1, 'true', 0),
('PMY', 'El Tehuelche Arpt', 'PMY', 'Puerto Madryn', 'ARGENTINA', 'AR', '-3', '-42.759161', '-65.102725', 1, 'true', 0),
('PMZ', 'Palmar Sur', 'PMZ', 'Palmar', 'COSTA RICA', 'CR', '-6', '8.951025', '-83.468583', 1, 'true', 0),
('PNA', 'Pamplona Noain Arpt', 'PNA', 'Pamplona', 'SPAIN', 'ES', '1', '42.770039', '-1.646331', 1, 'true', 0),
('PNC', 'Ponca City Municipal Arpt', 'PNC', 'Ponca City', 'UNITED STATES', 'US', '-6', '36.731958', '-97.099781', 1, 'true', 0),
('PNG', 'Paranagua Municipal', 'PNG', 'Paranagua', 'BRAZIL', 'BR', '-100', '-25.54', '-48.5306', 1, 'true', 0),
('PNH', 'Pochentong Arpt', 'PNH', 'Phnom Penh', 'CAMBODIA', 'KH', '7', '11.546556', '104.844139', 1, 'true', 0),
('PNI', 'Pohnpei Arpt', 'PNI', 'Pohnpei', 'MICRONESIA, FEDERATED STATES OF', 'FM', '11', '6.9851', '158.208989', 1, 'true', 0),
('PNJ', 'Sha He Kou Arpt', 'PNJ', 'Penglai', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('PNK', 'Supadio International Arpt', 'PNK', 'Pontianak', 'INDONESIA', 'ID', '7', '-0.150711', '109.403892', 1, 'true', 0),
('PNL', 'Pantelleria Arpt', 'PNL', 'Pantelleria', 'ITALY', 'IT', '1', '36.816519', '11.968864', 1, 'true', 0),
('PNO', 'Pinotepa Nacional Arpt', 'PNO', 'Pinotepa Nacional', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('PNP', 'Girua Arpt', 'PNP', 'Popondetta', 'PAPUA NEW GUINEA', 'PG', '10', '-8.80454', '148.309', 1, 'true', 0),
('PNQ', 'Lohegaon Arpt', 'PNQ', 'Pune', 'INDIA', 'IN', '5', '18.582111', '73.919697', 1, 'true', 0),
('PNR', 'Pointe Noire Arpt', 'PNR', 'Pointe Noire', 'CONGO', 'CG', '1', '-4.816028', '11.886597', 1, 'true', 0),
('PNS', 'Pensacola Regional Municipal', 'PNS', 'Pensacola', 'UNITED STATES', 'US', '-6', '30.473425', '-87.186611', 1, 'true', 0),
('PNT', 'Teniente Julio Gallardo Arpt', 'PNT', 'Puerto Natales', 'CHILE', 'CL', '-3', '-51.733333', '-72.516667', 1, 'true', 0),
('PNX', 'Grayson County Arpt', 'PNX', 'Sherman', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PNZ', 'Petrolina Internacional Arpt', 'PNZ', 'Petrolina', 'BRAZIL', 'BR', '-3', '-9.362411', '-40.569097', 1, 'true', 0),
('POA', 'Porto Alegre Airport', 'POA', 'Porto Alegre', 'BRAZIL', 'BR', '-3', '-29.994428', '-51.171428', 1, 'true', 0),
('POC', 'Brackett Field', 'POC', 'La Verne', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('POE', 'Fort Polk Arpt', 'POE', 'Fort Polk', 'UNITED STATES', 'US', '-6', '31.044833', '-93.191667', 1, 'true', 0),
('POF', 'Earl Fields Memorial', 'POF', 'Poplar Bluff', 'UNITED STATES', 'US', '-100', '36.7739', '-90.3248', 1, 'true', 0),
('POG', 'Port Gentil Arpt', 'POG', 'Port Gentil', 'GABON', 'GA', '1', '-0.711739', '8.754383', 1, 'true', 0),
('POL', 'Pemba Arpt', 'POL', 'Pemba', 'MOZAMBIQUE', 'MZ', '2', '-12.986753', '40.522492', 1, 'true', 0),
('POM', 'Jackson Field', 'POM', 'Port Moresby', 'PAPUA NEW GUINEA', 'PG', '10', '-9.443383', '147.22005', 1, 'true', 0),
('POP', 'La Union Arpt', 'POP', 'Puerto Plata', 'DOMINICAN REPUBLIC', 'DO', '-4', '19.7579', '-70.570033', 1, 'true', 0),
('POR', 'Pori Airport', 'POR', 'Pori', 'FINLAND', 'FI', '2', '61.461686', '21.799983', 1, 'true', 0),
('POS', 'Piarco Arpt', 'POS', 'Port Of Spain', 'TRINIDAD AND TOBAGO', 'TT', '-4', '10.595369', '-61.337242', 1, 'true', 0),
('POU', 'Dutchess County', 'POU', 'Poughkeepsie', 'UNITED STATES', 'US', '-100', '41.6266', '-73.8842', 1, 'true', 0),
('POW', 'Portoroz Airport', 'POW', 'Portoroz', 'SLOVENIA', 'SI', '1', '45.473353', '13.614978', 1, 'true', 0),
('POX', 'Cormeille En Vexin', 'POX', 'Pontoise', 'FRANCE', 'FR', '1', '49.096647', '2.040833', 1, 'true', 0),
('POZ', 'Lawica Arpt', 'POZ', 'Poznan', 'POLAND', 'PL', '1', '52.421031', '16.826325', 1, 'true', 0),
('PPB', 'A De Barros', 'PPB', 'Presidente Prudente', 'BRAZIL', 'BR', '-3', '-22.175056', '-51.424639', 1, 'true', 0),
('PPE', 'Puerto Penasco Municipal', 'PPE', 'Puerto Penasco', 'MEXICO', 'MX', '-7', '31.351878', '-113.525728', 1, 'true', 0),
('PPG', 'Pago Pago Arpt', 'PPG', 'Pago Pago', 'AMERICAN SAMOA', 'AS', '-11', '-14.331', '-170.7105', 1, 'true', 0),
('PPI', 'Port Porie Arpt', 'PPI', 'Port Pirie', 'AUSTRALIA', 'AU', '-100', '-33.2389', '137.995', 1, 'true', 0),
('PPK', 'Petropavlovsk Arpt', 'PPK', 'Petropavlovsk', 'KAZAKHSTAN', 'KZ', '6', '54.7747', '69.1839', 1, 'true', 0),
('PPL', 'Phaplu Airport', 'PPL', 'Phaplu', 'NEPAL', 'NP', '5', '27.517', '86.6', 1, 'true', 0),
('PPM', 'Pompano Beach Arpt', 'PPM', 'Pompano Beach', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PPN', 'Machangara Arpt', 'PPN', 'Popayan', 'COLOMBIA', 'CO', '-5', '2.4544', '-76.609319', 1, 'true', 0),
('PPP', 'Whitsunday Coast Arpt', 'PPP', 'Proserpine', 'AUSTRALIA', 'AU', '10', '-20.495', '148.552222', 1, 'true', 0),
('PPQ', 'Paraparaumu Arpt', 'PPQ', 'Paraparaumu', 'NEW ZEALAND', 'NZ', '12', '-40.904722', '174.989167', 1, 'true', 0),
('PPS', 'Puerto Princesa Arpt', 'PPS', 'Puerto Princesa', 'PHILIPPINES', 'PH', '8', '9.742119', '118.758731', 1, 'true', 0),
('PPT', 'Intl Tahiti Faaa', 'PPT', 'Papeete', 'FRENCH POLYNESIA', 'PF', '-10', '-17.556667', '-149.611389', 1, 'true', 0),
('PPW', 'Papa Westray Arpt', 'PPW', 'Papa Westray', 'UNITED KINGDOM', 'GB', '0', '59.3517', '-2.90028', 1, 'true', 0),
('PQC', 'Duong Dang Arpt', 'PQC', 'Phu Quoc', 'VIET NAM', 'VN', '7', '10.227025', '103.967169', 1, 'true', 0),
('PQI', 'Northern Maine Regional', 'PQI', 'Presque Isle', 'UNITED STATES', 'US', '-4', '46.688958', '-68.044797', 1, 'true', 0),
('PQM', 'Palenque Arpt', 'PQM', 'Palenque', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('PQQ', 'Port Macquarie Arpt', 'PQQ', 'Pt Macquarie', 'AUSTRALIA', 'AU', '10', '-31.4358', '152.863', 1, 'true', 0),
('PRA', 'Parana Arpt', 'PRA', 'Parana', 'ARGENTINA', 'AR', '-3', '-31.794778', '-60.480361', 1, 'true', 0),
('PRB', 'Paso Robles Cty', 'PRB', 'Paso Robles', 'UNITED STATES', 'US', '-100', '35.6729', '-120.6271', 1, 'true', 0),
('PRC', 'Prescott Municipal', 'PRC', 'Prescott', 'UNITED STATES', 'US', '-7', '34.654472', '-112.419583', 1, 'true', 0),
('PRG', 'Ruzyne Arpt', 'PRG', 'Prague', 'CZECH REPUBLIC', 'CZ', '1', '50.100833', '14.26', 1, 'true', 0),
('PRH', 'Phrae Arpt', 'PRH', 'Phrae', 'THAILAND', 'TH', '7', '18.132169', '100.164664', 1, 'true', 0),
('PRI', 'Praslin Island Arpt', 'PRI', 'Praslin Island', 'SEYCHELLES', 'SC', '4', '-4.319292', '55.691417', 1, 'true', 0),
('PRM', 'Portimao Airport', 'PRM', 'Portimao', 'PORTUGAL', 'PT', '-100', '37.1499', '-8.584', 1, 'true', 0),
('PRN', 'Pristina Arpt', 'PRN', 'Pristina', 'KOSOVO', 'KV', '1', '42.572778', '21.035833', 1, 'true', 0),
('PRP', 'Propriano Arpt', 'PRP', 'Propriano', 'FRANCE', 'FR', '-100', '0', '0', 1, 'true', 0),
('PRX', 'Paris Cox Field Arpt', 'PRX', 'Paris', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PRY', 'Wonderboom Arpt', 'PRY', 'Pretoria', 'SOUTH AFRICA', 'ZA', '2', '-25.653858', '28.224231', 2, 'true', 0),
('HPR', 'Central Hpr Arpt', 'PRY', 'Pretoria', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 2, '', 0),
('PSA', 'Gal Galilei Arpt', 'PSA', 'Pisa', 'ITALY', 'IT', '1', '43.683917', '10.39275', 1, 'true', 0),
('PSB', 'Midstate Arpt', 'PSB', 'Philipsburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PSC', 'Tri Cities Arpt', 'PSC', 'Pasco', 'UNITED STATES', 'US', '-8', '46.2647', '-119.119', 1, 'true', 0),
('PSE', 'Mercedita Arpt', 'PSE', 'Ponce', 'UNITED STATES', 'US', '-4', '18.008306', '-66.563028', 1, 'true', 0),
('PSF', 'Pittsfield Municipal', 'PSF', 'Pittsfield', 'UNITED STATES', 'US', '-100', '39.6389', '-90.7784', 1, 'true', 0),
('PSG', 'Petersburg Municipal', 'PSG', 'Petersburg', 'UNITED STATES', 'US', '-9', '56.801667', '-132.945278', 1, 'true', 0),
('PSK', 'New River Valley Arpt', 'PSK', 'Dublin', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PSL', 'Perth Airport', 'PSL', 'Perth', 'UNITED KINGDOM', 'GB', '-100', '56.4392', '-3.3722', 1, 'true', 0),
('PSM', 'Portsmouth Pease Intl Arpt', 'PSM', 'Portsmouth', 'UNITED STATES', 'US', '-5', '43.0779', '-70.8233', 1, 'true', 0),
('PSO', 'Cano Arpt', 'PSO', 'Pasto', 'COLOMBIA', 'CO', '-5', '1.396247', '-77.291478', 1, 'true', 0),
('PSP', 'Palm Springs Municipal', 'PSP', 'Palm Springs', 'UNITED STATES', 'US', '-8', '33.829667', '-116.506694', 1, 'true', 0),
('PSR', 'Liberi Airport', 'PSR', 'Pescara', 'ITALY', 'IT', '1', '42.431656', '14.181067', 1, 'true', 0),
('PSS', 'Posadas Arpt', 'PSS', 'Posadas', 'ARGENTINA', 'AR', '-3', '-27.385839', '-55.970728', 1, 'true', 0),
('PTB', 'Petersburg Municipal Arpt', 'PTB', 'Petersburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PTF', 'Malololailai Arpt', 'PTF', 'Malololailai', 'FIJI', 'FJ', '12', '-17.7779', '177.197', 1, 'true', 0),
('PTG', 'Pietersburg Arpt', 'PTG', 'Pietersburg', 'SOUTH AFRICA', 'ZA', '2', '-23.926089', '29.484422', 1, 'true', 0),
('PTI', 'Port Douglas Arpt', 'PTI', 'Port Douglas', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('PTJ', 'Portland Arpt', 'PTJ', 'Portland', 'AUSTRALIA', 'AU', '10', '-38.3181', '141.471', 1, 'true', 0),
('PTK', 'Oakland Pontiac Arpt', 'PTK', 'Pontiac', 'UNITED STATES', 'US', '-100', '42.6655', '-83.4201', 1, 'true', 0),
('PTO', 'Pato Branco Municipal', 'PTO', 'Pato Branco', 'BRAZIL', 'BR', '-100', '-26.2172', '-52.6936', 1, 'true', 0),
('PTP', 'Le Raizet Arpt', 'PTP', 'Pointe A Pitre', 'GUADELOUPE', 'GP', '-4', '16.265306', '-61.531806', 1, 'true', 0),
('PTS', 'Atkinson Municipal Arpt', 'PTS', 'Pittsburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PTW', 'Pottstown Limerick', 'PTW', 'Pottstown', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PTY', 'Tocumen Intl Arpt', 'PTY', 'Panama City', 'PANAMA', 'PA', '-5', '9.071364', '-79.383453', 2, 'true', 0),
('PAC', 'Paitilla Arpt', 'PTY', 'Panama City', 'PANAMA', 'PA', '-5', '8.973339', '-79.555583', 2, '', 0),
('PUB', 'Pueblo Arpt', 'PUB', 'Pueblo', 'UNITED STATES', 'US', '-7', '38.289085', '-104.496572', 2, 'true', 0),
('TAD', 'Las Animas Arpt', 'PUB', 'Pueblo', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('PUC', 'Carbon Cty Municipal Arpt', 'PUC', 'Price', 'UNITED STATES', 'US', '-6', '39.609722', '-110.75278', 1, 'true', 0),
('PUF', 'Uzein Airport', 'PUF', 'Pau Fr', 'FRANCE', 'FR', '1', '43.38', '-0.418611', 1, 'true', 0),
('PUG', 'Port Augusta Arpt', 'PUG', 'Port Augusta', 'AUSTRALIA', 'AU', '9', '-32.506944', '137.716667', 1, 'true', 0),
('PUJ', 'Punta Cana Arpt', 'PUJ', 'Punta Cana', 'DOMINICAN REPUBLIC', 'DO', '-4', '18.567367', '-68.363431', 1, 'true', 0),
('PUQ', 'Presidente Ibanez Arpt', 'PUQ', 'Punta Arenas', 'CHILE', 'CL', '-4', '-53.002642', '-70.854586', 1, 'true', 0),
('PUS', 'Kimhae Arpt', 'PUS', 'Busan', 'KOREA, REPUBLIC OF', 'KR', '9', '35.179528', '128.938222', 1, 'true', 0),
('PUW', ' Pullman  Arpt ', 'PUW', 'Pullman', 'UNITED STATES', 'US', '-8', '46.743861', '-117.109583', 1, 'true', 0),
('PUX', 'Puerto Varas Arpt', 'PUX', 'Puerto Varas', 'CHILE', 'CL', '-100', '0', '0', 1, 'true', 0),
('PUY', 'Pula Arpt', 'PUY', 'Pula', 'CROATIA', 'HR', '1', '44.893533', '13.922192', 1, 'true', 0),
('PVC', 'Provincetown Municipal', 'PVC', 'Provincetown', 'UNITED STATES', 'US', '-5', '42.071945', '-70.22139', 1, 'true', 0),
('PVD', 'T F Green St Arpt', 'PVD', 'Providence', 'UNITED STATES', 'US', '-5', '41.732581', '-71.420383', 1, 'true', 0),
('PVF', 'Placerville Arpt', 'PVF', 'Placerville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PVH', 'Belmonte Arpt', 'PVH', 'Porto Velho', 'BRAZIL', 'BR', '-4', '-8.709294', '-63.902281', 1, 'true', 0),
('PVK', 'Aktion Arpt', 'PVK', 'Preveza', 'GREECE', 'GR', '2', '38.925467', '20.765311', 1, 'true', 0),
('PVR', 'Ordaz Arpt', 'PVR', 'Puerto Vallarta', 'MEXICO', 'MX', '-6', '20.680083', '-105.254167', 1, 'true', 0),
('PVS', 'Provideniya Bay Airport', 'PVS', 'Provideniya Bay Airport', 'RUSSIA', 'RU', '12', '64.378139', '-173.243306', 1, 'true', 0),
('PVU', 'Provo Arpt', 'PVU', 'Provo', 'UNITED STATES', 'US', '-6', '40.218056', '-111.722222', 1, 'true', 0),
('PVW', 'Hale County Arpt', 'PVW', 'Plainview', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PVZ', 'Casement Arpt', 'PVZ', 'Painesville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('PWE', 'Pevek Airport', 'PWE', 'Pevek Airport', 'RUSSIA', 'RU', '12', '69.783283', '170.597006', 1, 'true', 0),
('PWM', 'Portland Intl Jetport', 'PWM', 'Portland', 'UNITED STATES', 'US', '-5', '43.646161', '-70.309281', 1, 'true', 0),
('PWQ', 'Pavlodar Arpt', 'PWQ', 'Pavlodar', 'KAZAKHSTAN', 'KZ', '6', '52.195', '77.073889', 1, 'true', 0),
('PWT', 'Bremerton Municipal', 'PWT', 'Bremerton', 'UNITED STATES', 'US', '-8', '47.490244', '-122.764814', 1, 'true', 0),
('PXM', 'Puerto Escondido Municipal', 'PXM', 'Puerto Escondido', 'MEXICO', 'MX', '-6', '15.876861', '-97.089117', 1, 'true', 0),
('PXO', 'Porto Santo Arpt', 'PXO', 'Porto Santo', 'PORTUGAL', 'PT', '0', '33.073386', '-16.349975', 1, 'true', 0),
('PXU', 'Pleiku Arpt', 'PXU', 'Pleiku', 'VIET NAM', 'VN', '7', '14.004522', '108.017158', 1, 'true', 0),
('PYJ', 'Polyarny Airport', 'PYJ', 'Polyarny Airport', 'RUSSIA', 'RU', '10', '66.400431', '112.030325', 1, 'true', 0),
('PYM', 'Plymouth Arpt', 'PYM', 'Plymouth', 'UNITED STATES', 'US', '-4', '41.909028', '-70.728778', 1, 'true', 0),
('PYX', 'Pattaya Arpt', 'PYX', 'Pattaya', 'THAILAND', 'TH', '-100', '0', '0', 1, 'true', 0),
('PYY', 'Pai Arpt', 'PYY', 'Pai City', 'THAILAND', 'TH', '7', '19.372', '98.437', 1, 'true', 0),
('PZB', 'Pietermaritzburg Arpt', 'PZB', 'Pietermaritzburg', 'SOUTH AFRICA', 'ZA', '2', '-29.648975', '30.398667', 1, 'true', 0),
('PZE', 'Penzance Arpt', 'PZE', 'Penzance', 'UNITED KINGDOM', 'GB', '0', '50.1281', '-5.51845', 1, 'true', 0),
('PZI', 'Pan Zhi Hua Bao An Ying Arpt', 'PZI', 'Panzhihua', 'CHINA', 'CN', '8', '26.54', '101.799', 1, 'true', 0),
('PZO', 'Puerto Ordaz Arpt', 'PZO', 'Puerto Ordaz', 'VENEZUELA', 'VE', '-4', '8.288528', '-62.760361', 1, 'true', 0),
('PZU', 'Port Sudan New intl Arpt', 'PZU', 'Port Sudan', 'SUDAN', 'SD', '2', '19.4336', '37.2341', 1, 'true', 0),
('PZY', 'Piestany Arpt', 'PZY', 'Piestany', 'SLOVAKIA', 'SK', '1', '48.625247', '17.828444', 1, 'true', 0),
('ZYM', 'Arnhem Rail Station', 'QAR', 'Arnhem', 'NETHERLANDS', 'NL', '-100', '0', '0', 1, '', 0),
('QBC', 'Bella Colla Municipal', 'QBC', 'Bella Coola', 'CANADA', 'CA', '-8', '52.3875', '-126.596', 1, 'true', 0),
('QCE', 'Copper Mountain Van Service', 'QCE', 'Copper Mountain', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('QDH', 'Ashford Intl Rail Station', 'QDH', 'Ashford', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XGM', 'Grantham Rail Station', 'QEW', 'Leicester', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, '', 0),
('QFQ', 'Harbour Arpt', 'QFQ', 'Maloy', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('QHV', 'Novo Hamburgo Arpt', 'QHV', 'Novo Hamburgo', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('QIG', 'Iguatu Arpt', 'QIG', 'Iguatu', 'BRAZIL', 'BR', '-100', '-6.3475', '-39.2983', 1, 'true', 0),
('QKB', 'Breckenridge Van Service', 'QKB', 'Breckenridge', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('QKS', 'Keystone Van Service', 'QKS', 'Keystone', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('QLE', 'Leeton Arpt', 'QLE', 'Leeton', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('QNT', 'Niteroi Arpt', 'QNT', 'Niteroi', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('QQX', 'Bath Rail Service', 'QQX', 'Bath', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('QQY', 'York Rail Station', 'QQY', 'York', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('QRO', 'Queretaro Arpt', 'QRO', 'Queretaro', 'MEXICO', 'MX', '-6', '20.617289', '-100.185658', 1, 'true', 0),
('QRV', 'Arras Arpt', 'QRV', 'Arras', 'FRANCE', 'FR', '-100', '0', '0', 1, 'true', 0),
('QSF', 'Setif Arpt', 'QSF', 'Setif', 'ALGERIA', 'DZ', '0', '36.1781', '5.32449', 1, 'true', 0),
('QXB', 'Aix en Provence Rail Station', 'QXB', 'Aix En Provence', 'FRANCE', 'FR', '1', '43.505554', '5.367778', 1, 'true', 0),
('QYH', 'Hengelo Railway Service', 'QYH', 'Hengelo', 'NETHERLANDS', 'NL', '-100', '0', '0', 1, 'true', 0),
('QYM', 'Amersfoort Railway Service', 'QYM', 'Amersfoort', 'NETHERLANDS', 'NL', '-100', '0', '0', 1, 'true', 0),
('QYO', 'Olsztyn Arpt', 'QYO', 'Olsztyn', 'POLAND', 'PL', '-100', '0', '0', 1, 'true', 0),
('QYX', 'Uppsala Railway Service', 'QYX', 'Uppsala', 'SWEDEN', 'SE', '-100', '59.9008', '17.5958', 1, 'true', 0),
('RAB', 'Lakunai Arpt', 'RAB', 'Rabaul', 'PAPUA NEW GUINEA', 'PG', '10', '-4.34046', '152.38', 1, 'true', 0),
('RAC', 'Horlick Arpt', 'RAC', 'Racine', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RAI', 'Francisco Mendes', 'RAI', 'Praia', 'CAPE VERDE', 'CV', '-1', '14.9245', '-23.4935', 1, 'true', 0),
('RAJ', 'Rajkot Civil Arpt', 'RAJ', 'Rajkot', 'INDIA', 'IN', '5', '22.309183', '70.779525', 1, 'true', 0),
('RAK', 'Menara Airport', 'RAK', 'Marrakech', 'MOROCCO', 'MA', '0', '31.606886', '-8.0363', 1, 'true', 0),
('RAL', 'Riverside Municipal', 'RAL', 'Riverside', 'UNITED STATES', 'US', '-8', '33.951875', '-117.445103', 1, 'true', 0),
('RAO', 'Leite Lopes', 'RAO', 'Ribeirao Preto', 'BRAZIL', 'BR', '-3', '-21.134167', '-47.774189', 1, 'true', 0),
('RAP', 'Rapid City Regional Arpt', 'RAP', 'Rapid City', 'UNITED STATES', 'US', '-7', '44.045278', '-103.057222', 1, 'true', 0),
('RAR', 'Rarotonga Arpt', 'RAR', 'Rarotonga', 'COOK ISLANDS', 'CK', '-10', '-21.202739', '-159.805556', 1, 'true', 0),
('RAT', 'Raduzhny Airport', 'RAT', 'Raduzhny Airport', 'RUSSIA', 'RU', '6', '62.1586', '77.3289', 1, 'true', 0),
('RAY', 'Rothesay Heliport', 'RAY', 'Rothesay', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('RBA', 'Sale Airport', 'RBA', 'Rabat', 'MOROCCO', 'MA', '0', '34.051467', '-6.751519', 1, 'true', 0),
('RBF', 'Big Bear City Arpt', 'RBF', 'Big Bear City', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RBG', 'Roseburg Municipal', 'RBG', 'Roseburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RBM', 'Wallmuhle', 'RBM', 'Straubing', 'GERMANY', 'DE', '-6', '34.850089', '-92.300153', 1, 'true', 0),
('RBR', 'Pres Medici Arpt', 'RBR', 'Rio Branco', 'BRAZIL', 'BR', '-5', '-9.583', '-67.4836', 1, 'true', 0),
('RBW', 'Walterboro Municipal Arpt', 'RBW', 'Walterboro', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RCB', 'Richards Bay Arpt', 'RCB', 'Richards Bay', 'SOUTH AFRICA', 'ZA', '2', '-28.741039', '32.092111', 1, 'true', 0),
('RCE', 'Roche Harbor Arpt', 'RCE', 'Roche Harbor', 'UNITED STATES', 'US', '-8', '48.608056', '-123.159722', 1, 'true', 0),
('RCO', 'St Agnant Arpt', 'RCO', 'Rochefort', 'FRANCE', 'FR', '1', '45.887779', '-0.983056', 1, 'true', 0),
('RCU', 'Rio Cuarto Arpt', 'RCU', 'Rio Cuarto', 'ARGENTINA', 'AR', '-3', '-33.085128', '-64.261314', 1, 'true', 0),
('RDD', 'Redding Municipal Arpt', 'RDD', 'Redding', 'UNITED STATES', 'US', '-8', '40.509', '-122.293389', 2, 'true', 0),
('RBL', 'Flight Service Station', 'RDD', 'Redding', 'UNITED STATES', 'US', '-100', '40.1506', '-122.2523', 2, '', 0),
('RDG', 'Reading Municipal', 'RDG', 'Reading', 'UNITED STATES', 'US', '-5', '40.3785', '-75.9652', 1, 'true', 0),
('RDM', 'Roberts Field', 'RDM', 'Redmond', 'UNITED STATES', 'US', '-8', '44.254066', '-121.149964', 1, 'true', 0),
('RDN', 'Lts Pulau Redang Arpt', 'RDN', 'Redang', 'MALAYSIA', 'MY', '8', '5.76528', '103.007', 1, 'true', 0),
('RDU', 'Raleigh Durham Intl Arpt', 'RDU', 'Raleigh', 'UNITED STATES', 'US', '-5', '35.877639', '-78.787472', 1, 'true', 0),
('RDZ', 'Marcillac', 'RDZ', 'Rodez', 'FRANCE', 'FR', '1', '44.407869', '2.482672', 1, 'true', 0),
('REC', 'Recife Airport', 'REC', 'Recife', 'BRAZIL', 'BR', '-3', '-8.126794', '-34.923039', 1, 'true', 0),
('REG', 'Tito Menniti Arpt', 'REG', 'Reggio Calabria', 'ITALY', 'IT', '1', '38.071206', '15.651556', 1, 'true', 0),
('KEF', 'Reykjavik Keflavik Intl Arpt', 'REK', 'Reykjavik', 'ICELAND', 'IS', '0', '63.985', '-22.605556', 2, '', 0),
('RKV', 'Reykjavik Domestic Arpt', 'REK', 'Reykjavik', 'ICELAND', 'IS', '0', '64.13', '-21.940556', 2, '', 0),
('REL', 'Trelew Arpt', 'REL', 'Trelew', 'ARGENTINA', 'AR', '-3', '-43.2105', '-65.270319', 1, 'true', 0),
('REN', 'Orenburg Arpt', 'REN', 'Orenburg', 'RUSSIA', 'RU', '6', '51.795786', '55.456744', 1, 'true', 0),
('REP', 'Siem Reap Arpt', 'REP', 'Siem Reap', 'CAMBODIA', 'KH', '7', '13.410666', '103.81284', 1, 'true', 0),
('RER', 'Base Aerea Del Sur Arpt', 'RER', 'Retalhuleu', 'GUATEMALA', 'GT', '-100', '0', '0', 1, 'true', 0),
('RES', 'Resistencia Arpt', 'RES', 'Resistencia', 'ARGENTINA', 'AR', '-3', '-27.449986', '-59.056125', 1, 'true', 0),
('REU', 'Reus Arpt', 'REU', 'Reus', 'SPAIN', 'ES', '1', '41.147392', '1.167172', 1, 'true', 0),
('REX', 'General Lucio Blanco Arpt', 'REX', 'Reynosa', 'MEXICO', 'MX', '-6', '26.008908', '-98.228513', 1, 'true', 0),
('ZRF', 'Peoria Rockford Bus Terminal', 'RFD', 'Rockford', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('ZRK', 'Van Galder Bus Terminal', 'RFD', 'Rockford', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('RFP', 'Raiatea Arpt', 'RFP', 'Raiatea', 'FRENCH POLYNESIA', 'PF', '-10', '-16.722861', '-151.465856', 1, 'true', 0),
('RFR', 'Rio Frio Arpt', 'RFR', 'Rio Frio', 'COSTA RICA', 'CR', '-100', '0', '0', 1, 'true', 0),
('RGA', 'Rio Grande Arpt', 'RGA', 'Rio Grande', 'ARGENTINA', 'AR', '-3', '-53.777667', '-67.749389', 1, 'true', 0),
('RGI', 'Rangiroa Arpt', 'RGI', 'Rangiroa Island', 'FRENCH POLYNESIA', 'PF', '-10', '-14.954283', '-147.6608', 1, 'true', 0),
('RGL', 'Rio Gallegos Internacional Arpt', 'RGL', 'Rio Gallegos', 'ARGENTINA', 'AR', '-3', '-51.608875', '-69.312636', 1, 'true', 0),
('RGN', 'Mingaladon', 'RGN', 'Yangon', 'MYANMAR', 'MM', '6', '16.907305', '96.133222', 1, 'true', 0),
('RGR', 'Ranger Municipal Arpt', 'RGR', 'Ranger', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RHE', 'Champagne Arpt', 'RHE', 'Reims', 'FRANCE', 'FR', '1', '49.31', '4.05', 1, 'true', 0),
('RHI', 'Oneida County', 'RHI', 'Rhinelander', 'UNITED STATES', 'US', '-6', '45.6312', '-89.4675', 1, 'true', 0),
('RHN', 'Rosh Pina Airport', 'RHN', 'Rosh Pina', 'NAMIBIA', 'NA', '-100', '0', '0', 1, 'true', 0),
('RHO', 'Diagoras Arpt', 'RHO', 'Rhodes', 'GREECE', 'GR', '2', '36.405419', '28.086192', 1, 'true', 0),
('RIA', 'Base Aerea Arpt', 'RIA', 'Santa Maria', 'BRAZIL', 'BR', '-3', '-29.711358', '-53.688153', 1, 'true', 0),
('RIC', 'Richmond Intl Arpt', 'RIC', 'Richmond', 'UNITED STATES', 'US', '-5', '37.505167', '-77.319667', 1, 'true', 0),
('RIF', 'Reynolds Municipal Arpt', 'RIF', 'Richfield', 'UNITED STATES', 'US', '-6', '38.736436', '-112.098944', 1, 'true', 0),
('RIG', 'Rio Grande Airport', 'RIG', 'Rio Grande', 'BRAZIL', 'BR', '-3', '-32.082617', '-52.166542', 1, 'true', 0),
('RIL', 'Garfield Cty Arpt', 'RIL', 'Rifle', 'UNITED STATES', 'US', '-6', '39.526306', '-107.726944', 1, 'true', 0),
('GIG', 'Rio Internacional', 'RIO', 'Rio De Janeiro', 'BRAZIL', 'BR', '-3', '-22.808903', '-43.243647', 2, '', 0),
('SDU', 'Santos Dumont Arpt', 'RIO', 'Rio De Janeiro', 'BRAZIL', 'BR', '-3', '-22.910461', '-43.163133', 2, '', 0),
('RIW', 'Riverton Municipal', 'RIW', 'Riverton', 'UNITED STATES', 'US', '-7', '43.064167', '-108.459722', 1, 'true', 0),
('RIX', 'Riga Arpt', 'RIX', 'Riga', 'LATVIA', 'LV', '2', '56.923611', '23.971111', 1, 'true', 0),
('RIY', 'Riyan Mukalla Arpt', 'RIY', 'Riyan', 'YEMEN', 'YE', '3', '14.662639', '49.375028', 1, 'true', 0),
('RJA', 'Rajahmundry Arpt', 'RJA', 'Rajahmundry', 'INDIA', 'IN', '5', '17.110361', '81.818208', 1, 'true', 0),
('RJK', 'Rijeka Arpt', 'RJK', 'Rijeka', 'CROATIA', 'HR', '1', '45.216889', '14.570267', 1, 'true', 0),
('RJL', 'Agoncillo Arpt', 'RJL', 'Logrono', 'SPAIN', 'ES', '1', '42.4542', '-2.32083', 1, 'true', 0),
('RKC', 'Yreka Arpt', 'RKC', 'Yreka', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RKD', 'Rockland Arpt', 'RKD', 'Rockland', 'UNITED STATES', 'US', '-5', '44.060111', '-69.09923', 1, 'true', 0),
('RKE', 'Roskilde Arpt', 'RKE', 'Roskilde', 'DENMARK', 'DK', '1', '55.585567', '12.131428', 1, 'true', 0),
('RKH', 'Rock Hill York County Arpt', 'RKH', 'Rock Hill', 'UNITED STATES', 'US', '-5', '34.9878', '-81.0572', 1, 'true', 0),
('RKP', 'Aransas County Arpt', 'RKP', 'Rockport', 'UNITED STATES', 'US', '-6', '28.086222', '-97.043694', 1, 'true', 0),
('RKS', 'Rock Springs Municipal', 'RKS', 'Rock Springs', 'UNITED STATES', 'US', '-7', '41.5942', '-109.065', 1, 'true', 0),
('RKT', 'Ras Al Khaimah Arpt', 'RKT', 'Ras Al Khaimah', 'UNITED ARAB EMIRATES', 'AE', '4', '25.613483', '55.938817', 1, 'true', 0),
('RLA', 'National Arpt', 'RLA', 'Rolla', 'UNITED STATES', 'US', '-100', '38.1274', '-91.7695', 1, 'true', 0),
('RLD', 'Richland Arpt', 'RLD', 'Richland', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RLG', 'Laage Arpt', 'RLG', 'Rostock Laage', 'GERMANY', 'DE', '1', '53.918167', '12.278333', 1, 'true', 0),
('RMA', 'Roma Arpt', 'RMA', 'Roma', 'AUSTRALIA', 'AU', '10', '-26.545', '148.775', 1, 'true', 0),
('RME', 'Griffiss Air Force Base', 'RME', 'Rome', 'UNITED STATES', 'US', '-5', '43.2338', '-75.407033', 1, 'true', 0),
('RMF', 'Marsa Alam Arpt', 'RMF', 'Marsa Alam', 'EGYPT', 'EG', '2', '25.557111', '34.583711', 1, 'true', 0),
('RMG', 'Richard B Russell Arpt', 'RMG', 'Rome', 'UNITED STATES', 'US', '-4', '34.350778', '-85.158667', 1, 'true', 0),
('RMI', 'Miramare Airport', 'RMI', 'Rimini', 'ITALY', 'IT', '1', '44.020292', '12.611747', 1, 'true', 0),
('RMK', 'Renmark Airport', 'RMK', 'Renmark', 'AUSTRALIA', 'AU', '9', '-34.118', '140.404', 1, 'true', 0),
('RMS', 'Ramsteim Arpt', 'RMS', 'Ramstein', 'GERMANY', 'DE', '1', '49.436911', '7.600283', 1, 'true', 0),
('XXY', 'Ronneby Railway Service', 'RNB', 'Ronneby', 'SWEDEN', 'SE', '-100', '0', '0', 3, '', 0),
('XYO', 'Karlshamn Rail Station', 'RNB', 'Ronneby', 'SWEDEN', 'SE', '-100', '0', '0', 3, '', 0),
('RNB', 'Kallinge Arpt', 'RNB', 'Ronneby', 'SWEDEN', 'SE', '1', '56.266667', '15.265', 3, 'true', 0),
('RNE', 'Renaison Arpt', 'RNE', 'Roanne', 'FRANCE', 'FR', '1', '46.058334', '4.001389', 1, 'true', 0),
('RNH', 'New Richmond Municipal', 'RNH', 'New Richmond', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RNN', 'Bornholm Arpt', 'RNN', 'Bornholm', 'DENMARK', 'DK', '1', '55.063267', '14.759558', 1, 'true', 0),
('RNO', 'Reno Tahoe Intl Arpt', 'RNO', 'Reno', 'UNITED STATES', 'US', '-8', '39.499108', '-119.768108', 1, 'true', 0),
('RNS', 'Saint Jacques Arpt', 'RNS', 'Rennes', 'FRANCE', 'FR', '1', '48.069508', '-1.734794', 2, 'true', 0),
('ZFJ', 'Gare de Rennes', 'RNS', 'Rennes', 'FRANCE', 'FR', '-100', '48.15', '4.85', 2, '', 0),
('RNT', 'Renton Arpt', 'RNT', 'Renton', 'UNITED STATES', 'US', '-100', '47.4933', '-122.215', 1, 'true', 0),
('ROA', 'Roanoke Regional Arpt', 'ROA', 'Roanoke', 'UNITED STATES', 'US', '-5', '37.325472', '-79.975417', 1, 'true', 0),
('ROC', 'Monroe Cty Arpt New York', 'ROC', 'Rochester', 'UNITED STATES', 'US', '-5', '43.118866', '-77.672389', 1, 'true', 0),
('ROG', 'Rogers Arpt', 'ROG', 'Rogers', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ROI', 'Roi Et Arpt', 'ROI', 'Roi Et', 'THAILAND', 'TH', '7', '16.116761', '103.773797', 1, 'true', 0),
('ROK', 'Rockhampton Arpt', 'ROK', 'Rockhampton', 'AUSTRALIA', 'AU', '10', '-23.381944', '150.475278', 1, 'true', 0),
('CIA', 'Ciampino Arpt', 'ROM', 'Rome', 'ITALY', 'IT', '1', '41.799361', '12.594936', 2, '', 0),
('FCO', 'Fiumicino Arpt', 'ROM', 'Rome', 'ITALY', 'IT', '1', '41.804475', '12.250797', 2, '', 0),
('RON', 'Rondon Arpt', 'RON', 'Rondon', 'COLOMBIA', 'CO', '-100', '-24.5122', '-54.0533', 1, 'true', 0),
('ROO', 'Rondonopolis Arpt', 'ROO', 'Rondonopolis', 'BRAZIL', 'BR', '-4', '-16.466667', '-54.633333', 1, 'true', 0),
('ROP', 'Rota Arpt', 'ROP', 'Rota', 'NORTHERN MARIANA ISLANDS', 'MP', '10', '14.174308', '145.242536', 1, 'true', 0),
('ROR', 'Airai Airport', 'ROR', 'Koror', 'PALAU', 'PW', '9', '7.367303', '134.544278', 1, 'true', 0),
('ROS', 'Fisherton Airport', 'ROS', 'Rosario', 'ARGENTINA', 'AR', '-3', '-32.903611', '-60.785', 1, 'true', 0),
('ROT', 'Rotorua Arpt', 'ROT', 'Rotorua', 'NEW ZEALAND', 'NZ', '12', '-38.109167', '176.317222', 1, 'true', 0),
('ROV', 'Rostov Arpt', 'ROV', 'Rostov', 'RUSSIA', 'RU', '4', '47.258208', '39.818089', 1, 'true', 0),
('ROW', 'Industrial Aircenter', 'ROW', 'Roswell', 'UNITED STATES', 'US', '-7', '33.301556', '-104.530556', 1, 'true', 0),
('RPN', 'Rosh Pina Arpt', 'RPN', 'Rosh Pina', 'ISRAEL', 'IL', '2', '32.981047', '35.571908', 1, 'true', 0),
('RPR', 'Raipur Arpt', 'RPR', 'Raipur', 'INDIA', 'IN', '5', '21.180406', '81.738753', 1, 'true', 0),
('RRG', 'Rodrigues Island Arpt', 'RRG', 'Rodrigues Island', 'MAURITIUS', 'MU', '4', '-19.757658', '63.360983', 1, 'true', 0),
('RRO', 'Sorrento Arpt', 'RRO', 'Sorrento', 'ITALY', 'IT', '-100', '0', '0', 1, 'true', 0),
('RRS', 'Roros Arpt', 'RRS', 'Roros', 'NORWAY', 'NO', '1', '62.578411', '11.342347', 1, 'true', 0),
('RSA', 'Santa Rosa Arpt', 'RSA', 'Santa Rosa', 'ARGENTINA', 'AR', '-3', '-36.588322', '-64.275694', 1, 'true', 0),
('RSD', 'S Eleuthera Arpt', 'RSD', 'Rock Sound', 'BAHAMAS', 'BS', '-5', '24.8917', '-76.177739', 1, 'true', 0),
('RSH', 'Russian Seaplane Base', 'RSH', 'Russian Mission', 'UNITED STATES', 'US', '-9', '61.775', '-161.319444', 1, 'true', 0),
('RSN', 'Ruston Regional Arpt', 'RSN', 'Ruston', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RST', 'Rochester Municipal', 'RST', 'Rochester', 'UNITED STATES', 'US', '-6', '43.908283', '-92.500014', 1, 'true', 0),
('RSU', 'Yeosu Arpt', 'RSU', 'Yeosu', 'KOREA, REPUBLIC OF', 'KR', '9', '34.842328', '127.61685', 1, 'true', 0),
('RTB', 'Roatan Arpt', 'RTB', 'Roatan', 'HONDURAS', 'HN', '-6', '16.316814', '-86.522961', 1, 'true', 0),
('QRH', 'Rotterdam Central Rail Station', 'RTM', 'Rotterdam', 'NETHERLANDS', 'NL', '-100', '0', '0', 2, '', 0),
('RTM', 'Rotterdam Arpt', 'RTM', 'Rotterdam', 'NETHERLANDS', 'NL', '1', '51.956944', '4.437222', 2, 'true', 0),
('RTN', 'Crews Fld', 'RTN', 'Raton', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('RTS', 'Rottnest Island Arpt', 'RTS', 'Rottnest', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('RTW', 'Saratov Arpt', 'RTW', 'Saratov', 'RUSSIA', 'RU', '6', '51.334366', '46.022952', 1, 'true', 0),
('OSW', 'Orsk Airport', 'RU', 'Orsk', 'RUSSIA', 'RU', '6', '52.1', '58.566666', 1, '', 0),
('RUH', 'King Khaled Intl', 'RUH', 'Riyadh', 'SAUDI ARABIA', 'SA', '3', '24.95764', '46.698776', 1, 'true', 0),
('RUI', 'Ruidoso Municipal Arpt', 'RUI', 'Ruidoso', 'UNITED STATES', 'US', '-100', '33.4629', '-105.5348', 1, 'true', 0),
('RUN', 'Gillot Airport', 'RUN', 'Reunion Island', 'REUNION', 'RE', '5', '-20.8871', '55.510308', 1, 'true', 0),
('RUT', 'Rutland Arpt', 'RUT', 'Rutland', 'UNITED STATES', 'US', '-5', '43.5294', '-72.9496', 1, 'true', 0),
('RUY', 'Copan Arpt', 'RUY', 'Copan', 'HONDURAS', 'HN', '-100', '0', '0', 1, 'true', 0),
('RVK', 'Ryumsjoen Arpt', 'RVK', 'Roervik', 'NORWAY', 'NO', '1', '64.8383', '11.1461', 1, 'true', 0),
('RVN', 'Rovaniemi Arpt', 'RVN', 'Rovaniemi', 'FINLAND', 'FI', '2', '66.564822', '25.830411', 1, 'true', 0),
('RVR', 'Green River Arpt', 'RVR', 'Green River', 'UNITED STATES', 'US', '-4', '18.245278', '-65.643333', 1, 'true', 0),
('RVT', 'Ravensthorpe Arpt', 'RVT', 'Ravensthorpe', 'AUSTRALIA', 'AU', '8', '-33.797222', '120.208056', 1, 'true', 0),
('RWI', 'Wilson Arpt', 'RWI', 'Rocky Mount', 'UNITED STATES', 'US', '-5', '35.8563', '-77.8919', 1, 'true', 0),
('RWL', 'Rawlins Municipal', 'RWL', 'Rawlins', 'UNITED STATES', 'US', '-7', '41.805598', '-107.19994', 1, 'true', 0),
('RWN', 'Rovno Arpt', 'RWN', 'Rovno', 'UKRAINE', 'UA', '2', '50.6071', '26.1416', 1, 'true', 0),
('RWS', 'Sumare Arpt', 'RWS', 'Sumare', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('RXS', 'Roxas City Arpt', 'RXS', 'Roxas City', 'PHILIPPINES', 'PH', '8', '11.597669', '122.751669', 1, 'true', 0),
('RYB', 'Rybinsk Staroselye', 'RYB', 'Rybinsk Staroselye', 'RUSSIA', 'RU', '4', '58.1042', '38.9294', 1, 'true', 0),
('RZE', 'Jasionka Arpt', 'RZE', 'Rzeszow', 'POLAND', 'PL', '1', '50.109958', '22.019', 1, 'true', 0),
('RZN', 'Ryazan Arpt', 'RZN', 'Ryazan', 'RUSSIA', 'RU', '-100', '0', '0', 1, 'true', 0),
('RZZ', 'Halifax Cty Arpt', 'RZZ', 'Roanoke Rapids', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SAB', 'Juancho Yraus Quinl', 'SAB', 'Saba Island', 'NETHERLANDS ANTILLES', 'AN', '-4', '17.645278', '-63.220556', 1, 'true', 0),
('SMF', 'Sacramento International', 'SAC', 'Sacramento', 'UNITED STATES', 'US', '-8', '38.695417', '-121.590778', 3, '', 0),
('MHR', 'Mather Air Force Base', 'SAC', 'Sacramento', 'UNITED STATES', 'US', '-8', '38.553897', '-121.297592', 3, '', 0),
('SAC', 'Sacramento Executive Arpt', 'SAC', 'Sacramento', 'UNITED STATES', 'US', '-8', '38.512524', '-121.49347', 3, 'true', 0),
('SAF', 'Santa Fe Municipal', 'SAF', 'Santa Fe', 'UNITED STATES', 'US', '-7', '35.617108', '-106.089422', 1, 'true', 0),
('SAH', 'Sanaa Intl Airport', 'SAH', 'Sanaa', 'YEMEN', 'YE', '3', '15.476258', '44.219739', 1, 'true', 0),
('SAK', 'Saudarkrokur Arpt', 'SAK', 'Saudarkrokur', 'ICELAND', 'IS', '0', '65.731667', '-19.572778', 1, 'true', 0),
('SAL', 'Comalapa Intl Arpt', 'SAL', 'San Salvador', 'EL SALVADOR', 'SV', '-6', '13.440947', '-89.055728', 1, 'true', 0),
('SAM', 'Salamo Arpt', 'SAM', 'Salamo', 'PAPUA NEW GUINEA', 'PG', '-100', '0', '0', 1, 'true', 0),
('SDM', 'Brown Field Municipal', 'SAN', 'San Diego', 'UNITED STATES', 'US', '-7', '32.572272', '-116.980161', 4, '', 0),
('MYF', 'Montgomery Field', 'SAN', 'San Diego', 'UNITED STATES', 'US', '-8', '32.4759', '117.759', 4, '', 0),
('SEE', 'Gillespie Field', 'SAN', 'San Diego', 'UNITED STATES', 'US', '-8', '32.826222', '-116.972444', 4, '', 0),
('SAN', 'Lindbergh Intl Arpt', 'SAN', 'San Diego', 'UNITED STATES', 'US', '-8', '32.733556', '-117.189667', 4, 'true', 0),
('GRU', 'Guarulhos Arpt', 'SAO', 'Sao Paulo', 'BRAZIL', 'BR', '-3', '-23.432075', '-46.469511', 3, '', 0),
('CGH', 'Congonhas Arpt', 'SAO', 'Sao Paulo', 'BRAZIL', 'BR', '-3', '-23.626692', '-46.655375', 3, '', 0),
('VCP', 'Viracopos Arpt', 'SAO', 'Sao Paulo', 'BRAZIL', 'BR', '-3', '-23.0075', '-47.134444', 3, '', 0),
('SAP', 'Ramon Villeda Morales Arpt', 'SAP', 'San Pedro Sula', 'HONDURAS', 'HN', '-6', '15.452639', '-87.923556', 1, 'true', 0),
('SAR', 'Sparta Community Airport', 'SAR', 'Sparta', 'UNITED STATES', 'US', '-100', '38.1489', '-89.6987', 1, 'true', 0),
('SSF', 'Stinson Municipal Arpt', 'SAT', 'San Antonio', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('SAT', 'San Antonio Intl', 'SAT', 'San Antonio', 'UNITED STATES', 'US', '-6', '29.533694', '-98.469778', 2, 'true', 0),
('SAV', 'Savannah Intl Arpt', 'SAV', 'Savannah', 'UNITED STATES', 'US', '-5', '32.127583', '-81.202139', 1, 'true', 0),
('SAY', 'Siena Arpt', 'SAY', 'Siena', 'ITALY', 'IT', '1', '43.256286', '11.255036', 1, 'true', 0),
('SAZ', 'Sasstown Arpt', 'SAZ', 'Sasstown', 'LIBERIA', 'LR', '-100', '0', '0', 1, 'true', 0),
('SBA', 'Santa Barbara Arpt', 'SBA', 'Santa Barbara', 'UNITED STATES', 'US', '-8', '34.426211', '-119.840372', 1, 'true', 0),
('SBH', 'St Jean Arpt', 'SBH', 'St Barthelemy', 'GUADELOUPE', 'GP', '-4', '17.9023', '-62.8324', 1, 'true', 0),
('SBK', 'Tremuson Armor Arpt', 'SBK', 'St Brieuc', 'FRANCE', 'FR', '1', '48.537777', '-2.854445', 1, 'true', 0),
('SBM', 'Sheboygan Arpt', 'SBM', 'Sheboygan', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SBN', 'Michiana Regional Arpt', 'SBN', 'South Bend', 'UNITED STATES', 'US', '-5', '41.708661', '-86.31725', 1, 'true', 0),
('SBS', 'Steamboat Arpt', 'SBS', 'Steamboat Springs', 'UNITED STATES', 'US', '-6', '40.51625', '-106.866306', 1, 'true', 0),
('SBD', 'San Bernardino Intl Arpt', 'SBT', 'San Bernardino', 'UNITED STATES', 'US', '-8', '34.095352', '-117.234872', 1, '', 0),
('SBU', 'Springbok Arpt', 'SBU', 'Springbok', 'SOUTH AFRICA', 'ZA', '2', '-29.689333', '17.939611', 1, 'true', 0),
('SBW', 'Sibu Arpt', 'SBW', 'Sibu', 'MALAYSIA', 'MY', '8', '2.261603', '111.985322', 1, 'true', 0),
('SBY', 'Wicomico Regional Arpt', 'SBY', 'Salisbury Ocean City', 'UNITED STATES', 'US', '-5', '38.340525', '-75.510289', 1, 'true', 0),
('SBZ', 'Sibiu Arpt', 'SBZ', 'Sibiu', 'ROMANIA', 'RO', '2', '45.785597', '24.091342', 1, 'true', 0),
('SCC', 'Prudhoe Bay Deadhorse Arpt', 'SCC', 'Prudhoe Bay Deadhorse', 'UNITED STATES', 'US', '-9', '70.19475', '-148.465167', 1, 'true', 0),
('SCE', 'University Park Arpt', 'SCE', 'State College', 'UNITED STATES', 'US', '-5', '40.849278', '-77.848694', 1, 'true', 0),
('SCF', 'Scottsdale Municipal Arpt', 'SCF', 'Scottsdale', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SCH', 'Schenectady County Arpt', 'SCH', 'Schenectady', 'UNITED STATES', 'US', '-5', '42.852456', '-73.928867', 1, 'true', 0),
('SCI', 'Aeropuerto Santo Domingo', 'SCI', 'San Crystobal', 'VENEZUELA', 'VE', '-100', '0', '0', 1, 'true', 0),
('SCK', 'Stockton Metro Arpt', 'SCK', 'Stockton', 'UNITED STATES', 'US', '-8', '37.894167', '-121.238306', 1, 'true', 0),
('ULC', 'Los Cerrillos', 'SCL', 'Santiago', 'CHILE', 'CL', '-100', '0', '0', 2, '', 0),
('SCL', 'Arturo Merino Benitez', 'SCL', 'Santiago', 'CHILE', 'CL', '-4', '-33.392975', '-70.785803', 2, 'true', 0),
('QFZ', 'Saarbruecken Rail Station', 'SCN', 'Saarbruecken', 'GERMANY', 'DE', '1', '0', '0', 2, '', 0),
('SCN', 'Ensheim Arpt', 'SCN', 'Saarbruecken', 'GERMANY', 'DE', '1', '49.214553', '7.109508', 2, 'true', 0),
('SCO', 'Aktau Arpt', 'SCO', 'Aktau', 'KAZAKHSTAN', 'KZ', '5', '43.513557', '51.052817', 1, 'true', 0),
('SCQ', 'Santiago Airport', 'SCQ', 'Santiago De Compostela', 'SPAIN', 'ES', '1', '42.896333', '-8.415144', 1, 'true', 0),
('SCU', 'Antonio Maceo Arpt', 'SCU', 'Santiago', 'CUBA', 'CU', '-5', '19.969769', '-75.835414', 1, 'true', 0),
('SCV', 'Salcea Arpt', 'SCV', 'Suceava', 'ROMANIA', 'RO', '2', '47.6875', '26.354056', 1, 'true', 0),
('SCW', 'Syktyvkar Arpt', 'SCW', 'Syktyvkar', 'RUSSIA', 'RU', '4', '61.64705', '50.84505', 1, 'true', 0),
('SCX', 'Salina Cruz Arpt', 'SCX', 'Salina Cruz', 'MEXICO', 'MX', '-6', '16.2126', '-95.2016', 1, 'true', 0),
('SCY', 'San Cristobal Airport', 'SCY', 'San Cristobal', 'ECUADOR', 'EC', '-6', '-0.910206', '-89.61745', 1, 'true', 0),
('SDB', 'Langebaanweg Arpt', 'SDB', 'Saldanha Bay', 'SOUTH AFRICA', 'ZA', '-100', '-32.9688', '18.1653', 1, 'true', 0),
('SDE', 'Santiago Des Estero Arpt', 'SDE', 'Santiago Del Estero', 'ARGENTINA', 'AR', '-3', '-27.765617', '-64.310122', 1, 'true', 0),
('LOU', 'Bowman Field Arpt', 'SDF', 'Louisville', 'UNITED STATES', 'US', '-5', '38.228', '-85.663722', 2, '', 0),
('SDF', 'Louisville International Arpt', 'SDF', 'Louisville', 'UNITED STATES', 'US', '-5', '38.174086', '-85.736499', 2, 'true', 0),
('SDJ', 'Sendai Arpt', 'SDJ', 'Sendai', 'JAPAN', 'JP', '9', '38.139722', '140.916944', 1, 'true', 0),
('SDK', 'Sandakan Arpt', 'SDK', 'Sandakan', 'MALAYSIA', 'MY', '8', '5.900897', '118.059486', 1, 'true', 0),
('XXZ', 'Sundsvall Rail Service', 'SDL', 'Sundsvall', 'SWEDEN', 'SE', '-100', '0', '0', 2, '', 0),
('SDL', 'Sundsvall Arpt', 'SDL', 'Sundsvall', 'SWEDEN', 'SE', '1', '62.528125', '17.443928', 2, 'true', 0),
('SDN', 'Anda Airport', 'SDN', 'Sandane', 'NORWAY', 'NO', '1', '61.83', '6.10583', 1, 'true', 0),
('SDP', 'Sand Point Arpt', 'SDP', 'Sand Point', 'UNITED STATES', 'US', '-9', '55.315', '-160.523', 1, 'true', 0),
('SDQ', 'Las Americas Arpt', 'SDQ', 'Santo Domingo', 'DOMINICAN REPUBLIC', 'DO', '-4', '18.429664', '-69.668925', 2, 'true', 0),
('HEX', 'Herrera Arpt', 'SDQ', 'Santo Domingo', 'DOMINICAN REPUBLIC', 'DO', '-6', '18.475', '-69.975', 2, '', 0),
('SDR', 'Santander Airport', 'SDR', 'Santander', 'SPAIN', 'ES', '1', '43.427064', '-3.820006', 1, 'true', 0),
('SDX', 'Sedona Arpt', 'SDX', 'Sedona', 'UNITED STATES', 'US', '-7', '34.848628', '-111.788472', 1, 'true', 0),
('SDY', 'Sindey Richland Municipal Arpt', 'SDY', 'Sidney', 'UNITED STATES', 'US', '-7', '47.706944', '-104.1925', 1, 'true', 0),
('SCS', 'Scatsta Arpt', 'SDZ', 'Shetland Islands Area', 'UNITED KINGDOM', 'GB', '-100', '60.4328', '-1.2961', 1, '', 0),
('SEA', 'Seattle Tacoma Intl Arpt', 'SEA', 'Seattle', 'UNITED STATES', 'US', '-8', '47.449', '-122.309306', 4, 'true', 0),
('BFI', 'Seattle Boeing Field', 'SEA', 'Seattle', 'UNITED STATES', 'US', '-8', '47.53', '-122.301947', 4, '', 0),
('KEH', 'Kenmore Air Harbor', 'SEA', 'Seattle', 'UNITED STATES', 'US', '-8', '47.7548', '-122.259', 4, '', 0),
('LKE', 'Lake Union Seaplane Base', 'SEA', 'Seattle', 'UNITED STATES', 'US', '-7', '47.629', '-122.339', 4, '', 0),
('SEF', 'Air Terminal Arpt', 'SEF', 'Sebring', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ICN', 'Incheon Intl Arpt', 'SEL', 'Seoul', 'KOREA, REPUBLIC OF', 'KR', '9', '37.469075', '126.450517', 2, '', 0),
('GMP', 'Gimpo Intl Arpt', 'SEL', 'Seoul', 'KOREA, REPUBLIC OF', 'KR', '9', '37.558311', '126.790586', 2, '', 0),
('SEN', 'Southend Municipal Arpt', 'SEN', 'Southend', 'UNITED KINGDOM', 'GB', '0', '51.571389', '0.695556', 1, 'true', 0),
('SEP', 'Clark Field', 'SEP', 'Stephenville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SEW', 'Siwa Arpt', 'SEW', 'Siwa', 'EGYPT', 'EG', '-100', '0', '0', 1, 'true', 0),
('SEY', 'Selibaby Arpt', 'SEY', 'Selibaby', 'MAURITANIA', 'MR', '0', '15.179692', '-12.207272', 1, 'true', 0),
('SEZ', 'Seychelles Intl Arpt', 'SEZ', 'Mahe Island', 'SEYCHELLES', 'SC', '4', '-4.674342', '55.521839', 1, 'true', 0),
('SFA', 'El Maou Airport', 'SFA', 'Sfax', 'TUNISIA', 'TN', '1', '34.717953', '10.690972', 1, 'true', 0),
('SFB', 'Orlando Sanford Arpt', 'SFB', 'Sanford', 'UNITED STATES', 'US', '-5', '28.777639', '-81.237489', 1, 'true', 0),
('SFD', 'Las Flecheras', 'SFD', 'San Fernando De Apure', 'VENEZUELA', 'VE', '-4', '7.883317', '-67.444025', 1, 'true', 0),
('SFE', 'San Fernando Arpt', 'SFE', 'San Fernando', 'PHILIPPINES', 'PH', '8', '16.595589', '120.303219', 1, 'true', 0),
('SFG', 'Esperance Airport', 'SFG', 'St Martin', 'NETHERLANDS ANTILLES', 'AN', '-4', '18.099914', '-63.047197', 1, 'true', 0),
('SFH', 'San Felipe Arpt', 'SFH', 'San Felipe', 'MEXICO', 'MX', '-4', '10.278728', '-68.755211', 1, 'true', 0),
('SFJ', 'Sondre Stromfjord Arpt', 'SFJ', 'Kangerlussuaq', 'GREENLAND', 'GL', '-3', '67.016969', '-50.689325', 1, 'true', 0),
('SFL', 'Sao Filipe Arpt', 'SFL', 'Sao Filipe', 'CAPE VERDE', 'CV', '-1', '14.885', '-24.48', 1, 'true', 0),
('SFM', 'Sanford Regional Arpt', 'SFM', 'Sanford', 'UNITED STATES', 'US', '-5', '43.39383', '-70.708', 1, 'true', 0),
('SFN', 'Santa Fe Arpt', 'SFN', 'Santa Fe', 'ARGENTINA', 'AR', '-3', '-31.711666', '-60.811668', 1, 'true', 0),
('SFO', 'San Francisco Intl Arpt', 'SFO', 'San Francisco', 'UNITED STATES', 'US', '-8', '37.618972', '-122.374889', 1, 'true', 0),
('SFQ', 'Sanli Urfa Arpt', 'SFQ', 'Sanli Urfa', 'TURKEY', 'TR', '2', '37.094261', '38.847103', 2, 'true', 0),
('GNY', 'Guney Anadolu Airport', 'SFQ', 'Sanli Urfa', 'TURKEY', 'TR', '2', '37.0919', '38.8462', 2, '', 0),
('SFS', 'Subic Bay Intl Arpt', 'SFS', 'Subic Bay', 'PHILIPPINES', 'PH', '8', '14.7944', '120.271', 1, 'true', 0),
('SFT', 'Skelleftea Arpt', 'SFT', 'Skelleftea', 'SWEDEN', 'SE', '1', '64.624772', '21.076892', 1, 'true', 0),
('SFX', 'San Felix Arpt', 'SFX', 'San Felix', 'VENEZUELA', 'VE', '-100', '0', '0', 1, 'true', 0),
('CEF', 'Westover Metro', 'SFY', 'Springfield', 'UNITED STATES', 'US', '-5', '42.194014', '-72.534783', 1, '', 0),
('SFZ', 'Smithfield Arpt', 'SFZ', 'Smithfield', 'UNITED STATES', 'US', '-5', '41.920764', '-71.491381', 1, 'true', 0),
('SGC', 'Surgut Arpt', 'SGC', 'Surgut', 'RUSSIA', 'RU', '6', '61.343694', '73.401842', 1, 'true', 0);
INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('SGD', 'Sonderborg Arpt', 'SGD', 'Sonderborg', 'DENMARK', 'DK', '1', '54.964367', '9.791731', 1, 'true', 0),
('SGE', 'Siegerland Arpt', 'SGE', 'Siegen', 'GERMANY', 'DE', '-100', '50.7077', '8.083', 1, 'true', 0),
('SGF', 'Springfield Branson Regional Arpt', 'SGF', 'Springfield', 'UNITED STATES', 'US', '-6', '37.245667', '-93.388639', 1, 'true', 0),
('SGN', 'Tan Son Nhut Arpt', 'SGN', 'Ho Chi Minh City', 'VIET NAM', 'VN', '7', '10.818797', '106.651856', 1, 'true', 0),
('SGO', 'St George Arpt', 'SGO', 'St George', 'AUSTRALIA', 'AU', '10', '-28.0497', '148.595', 1, 'true', 0),
('SGR', 'Hull Field Arpt', 'SGR', 'Sugar Land', 'UNITED STATES', 'US', '-6', '29.62225', '-95.656528', 1, 'true', 0),
('SGT', 'Stuttgart Municipal', 'SGT', 'Stuttgart', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SGU', 'Saint George Municipal Arpt', 'SGU', 'St George', 'UNITED STATES', 'US', '-7', '37.090583', '-113.593056', 1, 'true', 0),
('SGY', 'Skagway Municipal Arpt', 'SGY', 'Skagway', 'UNITED STATES', 'US', '-9', '59.4601', '-135.316', 1, 'true', 0),
('SHA', 'Hongqiao International Arpt', 'SHA', 'Shanghai', 'CHINA', 'CN', '8', '31.197875', '121.336319', 2, 'true', 0),
('PVG', 'Pudong International Arpt', 'SHA', 'Shanghai', 'CHINA', 'CN', '8', '31.143378', '121.805214', 2, '', 0),
('SHB', 'Nakashibetsu Arpt', 'SHB', 'Nakashibetsu', 'JAPAN', 'JP', '9', '43.5775', '144.96', 1, 'true', 0),
('SHD', 'Shenandoah Valley Arpt', 'SHD', 'Staunton', 'UNITED STATES', 'US', '-5', '38.263889', '-78.896389', 1, 'true', 0),
('SHE', 'Shenyang Arpt', 'SHE', 'Shenyang', 'CHINA', 'CN', '8', '41.3824', '123.2901', 1, 'true', 0),
('SHO', 'Seolak Arpt', 'SHO', 'Sokcho', 'KOREA, REPUBLIC OF', 'KR', '9', '38.142614', '128.598556', 1, 'true', 0),
('SHP', 'Qinhuangdao Arpt', 'SHP', 'Qinhuangdao', 'CHINA', 'CN', '8', '39.9681', '119.731', 1, 'true', 0),
('SHR', 'Sheridan Cty Arpt', 'SHR', 'Sheridan', 'UNITED STATES', 'US', '-7', '44.7692', '-106.98', 1, 'true', 0),
('SHS', 'Shashi Arpt', 'SHS', 'Shashi', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('SHT', 'Shepparton', 'SHT', 'Shepparton', 'AUSTRALIA', 'AU', '-100', '-36.4283', '145.3933', 1, 'true', 0),
('SHV', 'Shreveport Regional Arpt', 'SHV', 'Shreveport', 'UNITED STATES', 'US', '-6', '32.446629', '-93.8256', 2, 'true', 0),
('BAD', 'Barksdale Air Force Base', 'SHV', 'Shreveport', 'UNITED STATES', 'US', '-6', '32.50182', '-93.662674', 2, '', 0),
('SHW', 'Sharurah Arpt', 'SHW', 'Sharurah', 'SAUDI ARABIA', 'SA', '3', '17.466875', '47.121431', 1, 'true', 0),
('SHY', 'Shinyanga Arpt', 'SHY', 'Shinyanga', 'TANZANIA', 'TZ', '3', '-3.667', '33.417', 1, 'true', 0),
('XIY', 'Xianyang Arpt', 'SIA', 'Xi An', 'CHINA', 'CN', '8', '34.447119', '108.751592', 2, '', 0),
('SIA', 'Xiguan Airport', 'SIA', 'Xi An', 'CHINA', 'CN', '8', '34.3767', '109.12', 2, 'true', 0),
('NOP', 'Sinop Arpt', 'SIC', 'Sinop', 'TURKEY', 'TR', '2', '42.0158', '35.0664', 1, '', 0),
('SID', 'Amilcar Cabral Intl Arpt', 'SID', 'Sal Island', 'CAPE VERDE', 'CV', '-1', '16.741389', '-22.949444', 1, 'true', 0),
('SIG', 'SIG Isla Grande Arpt', 'SIG', 'Isla Grande', 'UNITED STATES', 'US', '-4', '18.456828', '-66.098139', 1, 'true', 0),
('SIN', 'Changi Intl Arpt', 'SIN', 'Singapore', 'SINGAPORE', 'SG', '8', '1.350189', '103.994433', 1, 'true', 0),
('SIP', 'Simferopol Arpt', 'SIP', 'Simferopol', 'UKRAINE', 'UA', '2', '45.052222', '33.975139', 1, 'true', 0),
('SIR', 'Sion Arpt', 'SIR', 'Sion', 'SWITZERLAND', 'CH', '1', '46.219592', '7.326764', 1, 'true', 0),
('SIT', 'Sitka Airport', 'SIT', 'Sitka', 'UNITED STATES', 'US', '-9', '57.047138', '-135.361611', 1, 'true', 0),
('SIX', 'Singleton Arpt', 'SIX', 'Singleton', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('SJC', 'San Jose Intl Arpt', 'SJC', 'San Jose', 'UNITED STATES', 'US', '-8', '37.3626', '-121.929022', 4, 'true', 0),
('ZSM', 'Santa Clara Bus Service', 'SJC', 'San Jose', 'UNITED STATES', 'US', '-100', '0', '0', 4, '', 0),
('ZJO', 'San Jose Bus Service', 'SJC', 'San Jose', 'UNITED STATES', 'US', '-100', '0', '0', 4, '', 0),
('RHV', 'Reid Hillview Of Santa Clara County', 'SJC', 'San Jose', 'UNITED STATES', 'US', '-100', '0', '0', 4, '', 0),
('SJD', 'Los Cabos Arpt', 'SJD', 'San Jose Cabo', 'MEXICO', 'MX', '-7', '23.15185', '-109.721044', 1, 'true', 0),
('SJF', 'St John Island Arpt', 'SJF', 'St John', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SJJ', 'Butmir Arpt', 'SJJ', 'Sarajevo', 'BOSNIA AND HERZEGOVINA', 'BA', '1', '43.824583', '18.331467', 1, 'true', 0),
('SJK', 'Sao Jose Dos Campos Arpt', 'SJK', 'Sao Jose Dos Campos', 'BRAZIL', 'BR', '-3', '-23.228172', '-45.862739', 1, 'true', 0),
('SJO', 'Juan Santa Maria Intl', 'SJO', 'San Jose', 'COSTA RICA', 'CR', '-6', '9.993861', '-84.208806', 2, 'true', 0),
('SYQ', 'Tobias Bolanos Intl', 'SJO', 'San Jose', 'COSTA RICA', 'CR', '-6', '9.957053', '-84.139797', 2, '', 0),
('SJP', 'Sao Jose Do Rio Preto', 'SJP', 'Sao Jose Do Rio Preto', 'BRAZIL', 'BR', '-3', '-20.816567', '-49.406511', 1, 'true', 0),
('SJT', 'Mathis Field', 'SJT', 'San Angelo', 'UNITED STATES', 'US', '-6', '31.35775', '-100.496306', 1, 'true', 0),
('SJU', 'Luiz Munoz Marin Intl', 'SJU', 'San Juan', 'UNITED STATES', 'US', '-4', '18.439417', '-66.001833', 1, 'true', 0),
('SJW', 'Daguocun Arpt', 'SJW', 'Shijiazhuang', 'CHINA', 'CN', '8', '38.280686', '114.6973', 1, 'true', 0),
('SJY', 'Ilmajoki Arpt', 'SJY', 'Seinajoki', 'FINLAND', 'FI', '2', '62.6921', '22.8323', 1, 'true', 0),
('SJZ', 'Sao Jorge Arpt', 'SJZ', 'Sao Jorge Island', 'PORTUGAL', 'PT', '-1', '38.6655', '-28.175817', 1, 'true', 0),
('SKB', 'Robert L Bradshaw Arpt', 'SKB', 'St Kitts', 'SAINT KITTS AND NEVIS', 'KN', '-4', '17.311194', '-62.718667', 1, 'true', 0),
('SKD', 'Samarkand Arpt', 'SKD', 'Samarkand', 'UZBEKISTAN', 'UZ', '5', '39.700547', '66.983829', 1, 'true', 0),
('XKK', 'Larvik Rail Station', 'SKE', 'Skien', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('XKP', 'Porsgrunn Rail Station', 'SKE', 'Skien', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('SKE', 'Skien Arpt', 'SKE', 'Skien', 'NORWAY', 'NO', '1', '59.185', '9.566944', 3, 'true', 0),
('SKG', 'Makedonia Arpt', 'SKG', 'Thessaloniki', 'GREECE', 'GR', '2', '40.519725', '22.97095', 1, 'true', 0),
('SKL', 'Broadford Arpt', 'SKL', 'Isle Of Skye Hebrides Islands', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('SKN', 'Skagen Arpt', 'SKN', 'Stokmarknes', 'NORWAY', 'NO', '1', '68.580833', '15.026111', 1, 'true', 0),
('SKP', 'Skopje Arpt', 'SKP', 'Skopje', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK', '1', '41.961622', '21.621381', 1, 'true', 0),
('SKS', 'Skrydstrup Airport', 'SKS', 'Skrydstrup', 'DENMARK', 'DK', '1', '55.225553', '9.263931', 1, 'true', 0),
('SKT', 'Sialkot Arpt', 'SKT', 'Sialkot', 'PAKISTAN', 'PK', '5', '32.5356', '74.3639', 1, 'true', 0),
('SKU', 'Skiros Arpt', 'SKU', 'Skiros', 'GREECE', 'GR', '2', '38.967553', '24.487228', 1, 'true', 0),
('SKX', 'Saransk Arpt', 'SKX', 'Saransk', 'RUSSIA', 'RU', '4', '54.1251', '45.2123', 1, 'true', 0),
('SKY', 'Griffing Sandusky Arpt', 'SKY', 'Sandusky', 'UNITED STATES', 'US', '-5', '41.433361', '-82.652333', 1, 'true', 0),
('SLA', 'General Belgrano Intl Arpt', 'SLA', 'Salta', 'ARGENTINA', 'AR', '-3', '-24.855978', '-65.486169', 1, 'true', 0),
('SLC', 'Salt Lake City Intl Arpt', 'SLC', 'Salt Lake City', 'UNITED STATES', 'US', '-7', '40.788389', '-111.977772', 1, 'true', 0),
('SLD', 'Sliac Arpt', 'SLD', 'Sliac', 'SLOVAKIA', 'SK', '1', '48.637839', '19.134108', 1, 'true', 0),
('SLE', 'McNary Field', 'SLE', 'Salem', 'UNITED STATES', 'US', '-7', '44.9095', '-123.003', 1, 'true', 0),
('SLK', 'Adirondack Arpt', 'SLK', 'Saranac Lake', 'UNITED STATES', 'US', '-5', '44.3853', '-74.2062', 1, 'true', 0),
('SLL', 'Salalah Arpt', 'SLL', 'Salalah', 'OMAN', 'OM', '4', '17.038719', '54.091297', 1, 'true', 0),
('SLM', 'Matacan Arpt', 'SLM', 'Salamanca', 'SPAIN', 'ES', '1', '40.952117', '-5.501986', 1, 'true', 0),
('SLN', 'Salina Municipal', 'SLN', 'Salina', 'UNITED STATES', 'US', '-6', '38.791', '-97.6522', 1, 'true', 0),
('SLP', 'San Luis Potosi Municipal Arpt', 'SLP', 'San Luis Potosi', 'MEXICO', 'MX', '-6', '22.254303', '-100.930806', 1, 'true', 0),
('SLT', 'Salida Arpt', 'SLT', 'Salida', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SLU', 'Vigie Field Arpt', 'SLU', 'St Lucia', 'SAINT LUCIA', 'LC', '-4', '14.020228', '-60.992936', 1, 'true', 0),
('SLV', 'Simla Arpt', 'SLV', 'Simla', 'INDIA', 'IN', '5', '31.081803', '77.067967', 1, 'true', 0),
('SLW', 'Saltillo Arpt', 'SLW', 'Saltillo', 'MEXICO', 'MX', '-6', '25.549497', '-100.928669', 1, 'true', 0),
('SLY', 'Salehard Airport', 'SLY', 'Salekhard', 'RUSSIA', 'RU', '6', '66.590753', '66.611042', 1, 'true', 0),
('SLZ', 'Mal Cunha Machado', 'SLZ', 'Sao Luiz', 'BRAZIL', 'BR', '-3', '-2.585361', '-44.234139', 1, 'true', 0),
('SMA', 'Vilo Do Porto Arpt', 'SMA', 'Santa Maria', 'PORTUGAL', 'PT', '-1', '36.97139', '-25.170639', 1, 'true', 0),
('SME', 'Pulaski County Arpt', 'SME', 'Somerset', 'UNITED STATES', 'US', '-5', '37.053611', '-84.615556', 1, 'true', 0),
('SMI', 'Samos Arpt', 'SMI', 'Samos', 'GREECE', 'GR', '2', '37.689999', '26.911667', 1, 'true', 0),
('SML', 'Stella Maris Arpt', 'SML', 'Stella Maris', 'BAHAMAS', 'BS', '-5', '23.581444', '-75.270475', 1, 'true', 0),
('SMP', 'Stockholm Arpt', 'SMP', 'Stockholm', 'PAPUA NEW GUINEA', 'PG', '10', '-4.566667', '151.96666', 1, 'true', 0),
('SMR', 'Simon Bolivar', 'SMR', 'Santa Marta', 'COLOMBIA', 'CO', '-5', '11.11965', '-74.230647', 1, 'true', 0),
('SMS', 'St Marie Arpt', 'SMS', 'Saint Marie', 'MADAGASCAR', 'MG', '3', '-17.093889', '49.815834', 1, 'true', 0),
('SMV', 'Samedan Arpt', 'SMV', 'St Moritz', 'SWITZERLAND', 'CH', '1', '46.534075', '9.884106', 1, 'true', 0),
('SMX', 'Santa Maria Public Arpt', 'SMX', 'Santa Maria', 'UNITED STATES', 'US', '-8', '34.8989', '-120.457', 2, 'true', 0),
('LPC', 'Lompoc Arpt', 'SMX', 'Santa Maria', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('NYI', 'Sunyani', 'SN', 'Sunyani', 'GHANA', 'GH', '0', '5.605186', '0', 1, '', 0),
('SNA', 'John Wayne Arpt', 'SNA', 'Santa Ana', 'UNITED STATES', 'US', '-8', '33.675667', '-117.868222', 1, 'true', 0),
('SNE', 'Preguica Arpt', 'SNE', 'Sao Nicolau', 'CAPE VERDE', 'CV', '-1', '16.588356', '-24.284656', 1, 'true', 0),
('SNF', 'San Felipe Airport', 'SNF', 'San Felipe', 'VENEZUELA', 'VE', '-100', '10.2833', '-68.7333', 1, 'true', 0),
('SNH', 'Stanthorpe', 'SNH', 'Stanthorpe', 'AUSTRALIA', 'AU', '-100', '-28.62', '151.99', 1, 'true', 0),
('SNI', 'R E Murray Arpt', 'SNI', 'Sinoe', 'LIBERIA', 'LR', '-100', '0', '0', 1, 'true', 0),
('SNL', 'Shawnee Airport', 'SNL', 'Shawnee', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SNN', 'Shannon Arpt', 'SNN', 'Shannon', 'IRELAND', 'IE', '0', '52.701978', '-8.924817', 1, 'true', 0),
('SNO', 'Sakon Nakhon Arpt', 'SNO', 'Sakon Nakhon', 'THAILAND', 'TH', '7', '17.195142', '104.118625', 1, 'true', 0),
('SNQ', 'San Quintin Arpt', 'SNQ', 'San Quintin', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('SNR', 'Montoir Airport', 'SNR', 'St Nazaire', 'FRANCE', 'FR', '1', '47.312189', '-2.149181', 1, 'true', 0),
('SNS', 'Salinas Arpt', 'SNS', 'Salinas', 'UNITED STATES', 'US', '-100', '36.6628', '-121.6064', 1, 'true', 0),
('SNU', 'Santa Clara Arpt', 'SNU', 'Santa Clara', 'CUBA', 'CU', '-5', '22.492192', '-79.943611', 1, 'true', 0),
('SNY', 'Sidney Municipal', 'SNY', 'Sidney', 'UNITED STATES', 'US', '-100', '41.1013', '-102.9853', 1, 'true', 0),
('SOB', 'Saarmelleek Balaton Arpt', 'SOB', 'Saarmelleek', 'HUNGARY', 'HU', '1', '46.686389', '17.159056', 1, 'true', 0),
('SOC', 'Adi Sumarno Arpt', 'SOC', 'Solo', 'INDONESIA', 'ID', '7', '-7.516089', '110.756892', 1, 'true', 0),
('SOD', 'Sorocaba Arpt', 'SOD', 'Sorocaba', 'BRAZIL', 'BR', '-3', '-23.478', '-47.49', 1, 'true', 0),
('SOF', 'Sofia Vrazhdebna Arpt', 'SOF', 'Sofia', 'BULGARIA', 'BG', '2', '42.695194', '23.406167', 1, 'true', 0),
('SOG', 'Haukasen Arpt', 'SOG', 'Sogndal', 'NORWAY', 'NO', '1', '61.1561', '7.13778', 1, 'true', 0),
('SOI', 'South Molle Island Arpt', 'SOI', 'South Molle', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('SOM', 'El Tigre Arpt', 'SOM', 'San Tome', 'VENEZUELA', 'VE', '-4', '8.945147', '-64.151083', 1, 'true', 0),
('SON', 'Pekoa Arpt', 'SON', 'Espiritu Santo', 'VANUATU', 'VU', '11', '-15.505033', '167.219742', 1, 'true', 0),
('SOO', 'Soderhamn Arpt', 'SOO', 'Soderhamn', 'SWEDEN', 'SE', '-100', '61.2614', '17.0983', 1, 'true', 0),
('SOP', 'Pinehurst Arpt', 'SOP', 'Pinehurst', 'UNITED STATES', 'US', '-100', '35.2374', '-79.3912', 1, 'true', 0),
('SOQ', 'Jefman Arpt', 'SOQ', 'Sorong', 'INDONESIA', 'ID', '9', '-0.926358', '131.121194', 1, 'true', 0),
('SOU', 'Southampton Intl Arpt', 'SOU', 'Southampton', 'UNITED KINGDOM', 'GB', '0', '50.950261', '-1.356803', 1, 'true', 0),
('SOV', 'Seldovia Arpt', 'SOV', 'Seldovia', 'UNITED STATES', 'US', '-100', '59.4424', '-151.7041', 1, 'true', 0),
('SOW', 'Show Low Arpt', 'SOW', 'Show Low', 'UNITED STATES', 'US', '-7', '34.265556', '-110.005556', 1, 'true', 0),
('SOY', 'Stronsay Arpt', 'SOY', 'Stronsay', 'UNITED KINGDOM', 'GB', '0', '59.1553', '-2.64139', 1, 'true', 0),
('SPC', 'La Palma Arpt', 'SPC', 'Santa Cruz', 'SPAIN', 'ES', '0', '28.626478', '-17.755611', 1, 'true', 0),
('SPF', 'Black Hills Clyde Ice Field', 'SPF', 'Spearfish', 'UNITED STATES', 'US', '-7', '44.481141', '-103.786005', 1, 'true', 0),
('SPG', 'Whitted Arpt', 'SPG', 'St Petersburg', 'UNITED STATES', 'US', '-5', '27.765111', '-82.626972', 1, 'true', 0),
('SPI', 'Capital Airport', 'SPI', 'Springfield', 'UNITED STATES', 'US', '-6', '39.8441', '-89.677889', 1, 'true', 0),
('SPJ', 'Sparta Arpt', 'SPJ', 'Sparta', 'GREECE', 'GR', '-100', '0', '0', 1, 'true', 0),
('OKD', 'Okadama Arpt', 'SPK', 'Sapporo', 'JAPAN', 'JP', '9', '43.1161', '141.38', 2, '', 0),
('CTS', 'Chitose Arpt', 'SPK', 'Sapporo', 'JAPAN', 'JP', '9', '42.7752', '141.692283', 2, '', 0),
('SPM', 'Spangdahlem Air Base', 'SPM', 'Spangdahlem', 'GERMANY', 'DE', '1', '49.972667', '6.6925', 1, 'true', 0),
('SPN', 'Saipan Intl', 'SPN', 'Saipan', 'NORTHERN MARIANA ISLANDS', 'MP', '10', '15.119003', '145.729356', 1, 'true', 0),
('SPR', 'San Pedro Arpt', 'SPR', 'San Pedro', 'BELIZE', 'BZ', '-6', '17.913936', '-87.971075', 1, 'true', 0),
('SPS', 'Wichita Falls Municipal Arpt', 'SPS', 'Wichita Falls', 'UNITED STATES', 'US', '-6', '33.988797', '-98.491894', 1, 'true', 0),
('SPU', 'Split Arpt', 'SPU', 'Split', 'CROATIA', 'HR', '1', '43.538944', '16.297964', 1, 'true', 0),
('SPW', 'Spencer Municipal', 'SPW', 'Spencer', 'UNITED STATES', 'US', '-6', '43.165527', '-95.202805', 1, 'true', 0),
('SPZ', 'Springdale Municipal Arpt', 'SPZ', 'Springdale', 'UNITED STATES', 'US', '-8', '39.403028', '-119.251194', 1, 'true', 0),
('SQA', 'Santa Ynez Arpt', 'SQA', 'Santa Ynez', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SQH', 'Na San Arpt', 'SQH', 'Son La', 'VIET NAM', 'VN', '7', '21.217', '104.033', 1, 'true', 0),
('SQI', 'Whiteside Cty Municipal', 'SQI', 'Sterling', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SQL', 'San Carlos Arpt', 'SQL', 'San Carlos', 'UNITED STATES', 'US', '-8', '37.511944', '-122.249444', 1, 'true', 0),
('SQO', 'Gunnarn Arpt', 'SQO', 'Storuman', 'SWEDEN', 'SE', '1', '64.960894', '17.696583', 1, 'true', 0),
('SRE', 'Sucre Arpt', 'SRE', 'Sucre', 'BOLIVIA', 'BO', '-4', '-19.007083', '-65.288747', 1, 'true', 0),
('SRG', 'Achmad Uani Arpt', 'SRG', 'Semarang', 'INDONESIA', 'ID', '7', '-6.971447', '110.374122', 1, 'true', 0),
('SRL', 'Santa Rosalia Arpt', 'SRL', 'Santa Rosalia', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('SRN', 'Strahan Arpt', 'SRN', 'Strahan', 'AUSTRALIA', 'AU', '10', '-42.155', '145.292', 1, 'true', 0),
('SRP', 'Stord Arpt', 'SRP', 'Stord', 'NORWAY', 'NO', '1', '59.791925', '5.34085', 1, 'true', 0),
('SRQ', 'Sarasota Bradenton Arpt', 'SRQ', 'Sarasota', 'UNITED STATES', 'US', '-5', '27.395444', '-82.554389', 1, 'true', 0),
('SRU', 'Skypark Arpt', 'SRU', 'Santa Cruz', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SRZ', 'El Trompillo Arpt', 'SRZ', 'Santa Cruz', 'BOLIVIA', 'BO', '-4', '-17.8', '-63.166667', 2, 'true', 0),
('VVI', 'Viru Viru Intl Arpt', 'SRZ', 'Santa Cruz', 'BOLIVIA', 'BO', '-4', '-17.644756', '-63.135364', 2, '', 0),
('SSA', 'Luis E Magalhaes Arpt', 'SSA', 'Salvador', 'BRAZIL', 'BR', '-3', '-12.910994', '-38.331044', 1, 'true', 0),
('SSG', 'Santa Isabel Arpt', 'SSG', 'Malabo', 'EQUATORIAL GUINEA', 'GQ', '1', '3.755267', '8.708717', 1, 'true', 0),
('SSH', 'Ophira Arpt', 'SSH', 'Sharm El Sheik', 'EGYPT', 'EG', '2', '27.977286', '34.39495', 1, 'true', 0),
('SSI', 'McKinnon Arpt', 'SSI', 'St Simons Is', 'UNITED STATES', 'US', '-100', '31.1518', '-81.3913', 1, 'true', 0),
('SSJ', 'Stokka Arpt', 'SSJ', 'Sandnessjoen', 'NORWAY', 'NO', '1', '65.956828', '12.468944', 1, 'true', 0),
('CIU', 'Chippewa Cnty Intl', 'SSM', 'Sault Ste Marie', 'UNITED STATES', 'US', '-5', '46.2508', '-84.4724', 1, '', 0),
('SSQ', 'La Sarre Rail Station', 'SSQ', 'La Sarre', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('SZF', 'Carsamba Arpt', 'SSX', 'Samsun', 'TURKEY', 'TR', '2', '41.2545', '36.5671', 1, '', 0),
('SSZ', 'Santos Arpt', 'SSZ', 'Santos', 'BRAZIL', 'BR', '-3', '-23.925206', '-46.2875', 1, 'true', 0),
('STB', 'Las Delicias Arpt', 'STB', 'Santa Barbara', 'VENEZUELA', 'VE', '-4', '8.974425', '-71.943014', 1, 'true', 0),
('STC', 'Saint Cloud Municipal', 'STC', 'Saint Cloud', 'UNITED STATES', 'US', '-6', '45.546556', '-94.059889', 1, 'true', 0),
('STD', 'Mayor Humberto Vivas Guerrero Arpt', 'STD', 'Santo Domingo', 'VENEZUELA', 'VE', '-4', '7.565111', '-72.035125', 1, 'true', 0),
('STE', 'Stevens Point Municipal', 'STE', 'Stevens Point', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('STI', 'Santiago Municipal', 'STI', 'Santiago', 'DOMINICAN REPUBLIC', 'DO', '-4', '19.406092', '-70.604689', 1, 'true', 0),
('STJ', 'Rosecrans Memorial Arpt', 'STJ', 'St Joseph', 'UNITED STATES', 'US', '-6', '39.771944', '-94.909706', 1, 'true', 0),
('SUS', 'Spirit Of St Louis Arpt', 'STL', 'St Louis', 'UNITED STATES', 'US', '-7', '38.662119', '-90.652044', 3, '', 0),
('CPS', 'East St Louis', 'STL', 'St Louis', 'UNITED STATES', 'US', '-6', '38.570724', '-90.156221', 3, '', 0),
('STL', 'Lambert St Louis Intl', 'STL', 'St Louis', 'UNITED STATES', 'US', '-6', '38.748697', '-90.370028', 3, 'true', 0),
('STM', 'Eduardo Gomes Arpt', 'STM', 'Santarem', 'BRAZIL', 'BR', '-4', '-2.422431', '-54.792789', 1, 'true', 0),
('XEW', 'Flemingsberg Rail Station', 'STO', 'Stockholm', 'SWEDEN', 'SE', '-100', '0', '0', 6, '', 0),
('ARN', 'Arlanda Arpt', 'STO', 'Stockholm', 'SWEDEN', 'SE', '1', '59.651944', '17.918611', 6, '', 0),
('XEV', 'Stockholm Rail Station', 'STO', 'Stockholm', 'SWEDEN', 'SE', '-100', '0', '0', 6, '', 0),
('NYO', 'Skavsta Airport', 'STO', 'Stockholm', 'SWEDEN', 'SE', '1', '58.788636', '16.912189', 6, '', 0),
('VST', 'Hasslo Airport', 'STO', 'Stockholm', 'SWEDEN', 'SE', '1', '59.589444', '16.633611', 6, '', 0),
('BMA', 'Bromma Airport', 'STO', 'Stockholm', 'SWEDEN', 'SE', '1', '59.354372', '17.94165', 6, '', 0),
('STP', 'Downtown St Paul Arpt', 'STP', 'St Paul', 'UNITED STATES', 'US', '0', '51.53', '-0.125', 1, 'true', 0),
('STR', 'Stuttgart Arpt', 'STR', 'Stuttgart', 'GERMANY', 'DE', '1', '48.689878', '9.221964', 2, 'true', 0),
('ZWS', 'Stuttgart Railway Service', 'STR', 'Stuttgart', 'GERMANY', 'DE', '1', '48.783611', '9.181667', 2, '', 0),
('STS', 'Sonoma Cty Arpt', 'STS', 'Santa Rosa', 'UNITED STATES', 'US', '-8', '38.508978', '-122.81288', 1, 'true', 0),
('STT', 'Cyril E King Arpt', 'STT', 'St Thomas', 'UNITED STATES', 'US', '-4', '18.337306', '-64.973361', 1, 'true', 0),
('STW', 'Stavropol Arpt', 'STW', 'Stavropol', 'RUSSIA', 'RU', '4', '45.109165', '42.112778', 1, 'true', 0),
('STX', 'Alexander Hamilton Arpt', 'STX', 'St Croix', 'UNITED STATES', 'US', '-4', '17.701889', '-64.798556', 1, 'true', 0),
('STY', 'Salto Arpt', 'STY', 'Salto', 'URUGUAY', 'UY', '-3', '-31.438481', '-57.985294', 1, 'true', 0),
('SUA', 'Witham Field', 'SUA', 'Stuart', 'UNITED STATES', 'US', '-4', '27.1817', '-80.221294', 1, 'true', 0),
('SUB', 'Juanda Arpt', 'SUB', 'Surabaya', 'INDONESIA', 'ID', '7', '-7.379831', '112.786858', 1, 'true', 0),
('SUE', 'Door Country Arpt', 'SUE', 'Sturgeon Bay', 'UNITED STATES', 'US', '-6', '44.843667', '-87.421556', 1, 'true', 0),
('SUF', 'S Eufemia Arpt', 'SUF', 'Lamezia Terme', 'ITALY', 'IT', '1', '38.905394', '16.242269', 1, 'true', 0),
('SUH', 'Sur Arpt', 'SUH', 'Sur Om', 'OMAN', 'OM', '-100', '0', '0', 1, 'true', 0),
('SUM', 'Sumter Municipal Arpt', 'SUM', 'Sumter', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SUN', 'Friedman Memorial', 'SUN', 'Sun Valley', 'UNITED STATES', 'US', '-7', '43.504444', '-114.296194', 1, 'true', 0),
('SUU', 'Travis AFB', 'SUU', 'Fairfield', 'UNITED STATES', 'US', '-8', '38.262692', '-121.927464', 1, 'true', 0),
('SUV', 'Nausori Airport', 'SUV', 'Suva', 'FIJI', 'FJ', '12', '-18.043267', '178.559228', 1, 'true', 0),
('SUW', 'Richard I Bong Arpt', 'SUW', 'Superior', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SUX', 'Sioux Gateway Arpt', 'SUX', 'Sioux City', 'UNITED STATES', 'US', '-6', '42.402603', '-96.384367', 1, 'true', 0),
('SVB', 'Sambava Arpt', 'SVB', 'Sambava', 'MADAGASCAR', 'MG', '3', '-14.278611', '50.174721', 1, 'true', 0),
('SVC', 'Grant County Airport', 'SVC', 'Silver City', 'UNITED STATES', 'US', '-7', '32.6365', '-108.156', 1, 'true', 0),
('SVD', 'Arnos Vale Arpt', 'SVD', 'St Vincent', 'SAINT VINCENT AND THE GRENADINES', 'VC', '-4', '13.144306', '-61.210861', 1, 'true', 0),
('ZWC', 'Stavanger Rail Station', 'SVG', 'Stavanger', 'NORWAY', 'NO', '-100', '0', '0', 4, '', 0),
('XOQ', 'Sira Rail Station', 'SVG', 'Stavanger', 'NORWAY', 'NO', '-100', '0', '0', 4, '', 0),
('XKC', 'Sandnes Rail Station', 'SVG', 'Stavanger', 'NORWAY', 'NO', '-100', '0', '0', 4, '', 0),
('SVG', 'Sola Airport', 'SVG', 'Stavanger', 'NORWAY', 'NO', '1', '58.876778', '5.637856', 4, 'true', 0),
('SVH', 'Statesville Municipal Arpt', 'SVH', 'Statesville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SVJ', 'Helle', 'SVJ', 'Svolvaer', 'NORWAY', 'NO', '1', '68.2433', '14.6692', 1, 'true', 0),
('SVL', 'Savonlinna Arpt', 'SVL', 'Savonlinna', 'FINLAND', 'FI', '2', '61.943064', '28.945136', 1, 'true', 0),
('SVQ', 'San Pablo Arpt', 'SVQ', 'Sevilla', 'SPAIN', 'ES', '1', '37.418', '-5.893106', 1, 'true', 0),
('SVU', 'Savusavu Airport', 'SVU', 'Savusavu', 'FIJI', 'FJ', '12', '-16.8028', '179.341', 1, 'true', 0),
('SVX', 'Koltsovo Arpt', 'SVX', 'Ekaterinburg', 'RUSSIA', 'RU', '6', '56.743108', '60.802728', 1, 'true', 0),
('SVZ', 'San Antonio Arpt', 'SVZ', 'San Antonio', 'VENEZUELA', 'VE', '-4', '7.840831', '-72.439742', 1, 'true', 0),
('SWA', 'Shantou Airport', 'SWA', 'Shantou', 'CHINA', 'CN', '8', '23.4', '116.683', 1, 'true', 0),
('SWD', 'Seward Airport', 'SWD', 'Seward', 'UNITED STATES', 'US', '-8', '60.126938', '-149.418812', 1, 'true', 0),
('SWF', 'Stewart Airport', 'SWF', 'Newburgh', 'UNITED STATES', 'US', '-5', '41.504094', '-74.104839', 1, 'true', 0),
('SWH', 'Swan Hill Arpt', 'SWH', 'Swan Hill', 'AUSTRALIA', 'AU', '-100', '-35.3772', '143.5322', 1, 'true', 0),
('SWI', 'Swindon Rail Station', 'SWI', 'Swindon', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, 'true', 0),
('XWS', 'Swindon Rail Station', 'SWI', 'Swindon', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 2, '', 0),
('SWO', 'Searcy Fld', 'SWO', 'Stillwater', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SWS', 'Fairwood Comm', 'SWS', 'Swansea', 'UNITED KINGDOM', 'GB', '0', '51.605333', '-4.067833', 1, 'true', 0),
('SWT', 'Strezhevoy Airport', 'SWT', 'Strezhevoy Airport', 'RUSSIA', 'RU', '7', '60.716667', '77.65', 1, 'true', 0),
('SWU', 'Su Won Arpt', 'SWU', 'Su Won', 'KOREA, REPUBLIC OF', 'KR', '-100', '0', '0', 1, 'true', 0),
('SXB', 'Enzheim Arpt', 'SXB', 'Strasbourg', 'FRANCE', 'FR', '1', '48.538319', '7.628233', 2, 'true', 0),
('XER', 'Strasbourg Bus Service', 'SXB', 'Strasbourg', 'FRANCE', 'FR', '-100', '0', '0', 2, '', 0),
('SXE', 'Sale Arpt', 'SXE', 'Sale', 'AUSTRALIA', 'AU', '-100', '-38.0983', '147.15', 1, 'true', 0),
('SXL', 'Collooney', 'SXL', 'Sligo', 'IRELAND', 'IE', '0', '54.280214', '-8.599206', 1, 'true', 0),
('SXM', 'Princ Juliana Arpt', 'SXM', 'St Maarten', 'NETHERLANDS ANTILLES', 'AN', '-4', '18.040953', '-63.1089', 1, 'true', 0),
('SXR', 'Srinagar Arpt', 'SXR', 'Srinagar', 'INDIA', 'IN', '5', '33.987139', '74.77425', 1, 'true', 0),
('SXZ', 'Siirt Airport', 'SXZ', 'Siirt Airport', 'TURKEY', 'TR', '2', '0', '0', 1, 'true', 0),
('RSE', 'Au Rose Bay Arpt', 'SYD', 'Sydney', 'AUSTRALIA', 'AU', '-100', '0', '0', 3, '', 0),
('SYD', 'Sydney Kingsford Smith Arpt', 'SYD', 'Sydney', 'AUSTRALIA', 'AU', '10', '-33.946111', '151.177222', 3, 'true', 0),
('LBH', 'Palm Beach Arpt', 'SYD', 'Sydney', 'AUSTRALIA', 'AU', '-100', '0', '0', 3, '', 0),
('SYO', 'Shonai Arpt', 'SYO', 'Shonai', 'JAPAN', 'JP', '9', '38.812222', '139.787222', 1, 'true', 0),
('SYR', 'Hancock Intl', 'SYR', 'Syracuse', 'UNITED STATES', 'US', '-5', '43.111187', '-76.106311', 1, 'true', 0),
('SYX', 'Sanya Arpt', 'SYX', 'Sanya', 'CHINA', 'CN', '8', '18.302897', '109.412272', 1, 'true', 0),
('SYY', 'Stornoway Arpt', 'SYY', 'Stornoway', 'UNITED KINGDOM', 'GB', '0', '58.215556', '-6.331111', 1, 'true', 0),
('SYZ', 'Shiraz Arpt', 'SYZ', 'Shiraz', 'IRAN', 'IR', '4', '29.539242', '52.589786', 1, 'true', 0),
('SZC', 'Guanacaste Arpt', 'SZC', 'Santa Cruz', 'COSTA RICA', 'CR', '-100', '0', '0', 1, 'true', 0),
('SZD', 'Sheffield City Arpt', 'SZD', 'Sheffield', 'UNITED KINGDOM', 'GB', '-100', '53.3943', '-1.3885', 1, 'true', 0),
('SZG', 'W A Mozart Arpt', 'SZG', 'Salzburg', 'AUSTRIA', 'AT', '1', '47.793304', '13.004333', 1, 'true', 0),
('SZJ', 'Siguanea Arpt', 'SZJ', 'Siguanea', 'CUBA', 'CU', '-100', '21.6333', '-82.95', 1, 'true', 0),
('SZK', 'Skukuza Arpt', 'SZK', 'Skukuza', 'SOUTH AFRICA', 'ZA', '2', '-24.960944', '31.588731', 1, 'true', 0),
('SZO', 'Shanzhou Arpt', 'SZO', 'Shanzhou', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('SZP', 'Santa Paula Arpt', 'SZP', 'Santa Paula', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('SZR', 'Stara Zagora Arpt', 'SZR', 'Stara Zagora', 'BULGARIA', 'BG', '-100', '0', '0', 1, 'true', 0),
('SZT', 'San Cristobal Arpt', 'SZT', 'San Cristobal De Las Casas', 'MEXICO', 'MX', '-100', '16.6904', '-92.5303', 1, 'true', 0),
('SZV', 'Suzhou Arpt', 'SZV', 'Suzhou', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('SZX', 'Shenzhen Arpt', 'SZX', 'Shenzhen', 'CHINA', 'CN', '8', '22.639258', '113.810664', 1, 'true', 0),
('SZY', 'Mazury Arpt', 'SZY', 'Szymany', 'POLAND', 'PL', '-100', '53.4819', '20.9377', 1, 'true', 0),
('SZZ', 'Goleniow Arpt', 'SZZ', 'Szczecin', 'POLAND', 'PL', '1', '53.584731', '14.902206', 1, 'true', 0),
('TAB', 'Crown Point Arpt', 'TAB', 'Tobago', 'TRINIDAD AND TOBAGO', 'TT', '-4', '11.149658', '-60.832194', 1, 'true', 0),
('TAC', 'D Z Romualdez Arpt', 'TAC', 'Tacloban', 'PHILIPPINES', 'PH', '8', '11.227628', '125.027758', 1, 'true', 0),
('TAE', 'Daegu Arpt', 'TAE', 'Daegu', 'KOREA, REPUBLIC OF', 'KR', '9', '35.894108', '128.658856', 1, 'true', 0),
('TAG', 'Tagbilaran Arpt', 'TAG', 'Tagbilaran', 'PHILIPPINES', 'PH', '8', '9.664081', '123.853247', 1, 'true', 0),
('TAH', 'Tanna Arpt', 'TAH', 'Tanna', 'VANUATU', 'VU', '11', '-19.455198', '169.22394', 1, 'true', 0),
('TAK', 'Takamatsu Arpt', 'TAK', 'Takamatsu', 'JAPAN', 'JP', '9', '34.214167', '134.015556', 1, 'true', 0),
('TAL', 'Ralph Calhoun Arpt', 'TAL', 'Tanana', 'UNITED STATES', 'US', '-9', '65.179556', '-152.075833', 1, 'true', 0),
('TAM', 'General F Javier Mina', 'TAM', 'Tampico', 'MEXICO', 'MX', '-6', '22.29645', '-97.865931', 1, 'true', 0),
('TAO', 'Liuting Arpt', 'TAO', 'Qingdao', 'CHINA', 'CN', '8', '36.266108', '120.374436', 1, 'true', 0),
('TAP', 'Tapachula Arpt', 'TAP', 'Tapachula', 'MEXICO', 'MX', '-6', '14.794339', '-92.370025', 1, 'true', 0),
('TAR', 'M A Grottag Arpt', 'TAR', 'Taranto', 'ITALY', 'IT', '1', '40.517514', '17.403212', 1, 'true', 0),
('TAS', 'Vostochny Arpt', 'TAS', 'Tashkent', 'UZBEKISTAN', 'UZ', '5', '41.257861', '69.281186', 1, 'true', 0),
('TAT', 'Poprad Tatry Arpt', 'TAT', 'Poprad Tatry', 'SLOVAKIA', 'SK', '1', '49.073594', '20.241142', 1, 'true', 0),
('TAY', 'Tartu Arpt', 'TAY', 'Tartu', 'ESTONIA', 'EE', '2', '58.307461', '26.690428', 1, 'true', 0),
('TAZ', 'Dashoguz Arpt', 'TAZ', 'Dashoguz', 'TURKMENISTAN', 'TM', '5', '41.764722', '59.833056', 1, 'true', 0),
('TBB', 'Tuy Hoa Arpt', 'TBB', 'Tuy Hoa', 'VIET NAM', 'VN', '7', '13.04955', '109.333706', 1, 'true', 0),
('TBG', 'Tabubil Arpt', 'TBG', 'Tububil', 'PAPUA NEW GUINEA', 'PG', '10', '-5.27861', '141.226', 1, 'true', 0),
('TBJ', 'Tabarka Arpt', 'TBJ', 'Tabarka', 'TUNISIA', 'TN', '1', '36.978333', '8.876389', 1, 'true', 0),
('TBN', 'Forney Field', 'TBN', 'Ft Leonard Wood', 'UNITED STATES', 'US', '-6', '37.741631', '-92.140736', 1, 'true', 0),
('TBO', 'Tabora Arpt', 'TBO', 'Tabora', 'TANZANIA', 'TZ', '3', '-5.07639', '32.8333', 1, 'true', 0),
('TBP', 'Tumbes Arpt', 'TBP', 'Tumbes', 'PERU', 'PE', '-5', '-3.552528', '-80.381356', 1, 'true', 0),
('TBS', 'Novo Alexeyevka Arpt', 'TBS', 'Tbilisi', 'GEORGIA', 'GE', '4', '41.669167', '44.954722', 1, 'true', 0),
('TBT', 'Tabatinga Intl Arpt', 'TBT', 'Tabatinga', 'BRAZIL', 'BR', '-4', '-4.255669', '-69.935828', 1, 'true', 0),
('TBU', 'Tongatapu Intl', 'TBU', 'Nuku Alofa', 'TONGA', 'TO', '13', '-21.241214', '-175.149644', 1, 'true', 0),
('TBW', 'Tambov Arpt', 'TBW', 'Tambov', 'RUSSIA', 'RU', '4', '52.81', '41.48', 1, 'true', 0),
('TBZ', 'Tabriz International Arpt', 'TBZ', 'Tabriz', 'IRAN', 'IR', '4', '38.133889', '46.235', 1, 'true', 0),
('TCA', 'Tennant Creek Arpt', 'TCA', 'Tennant Creek', 'AUSTRALIA', 'AU', '9', '-19.6344', '134.183', 1, 'true', 0),
('TCB', 'Treasure Cay Arpt', 'TCB', 'Treasure Cay', 'BAHAMAS', 'BS', '-5', '26.745336', '-77.391269', 1, 'true', 0),
('TCE', 'Tulcea Arpt', 'TCE', 'Tulcea', 'ROMANIA', 'RO', '2', '45.062486', '28.714311', 1, 'true', 0),
('TFS', 'Reina Sofia Arpt', 'TCI', 'Tenerife', 'SPAIN', 'ES', '0', '28.044475', '-16.572489', 2, '', 0),
('TFN', 'Tenerife Norte Los Rodeos Arpt', 'TCI', 'Tenerife', 'SPAIN', 'ES', '0', '28.482653', '-16.341536', 2, '', 0),
('TCL', 'Van De Graff Arpt', 'TCL', 'Tuscaloosa', 'UNITED STATES', 'US', '-6', '33.220627', '-87.611403', 1, 'true', 0),
('TCN', 'Tehuacan Arpt', 'TCN', 'Tehuacan', 'MEXICO', 'MX', '-6', '18.497189', '-97.419942', 1, 'true', 0),
('TCP', 'Ras An Naqb Arpt', 'TCP', 'Taba', 'EGYPT', 'EG', '2', '29.587778', '34.778056', 1, 'true', 0),
('TCR', 'Tuticorin Arpt', 'TCR', 'Tuticorin', 'INDIA', 'IN', '-100', '8.7833', '78.1333', 1, 'true', 0),
('TCU', 'Thaba Nchu Arpt', 'TCU', 'Thaba Nchu', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 1, 'true', 0),
('TCW', 'Tocumwal Arpt', 'TCW', 'Tocumwal', 'AUSTRALIA', 'AU', '-100', '-35.8117', '145.6083', 1, 'true', 0),
('TDD', 'Trinidad Arpt', 'TDD', 'Trinidad', 'BOLIVIA', 'BO', '-4', '-14.818739', '-64.918019', 1, 'true', 0),
('TDK', 'Taldy Kurgan Arpt', 'TDK', 'Taldy Kurgan', 'KAZAKHSTAN', 'KZ', '6', '45.016667', '78.366667', 1, 'true', 0),
('TDL', 'Tandil Arpt', 'TDL', 'Tandil', 'ARGENTINA', 'AR', '-3', '-37.237392', '-59.227922', 1, 'true', 0),
('TDX', 'Trat Arpt', 'TDX', 'Trat', 'THAILAND', 'TH', '7', '12.274572', '102.318958', 1, 'true', 0),
('TEA', 'Tela Arpt', 'TEA', 'Tela', 'HONDURAS', 'HN', '-6', '15.775864', '-87.475847', 1, 'true', 0),
('TEB', 'Teterboro Arpt', 'TEB', 'Teterboro', 'UNITED STATES', 'US', '-5', '40.850103', '-74.060837', 1, 'true', 0),
('TEC', 'Telemaco Borba Arpt', 'TEC', 'Telemaco Borba', 'BRAZIL', 'BR', '-100', '-24.3158', '-50.6517', 1, 'true', 0),
('TED', 'Thisted Arpt', 'TED', 'Thisted', 'DENMARK', 'DK', '1', '57.0688', '8.705225', 1, 'true', 0),
('TEN', 'Tongren Arpt', 'TEN', 'Tongren', 'CHINA', 'CN', '8', '27.884', '109.31', 1, 'true', 0),
('TEQ', 'Corlu Airport Information', 'TEQ', 'Corlu', 'TURKEY', 'TR', '2', '41.13825', '27.919094', 1, 'true', 0),
('TER', 'Lajes Arpt', 'TER', 'Terceira', 'PORTUGAL', 'PT', '-1', '38.761842', '-27.090797', 1, 'true', 0),
('TET', 'Matunda Arpt', 'TET', 'Tete', 'MOZAMBIQUE', 'MZ', '2', '-16.104817', '33.640181', 1, 'true', 0),
('TEU', 'Manapouri Airport', 'TEU', 'Te Anau', 'NEW ZEALAND', 'NZ', '12', '-45.533056', '167.65', 1, 'true', 0),
('TEX', 'Telluride Municipal Arpt', 'TEX', 'Telluride', 'UNITED STATES', 'US', '-7', '37.953759', '-107.90848', 1, 'true', 0),
('TFF', 'Tefe Arpt', 'TFF', 'Tefe', 'BRAZIL', 'BR', '-4', '-3.382944', '-64.724056', 1, 'true', 0),
('TGD', 'Golubovci Arpt', 'TGD', 'Podgorica', 'MONTENEGRO', 'ME', '1', '42.359392', '19.251894', 1, 'true', 0),
('TGG', 'Sultan Mahmood Arpt', 'TGG', 'Kuala Terengganu', 'MALAYSIA', 'MY', '8', '5.382639', '103.10336', 1, 'true', 0),
('TGM', 'Tirgu Mures Arpt', 'TGM', 'Tirgu Mures', 'ROMANIA', 'RO', '2', '46.467714', '24.412525', 1, 'true', 0),
('TGN', 'La Trobe Traralgon Arpt', 'TGN', 'Traralgon', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('TGO', 'Tongliao Arpt', 'TGO', 'Tongliao', 'CHINA', 'CN', '8', '43.5567', '122.2', 1, 'true', 0),
('TGT', 'Tanga Arpt', 'TGT', 'Tanga', 'TANZANIA', 'TZ', '3', '-5.092358', '39.071158', 1, 'true', 0),
('TGU', 'Toncontin Arpt', 'TGU', 'Tegucigalpa', 'HONDURAS', 'HN', '-6', '14.060883', '-87.217197', 1, 'true', 0),
('TGZ', 'Llano San Juan Arpt', 'TGZ', 'Tuxtla Gutierrez', 'MEXICO', 'MX', '-6', '16.561822', '-93.026081', 1, 'true', 0),
('THA', 'Northern Arpt', 'THA', 'Tullahoma', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('THC', 'Tchien Arpt', 'THC', 'Tchien', 'LIBERIA', 'LR', '-100', '0', '0', 1, 'true', 0),
('THE', 'Teresina Arpt', 'THE', 'Teresina', 'BRAZIL', 'BR', '-3', '-5.059942', '-42.823478', 1, 'true', 0),
('THG', 'Thangool Arpt', 'THG', 'Thangool', 'AUSTRALIA', 'AU', '10', '-24.493889', '150.576111', 1, 'true', 0),
('THN', 'Trollhattan Arpt', 'THN', 'Trollhattan', 'SWEDEN', 'SE', '1', '58.318056', '12.345', 1, 'true', 0),
('THP', 'Hot Springs', 'THP', 'Thermopolis', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('THR', 'Mehrabad Arpt', 'THR', 'Tehran', 'IRAN', 'IR', '4', '35.689167', '51.313416', 2, 'true', 0),
('IKA', 'Imam Khomeini Arpt', 'THR', 'Tehran', 'IRAN', 'IR', '3', '35', '51', 2, '', 2),
('THS', 'Sukhothai Arpt', 'THS', 'Sukhothai', 'THAILAND', 'TH', '7', '17.237992', '99.818183', 1, 'true', 0),
('THV', 'York Arpt', 'THV', 'York', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('TIA', 'Rinas Arpt', 'TIA', 'Tirana', 'ALBANIA', 'AL', '1', '41.414742', '19.720561', 1, 'true', 0),
('TIF', 'Taif Airport', 'TIF', 'Taif', 'SAUDI ARABIA', 'SA', '3', '21.483418', '40.544334', 1, 'true', 0),
('TIG', 'Tingwon Arpt', 'TIG', 'Tingwon', 'PAPUA NEW GUINEA', 'PG', '-100', '0', '0', 1, 'true', 0),
('TIH', 'Tikehau Arpt', 'TIH', 'Tikehau', 'FRENCH POLYNESIA', 'PF', '-10', '-15.119617', '-148.230697', 1, 'true', 0),
('TIJ', 'Gen Abelardo Rodriguez', 'TIJ', 'Tijuana', 'MEXICO', 'MX', '-8', '32.541064', '-116.970158', 1, 'true', 0),
('TIM', 'Timika Arpt', 'TIM', 'Timika', 'INDONESIA', 'ID', '9', '-4.528275', '136.887375', 1, 'true', 0),
('TIP', 'Tripoli Intl Arpt', 'TIP', 'Tripoli', 'LIBYAN ARAB JAMAHIRIYA', 'LY', '1', '32.663544', '13.159011', 1, 'true', 0),
('TIQ', 'Tinian Arpt', 'TIQ', 'Tinian', 'NORTHERN MARIANA ISLANDS', 'MP', '10', '14.999203', '145.61935', 1, 'true', 0),
('TIR', 'Tirupati Arpt', 'TIR', 'Tirupati', 'INDIA', 'IN', '5', '13.632492', '79.543256', 1, 'true', 0),
('TIS', 'Thursday Island Arpt', 'TIS', 'Thursday Island', 'AUSTRALIA', 'AU', '-100', '-10.5864', '142.29', 1, 'true', 0),
('TIU', 'Timaru Arpt', 'TIU', 'Timaru', 'NEW ZEALAND', 'NZ', '12', '-44.302778', '171.225278', 1, 'true', 0),
('TIV', 'Tivat Arpt', 'TIV', 'Tivat', 'MONTENEGRO', 'ME', '1', '42.404664', '18.723286', 1, 'true', 0),
('TIW', 'Tacoma Industrial Arpt', 'TIW', 'Tacoma', 'UNITED STATES', 'US', '-100', '47.2679', '-122.5781', 1, 'true', 0),
('TIX', 'Space Center Executive Arpt', 'TIX', 'Titusville', 'UNITED STATES', 'US', '-100', '28.5148', '-80.7992', 1, 'true', 0),
('TIZ', 'Tari Arpt', 'TIZ', 'Tari', 'PAPUA NEW GUINEA', 'PG', '10', '-5.845', '142.948', 1, 'true', 0),
('TJA', 'Tarija Arpt', 'TJA', 'Tarija', 'BOLIVIA', 'BO', '-4', '-21.555736', '-64.701325', 1, 'true', 0),
('TJK', 'TOKAT HAVALIMANI', 'TJK', 'TOKAT HAVALIMANI', 'TURKEY', 'TR', '2', '0', '0', 1, 'true', 0),
('TJM', 'Tyumen Arpt', 'TJM', 'Tyumen', 'RUSSIA', 'RU', '6', '57.189567', '65.3243', 1, 'true', 0),
('TJQ', 'Bulutumbang Arpt', 'TJQ', 'Tanjung Pandan', 'INDONESIA', 'ID', '7', '-2.745722', '107.754917', 1, 'true', 0),
('TKF', 'Truckee Arpt', 'TKF', 'Truckee', 'UNITED STATES', 'US', '-100', '39.32', '-120.1396', 1, 'true', 0),
('TKG', 'Branti Arpt', 'TKG', 'Bandar Lampung', 'INDONESIA', 'ID', '7', '-5.242339', '105.178939', 1, 'true', 0),
('TKJ', 'Tok Arpt', 'TKJ', 'Tok Ak', 'UNITED STATES', 'US', '-100', '63.2955', '-143.0061', 1, 'true', 0),
('TKK', 'Truk Arpt', 'TKK', 'Truk', 'MICRONESIA, FEDERATED STATES OF', 'FM', '10', '7.461869', '151.843006', 1, 'true', 0),
('TKM', 'El Peten Arpt', 'TKM', 'Tikal', 'GUATEMALA', 'GT', '-100', '0', '0', 1, 'true', 0),
('TKN', 'Tokunoshima Arpt', 'TKN', 'Tokunoshima', 'JAPAN', 'JP', '9', '27.836381', '128.881253', 1, 'true', 0),
('TKQ', 'Kigoma Arpt', 'TKQ', 'Kigoma', 'TANZANIA', 'TZ', '3', '-4.883', '29.633', 1, 'true', 0),
('TKS', 'Tokushima Arpt', 'TKS', 'Tokushima', 'JAPAN', 'JP', '9', '34.132808', '134.606639', 1, 'true', 0),
('TKU', 'Turku Arpt', 'TKU', 'Turku', 'FINLAND', 'FI', '2', '60.514142', '22.262808', 1, 'true', 0),
('TLC', 'Morelos Arpt', 'TLC', 'Toluca', 'MEXICO', 'MX', '-6', '19.337072', '-99.566008', 1, 'true', 0),
('TLD', 'Limpopo Valley Arpt', 'TLD', 'Tuli Block', 'BOTSWANA', 'BW', '2', '-22.1892', '29.1269', 1, 'true', 0),
('TLE', 'Tulear Arpt', 'TLE', 'Tulear', 'MADAGASCAR', 'MG', '3', '-23.383369', '43.728453', 1, 'true', 0),
('TLH', 'Tallahassee Municipal', 'TLH', 'Tallahassee', 'UNITED STATES', 'US', '-5', '30.396528', '-84.350333', 1, 'true', 0),
('TLL', 'Ulemiste Arpt', 'TLL', 'Tallinn', 'ESTONIA', 'EE', '2', '59.413317', '24.832844', 1, 'true', 0),
('TLM', 'Zenata Arpt', 'TLM', 'Tlemcen', 'ALGERIA', 'DZ', '1', '35.016667', '-1.45', 1, 'true', 0),
('TLN', 'Le Palyvestre Arpt', 'TLN', 'Toulon', 'FRANCE', 'FR', '1', '43.0973', '6.14603', 1, 'true', 0),
('TLR', 'Mefford Field', 'TLR', 'Tulare', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('TLS', 'Blagnac Arpt', 'TLS', 'Toulouse', 'FRANCE', 'FR', '1', '43.629075', '1.363819', 1, 'true', 0),
('TLV', 'Ben Gurion Intl Arpt', 'TLV', 'Tel Aviv', 'ISRAEL', 'IL', '2', '32.011389', '34.886667', 2, 'true', 0),
('SDV', 'Dov Airport', 'TLV', 'Tel Aviv', 'ISRAEL', 'IL', '2', '32.114661', '34.782239', 2, '', 0),
('TMA', 'Henry Tift Myers Arpt', 'TMA', 'Tifton', 'UNITED STATES', 'US', '-5', '31.428981', '-83.488545', 1, 'true', 0),
('TMG', 'Tomanggong Arpt', 'TMG', 'Tomanggong', 'MALAYSIA', 'MY', '8', '5.4', '118.65', 1, 'true', 0),
('TML', 'Tamale Arpt', 'TML', 'Tamale', 'GHANA', 'GH', '0', '9.557192', '-0.863214', 1, 'true', 0),
('TMM', 'Tamatave Arpt', 'TMM', 'Tamatave', 'MADAGASCAR', 'MG', '3', '-18.109517', '49.392536', 1, 'true', 0),
('TMP', 'Tampere Pirkkala Arpt', 'TMP', 'Tampere', 'FINLAND', 'FI', '2', '61.414147', '23.604392', 1, 'true', 0),
('TMS', 'Sao Tome Intl Arpt', 'TMS', 'Sao Tome Is', 'SAO TOME AND PRINCIPE', 'ST', '0', '0.378175', '6.712153', 1, 'true', 0),
('TMT', 'Trombetas Arpt', 'TMT', 'Trombetas', 'BRAZIL', 'BR', '-100', '-1.4896', '-56.3968', 1, 'true', 0),
('TMU', 'Tambor Arpt', 'TMU', 'Tambor', 'COSTA RICA', 'CR', '-6', '9.73852', '-85.0138', 1, 'true', 0),
('TMW', 'Tamworth Arpt', 'TMW', 'Tamworth', 'AUSTRALIA', 'AU', '10', '-31.083889', '150.846667', 1, 'true', 0),
('TMZ', 'Thames Arpt', 'TMZ', 'Thames', 'NEW ZEALAND', 'NZ', '-100', '0', '0', 1, 'true', 0),
('TNA', 'Jinan Arpt', 'TNA', 'Jinan', 'CHINA', 'CN', '8', '36.857214', '117.215992', 1, 'true', 0),
('TND', 'Trinidad CU Arpt', 'TND', 'Trinidad', 'CUBA', 'CU', '-5', '21.788461', '-79.997203', 1, 'true', 0),
('TNE', 'Tanega Shima Arpt', 'TNE', 'Tanega Shima', 'JAPAN', 'JP', '9', '30.605067', '130.991231', 1, 'true', 0),
('TNF', 'Toussus Le Noble Arpt', 'TNF', 'Toussus Le Noble', 'FRANCE', 'FR', '1', '48.751922', '2.106189', 1, 'true', 0),
('TNG', 'Boukhalef Arpt', 'TNG', 'Tangier', 'MOROCCO', 'MA', '0', '35.726917', '-5.916889', 1, 'true', 0),
('TNN', 'Tainan Arpt', 'TNN', 'Tainan', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '22.950361', '120.205778', 1, 'true', 0),
('TNO', 'Tamarindo Arpt', 'TNO', 'Tamarindo', 'COSTA RICA', 'CR', '-6', '10.3557', '-85.852892', 1, 'true', 0),
('TNR', 'Ivato Arpt', 'TNR', 'Tananarive', 'MADAGASCAR', 'MG', '3', '-18.79695', '47.478806', 1, 'true', 0),
('TNU', 'Municipal Newton Arpt', 'TNU', 'Newton', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('TOB', 'Tobruk Arpt', 'TOB', 'Tobruk', 'LIBYAN ARAB JAMAHIRIYA', 'LY', '1', '31.861', '23.907', 1, 'true', 0),
('TOD', 'Tioman Arpt', 'TOD', 'Tioman', 'MALAYSIA', 'MY', '8', '2.818183', '104.160019', 1, 'true', 0),
('TOE', 'Tozeur Arpt', 'TOE', 'Tozeur', 'TUNISIA', 'TN', '1', '33.939722', '8.110556', 1, 'true', 0),
('TOF', 'Tomsk Arpt', 'TOF', 'Tomsk', 'RUSSIA', 'RU', '8', '56.380278', '85.208333', 1, 'true', 0),
('TOG', 'Togiak Village Arpt', 'TOG', 'Togiak', 'UNITED STATES', 'US', '-9', '59.0528', '-160.397', 1, 'true', 0),
('TOH', 'Torres Airstrip', 'TOH', 'Torres', 'VANUATU', 'VU', '11', '-13.328', '166.638', 1, 'true', 0),
('TOL', 'Toledo Express Arpt', 'TOL', 'Toledo', 'UNITED STATES', 'US', '-5', '41.586806', '-83.807833', 1, 'true', 0),
('TOP', 'Phillip Billard Arpt', 'TOP', 'Topeka', 'UNITED STATES', 'US', '-6', '39.068657', '-95.622482', 2, 'true', 0),
('FOE', 'Forbes Field', 'TOP', 'Topeka', 'UNITED STATES', 'US', '-6', '38.950944', '-95.663611', 2, '', 0),
('TOR', 'Torrington Minicipal Arpt', 'TOR', 'Torrington', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('TOS', 'Tromso Langnes Arpt', 'TOS', 'Tromso', 'NORWAY', 'NO', '1', '69.683333', '18.918919', 1, 'true', 0),
('RAD', 'Road Town Arpt', 'TOV', 'Tortola Westend', 'VIRGIN ISLANDS, BRITISH', 'VG', '-100', '0', '0', 1, '', 0),
('TOW', 'Toledo Arpt', 'TOW', 'Toledo', 'BRAZIL', 'BR', '-3', '-24.6863', '-53.6975', 1, 'true', 0),
('TOX', 'Tobolsk Arpt', 'TOX', 'Tobolsk', 'RUSSIA', 'RU', '-100', '0', '0', 1, 'true', 0),
('TOY', 'Toyama Arpt', 'TOY', 'Toyama', 'JAPAN', 'JP', '9', '36.648333', '137.1875', 1, 'true', 0),
('TPA', 'Tampa Intl', 'TPA', 'Tampa', 'UNITED STATES', 'US', '-5', '27.975472', '-82.53325', 3, 'true', 0),
('TPF', 'Peter O Knight Arpt', 'TPA', 'Tampa', 'UNITED STATES', 'US', '-100', '0', '0', 3, '', 0),
('PIE', 'St Petersburg Clearwater Arpt', 'TPA', 'Tampa', 'UNITED STATES', 'US', '-5', '27.910167', '-82.687389', 3, '', 0),
('TPE', 'Taiwan Taoyuan Intl Arpt', 'TPE', 'Taipei', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '25.077731', '121.232822', 2, 'true', 0),
('TSA', 'Sung Shan Arpt', 'TPE', 'Taipei', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '25.069722', '121.5525', 2, '', 0),
('TPH', 'Tonopah Arpt', 'TPH', 'Tonopah', 'UNITED STATES', 'US', '-100', '38.0601', '-117.0872', 1, 'true', 0),
('TPL', 'Temple Arpt', 'TPL', 'Temple', 'UNITED STATES', 'US', '-6', '31.1525', '-97.407778', 1, 'true', 0),
('TPQ', 'Tepic Arpt', 'TPQ', 'Tepic', 'MEXICO', 'MX', '-6', '21.419453', '-104.842581', 1, 'true', 0),
('TPR', 'Tom Price', 'TPR', 'Tom Price', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('TPS', 'Birgi Arpt', 'TPS', 'Trapani', 'ITALY', 'IT', '1', '37.911403', '12.487961', 1, 'true', 0),
('TQR', 'San Domino Island Arpt', 'TQR', 'San Domino Island', 'ITALY', 'IT', '1', '42.1025', '15.488', 1, 'true', 0),
('TRC', 'Francisco Sarabia Arpt', 'TRC', 'Torreon', 'MEXICO', 'MX', '-6', '25.568278', '-103.410583', 1, 'true', 0),
('XOD', 'Oppdal Rail Station', 'TRD', 'Trondheim', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('XZT', 'Trondheim Rail Station', 'TRD', 'Trondheim', 'NORWAY', 'NO', '-100', '0', '0', 3, '', 0),
('TRD', 'Trondheim Vaernes Arpt', 'TRD', 'Trondheim', 'NORWAY', 'NO', '1', '63.457556', '10.92425', 3, 'true', 0),
('TRE', 'Tiree Arpt', 'TRE', 'Tiree', 'UNITED KINGDOM', 'GB', '0', '56.499167', '-6.869167', 1, 'true', 0),
('TRG', 'Tauranga Arpt', 'TRG', 'Tauranga', 'NEW ZEALAND', 'NZ', '12', '-37.671944', '176.19611', 1, 'true', 0),
('TRI', 'Tri City Regional Arpt', 'TRI', 'Bristol', 'UNITED STATES', 'US', '-5', '36.475222', '-82.407417', 1, 'true', 0),
('TRK', 'Tarakan Arpt', 'TRK', 'Tarakan', 'INDONESIA', 'ID', '8', '3.326694', '117.565569', 1, 'true', 0),
('TRL', 'Terrell Field Arpt', 'TRL', 'Terrell', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('TRN', 'Torino Caselle Arpt', 'TRN', 'Turin', 'ITALY', 'IT', '1', '45.200761', '7.649631', 1, 'true', 0),
('TRO', 'Taree Arpt', 'TRO', 'Taree', 'AUSTRALIA', 'AU', '10', '-31.8886', '152.514', 1, 'true', 0),
('TRS', 'Ronchi Dei Legionari Arpt', 'TRS', 'Trieste', 'ITALY', 'IT', '1', '45.8275', '13.472222', 1, 'true', 0),
('TRU', 'Trujillo Arpt', 'TRU', 'Trujillo', 'PERU', 'PE', '-5', '-8.081411', '-79.108761', 1, 'true', 0),
('TRV', 'Thiruvananthapuram Arpt', 'TRV', 'Thiruvananthapuram', 'INDIA', 'IN', '5', '8.482122', '76.920114', 1, 'true', 0),
('TRW', 'Bonriki Arpt', 'TRW', 'Tarawa', 'KIRIBATI', 'KI', '12', '1.381636', '173.147036', 1, 'true', 0),
('TRZ', 'Tiruchirapally Civil Arpt', 'TRZ', 'Tiruchirappali', 'INDIA', 'IN', '5', '10.765364', '78.709722', 1, 'true', 0),
('TSE', 'Astana Arpt', 'TSE', 'Astana', 'KAZAKHSTAN', 'KZ', '6', '51.022222', '71.466944', 1, 'true', 0),
('TSF', 'Treviso Arpt', 'TSF', 'Treviso', 'ITALY', 'IT', '1', '45.6484', '12.194422', 1, 'true', 0),
('TSJ', 'Tsushima Arpt', 'TSJ', 'Tsushima', 'JAPAN', 'JP', '9', '34.284889', '129.33055', 1, 'true', 0),
('TSM', 'Taos Airport', 'TSM', 'Taos', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('TSN', 'Tianjin Airport', 'TSN', 'Tianjin', 'CHINA', 'CN', '8', '39.124353', '117.346183', 1, 'true', 0),
('TSR', 'Timisoara Arpt', 'TSR', 'Timisoara', 'ROMANIA', 'RO', '2', '45.809861', '21.337861', 1, 'true', 0),
('TST', 'Trang Arpt', 'TST', 'Trang', 'THAILAND', 'TH', '7', '7.508744', '99.616578', 1, 'true', 0),
('TSV', 'Townsville Arpt', 'TSV', 'Townsville', 'AUSTRALIA', 'AU', '10', '-19.2525', '146.765278', 1, 'true', 0),
('TTB', 'Arbatax Arpt', 'TTB', 'Tortoli', 'ITALY', 'IT', '1', '39.918761', '9.682981', 1, 'true', 0),
('TTD', 'Troutdale Arpt', 'TTD', 'Troutdale', 'UNITED STATES', 'US', '-8', '45.54937', '-122.401253', 1, 'true', 0),
('TTJ', 'Tottori Arpt', 'TTJ', 'Tottori', 'JAPAN', 'JP', '9', '35.530069', '134.166553', 1, 'true', 0),
('TTN', 'Trenton Mercer Arpt', 'TTN', 'Trenton', 'UNITED STATES', 'US', '-5', '40.276692', '-74.813469', 2, 'true', 0),
('TRX', 'Trenton Airport', 'TTN', 'Trenton', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('TTQ', 'Tortuquero Arpt', 'TTQ', 'Tortuquero', 'COSTA RICA', 'CR', '-6', '10.569', '-83.5148', 1, 'true', 0),
('TTT', 'Taitung Arpt', 'TTT', 'Taitung', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '22.754986', '121.101681', 1, 'true', 0),
('TUC', 'Benjamin Matienzo Airport', 'TUC', 'Tucuman', 'ARGENTINA', 'AR', '-3', '-26.840861', '-65.104944', 1, 'true', 0),
('TUF', 'Saint Symphorien Arpt', 'TUF', 'Tours', 'FRANCE', 'FR', '1', '47.432222', '0.727606', 2, 'true', 0),
('XSH', 'Tours Rail Station', 'TUF', 'Tours', 'FRANCE', 'FR', '1', '47.385626', '0.723347', 2, '', 0),
('TUG', 'Tuguegarao Arpt', 'TUG', 'Tuguegarao', 'PHILIPPINES', 'PH', '8', '17.638311', '121.730614', 1, 'true', 0),
('TUI', 'Turaif Arpt', 'TUI', 'Turaif', 'SAUDI ARABIA', 'SA', '3', '31.692683', '38.7312', 1, 'true', 0),
('TUK', 'Turbat Arpt', 'TUK', 'Turbat', 'PAKISTAN', 'PK', '5', '25.986369', '63.030167', 1, 'true', 0),
('TUL', 'Tulsa Intl', 'TUL', 'Tulsa', 'UNITED STATES', 'US', '-6', '36.198389', '-95.888111', 1, 'true', 0),
('TUN', 'Carthage Arpt', 'TUN', 'Tunis', 'TUNISIA', 'TN', '1', '36.851033', '10.227217', 1, 'true', 0),
('TUO', 'Taupo Arpt', 'TUO', 'Taupo', 'NEW ZEALAND', 'NZ', '12', '-38.739723', '176.084444', 1, 'true', 0),
('TUP', 'C D Lemons Municipal Arpt', 'TUP', 'Tupelo', 'UNITED STATES', 'US', '-6', '34.2681', '-88.7699', 1, 'true', 0),
('TUR', 'Tucurui Arpt', 'TUR', 'Tucurui', 'BRAZIL', 'BR', '-3', '-3.786008', '-49.720267', 1, 'true', 0),
('TUS', 'Tucson Intl Arpt', 'TUS', 'Tucson', 'UNITED STATES', 'US', '-7', '32.116083', '-110.941028', 1, 'true', 0),
('TUU', 'Tabuk Arpt', 'TUU', 'Tabuk', 'SAUDI ARABIA', 'SA', '3', '28.365417', '36.618889', 1, 'true', 0),
('TUY', 'Tulum Arpt', 'TUY', 'Tulum', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('TVC', 'Cherry Capital Arpt', 'TVC', 'Traverse City', 'UNITED STATES', 'US', '-5', '44.741445', '-85.582235', 1, 'true', 0),
('TVF', 'Thief River Falls Numicipal', 'TVF', 'Thief River Falls', 'UNITED STATES', 'US', '-6', '48.065556', '-96.185', 1, 'true', 0),
('TVL', 'Lake Tahoe Arpt', 'TVL', 'Lake Tahoe', 'UNITED STATES', 'US', '-8', '38.893889', '-119.995278', 1, 'true', 0),
('TVU', 'Matei Arpt', 'TVU', 'Taveuni', 'FIJI', 'FJ', '12', '-16.6906', '-179.877', 1, 'true', 0),
('TWA', 'Twin Hills Arpt', 'TWA', 'Twin Hills', 'UNITED STATES', 'US', '-9', '59.074444', '-160.275', 1, 'true', 0),
('TWB', 'Toowoomba Arpt', 'TWB', 'Toowoomba', 'AUSTRALIA', 'AU', '10', '-27.542778', '151.916389', 1, 'true', 0),
('TWF', 'Twin Falls City County Arpt', 'TWF', 'Twin Falls', 'UNITED STATES', 'US', '-7', '42.481803', '-114.487733', 1, 'true', 0),
('TWU', 'Tawau Arpt', 'TWU', 'Tawau', 'MALAYSIA', 'MY', '8', '4.313369', '118.121953', 1, 'true', 0),
('TXG', 'Taichung Arpt', 'TXG', 'Taichung', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '24.1863', '120.654', 2, 'true', 0),
('RMQ', 'Ching Chuan Kang', 'TXG', 'Taichung', 'TAIWAN, PROVINCE OF CHINA', 'TW', '8', '24.264668', '120.62058', 2, '', 0),
('TXK', 'Texarkana Municipal', 'TXK', 'Texarkana', 'UNITED STATES', 'US', '-6', '33.453722', '-93.991028', 1, 'true', 0),
('TXN', 'Tunxi Arpt', 'TXN', 'Tunxi', 'CHINA', 'CN', '8', '29.7333', '118.256', 1, 'true', 0),
('TYD', 'Tynda Airport', 'TYD', 'Tynda Airport', 'RUSSIA', 'RU', '0', '0', '0', 1, 'true', 0),
('TYN', 'Taiyuan Arpt', 'TYN', 'Taiyuan', 'CHINA', 'CN', '8', '37.746897', '112.628428', 1, 'true', 0),
('HND', 'Haneda Arpt', 'TYO', 'Tokyo', 'JAPAN', 'JP', '9', '35.552258', '139.779694', 2, '', 0),
('NRT', 'Narita', 'TYO', 'Tokyo', 'JAPAN', 'JP', '9', '35.764722', '140.386389', 2, '', 0),
('TYR', 'Pounds Field', 'TYR', 'Tyler', 'UNITED STATES', 'US', '-6', '32.354139', '-95.402386', 1, 'true', 0),
('TYS', 'McGhee Tyson Arpt', 'TYS', 'Knoxville', 'UNITED STATES', 'US', '-5', '35.810972', '-83.994028', 1, 'true', 0),
('TZL', 'Tuzla Intl Arpt', 'TZL', 'Tuzla', 'BOSNIA AND HERZEGOVINA', 'BA', '-100', '44.4587', '18.7248', 1, 'true', 0),
('TZN', 'South Andros Arpt', 'TZN', 'South Andros', 'BAHAMAS', 'BS', '-100', '24.1586', '-77.5892', 1, 'true', 0),
('TZX', 'Trabzon Arpt', 'TZX', 'Trabzon', 'TURKEY', 'TR', '2', '40.995108', '39.789728', 1, 'true', 3);
INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('UA', 'UDJ', 'UA', 'UDJ', 'UKRAINE', 'UA', '0', '0', '0', 1, 'true', 0),
('UAC', 'San Luis Rio Colorado Municipal', 'UAC', 'San Luis Rio Colorado', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('UAK', 'Narsarsuaq Arpt', 'UAK', 'Narsarsuaq', 'GREENLAND', 'GL', '-3', '61.160517', '-45.425978', 1, 'true', 0),
('UAQ', 'San Juan Arpt', 'UAQ', 'San Juan', 'ARGENTINA', 'AR', '-3', '-31.571472', '-68.418194', 1, 'true', 0),
('UAS', 'Samburu Airstrip', 'UAS', 'Samburu', 'KENYA', 'KE', '3', '0.530583', '37.5342', 1, 'true', 0),
('UBA', 'Uberaba Airport', 'UBA', 'Uberaba', 'BRAZIL', 'BR', '-3', '-19.765', '-47.964778', 1, 'true', 0),
('UBJ', 'Ube Airport', 'UBJ', 'Ube Jp', 'JAPAN', 'JP', '9', '33.93', '131.278611', 1, 'true', 0),
('UBP', 'Muang Ubon Arpt', 'UBP', 'Ubon Ratchathani', 'THAILAND', 'TH', '7', '15.251278', '104.870231', 1, 'true', 0),
('UBS', 'Lowndes Cty Arpt', 'UBS', 'Columbus', 'UNITED STATES', 'US', '-100', '0', '0', 2, 'true', 0),
('GTR', 'Golden Arpt', 'UBS', 'Columbus', 'UNITED STATES', 'US', '-6', '33.450333', '-88.591361', 2, '', 0),
('UCA', 'Oneida County Arpt', 'UCA', 'Utica', 'UNITED STATES', 'US', '-100', '43.1451', '-75.3839', 1, 'true', 0),
('UCK', 'Lutsk Arpt', 'UCK', 'Lutsk', 'UKRAINE', 'UA', '-100', '0', '0', 1, 'true', 0),
('UCT', 'Ukhta Airport', 'UCT', 'Ukhta Airport', 'RUSSIA', 'RU', '4', '63.340297', '53.482592', 1, 'true', 0),
('UDD', 'Bermuda Dunes Arpt', 'UDD', 'Palm Desert', 'UNITED STATES', 'US', '-7', '33.748438', '-116.274813', 1, 'true', 0),
('UDE', 'Volkel Arpt', 'UDE', 'Uden', 'NETHERLANDS', 'NL', '1', '51.656389', '5.708611', 1, 'true', 0),
('UDI', 'Eduardo Gomes Airprt', 'UDI', 'Uberlandia', 'BRAZIL', 'BR', '-3', '-18.882844', '-48.225594', 1, 'true', 0),
('UDJ', 'Uzhhorod International Airport', 'UDJ', 'Uzhhorod International Airport', 'UKRAINE', 'UA', '2', '48.634278', '22.263356', 1, 'true', 0),
('UDN', 'Campoformido Arpt', 'UDN', 'Udine', 'ITALY', 'IT', '-100', '45.9347', '12.9422', 1, 'true', 0),
('UDR', 'Maharana Pratap Arpt', 'UDR', 'Udaipur', 'INDIA', 'IN', '5', '24.617697', '73.8961', 1, 'true', 0),
('UEE', 'Queenstown Arpt', 'UEE', 'Queenstown', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('UEO', 'Kumejima Arpt', 'UEO', 'Kume Jima', 'JAPAN', 'JP', '9', '26.363506', '126.713806', 1, 'true', 0),
('UFA', 'Ufa Arpt', 'UFA', 'Ufa RU', 'RUSSIA', 'RU', '6', '54.557511', '55.874417', 1, 'true', 0),
('UGC', 'Urgench Arpt', 'UGC', 'Urgench', 'UZBEKISTAN', 'UZ', '5', '41.5843', '60.6417', 1, 'true', 0),
('UGN', 'Memorial Arpt', 'UGN', 'Waukegan', 'UNITED STATES', 'US', '-6', '42.422161', '-87.867908', 1, 'true', 0),
('UHE', 'Uherske Hradiste Kunovice Arpt', 'UHE', 'Uherske Hradiste', 'CZECH REPUBLIC', 'CZ', '-100', '49.0294', '17.4397', 1, 'true', 0),
('UIH', 'Qui Nhon Arpt', 'UIH', 'Qui Nhon', 'VIET NAM', 'VN', '7', '13.954986', '109.042267', 1, 'true', 0),
('UII', 'Utila Arpt', 'UII', 'Utila', 'HONDURAS', 'HN', '-6', '16.091667', '-86.8875', 1, 'true', 0),
('UIK', 'Ust-Ilimsk Airport', 'UIK', 'Ust-Ilimsk Airport', 'RUSSIA', 'RU', '9', '58.08', '108.08', 1, 'true', 0),
('UIN', 'Baldwin Field', 'UIN', 'Quincy', 'UNITED STATES', 'US', '-6', '39.9427', '-91.1946', 1, 'true', 0),
('UIO', 'Mariscal Arpt', 'UIO', 'Quito', 'ECUADOR', 'EC', '-5', '-0.141144', '-78.488214', 1, 'true', 0),
('UIP', 'Pluguffan Arpt', 'UIP', 'Quimper', 'FRANCE', 'FR', '1', '47.974981', '-4.167786', 1, 'true', 0),
('UIR', 'Quirindi Arpt', 'UIR', 'Quirindi', 'AUSTRALIA', 'AU', '-100', '-31.4983', '150.5183', 1, 'true', 0),
('UKB', 'Kobe Arpt', 'UKB', 'Kobe', 'JAPAN', 'JP', '9', '34.632778', '135.223889', 1, 'true', 0),
('UKI', 'Ukiah Arpt', 'UKI', 'Ukiah', 'UNITED STATES', 'US', '-100', '39.126', '-123.2009', 1, 'true', 0),
('UKK', 'Ust Kamenogorsk Arpt', 'UKK', 'Ust Kamenogorsk', 'KAZAKHSTAN', 'KZ', '6', '50.0366', '82.4942', 1, 'true', 0),
('UKS', 'Belbek Arpt', 'UKS', 'Sevastopol', 'UKRAINE', 'UA', '2', '44.691431', '33.57567', 1, 'true', 0),
('UKT', 'Upper Bucks Arpt', 'UKT', 'Quakertown', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('UKX', 'Ust-Kut Airport', 'UKX', 'Ust-Kut Airport', 'RUSSIA', 'RU', '9', '56.85', '105.7167', 1, 'true', 0),
('UKY', 'Kyoto Arpt', 'UKY', 'Kyoto', 'JAPAN', 'JP', '9', '35.016667', '135.766667', 1, 'true', 0),
('ULM', 'New Ulm Arpt', 'ULM', 'New Ulm', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('ULN', 'Buyant Uhaa Airport', 'ULN', 'Ulaanbaatar', 'MONGOLIA', 'MN', '8', '47.843056', '106.766639', 1, 'true', 0),
('ULP', 'Quilpie Arpt', 'ULP', 'Quilpie', 'AUSTRALIA', 'AU', '10', '-26.6122', '144.253', 1, 'true', 0),
('ULV', 'Ulyanovsk Baratayeveka Airport', 'ULV', 'Baratayeveka', 'RUSSIA', 'RU', '4', '0', '0', 1, 'true', 0),
('ULY', 'Ulyanovsk Arpt', 'ULY', 'Ulyanovsk', 'RUSSIA', 'RU', '4', '54.401', '48.8027', 1, 'true', 0),
('UME', 'Umea Airport', 'UME', 'Umea', 'SWEDEN', 'SE', '1', '63.791828', '20.282758', 1, 'true', 0),
('UMU', 'Ernesto Geisel Arpt', 'UMU', 'Umuarama', 'BRAZIL', 'BR', '-4', '-23.798611', '-53.313611', 1, 'true', 0),
('UMY', 'Sumy Arpt', 'UMY', 'Sumy', 'UKRAINE', 'UA', '-100', '50.8583', '34.7625', 1, 'true', 0),
('UNA', 'Una Airport', 'UNA', 'Una BR', 'BRAZIL', 'BR', '-4', '-15.355278', '-38.998889', 1, 'true', 0),
('UNI', 'Union Island Arpt', 'UNI', 'Union Island', 'SAINT VINCENT AND THE GRENADINES', 'VC', '-4', '12.583', '-61.417', 1, 'true', 0),
('UNK', 'Unalakleet Arpt', 'UNK', 'Unalakleet', 'UNITED STATES', 'US', '-9', '63.888333', '-160.798889', 1, 'true', 0),
('UNN', 'Ranong Arpt', 'UNN', 'Ranong', 'THAILAND', 'TH', '7', '9.777622', '98.585483', 1, 'true', 0),
('UNT', 'Baltasound Arpt', 'UNT', 'Unst', 'UNITED KINGDOM', 'GB', '0', '60.7472', '-0.85385', 1, 'true', 0),
('UOX', 'University Oxford', 'UOX', 'University Oxford', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('UPG', 'Hasanudin Arpt', 'UPG', 'Ujung Pandang', 'INDONESIA', 'ID', '8', '-5.061631', '119.554042', 1, 'true', 0),
('UPN', 'Uruapan Arpt', 'UPN', 'Uruapan', 'MEXICO', 'MX', '-6', '19.396692', '-102.039056', 1, 'true', 0),
('URA', 'Uralsk Arpt', 'URA', 'Uralsk', 'KAZAKHSTAN', 'KZ', '5', '51.150833', '51.543056', 1, 'true', 0),
('URC', 'Urumqi Arpt', 'URC', 'Urumqi', 'CHINA', 'CN', '8', '43.907106', '87.474244', 1, 'true', 0),
('URE', 'Kuressaare Arpt', 'URE', 'Kuressaare', 'ESTONIA', 'EE', '2', '58.229883', '22.509494', 1, 'true', 0),
('URG', 'Ruben Berta Arpt', 'URG', 'Uruguaina', 'BRAZIL', 'BR', '-3', '-29.782178', '-57.038189', 1, 'true', 0),
('URJ', 'Urai Airport', 'URJ', 'Urai Airport', 'RUSSIA', 'RU', '6', '60.1', '64.83', 1, 'true', 0),
('URO', 'Boos Airport', 'URO', 'Rouen', 'FRANCE', 'FR', '1', '49.384172', '1.1748', 1, 'true', 0),
('URS', 'Kursk Arpt', 'URS', 'Kursk', 'RUSSIA', 'RU', '4', '51.7506', '36.2956', 1, 'true', 0),
('URT', 'Surat Thani Arpt', 'URT', 'Surat Thani', 'THAILAND', 'TH', '7', '9.1325', '99.135556', 1, 'true', 0),
('URY', 'Gurayat Arpt', 'URY', 'Gurayat', 'SAUDI ARABIA', 'SA', '3', '31.411942', '37.279469', 1, 'true', 0),
('USH', 'Islas Malvinas Arpt', 'USH', 'Ushuaia', 'ARGENTINA', 'AR', '-3', '-54.843278', '-68.29575', 1, 'true', 0),
('USK', 'Usinsk Arpt', 'USK', 'Usinsk', 'RUSSIA', 'RU', '4', '66.00077', '57.221113', 1, 'true', 0),
('USL', 'Useless Loop Arpt', 'USL', 'Useless Loop', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('USM', 'Koh Samui Arpt', 'USM', 'Koh Samui', 'THAILAND', 'TH', '7', '9.547794', '100.062272', 1, 'true', 0),
('USN', 'Ulsan Arpt', 'USN', 'Ulsan', 'KOREA, REPUBLIC OF', 'KR', '9', '35.593494', '129.351722', 1, 'true', 0),
('USQ', 'Usak Airport', 'USQ', 'Usak', 'TURKEY', 'TR', '2', '38.681478', '29.471675', 1, 'true', 0),
('USS', 'Sancti Spiritus Arpt', 'USS', 'Sancti Spiritus', 'CUBA', 'CU', '-100', '0', '0', 1, 'true', 0),
('UST', 'St Augustine Arpt', 'UST', 'St Augustine', 'UNITED STATES', 'US', '-5', '29.959167', '-81.339722', 1, 'true', 0),
('UTA', 'Mutare Arpt', 'UTA', 'Mutare', 'ZIMBABWE', 'ZW', '-100', '0', '0', 1, 'true', 0),
('ZYU', 'Utrecht Rail Station', 'UTC', 'Utrecht', 'NETHERLANDS', 'NL', '-100', '0', '0', 1, '', 0),
('UTH', 'Udon Thani Arpt', 'UTH', 'Udon Thani', 'THAILAND', 'TH', '7', '17.386436', '102.788247', 1, 'true', 0),
('UTN', 'Upington Airport', 'UTN', 'Upington', 'SOUTH AFRICA', 'ZA', '2', '-28.399097', '21.260239', 1, 'true', 0),
('UTP', 'U Tapao Arpt', 'UTP', 'U Tapao', 'THAILAND', 'TH', '7', '12.679944', '101.005028', 1, 'true', 0),
('UTT', 'Umtata Arpt', 'UTT', 'Umtata', 'SOUTH AFRICA', 'ZA', '2', '-31.547903', '28.674289', 1, 'true', 0),
('UTW', 'Queenstown Airport', 'UTW', 'Queenstown', 'SOUTH AFRICA', 'ZA', '2', '-31.920197', '26.882206', 1, 'true', 0),
('UUA', 'Bugulma Airport', 'UUA', 'Bugulma Airport', 'RUSSIA', 'RU', '6', '54.64', '52.8017', 1, 'true', 0),
('UUD', 'Ulan Ude Arpt', 'UUD', 'Ulan Ude', 'RUSSIA', 'RU', '9', '51.807764', '107.437644', 1, 'true', 0),
('UUS', 'Yuzhno Sakhalinsk Arpt', 'UUS', 'Yuzhno Sakhalinsk', 'RUSSIA', 'RU', '11', '46.888672', '142.717531', 1, 'true', 0),
('UVA', 'Garner Field', 'UVA', 'Uvalde', 'UNITED STATES', 'US', '-6', '29.215429', '-99.748962', 1, 'true', 0),
('UVF', 'Hewanorra Arpt', 'UVF', 'Vieux Fort St Lucia', 'SAINT LUCIA', 'LC', '-4', '13.733194', '-60.952597', 1, 'true', 0),
('UVL', 'Kharga Arpt', 'UVL', 'Kharga', 'EGYPT', 'EG', '-100', '25.4736', '30.5908', 1, 'true', 0),
('WIE', 'Air Base', 'UWE', 'Wiesbaden', 'GERMANY', 'DE', '-100', '50.05', '8.325', 1, '', 0),
('UYL', 'Nyala Arpt', 'UYL', 'Nyala', 'SUDAN', 'SD', '2', '12.0535', '24.9562', 1, 'true', 0),
('VAA', 'Vaasa Arpt', 'VAA', 'Vaasa', 'FINLAND', 'FI', '2', '63.05065', '21.762175', 1, 'true', 0),
('XHK', 'Gare de Valence TGV', 'VAF', 'Valence', 'FRANCE', 'FR', '0', '-100', '0', 2, '', 0),
('VAF', 'Chabeuil Airport', 'VAF', 'Valence', 'FRANCE', 'FR', '1', '44.921594', '4.9699', 2, 'true', 0),
('VAG', 'Maj Brig Trompowsky Arpt', 'VAG', 'Varginha', 'BRAZIL', 'BR', '-3', '-21.590067', '-45.473342', 1, 'true', 0),
('VAI', 'Vanimo Arpt', 'VAI', 'Vanimo', 'PAPUA NEW GUINEA', 'PG', '10', '-2.69717', '141.302', 1, 'true', 0),
('VAN', 'Van Arpt', 'VAN', 'Van TR', 'TURKEY', 'TR', '2', '38.468219', '43.3323', 1, 'true', 0),
('VAR', 'Varna', 'VAR', 'Varna', 'BULGARIA', 'BG', '2', '43.232072', '27.825106', 1, 'true', 0),
('VAS', 'Sivas Arpt', 'VAS', 'Sivas', 'TURKEY', 'TR', '2', '39.813828', '36.903497', 1, 'true', 0),
('VAV', 'Lupepau U Arpt', 'VAV', 'Vava U', 'TONGA', 'TO', '13', '-18.585336', '-173.961717', 1, 'true', 0),
('VAW', 'Vardoe Luftan', 'VAW', 'Vardoe', 'NORWAY', 'NO', '1', '70.355392', '31.044889', 1, 'true', 0),
('VBY', 'Visby Airport', 'VBY', 'Visby', 'SWEDEN', 'SE', '1', '57.662797', '18.346211', 1, 'true', 0),
('VCA', 'Can Tho Arpt', 'VCA', 'Can Tho', 'VIET NAM', 'VN', '7', '10.085119', '105.711922', 1, 'true', 0),
('VCE', 'Marco Polo Arpt', 'VCE', 'Venice', 'ITALY', 'IT', '1', '45.505278', '12.351944', 1, 'true', 0),
('VCL', 'Chulai Arpt', 'VCL', 'Tamky', 'VIET NAM', 'VN', '7', '15.405944', '108.705889', 1, 'true', 0),
('VCT', 'Victoria Regional Arpt', 'VCT', 'Victoria', 'UNITED STATES', 'US', '-6', '28.8526', '-96.9185', 1, 'true', 0),
('VCV', 'George AFB', 'VCV', 'Victorville', 'UNITED STATES', 'US', '-8', '34.597453', '-117.382997', 1, 'true', 0),
('VDA', 'Ovda Arpt', 'VDA', 'Ovda', 'ISRAEL', 'IL', '2', '29.94025', '34.93585', 1, 'true', 0),
('VDB', 'Valdres Arpt', 'VDB', 'Fagernes', 'NORWAY', 'NO', '1', '61.015556', '9.288056', 1, 'true', 0),
('VDC', 'Vitoria Da Conquista Arpt', 'VDC', 'Vitoria Da Conquista', 'BRAZIL', 'BR', '-3', '-14.862761', '-40.863106', 1, 'true', 0),
('VDE', 'Hierro Arpt', 'VDE', 'Valverde', 'SPAIN', 'ES', '0', '27.814847', '-17.887056', 1, 'true', 0),
('VDI', 'Vidalia Municipal Arpt', 'VDI', 'Vidalia', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('VDM', 'Viedma Arpt', 'VDM', 'Viedma', 'ARGENTINA', 'AR', '-3', '-40.869222', '-63.000389', 1, 'true', 0),
('VDS', 'Vadso', 'VDS', 'Vadso', 'NORWAY', 'NO', '1', '70.065', '29.844', 1, 'true', 0),
('VDZ', 'Valdez Municipal Arpt', 'VDZ', 'Valdez', 'UNITED STATES', 'US', '-9', '61.133949', '-146.248342', 1, 'true', 0),
('VEJ', 'Vejle Arpt', 'VEJ', 'Vejle', 'DENMARK', 'DK', '-100', '0', '0', 1, 'true', 0),
('VEL', 'Vernal Municipal', 'VEL', 'Vernal', 'UNITED STATES', 'US', '-7', '40.440833', '-109.51', 1, 'true', 0),
('VER', 'Las Bajadas General Heriberto Jara', 'VER', 'Veracruz', 'MEXICO', 'MX', '-6', '19.145931', '-96.187267', 1, 'true', 0),
('VEY', 'Vestmannaeyjar Arpt', 'VEY', 'Vestmannaeyjar', 'ICELAND', 'IS', '0', '63.424303', '-20.278875', 1, 'true', 0),
('VFA', 'Victoria Falls Arpt', 'VFA', 'Victoria Falls', 'ZIMBABWE', 'ZW', '2', '-18.095881', '25.839006', 1, 'true', 0),
('VGA', 'Vijayawada Arpt', 'VGA', 'Vijayawada', 'INDIA', 'IN', '5', '16.530433', '80.796847', 1, 'true', 0),
('VGD', 'Vologda Arpt', 'VGD', 'Vologda', 'RUSSIA', 'RU', '4', '59.281667', '39.946667', 1, 'true', 0),
('VGO', 'Vigo Airport', 'VGO', 'Vigo', 'SPAIN', 'ES', '1', '42.2318', '-8.626775', 1, 'true', 0),
('VHM', 'Vilhelmina Arpt', 'VHM', 'Vilhelmina', 'SWEDEN', 'SE', '1', '64.579083', '16.833575', 1, 'true', 0),
('VHN', 'Culberson Cty Arpt', 'VHN', 'Van Horn', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('VHY', 'Charmeil Arpt', 'VHY', 'Vichy', 'FRANCE', 'FR', '1', '46.169689', '3.403736', 1, 'true', 0),
('VIB', 'Villa Constitucion Arpt', 'VIB', 'Villa Constitucion', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('VIC', 'Vicenza Arpt', 'VIC', 'Vicenza', 'ITALY', 'IT', '1', '45.573411', '11.52955', 1, 'true', 0),
('VDD', 'Vienna Danubepier Arpt', 'VIE', 'Vienna', 'AUSTRIA', 'AT', '2', '48.2', '16.366667', 2, '', 0),
('VIE', 'Vienna Intl Arpt', 'VIE', 'Vienna', 'AUSTRIA', 'AT', '1', '48.110278', '16.569722', 2, 'true', 0),
('VIF', 'Vieste Arpt', 'VIF', 'Vieste', 'ITALY', 'IT', '-100', '0', '0', 1, 'true', 0),
('VIG', 'El Vigia Arpt', 'VIG', 'El Vigia', 'VENEZUELA', 'VE', '-4', '8.6241', '-71.672819', 1, 'true', 0),
('VII', 'Vinh City Arpt', 'VII', 'Vinh City', 'VIET NAM', 'VN', '7', '18.737569', '105.670764', 1, 'true', 0),
('VIJ', 'Virgin Gorda Arpt', 'VIJ', 'Virgin Gorda', 'VIRGIN ISLANDS, BRITISH', 'VG', '-4', '18.4464', '-64.4275', 1, 'true', 0),
('VIL', 'Dakhla Airport', 'VIL', 'Dakhla', 'MOROCCO', 'MA', '0', '23.7183', '-15.932', 1, 'true', 0),
('VIN', 'Vinnitsa Arpt', 'VIN', 'Vinnitsa', 'UKRAINE', 'UA', '2', '49.2433', '28.6063', 1, 'true', 0),
('VIS', 'Visalia Municipal', 'VIS', 'Visalia', 'UNITED STATES', 'US', '-8', '36.318611', '-119.392778', 1, 'true', 0),
('VIT', 'Vitoria Arpt', 'VIT', 'Vitoria', 'SPAIN', 'ES', '1', '42.882836', '-2.724469', 1, 'true', 0),
('VIX', 'Eurico Sales Arpt', 'VIX', 'Vitoria', 'BRAZIL', 'BR', '-3', '-20.258056', '-40.286389', 1, 'true', 0),
('VJI', 'Virginia Highlands Arpt', 'VJI', 'Abingdon', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('VKG', 'Rach Gia Arpt', 'VKG', 'Rach Gia', 'VIET NAM', 'VN', '7', '9.949676', '105.133659', 1, 'true', 0),
('VKS', 'Vicksburg Arpt', 'VKS', 'Vicksburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('VKT', 'Vorkuta Airport', 'VKT', 'Vorkuta', 'RUSSIA', 'RU', '6', '67.4886', '63.9931', 1, 'true', 0),
('VLC', 'Valencia Arpt', 'VLC', 'Valencia', 'SPAIN', 'ES', '1', '39.489314', '-0.481625', 1, 'true', 0),
('VLD', 'Valdosta Regional', 'VLD', 'Valdosta', 'UNITED STATES', 'US', '-5', '30.7825', '-83.2767', 1, 'true', 0),
('VLG', 'Villa Gesell Arpt', 'VLG', 'Villa Gesell', 'ARGENTINA', 'AR', '-3', '-37.235408', '-57.029239', 1, 'true', 0),
('VLI', 'Bauerfield Arpt', 'VLI', 'Port Vila', 'VANUATU', 'VU', '11', '-17.699325', '168.319794', 1, 'true', 0),
('VLL', 'Valladolid Arpt', 'VLL', 'Valladolid', 'SPAIN', 'ES', '1', '41.706111', '-4.851944', 1, 'true', 0),
('VLN', 'Valenica Arpt', 'VLN', 'Valencia', 'VENEZUELA', 'VE', '-4', '10.149733', '-67.9284', 1, 'true', 0),
('VLO', 'Stolport Arpt', 'VLO', 'Vallejo', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('VLU', 'Velikiye Luki Airport', 'VLU', 'Velikiye Luki Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('VLV', 'Carvajal Arpt', 'VLV', 'Valera', 'VENEZUELA', 'VE', '-4', '9.340797', '-70.584089', 1, 'true', 0),
('VLY', 'Anglesey Arpt', 'VLY', 'Anglesey', 'UNITED KINGDOM', 'GB', '-100', '53.2481', '-4.5353', 1, 'true', 0),
('VME', 'Villa Mercedes Arpt', 'VME', 'Villa Mercedes', 'ARGENTINA', 'AR', '-100', '0', '0', 1, 'true', 0),
('VMI', 'Inc Arpt', 'VMI', 'Vallemi', 'PARAGUAY', 'PY', '-100', '0', '0', 1, 'true', 0),
('VNC', 'Venice Municipal Airport', 'VNC', 'Venice', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('VNE', 'Muecon Arpt', 'VNE', 'Vannes', 'FRANCE', 'FR', '1', '47.723303', '-2.718561', 1, 'true', 0),
('VNO', 'Vilnius Arpt', 'VNO', 'Vilnius', 'LITHUANIA', 'LT', '2', '54.634133', '25.285767', 1, 'true', 0),
('VNS', 'Lal Bahadur Shastri Arpt', 'VNS', 'Varanasi', 'INDIA', 'IN', '5', '25.452358', '82.859342', 1, 'true', 0),
('VNT', 'Ventspils Intl Arpt', 'VNT', 'Ventspils', 'LATVIA', 'LV', '-100', '57.3578', '21.5442', 1, 'true', 0),
('VNX', 'Vilanculos Arpt', 'VNX', 'Vilanculos', 'MOZAMBIQUE', 'MZ', '2', '-22.018431', '35.313297', 1, 'true', 0),
('VOG', 'Volgograd Arpt', 'VOG', 'Volgograd', 'RUSSIA', 'RU', '4', '48.782528', '44.345544', 1, 'true', 0),
('VOL', 'Nea Anchialos Arpt', 'VOL', 'Volos', 'GREECE', 'GR', '2', '39.219619', '22.794339', 1, 'true', 0),
('VOZ', 'Voronezh Arpt', 'VOZ', 'Voronezh', 'RUSSIA', 'RU', '4', '51.814211', '39.229589', 1, 'true', 0),
('VPS', 'Ft Walton Beach Arpt', 'VPS', 'Valparaiso', 'UNITED STATES', 'US', '-6', '30.48325', '-86.5254', 2, 'true', 0),
('EGI', 'Duke Field', 'VPS', 'Valparaiso', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('VPZ', 'Porter County', 'VPZ', 'Valparaiso', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('VQS', 'Vieques Arpt', 'VQS', 'Vieques', 'UNITED STATES', 'US', '-4', '18.1158', '-65.4227', 1, 'true', 0),
('VRA', 'Juan Gualberto Gomez Arpt', 'VRA', 'Varadero', 'CUBA', 'CU', '-5', '23.034445', '-81.435278', 1, 'true', 0),
('VRB', 'Vero Beach Municipal Arpt', 'VRB', 'Vero Beach', 'UNITED STATES', 'US', '-5', '27.655556', '-80.417944', 1, 'true', 0),
('VRK', 'Varkaus', 'VRK', 'Varkaus', 'FINLAND', 'FI', '2', '62.171111', '27.868611', 1, 'true', 0),
('VRL', 'Vila Real Arpt', 'VRL', 'Vila Real', 'PORTUGAL', 'PT', '0', '41.274334', '-7.720472', 1, 'true', 0),
('VRN', 'Verona Airport', 'VRN', 'Verona', 'ITALY', 'IT', '1', '45.395706', '10.888533', 2, 'true', 0),
('VBS', 'Montichiari Arpt', 'VRN', 'Verona', 'ITALY', 'IT', '1', '45.428889', '10.330556', 2, '', 0),
('VRO', 'Kawama Arpt', 'VRO', 'Matanzas', 'CUBA', 'CU', '-100', '0', '0', 1, 'true', 0),
('VSA', 'Capt Carlos Rovirosa Perez', 'VSA', 'Villahermosa', 'MEXICO', 'MX', '-6', '17.997', '-92.817361', 1, 'true', 0),
('VSE', 'Viseu Arpt', 'VSE', 'Viseu', 'PORTUGAL', 'PT', '-100', '40.7255', '-7.889', 1, 'true', 0),
('VSG', 'Lugansk Arpt', 'VSG', 'Lugansk', 'UKRAINE', 'UA', '2', '48.4174', '39.3741', 1, 'true', 0),
('XYX', 'Sala Rail Station', 'VST', 'Vasteras', 'SWEDEN', 'SE', '-100', '0', '0', 1, '', 0),
('VTB', 'Vitebsk Arpt', 'VTB', 'Vitebsk', 'BELARUS', 'BY', '2', '55.1265', '30.349639', 1, 'true', 0),
('VTE', 'Wattay Arpt', 'VTE', 'Vientiane', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LA', '7', '17.988322', '102.563256', 1, 'true', 0),
('VTZ', 'Vishakhapatnam', 'VTZ', 'Vishakhapatanam', 'INDIA', 'IN', '6', '17.721167', '83.224483', 1, 'true', 0),
('VUP', 'Valledupar Arpt', 'VUP', 'Valleduper', 'COLOMBIA', 'CO', '-5', '10.435042', '-73.249506', 1, 'true', 0),
('VUS', 'Velikiy Ustyug Airport', 'VUS', 'Velikiy Ustyug Airport', 'RUSSIA', 'RU', '-2', '0', '0', 1, 'true', 0),
('VVO', 'Vladivostok Arpt', 'VVO', 'Vladivostok', 'RUSSIA', 'RU', '11', '43.398953', '132.148017', 1, 'true', 0),
('VXE', 'San Pedro Airport', 'VXE', 'Sao Vicente', 'CAPE VERDE', 'CV', '-1', '16.833689', '-25.054661', 1, 'true', 0),
('VXO', 'Vaxjo Airport', 'VXO', 'Vaxjo', 'SWEDEN', 'SE', '1', '56.929144', '14.727994', 1, 'true', 0),
('VYD', 'Vryheid Arpt', 'VYD', 'Vryheid', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 1, 'true', 0),
('VYS', 'Illinois Valley Regional Arpt', 'VYS', 'Peru', 'UNITED STATES', 'US', '-100', '41.3519', '-89.1531', 1, 'true', 0),
('WAG', 'Wanganui Arpt', 'WAG', 'Wanganui', 'NEW ZEALAND', 'NZ', '12', '-39.962222', '175.025278', 1, 'true', 0),
('WAL', 'Wallops Arpt', 'WAL', 'Chincoteague', 'UNITED STATES', 'US', '-5', '37.940194', '-75.466389', 1, 'true', 0),
('DCA', 'Ronald Reagan National Arpt', 'WAS', 'Washington', 'UNITED STATES', 'US', '-5', '38.852083', '-77.037722', 2, '', 0),
('IAD', 'Washington Dulles Intl', 'WAS', 'Washington', 'UNITED STATES', 'US', '-5', '38.944533', '-77.455811', 2, '', 0),
('WAT', 'Waterford Arpt', 'WAT', 'Waterford', 'IRELAND', 'IE', '0', '52.1872', '-7.086964', 1, 'true', 0),
('WAW', 'Warsaw Intl Arpt', 'WAW', 'Warsaw', 'POLAND', 'PL', '1', '52.16575', '20.967122', 1, 'true', 0),
('WAY', 'Green County Airport', 'WAY', 'Waynesburg', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WAZ', 'Warwick Arpt', 'WAZ', 'Warwick', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('WBU', 'Boulder Municipal Arpt', 'WBU', 'Boulder', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WDG', 'Woodring Municipal', 'WDG', 'Enid', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WDH', 'Hosea Kutako International Arpt', 'WDH', 'Windhoek', 'NAMIBIA', 'NA', '1', '-22.486667', '17.4625', 2, 'true', 0),
('ERS', 'Eros Arpt', 'WDH', 'Windhoek', 'NAMIBIA', 'NA', '1', '-22.6122', '17.0804', 2, '', 0),
('WEA', 'Parker County Airport', 'WEA', 'Weatherford', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WEF', 'Weifang Arpt', 'WEF', 'Weifang', 'CHINA', 'CN', '8', '36.6467', '119.119', 1, 'true', 0),
('WEH', 'Weihai Arpu', 'WEH', 'Weihai', 'CHINA', 'CN', '8', '37.1871', '122.229', 1, 'true', 0),
('WEI', 'Weipa Arpt', 'WEI', 'Weipa', 'AUSTRALIA', 'AU', '10', '-12.678611', '141.925278', 1, 'true', 0),
('WEL', 'Welkom Arpt', 'WEL', 'Welkom', 'SOUTH AFRICA', 'ZA', '2', '-27.998', '26.669586', 1, 'true', 0),
('WEW', 'Wee Waa Airport', 'WEW', 'Wee Waa', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('WEX', 'Castlebridge Arpt', 'WEX', 'Wexford', 'IRELAND', 'IE', '-100', '0', '0', 1, 'true', 0),
('WGA', 'Forrest Hill Arpt', 'WGA', 'Wagga Wagga', 'AUSTRALIA', 'AU', '10', '-35.165278', '147.466389', 1, 'true', 0),
('WGE', 'Walgett Arpt', 'WGE', 'Walgett', 'AUSTRALIA', 'AU', '10', '-30.0318', '148.1222', 1, 'true', 0),
('WGO', 'Winchester Arpt', 'WGO', 'Winchester', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WGT', 'Wangaratta', 'WGT', 'Wangaratta', 'AUSTRALIA', 'AU', '-100', '-36.4175', '146.3056', 1, 'true', 0),
('WHK', 'Whakatane Arpt', 'WHK', 'Whakatane', 'NEW ZEALAND', 'NZ', '12', '-37.920556', '176.914167', 1, 'true', 0),
('WHL', 'Welshpool Arpt', 'WHL', 'Welshpool', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('WIC', 'Wick Arpt', 'WIC', 'Wick', 'UNITED KINGDOM', 'GB', '0', '58.458889', '-3.093056', 1, 'true', 0),
('WJF', 'Williams J Fox Arpt', 'WJF', 'Lancaster', 'UNITED STATES', 'US', '-100', '34.7411', '-118.2186', 2, 'true', 0),
('RZH', 'Quartz Hill Arpt', 'WJF', 'Lancaster', 'UNITED STATES', 'US', '-100', '0', '0', 2, '', 0),
('WKA', 'Wanaka Arpt', 'WKA', 'Wanaka', 'NEW ZEALAND', 'NZ', '12', '-44.722222', '169.245556', 1, 'true', 0),
('WKJ', 'Hokkaido Arpt', 'WKJ', 'Wakkanai', 'JAPAN', 'JP', '9', '45.404167', '141.800833', 1, 'true', 0),
('WLD', 'Arkansas City Arpt', 'WLD', 'Winfield', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WLG', 'Wellington Arpt', 'WLG', 'Wellington', 'NEW ZEALAND', 'NZ', '12', '-41.327221', '174.805278', 1, 'true', 0),
('WLK', 'Selawik Arpt', 'WLK', 'Selawik', 'UNITED STATES', 'US', '-9', '66.6', '-159.985833', 1, 'true', 0),
('WMB', 'Warrnambool Arpt', 'WMB', 'Warrnambool', 'AUSTRALIA', 'AU', '-100', '-38.2961', '142.4447', 1, 'true', 0),
('WMC', 'Winnemucca Municipal Arpt', 'WMC', 'Winnemucca', 'UNITED STATES', 'US', '-100', '40.8966', '-117.8059', 1, 'true', 0),
('WMH', 'Mountain Home Arpt', 'WMH', 'Mountain Home', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WMI', 'Warsaw-Modlin Mazovia Airport', 'WMI', 'Warsaw-Modlin Mazovia Airport', 'POLAND', 'PL', '2', '52.45111', '20.651667', 1, 'true', 0),
('WNP', 'Naga Arpt', 'WNP', 'Naga', 'PHILIPPINES', 'PH', '8', '13.584886', '123.270239', 1, 'true', 0),
('WNR', 'Windorah Arpt', 'WNR', 'Windorah', 'AUSTRALIA', 'AU', '10', '-25.4131', '142.667', 1, 'true', 0),
('WNS', 'Nawabshah Arpt', 'WNS', 'Nawabshah', 'PAKISTAN', 'PK', '5', '26.219442', '68.390053', 1, 'true', 0),
('WNZ', 'Wenzhou Arpt', 'WNZ', 'Wenzhou', 'CHINA', 'CN', '8', '27.9122', '120.852', 1, 'true', 0),
('WOL', 'Wollongong Arpt', 'WOL', 'Wollongong', 'AUSTRALIA', 'AU', '10', '-34.5611', '150.789', 1, 'true', 0),
('WPA', 'Puerto Aisen Arpt', 'WPA', 'Puerto Aisen', 'CHILE', 'CL', '-100', '-45.4', '-72.6667', 1, 'true', 0),
('WRE', 'Whangarei Arpt', 'WRE', 'Whangarei', 'NEW ZEALAND', 'NZ', '12', '-35.768333', '174.365', 1, 'true', 0),
('WRG', 'Wrangell Seaplane Base', 'WRG', 'Wrangell', 'UNITED STATES', 'US', '-9', '56.4843', '-132.37', 1, 'true', 0),
('WRL', 'Worland Municipal', 'WRL', 'Worland', 'UNITED STATES', 'US', '-7', '43.9657', '-107.951', 1, 'true', 0),
('WRO', 'Strachowice', 'WRO', 'Wroclaw', 'POLAND', 'PL', '1', '51.102683', '16.885836', 1, 'true', 0),
('WRY', 'Westray Arpt', 'WRY', 'Westray', 'UNITED KINGDOM', 'GB', '0', '59.3503', '-2.95', 1, 'true', 0),
('WST', 'Westerly Municipal', 'WST', 'Westerly', 'UNITED STATES', 'US', '0', '53.351333', '-6.4875', 1, 'true', 0),
('WSY', 'Whitsunday Airstrip', 'WSY', 'Airlie Beach', 'AUSTRALIA', 'AU', '10', '-20.276', '148.755', 1, 'true', 0),
('WSZ', 'Westport Airport', 'WSZ', 'Westport', 'NEW ZEALAND', 'NZ', '12', '-41.738056', '171.580833', 1, 'true', 0),
('WUH', 'Wuhan Arpt', 'WUH', 'Wuhan', 'CHINA', 'CN', '8', '30.783758', '114.2081', 1, 'true', 0),
('WUN', 'Wiluna Arpt', 'WUN', 'Wiluna', 'AUSTRALIA', 'AU', '8', '-26.6292', '120.221', 1, 'true', 0),
('WUS', 'Wuyishan Arpt', 'WUS', 'Wuyishan', 'CHINA', 'CN', '8', '27.7019', '118.001', 1, 'true', 0),
('WUU', 'Wau Arpt', 'WUU', 'Wau City', 'SUDAN', 'SD', '3', '7.725', '27.98', 1, 'true', 0),
('WUX', 'Wuxi Arpt', 'WUX', 'Wuxi', 'CHINA', 'CN', '8', '31.4944', '120.429', 1, 'true', 0),
('WVB', 'Rooikop Arpt', 'WVB', 'Walvis Bay', 'NAMIBIA', 'NA', '1', '-22.9799', '14.6453', 1, 'true', 0),
('WVI', 'Watsonville Municipal Arpt', 'WVI', 'Watsonville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WVL', 'Robert La Fleur Arpt', 'WVL', 'Waterville', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WVN', 'Wilhelmshaven Arpt', 'WVN', 'Wilhelmshaven', 'GERMANY', 'DE', '1', '53.504833', '8.053333', 1, 'true', 0),
('WWD', 'Cape May Arpt', 'WWD', 'Cape May', 'UNITED STATES', 'US', '-5', '39.008507', '-74.908275', 1, 'true', 0),
('WWK', 'Boram Arpt', 'WWK', 'Wewak', 'PAPUA NEW GUINEA', 'PG', '10', '-3.583828', '143.669186', 1, 'true', 0),
('WWR', 'West Woodward Arpt', 'WWR', 'Woodward', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('WWT', 'Newtok Arpt', 'WWT', 'Newtok', 'UNITED STATES', 'US', '-10', '60.939167', '-164.641111', 1, 'true', 0),
('WXF', 'Wether Field Raf', 'WXF', 'Braintree', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('WXN', 'Wanxian Arpt', 'WXN', 'Wanxian', 'CHINA', 'CN', '8', '30.8361', '108.406', 1, 'true', 0),
('WYA', 'Whyalla Arpt', 'WYA', 'Whyalla', 'AUSTRALIA', 'AU', '9', '-33.0589', '137.514', 1, 'true', 0),
('WYN', 'Wyndham Arpt', 'WYN', 'Wyndham', 'AUSTRALIA', 'AU', '-100', '-15.5117', '128.1533', 1, 'true', 0),
('WYS', 'West Yellowstone Arpt', 'WYS', 'West Yellowstone', 'UNITED STATES', 'US', '-7', '44.688333', '-111.1175', 1, 'true', 0),
('XAL', 'Alamos Arpt', 'XAL', 'Alamos', 'MEXICO', 'MX', '-100', '0', '0', 1, 'true', 0),
('XAP', 'Chapeco Arpt', 'XAP', 'Chapeco', 'BRAZIL', 'BR', '-3', '-27.134219', '-52.656553', 1, 'true', 0),
('XAW', 'Capreol Rail Station', 'XAW', 'Capreol', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XAZ', 'Campbellton Rail Station', 'XAZ', 'Campbellton', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XBR', 'Brockville Arpt', 'XBR', 'Brockville', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XBW', 'Killineq Arpt', 'XBW', 'Killineq', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XCH', 'Christmas Island Arpt', 'XCH', 'Christmas Island', 'CHRISTMAS ISLAND', 'CX', '7', '-10.450556', '105.690278', 1, 'true', 0),
('XCI', 'Chambord Rail Station', 'XCI', 'Chambord', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XCM', 'Chatham Airport', 'XCM', 'Chatham', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XCO', 'Colac Arpt', 'XCO', 'Colac', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('XDK', 'Dunkerque Arpt', 'XDK', 'Dunkerque', 'FRANCE', 'FR', '-100', '0', '0', 1, 'true', 0),
('XDL', 'Chandler Rail Station', 'XDL', 'Chandler', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XDM', 'Drummondville Rail Station', 'XDM', 'Drummondville', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XDO', 'Grande-Riviere Rail Station', 'XDO', 'Grande Riviere', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XDU', 'Hervey Rail Station', 'XDU', 'Hervey', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XED', 'Railway Service', 'XED', 'Disneyland Paris Rail', 'FRANCE', 'FR', '-100', '0', '0', 1, 'true', 0),
('XEE', 'Lac Edouard Rail Station', 'XEE', 'Lac Edouard', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XEH', 'Ladysmith Rail Station', 'XEH', 'Ladysmith', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XEJ', 'Langford Rail Station', 'XEJ', 'Langford', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XEK', 'Melville Rail Station', 'XEK', 'Melville', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XEL', 'New Carlisle Rail Station', 'XEL', 'New Carlisle', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XEM', 'New Richmond Rail Station', 'XEM', 'New Richmond', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFD', 'Stratford Rail Station', 'XFD', 'Stratford', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFE', 'Parent Rail Station', 'XFE', 'Parent', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFG', 'Perce Rail Station', 'XFG', 'Perce', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFI', 'Port-Daniel Rail Station', 'XFI', 'Port Daniel', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFK', 'Senneterre Rail Station', 'XFK', 'Senneterre', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFL', 'Shawinigan Rail Station', 'XFL', 'Shawinigan', 'CANADA', 'CA', '-5', '29.2821', '-81.1212', 1, 'true', 0),
('XFM', 'Shawnigan Rail Station', 'XFM', 'Shawnigan', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFN', 'Xiangfan Arpt', 'XFN', 'Xiangfan', 'CHINA', 'CN', '8', '32.1506', '112.291', 1, 'true', 0),
('XFO', 'Taschereau Rail Station', 'XFO', 'Taschereau', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFQ', 'Weymont Rail Station', 'XFQ', 'Weymont', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFS', 'Alexandria Rail Station', 'XFS', 'Alexandria', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XFV', 'Brantford Rail Station', 'XFV', 'Brantford', 'CANADA', 'CA', '-100', '43.1314', '-80.3425', 1, 'true', 0),
('XGC', 'Lund C Rail Station', 'XGC', 'Lund C', 'SWEDEN', 'SE', '-100', '0', '0', 1, 'true', 0),
('XGJ', 'Cobourg Rail Station', 'XGJ', 'Cobourg', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XGK', 'Coteau Rail Station', 'XGK', 'Coteau', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XGR', 'Kangiqsualujjuaq Arpt', 'XGR', 'Kangiqsualujjuaq', 'CANADA', 'CA', '-5', '58.7114', '-65.9928', 1, 'true', 0),
('XGW', 'Gananoque Rail Station', 'XGW', 'Gananoque', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XGY', 'Grimsby Rail Station', 'XGY', 'Grimsby', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XHF', 'Honefoss Rail Station', 'XHF', 'Honefoss', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('XHM', 'Georgetown Rail Station', 'XHM', 'Georgetown', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XHQ', 'Hopa Artvin', 'XHQ', 'Hopa', 'TURKEY', 'TR', '2', '0', '0', 1, 'true', 0),
('XHS', 'Chemainus Rail Station', 'XHS', 'Chemainus', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XIA', 'Guelph Rail Station', 'XIA', 'Guelph', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XIB', 'Ingersoll Rail Station', 'XIB', 'Ingersoll', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XIC', 'Xichang Arpt', 'XIC', 'Xichang', 'CHINA', 'CN', '8', '27.989083', '102.184361', 1, 'true', 0),
('XID', 'Maxville Rail Station', 'XID', 'Maxville', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XIF', 'Napanee Rail Station', 'XIF', 'Napanee', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XII', 'Prescott Rail Station', 'XII', 'Prescott', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XIM', 'Saint Hyacinthe Rail Station', 'XIM', 'Saint Hyacinthe', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XIO', 'St Marys Rail Station', 'XIO', 'St Marys', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XIP', 'Woodstock Rail Station', 'XIP', 'Woodstock', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XJL', 'Joliette Rail Station', 'XJL', 'Joliette', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XJQ', 'Jonquiere Rail Station', 'XJQ', 'Jonquiere', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XKH', 'Xieng Khouang Arpt', 'XKH', 'Xieng Khouang', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LA', '7', '19.449997', '103.158333', 1, 'true', 0),
('XKJ', 'Steinkjer Rail Station', 'XKJ', 'Steinkjer', 'NORWAY', 'NO', '-100', '0', '0', 2, 'true', 0),
('XKG', 'Grong Rail Station', 'XKJ', 'Steinkjer', 'NORWAY', 'NO', '-100', '0', '0', 2, '', 0),
('XKV', 'Sackville Rail Station', 'XKV', 'Sackville', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XLP', 'Matapedia Rail Station', 'XLP', 'Matapedia', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XLV', 'Niagara Falls Rail Station', 'XLV', 'Niagara Falls', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XLY', 'Aldershot Rail Station', 'XLY', 'Aldershot', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XLZ', 'Truro Rail Station', 'XLZ', 'Truro', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XMB', 'M\'Bahiakro Arpt', 'XMB', 'M\'Bahiakro', 'COTE D\'IVOIRE', 'CI', '0', '7.45', '-4.333333', 1, 'true', 0),
('XMN', 'Xiamen Intl Airport', 'XMN', 'Xiamen', 'CHINA', 'CN', '8', '24.544036', '118.127739', 1, 'true', 0),
('XMY', 'Yam Island Arpt', 'XMY', 'Yam Island', 'AUSTRALIA', 'AU', '10', '-9.90111', '142.776', 1, 'true', 0),
('XNM', 'Nottingham Rail Station', 'XNM', 'Nottingham', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XNN', 'Xining Arpt', 'XNN', 'Xining', 'CHINA', 'CN', '8', '36.5275', '102.043', 1, 'true', 0),
('XNT', 'Xingtai Airport', 'XNT', 'Xingtai', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('XOK', 'Oakville Rail Station', 'XOK', 'Oakville', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XON', 'Carleton Rail Station', 'XON', 'Carleton', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XOR', 'Otta Rail Station', 'XOR', 'Otta', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('XPB', 'Parksville Rail Station', 'XPB', 'Parksville', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XPH', 'Port Hope Rail Station', 'XPH', 'Port Hope', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XPK', 'Pukatawagan Rail Station', 'XPK', 'Pukatawagan', 'CANADA', 'CA', '-100', '55.7489', '-101.2664', 1, 'true', 0),
('XPL', 'Palmerola Air Base', 'XPL', 'Comayagua', 'HONDURAS', 'HN', '-100', '0', '0', 1, 'true', 0),
('XPN', 'Brampton Rail Station', 'XPN', 'Brampton', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XPT', 'Preston Rail Station', 'XPT', 'Preston', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XPX', 'Pointe-aux-Trembles Rail Station', 'XPX', 'Pointe Aux Trembles', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XQG', 'Berwick Rail Station', 'XQG', 'Berwick Upon Tweed', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XQP', 'Quepos Arpt', 'XQP', 'Quepos', 'COSTA RICA', 'CR', '-6', '9.443164', '-84.129772', 1, 'true', 0),
('XQU', 'Qualicum Arpt', 'XQU', 'Qualicum', 'CANADA', 'CA', '-8', '49.337222', '-124.393889', 1, 'true', 0),
('XRD', 'Rail Station Egersund', 'XRD', 'Egersund', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('XRG', 'Rugeley Rail Station', 'XRG', 'Rugeley', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XRP', 'Pine Ridge Rail Station', 'XRP', 'Riviere A Pierre', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XRU', 'Rugby Rail Station', 'XRU', 'Rugby', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XRY', 'La Parra Arpt', 'XRY', 'Jerez De La Frontera', 'SPAIN', 'ES', '1', '36.744622', '-6.060111', 1, 'true', 0),
('XSC', 'South Caicos Intl Arpt', 'XSC', 'South Caicos', 'TURKS AND CAICOS ISLANDS', 'TC', '-5', '21.515739', '-71.528528', 1, 'true', 0),
('XSR', 'Salisbury Rail Station', 'XSR', 'Salisbury', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XSS', 'Soissons Railway Station', 'XSS', 'Soissons', 'FRANCE', 'FR', '-100', '0', '0', 1, 'true', 0),
('XTG', 'Thargomindah Arpt', 'XTG', 'Thargomindah', 'AUSTRALIA', 'AU', '10', '-27.9864', '143.811', 1, 'true', 0),
('XTY', 'Strathroy Rail Station', 'XTY', 'Strathroy', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XUG', 'Holmestrand Railway', 'XUG', 'Holmestrand', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('XUZ', 'Xuzhou Arpt', 'XUZ', 'Xuzhou', 'CHINA', 'CN', '8', '34.16', '117.11', 1, 'true', 0),
('XVA', 'Stockport Rail Station', 'XVA', 'Stockport', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XVH', 'Peterborough Rail Station', 'XVH', 'Peterborough', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XVJ', 'Stevenage Rail Station', 'XVJ', 'Stevenage', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XVV', 'Belleville Rail Station', 'XVV', 'Belleville', 'CANADA', 'CA', '-5', '44.1793', '-77.3747', 1, 'true', 0),
('XVW', 'Belleville Rail Station', 'XVW', 'Wolverhampton', 'UNITED KINGDOM', 'GB', '-100', '52.5175', '-2.2594', 1, 'true', 0),
('XWA', 'Watford Rail Station', 'XWA', 'Watford', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XWD', 'Wakefield Westgate Rail Station', 'XWD', 'Wakefield Westgate', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XWF', 'Falun Railway Service', 'XWF', 'Falun', 'SWEDEN', 'SE', '-100', '0', '0', 2, 'true', 0),
('XJF', 'Falun Bus Service', 'XWF', 'Falun', 'SWEDEN', 'SE', '-100', '0', '0', 2, '', 0),
('XWH', 'Stroke on Trent Rail Station', 'XWH', 'Stoke On Trent', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('XWV', 'Varberg Rail Station', 'XWV', 'Varberg', 'SWEDEN', 'SE', '-100', '0', '0', 1, 'true', 0),
('XWY', 'Wyoming Rail Station', 'XWY', 'Wyoming', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XXA', 'Alvesta Railway Service', 'XXA', 'Alvesta', 'SWEDEN', 'SE', '-100', '0', '0', 1, 'true', 0),
('XXD', 'Degerfors Rail Station', 'XXD', 'Degerfors', 'SWEDEN', 'SE', '-100', '0', '0', 1, 'true', 0),
('XXL', 'Lillehammer Rail Station', 'XXL', 'Lille Hammer', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('XXM', 'Mjolby Rail Station', 'XXM', 'Mjolby', 'SWEDEN', 'SE', '-100', '0', '0', 1, 'true', 0),
('XYN', 'Kristinehamn Rail Station', 'XYN', 'Kristinehamn', 'SWEDEN', 'SE', '-100', '0', '0', 1, 'true', 0),
('XYP', 'Railway Service', 'XYP', 'Avesta Krylbo', 'SWEDEN', 'SE', '-100', '0', '0', 1, 'true', 0),
('XYY', 'Arvika Rail Station', 'XYY', 'Arvika', 'SWEDEN', 'SE', '-100', '0', '0', 1, 'true', 0),
('XYZ', 'Harnosand Rail Station', 'XYZ', 'Harnosand', 'SWEDEN', 'SE', '-100', '0', '0', 1, 'true', 0),
('XZB', 'Casselman Rail Station', 'XZB', 'Casselman', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XZC', 'Glencoe Rail Station', 'XZC', 'Glencoe', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XZD', 'Kongsvinger Rail Station', 'XZD', 'Kongsvinger', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('XZJ', 'Off Line Point', 'XZJ', 'Rail', 'JAPAN', 'JP', '-100', '0', '0', 1, 'true', 0),
('XZK', 'Amherst Rail Station', 'XZK', 'Amherst', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('XZP', 'Off Line Point', 'XZP', 'Pass', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YAG', 'Fort Frances Municipal', 'YAG', 'Fort Frances', 'CANADA', 'CA', '-6', '48.6542', '-93.4397', 1, 'true', 0),
('YAK', 'Yakutat Arpt', 'YAK', 'Yakutat', 'UNITED STATES', 'US', '-9', '59.3012', '-139.3937', 1, 'true', 0),
('YAM', 'Sault Ste Marie Arpt', 'YAM', 'Sault Ste Marie', 'CANADA', 'CA', '-5', '46.485001', '-84.509445', 1, 'true', 0),
('NSI', 'Nsimalen Arpt', 'YAO', 'Yaounde', 'CAMEROON', 'CM', '1', '3.722556', '11.553269', 2, '', 0),
('YAO', 'Yaounde Airport', 'YAO', 'Yaounde', 'CAMEROON', 'CM', '1', '3.836039', '11.523461', 2, 'true', 0),
('YAP', 'Yap Arpt', 'YAP', 'Yap Fm', 'MICRONESIA, FEDERATED STATES OF', 'FM', '10', '9.498911', '138.082497', 1, 'true', 0),
('YAT', 'Attawapiskat Arpt', 'YAT', 'Attawapiskat', 'CANADA', 'CA', '-5', '52.9275', '-82.4319', 1, 'true', 0),
('YAY', 'St Anthony Arpt', 'YAY', 'St Anthony', 'CANADA', 'CA', '-4', '51.391944', '-56.083056', 1, 'true', 0),
('YAZ', 'Tofino Arpt', 'YAZ', 'Tofino', 'CANADA', 'CA', '-8', '49.082222', '-125.7725', 1, 'true', 0),
('YBA', 'Banff Arpt', 'YBA', 'Banff', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YBB', 'Kugaaruk Arpt', 'YBB', 'Pelly Bay', 'CANADA', 'CA', '-6', '68.534444', '-89.808056', 1, 'true', 0),
('YBC', 'Baie Comeau Arpt', 'YBC', 'Baie Comeau', 'CANADA', 'CA', '-5', '49.1325', '-68.204444', 1, 'true', 0),
('YBD', 'New Westminster Rail Station', 'YBD', 'New Westminster', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YBG', 'Bagotville Arpt', 'YBG', 'Bagotville', 'CANADA', 'CA', '-5', '48.330555', '-70.996391', 1, 'true', 0),
('YBK', 'Baker Lake Arpt', 'YBK', 'Baker Lake', 'CANADA', 'CA', '-6', '64.298889', '-96.077778', 1, 'true', 0),
('YBL', 'Campbell River Municipal', 'YBL', 'Campbell River', 'CANADA', 'CA', '-8', '49.950832', '-125.270833', 2, 'true', 0),
('YHH', 'Harbor Airport', 'YBL', 'Campbell River', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YBP', 'Yibin Airport', 'YBP', 'Yibin', 'CHINA', 'CN', '8', '28.800278', '104.544444', 1, 'true', 0),
('YBR', 'Brandon Municipal Arpt', 'YBR', 'Brandon', 'CANADA', 'CA', '-6', '49.91', '-99.951944', 1, 'true', 0),
('YBW', 'Bedwell Harbor Arpt', 'YBW', 'Bedwell Harbor', 'CANADA', 'CA', '-7', '51.1031', '-114.374', 1, 'true', 0),
('YBX', 'Blanc Sablon Arpt', 'YBX', 'Blanc Sablon', 'CANADA', 'CA', '-4', '51.4436', '-57.1853', 1, 'true', 0),
('YCA', 'Courtenay Rail Station', 'YCA', 'Courtenay', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YCB', 'Cambridge Bay Arpt', 'YCB', 'Cambridge Bay', 'CANADA', 'CA', '-7', '69.108055', '-105.138333', 1, 'true', 0),
('YCC', 'Cornwall Regional Arpt', 'YCC', 'Cornwall', 'CANADA', 'CA', '-5', '45.092778', '-74.567778', 1, 'true', 0),
('ZNA', 'Harbour Seaplane Base', 'YCD', 'Nanaimo', 'CANADA', 'CA', '-8', '49.183333', '-123.95', 2, '', 0),
('YCD', 'Nanaimo Arpt', 'YCD', 'Nanaimo', 'CANADA', 'CA', '-8', '49.052333', '-123.870167', 2, 'true', 0),
('YCG', 'Ralph West Arpt', 'YCG', 'Castlegar', 'CANADA', 'CA', '-8', '49.296389', '-117.6325', 1, 'true', 0),
('XEY', 'Newcastle Rail Station', 'YCH', 'Miramichi', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YCH', 'Miramichi Arpt', 'YCH', 'Miramichi', 'CANADA', 'CA', '-4', '47.007778', '-65.449167', 2, 'true', 0),
('YCK', 'Colville Municipal', 'YCK', 'Colville', 'CANADA', 'CA', '-7', '67.0333', '-126.083', 1, 'true', 0),
('YCL', 'Charlo Municipal Arpt', 'YCL', 'Charlo', 'CANADA', 'CA', '-4', '47.990833', '-66.330278', 1, 'true', 0),
('YCM', 'St Catharines Rail Station', 'YCM', 'St Catherines', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YCN', 'Cochrane Rail Station', 'YCN', 'Cochrane', 'CANADA', 'CA', '-100', '49.1056', '-81.0136', 1, 'true', 0),
('YCO', 'Kugluktuk Arpt', 'YCO', 'Kugluktuk Coppermine', 'CANADA', 'CA', '-7', '67.816667', '-115.143889', 1, 'true', 0),
('YCS', 'Chesterfield Inlet Arpt', 'YCS', 'Chesterfield Inlet', 'CANADA', 'CA', '-6', '63.3469', '-90.7311', 1, 'true', 0),
('YCU', 'Yun Cheng Arpt', 'YCU', 'Yun Cheng', 'CHINA', 'CN', '8', '35.018', '110.993', 1, 'true', 0),
('YCW', 'Chilliwack Arpt', 'YCW', 'Chilliwack', 'CANADA', 'CA', '-8', '49.152779', '-121.93889', 1, 'true', 0),
('YCY', 'Clyde River', 'YCY', 'Clyde River', 'CANADA', 'CA', '-5', '70.486111', '-68.516667', 1, 'true', 0),
('YCZ', 'Fairmont Springs Arpt', 'YCZ', 'Fairmont Springs', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YDA', 'Dawson City Arpt', 'YDA', 'Dawson City', 'CANADA', 'CA', '-8', '64.043056', '-139.127778', 1, 'true', 0),
('YDF', 'Deer Lake Municipal', 'YDF', 'Deer Lake', 'CANADA', 'CA', '-4', '49.210833', '-57.391388', 1, 'true', 0),
('YDL', 'Dease Lake Arpt', 'YDL', 'Dease Lake', 'CANADA', 'CA', '-8', '58.422222', '-130.032222', 1, 'true', 0),
('YDN', 'Dauphin Rail Station', 'YDN', 'Dauphin', 'CANADA', 'CA', '-6', '51.100834', '-100.0525', 1, 'true', 0),
('YDP', 'Nain Arpt', 'YDP', 'Nain', 'CANADA', 'CA', '-4', '56.5492', '-61.6803', 1, 'true', 0),
('YDQ', 'Dawson Creek Arpt', 'YDQ', 'Dawson Creek', 'CANADA', 'CA', '-7', '55.742333', '-120.183', 1, 'true', 0),
('YXD', 'Edmonton Municipal Arpt', 'YEA', 'Edmonton', 'CANADA', 'CA', '-7', '53.5725', '-113.520556', 4, '', 0),
('YED', 'Namao Field', 'YEA', 'Edmonton', 'CANADA', 'CA', '-100', '0', '0', 4, '', 0),
('YEG', 'Edmonton Intl Arpt', 'YEA', 'Edmonton', 'CANADA', 'CA', '-7', '53.309723', '-113.579722', 4, '', 0),
('XZL', 'Edmonton Rail Station', 'YEA', 'Edmonton', 'CANADA', 'CA', '-7', '53.5789', '-113.5307', 4, '', 0),
('YEB', 'Bar River Arpt', 'YEB', 'Bar River', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YEH', 'Asaloyeh Arpt', 'YEH', 'Asaloyeh', 'IRAN', 'IR', '-100', '0', '0', 1, 'true', 0),
('YEK', 'Arviat Arpt', 'YEK', 'Arviat', 'CANADA', 'CA', '-6', '61.094166', '-94.070833', 1, 'true', 0),
('YEL', 'Elliot Lake Arpt', 'YEL', 'Elliot Lake', 'CANADA', 'CA', '-100', '46.3514', '-82.5614', 1, 'true', 0),
('YEN', 'Estevan Arpt', 'YEN', 'Estevan', 'CANADA', 'CA', '-6', '49.210278', '-102.965833', 1, 'true', 0),
('YER', 'Fort Severn Arpt', 'YER', 'Fort Severn', 'CANADA', 'CA', '-5', '56.0189', '-87.6761', 1, 'true', 0),
('YET', 'Edson Arpt', 'YET', 'Edson', 'CANADA', 'CA', '-7', '53.578888', '-116.465', 1, 'true', 0),
('YEV', 'Inuvik Mike Zubko Arpt', 'YEV', 'Inuvik', 'CANADA', 'CA', '-7', '68.304167', '-133.482778', 1, 'true', 0),
('YEY', 'Amos Rail Station', 'YEY', 'Amos', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YFB', 'Iqaluit Arpt', 'YFB', 'Iqaluit', 'CANADA', 'CA', '-5', '63.75639', '-68.555832', 1, 'true', 0),
('YFC', 'Fredericton Municipal', 'YFC', 'Fredericton', 'CANADA', 'CA', '-4', '45.868889', '-66.537222', 1, 'true', 0),
('YFO', 'Flin Flon Municipal Arpt', 'YFO', 'Flin Flon', 'CANADA', 'CA', '-6', '54.678055', '-101.681667', 1, 'true', 0),
('YFX', 'Fox Harbour Arpt', 'YFX', 'Fox Harbour', 'CANADA', 'CA', '-4', '52.3728', '-55.6739', 1, 'true', 0),
('YGJ', 'Miho Arpt', 'YGJ', 'Yonago', 'JAPAN', 'JP', '9', '35.492222', '133.236389', 1, 'true', 0),
('YGK', 'Norman Rodgers Arpt', 'YGK', 'Kingston', 'CANADA', 'CA', '-5', '44.225277', '-76.596944', 2, 'true', 0),
('XEG', 'Kingston Rail Station', 'YGK', 'Kingston', 'CANADA', 'CA', '-5', '44.256944', '-76.536943', 2, '', 0),
('YGL', 'La Grande Municipal Arpt', 'YGL', 'La Grande', 'CANADA', 'CA', '-5', '53.625278', '-77.704167', 1, 'true', 0),
('YGP', 'Gaspe Municipal Arpt', 'YGP', 'Gaspe', 'CANADA', 'CA', '-5', '48.775278', '-64.478611', 2, 'true', 0),
('XDD', 'Gaspe Rail Station', 'YGP', 'Gaspe', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YGR', 'House Harbour Arpt', 'YGR', 'Iles De Madeleine', 'CANADA', 'CA', '-4', '47.424721', '-61.778056', 1, 'true', 0),
('YGT', 'Igloolik Arpt', 'YGT', 'Igloolik', 'CANADA', 'CA', '-5', '69.3647', '-81.8161', 1, 'true', 0),
('YGV', 'Havre St Pierre Municipal Arpt', 'YGV', 'Havre St Pierre', 'CANADA', 'CA', '-4', '50.281944', '-63.611389', 1, 'true', 0),
('YGW', 'Kuujjuaraapik Arpt', 'YGW', 'Poste De La Baleine', 'CANADA', 'CA', '-5', '55.2819', '-77.7653', 1, 'true', 0),
('YGX', 'Gillam Rail Station', 'YGX', 'Gillam', 'CANADA', 'CA', '-6', '56.3575', '-94.7106', 1, 'true', 0),
('YHA', 'Port Hope Simpson Arpt', 'YHA', 'Port Hope Simpson', 'CANADA', 'CA', '-4', '52.5281', '-56.2861', 1, 'true', 0),
('YHB', 'Hudson Bay Rail Station', 'YHB', 'Hudson Bay', 'CANADA', 'CA', '-6', '52.816666', '-102.31139', 1, 'true', 0),
('YHD', 'Dryden Municipal', 'YHD', 'Dryden', 'CANADA', 'CA', '-6', '49.831667', '-92.744167', 1, 'true', 0),
('YHE', 'Hope Arpt', 'YHE', 'Hope', 'CANADA', 'CA', '-100', '49.3667', '-121.4833', 1, 'true', 0),
('YHF', 'Hearst Municipal Arpt', 'YHF', 'Hearst', 'CANADA', 'CA', '-5', '49.713889', '-83.686944', 1, 'true', 0),
('YHG', 'Charlottetown Municipal Arpt', 'YHG', 'Charlottetown', 'CANADA', 'CA', '-100', '52.7647', '-56.1094', 1, 'true', 0),
('YHK', 'Gjoa Haven Arpt', 'YHK', 'Gjoa Haven', 'CANADA', 'CA', '-6', '68.635556', '-95.849722', 1, 'true', 0),
('YHM', 'Civic Airport', 'YHM', 'Hamilton', 'CANADA', 'CA', '-5', '43.173611', '-79.935', 1, 'true', 0),
('YHN', 'Hornepayne Rail Station', 'YHN', 'Hornepayne', 'CANADA', 'CA', '-5', '49.193056', '-84.758889', 1, 'true', 0),
('YHO', 'Hopedale Arpt', 'YHO', 'Hopedale', 'CANADA', 'CA', '-4', '55.4483', '-60.2286', 1, 'true', 0),
('YHR', 'Chevery Arpt', 'YHR', 'Chevery', 'CANADA', 'CA', '-4', '50.4689', '-59.6367', 1, 'true', 0),
('YHS', 'Sechelt Arpt', 'YHS', 'Sechelt', 'CANADA', 'CA', '-8', '49.460556', '-123.718611', 1, 'true', 0),
('YHY', 'Hay River Municipal Arpt', 'YHY', 'Hay River', 'CANADA', 'CA', '-7', '60.839722', '-115.782778', 1, 'true', 0),
('YHZ', 'Halifax Intl', 'YHZ', 'Halifax', 'CANADA', 'CA', '-4', '44.880833', '-63.50861', 2, 'true', 0),
('XDG', 'Halifax Rail Station', 'YHZ', 'Halifax', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YIB', 'Atikokan Municipal Arpt', 'YIB', 'Atikokan', 'CANADA', 'CA', '-6', '48.773888', '-91.638611', 1, 'true', 0),
('YIF', 'Pakuashipi Arpt', 'YIF', 'Pakuashipi', 'CANADA', 'CA', '-4', '51.2117', '-58.6583', 1, 'true', 0),
('YIH', 'Yichang Arpt', 'YIH', 'Yichang', 'CHINA', 'CN', '8', '30.671', '111.441', 1, 'true', 0),
('YIK', 'Ivujivik Arpt', 'YIK', 'Ivujivik', 'CANADA', 'CA', '-5', '62.4173', '-77.9253', 1, 'true', 0),
('YIO', 'Pond Inlet Arpt', 'YIO', 'Pond Inlet', 'CANADA', 'CA', '-5', '72.683334', '-77.966667', 1, 'true', 0),
('YIW', 'Yiwu Arpt', 'YIW', 'Yiwu', 'CHINA', 'CN', '8', '29.3447', '120.032', 1, 'true', 0),
('YJA', 'Jasper Airport', 'YJA', 'Jasper', 'CANADA', 'CA', '-100', '0', '0', 2, 'true', 0),
('XDH', 'Jasper Rail Station', 'YJA', 'Jasper', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YJT', 'Stephenville Municipal', 'YJT', 'Stephenville', 'CANADA', 'CA', '-4', '48.544167', '-58.549999', 1, 'true', 0);
INSERT INTO `airports` (`code`, `name`, `cityCode`, `cityName`, `countryName`, `countryCode`, `timezone`, `lat`, `lon`, `numAirports`, `city`, `obs`) VALUES
('YKA', 'Davie Fulton Arpt', 'YKA', 'Kamloops', 'CANADA', 'CA', '-8', '50.702222', '-120.444444', 1, 'true', 0),
('YKF', 'Kitchener Waterloo Regional', 'YKF', 'Kitchener', 'CANADA', 'CA', '-5', '43.460833', '-80.378611', 1, 'true', 0),
('YKG', 'Kangirsuk Arpt', 'YKG', 'Kangirsuk', 'CANADA', 'CA', '-5', '60.0272', '-69.9992', 1, 'true', 0),
('YKL', 'Schefferville Arpt', 'YKL', 'Schefferville', 'CANADA', 'CA', '-4', '54.805278', '-66.805278', 1, 'true', 0),
('YKM', 'Yakima Terminal Arpt', 'YKM', 'Yakima', 'UNITED STATES', 'US', '-8', '46.5682', '-120.544', 1, 'true', 0),
('YKN', 'Chan Gurney Municipal', 'YKN', 'Yankton', 'UNITED STATES', 'US', '-100', '0', '0', 1, 'true', 0),
('YKQ', 'Waskaganish Arpt', 'YKQ', 'Waskaganish', 'CANADA', 'CA', '-5', '51.4733', '-78.7583', 1, 'true', 0),
('YKS', 'Yakutsk Arpt', 'YKS', 'Yakutsk', 'RUSSIA', 'RU', '10', '62.09325', '129.770672', 1, 'true', 0),
('YKU', 'Chisasibi Arpt', 'YKU', 'Chisasibi', 'CANADA', 'CA', '-5', '53.8056', '-78.9169', 1, 'true', 0),
('YKX', 'Kirkland Lake Municipal Arpt', 'YKX', 'Kirkland', 'CANADA', 'CA', '-5', '48.210278', '-79.981389', 1, 'true', 0),
('YLC', 'Kimmirut Lake Harbour Arpt', 'YLC', 'Kimmirut Lake Harbour', 'CANADA', 'CA', '-5', '62.85', '-69.8833', 1, 'true', 0),
('YLD', 'Chapleau Rail Station', 'YLD', 'Chapleau', 'CANADA', 'CA', '-5', '47.82', '-83.346667', 1, 'true', 0),
('YLI', 'Ylivieska Arpt', 'YLI', 'Ylivieska', 'FINLAND', 'FI', '-100', '64.0547', '24.7253', 1, 'true', 0),
('YLJ', 'Meadow Lake Arpt', 'YLJ', 'Meadow Lake', 'CANADA', 'CA', '-6', '54.125278', '-108.522778', 1, 'true', 0),
('YLL', 'Lloydminster Arpt', 'YLL', 'Lloydminster', 'CANADA', 'CA', '-6', '53.309166', '-110.0725', 1, 'true', 0),
('YLQ', 'La Tuque Rail Station', 'YLQ', 'La Tuque', 'CANADA', 'CA', '-100', '47.4097', '-72.7889', 1, 'true', 0),
('YLW', 'Ellison Field', 'YLW', 'Kelowna', 'CANADA', 'CA', '-8', '49.956112', '-119.377778', 1, 'true', 0),
('YLY', 'Langley Regional Arpt', 'YLY', 'Langley', 'CANADA', 'CA', '-100', '49.1008', '-122.6308', 1, 'true', 0),
('YMB', 'Merritt Arpt', 'YMB', 'Merritt', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YME', 'Matane Airport', 'YME', 'Matane', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YMG', 'Manitouwadge Municipal Arpt', 'YMG', 'Manitouwadge', 'CANADA', 'CA', '-5', '49.083889', '-85.860556', 1, 'true', 0),
('YMH', 'Marys Harbour Arpt', 'YMH', 'Marys Harbour', 'CANADA', 'CA', '-4', '52.3028', '-55.8472', 1, 'true', 0),
('YMI', 'Minaki Rail Station', 'YMI', 'Minaki', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YMM', 'Ft McMurray Municipal Arpt', 'YMM', 'Ft McMurray', 'CANADA', 'CA', '-7', '56.653333', '-111.221944', 1, 'true', 0),
('YMN', 'Makkovik Arpt', 'YMN', 'Makkovik', 'CANADA', 'CA', '-4', '55.0769', '-59.1864', 1, 'true', 0),
('YMO', 'Moosonee Arpt', 'YMO', 'Moosonee', 'CANADA', 'CA', '-5', '51.291111', '-80.607778', 1, 'true', 0),
('XLM', 'Saint Lambert Rail Station', 'YMQ', 'Montreal', 'CANADA', 'CA', '-100', '0', '0', 6, '', 0),
('YMX', 'Mirabel Intl Arpt', 'YMQ', 'Montreal', 'CANADA', 'CA', '-5', '45.681944', '-74.005278', 6, '', 0),
('YMY', 'Montreal Downtown Rail Station', 'YMQ', 'Montreal', 'CANADA', 'CA', '-5', '45.499722', '-73.566111', 6, '', 0),
('YHU', 'St Hubert Arpt', 'YMQ', 'Montreal', 'CANADA', 'CA', '-5', '45.5175', '-73.416944', 6, '', 0),
('XAX', 'Dorval Rail Station', 'YMQ', 'Montreal', 'CANADA', 'CA', '-5', '45.448611', '-73.74111', 6, '', 0),
('YUL', 'Pierre Elliott Trudeau Intl Arpt', 'YMQ', 'Montreal', 'CANADA', 'CA', '-5', '45.470556', '-73.740833', 6, '', 0),
('YMT', 'Chibougamau Arpt', 'YMT', 'Chibougamau', 'CANADA', 'CA', '-5', '49.7719', '-74.5281', 1, 'true', 0),
('YNA', 'Natashquan Arpt', 'YNA', 'Natashquan', 'CANADA', 'CA', '-4', '50.19', '-61.789167', 1, 'true', 0),
('YNB', 'Yanbo Arpt', 'YNB', 'Yanbo', 'SAUDI ARABIA', 'SA', '3', '24.144244', '38.06335', 1, 'true', 0),
('YND', 'Gatineau Hull Municipal Arpt', 'YND', 'Gatineau Hull', 'CANADA', 'CA', '-5', '45.521694', '-75.563589', 1, 'true', 0),
('YNG', 'Youngstown Municipal', 'YNG', 'Youngstown', 'UNITED STATES', 'US', '-5', '41.260736', '-80.679097', 1, 'true', 0),
('YNJ', 'Yanji Arpt', 'YNJ', 'Yanji', 'CHINA', 'CN', '8', '42.8828', '129.451258', 1, 'true', 0),
('YNN', 'Yandi Arpt', 'YNN', 'Yandicoogina', 'AUSTRALIA', 'AU', '-100', '0', '0', 1, 'true', 0),
('YNP', 'Natuashish Arpt', 'YNP', 'Natuashish', 'CANADA', 'CA', '-100', '55.9128', '-61.1853', 1, 'true', 0),
('YNT', 'Laishan Arpt', 'YNT', 'Yantai', 'CHINA', 'CN', '8', '37.401667', '121.371667', 1, 'true', 0),
('YNZ', 'Yancheng Arpt', 'YNZ', 'Yancheng', 'CHINA', 'CN', '8', '33.3856', '120.125', 1, 'true', 0),
('YOD', 'Cold Lake Arpt', 'YOD', 'Cold Lake', 'CANADA', 'CA', '-7', '54.404999', '-110.279444', 1, 'true', 0),
('YOJ', 'Footner Lake Arpt', 'YOJ', 'High Level', 'CANADA', 'CA', '-7', '58.621389', '-117.164722', 1, 'true', 0),
('YOO', 'Oshawa Municipal Arpt', 'YOO', 'Oshawa', 'CANADA', 'CA', '-5', '43.9228', '-78.895', 1, 'true', 0),
('YOP', 'Rainbow Lake Arpt', 'YOP', 'Rainbow Lake', 'CANADA', 'CA', '-7', '58.491389', '-119.407778', 1, 'true', 0),
('YOS', 'Billy Bishop Regional Arpt', 'YOS', 'Owen Sound', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YOT', 'Yotvata Arpt', 'YOT', 'Yotvata', 'ISRAEL', 'IL', '-100', '0', '0', 1, 'true', 0),
('YOW', 'Ottawa Intl Arpt', 'YOW', 'Ottawa', 'CANADA', 'CA', '-5', '45.3225', '-75.669167', 2, 'true', 0),
('XDS', 'Ottawa Rail Station', 'YOW', 'Ottawa', 'CANADA', 'CA', '-5', '45.4164', '-75.6517', 2, '', 0),
('YPA', 'Prince Albert Municipal Arpt', 'YPA', 'Prince Albert', 'CANADA', 'CA', '-6', '53.214167', '-105.672778', 1, 'true', 0),
('YPB', 'Port Alberni Arpt', 'YPB', 'Port Alberni', 'CANADA', 'CA', '-100', '49.267', '-124.833', 1, 'true', 0),
('YPD', 'Parry Sound Municipal Arpt', 'YPD', 'Parry Sound', 'CANADA', 'CA', '-100', '70.1678', '-124.6914', 1, 'true', 0),
('YPE', 'Municipal Peace River', 'YPE', 'Peace River', 'CANADA', 'CA', '-7', '56.226944', '-117.447222', 1, 'true', 0),
('YPF', 'Esquimalt Rail Station', 'YPF', 'Esquimalt', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YPG', 'Portage La Prairie Rail Station', 'YPG', 'Portage La Prairie', 'CANADA', 'CA', '-6', '49.903056', '-98.273889', 1, 'true', 0),
('YPH', 'Inukjuak Arpt', 'YPH', 'Inukjuak', 'CANADA', 'CA', '-5', '58.4719', '-78.0769', 1, 'true', 0),
('YPJ', 'Aupaluk Arpt', 'YPJ', 'Aupaluk', 'CANADA', 'CA', '-5', '59.2967', '-69.5997', 1, 'true', 0),
('YPL', 'Pickle Lake Arpt', 'YPL', 'Pickle Lake', 'CANADA', 'CA', '-6', '51.446388', '-90.214167', 1, 'true', 0),
('YPM', 'Pikangikum Arpt', 'YPM', 'St Pierre', 'CANADA', 'CA', '-6', '51.8197', '-93.9733', 1, 'true', 0),
('YPN', 'Port Menier Arpt', 'YPN', 'Port Menier', 'CANADA', 'CA', '-5', '49.836389', '-64.288611', 1, 'true', 0),
('YPQ', 'Peterborough Arpt', 'YPQ', 'Peterborough', 'CANADA', 'CA', '-5', '44.23', '-78.363333', 1, 'true', 0),
('YPR', 'Digby Island Arpt', 'YPR', 'Prince Rupert', 'CANADA', 'CA', '-8', '54.28611', '-130.444722', 3, 'true', 0),
('XDW', 'Prince Rupert Rail Station', 'YPR', 'Prince Rupert', 'CANADA', 'CA', '-100', '0', '0', 3, '', 0),
('ZSW', 'Seal Cove Arpt', 'YPR', 'Prince Rupert', 'CANADA', 'CA', '-8', '54.3333', '-130.283', 3, '', 0),
('YPS', 'Port Hawkesbury Arpt', 'YPS', 'Port Hawkesbury', 'CANADA', 'CA', '-100', '45.6567', '-61.3681', 1, 'true', 0),
('YPW', 'Westview Arpt', 'YPW', 'Powell River', 'CANADA', 'CA', '-8', '49.8342', '-124.5', 1, 'true', 0),
('YPX', 'Povungnituk Arpt', 'YPX', 'Puvirnituq', 'CANADA', 'CA', '-5', '60.0506', '-77.2869', 1, 'true', 0),
('YPZ', 'Burns Lake Rail Station', 'YPZ', 'Burns Lake', 'CANADA', 'CA', '-100', '54.3717', '-125.9514', 1, 'true', 0),
('YQA', 'Muskoka Arpt', 'YQA', 'Muskoka', 'CANADA', 'CA', '-5', '44.974722', '-79.303333', 1, 'true', 0),
('XLJ', 'Quebec City Rail Station', 'YQB', 'Quebec', 'CANADA', 'CA', '-100', '0', '0', 5, '', 0),
('XFZ', 'Charny Rail Station', 'YQB', 'Quebec', 'CANADA', 'CA', '-100', '0', '0', 5, '', 0),
('YQB', 'Quebec Intl', 'YQB', 'Quebec', 'CANADA', 'CA', '-5', '46.791111', '-71.393333', 5, 'true', 0),
('XFY', 'Sainte-Foy Rail Station', 'YQB', 'Quebec', 'CANADA', 'CA', '-100', '0', '0', 5, '', 0),
('XLK', 'Levis Rail Station', 'YQB', 'Quebec', 'CANADA', 'CA', '-100', '0', '0', 5, '', 0),
('YQC', 'Quaqtaq Arpt', 'YQC', 'Quaqtaq', 'CANADA', 'CA', '-5', '61.0464', '-69.6178', 1, 'true', 0),
('XDZ', 'The Pas Rail Station', 'YQD', 'The Pas', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YQD', 'The Pas Municipal Arpt', 'YQD', 'The Pas', 'CANADA', 'CA', '-6', '53.9714', '-101.091', 2, 'true', 0),
('XEC', 'Windsor Rail Station', 'YQG', 'Windsor', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YQG', 'Windsor Intl Arpt', 'YQG', 'Windsor', 'CANADA', 'CA', '-5', '42.275556', '-82.955556', 2, 'true', 0),
('YQH', 'Watson Lake Arpt', 'YQH', 'Watson Lake', 'CANADA', 'CA', '-8', '60.116389', '-128.8225', 1, 'true', 0),
('YQI', 'Municipal Yarmouth', 'YQI', 'Yarmouth', 'CANADA', 'CA', '-5', '43.8269', '-66.0881', 1, 'true', 0),
('YQK', 'Kenora Arpt', 'YQK', 'Kenora', 'CANADA', 'CA', '-6', '49.788334', '-94.363056', 1, 'true', 0),
('YQL', 'Lethbridge Arpt', 'YQL', 'Lethbridge', 'CANADA', 'CA', '-7', '49.630278', '-112.799722', 1, 'true', 0),
('YQM', 'Moncton Municipal', 'YQM', 'Moncton', 'CANADA', 'CA', '-4', '46.112221', '-64.678611', 2, 'true', 0),
('XDP', 'Moncton Rail Station', 'YQM', 'Moncton', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YQN', 'Nakina Rail Station', 'YQN', 'Nakina', 'CANADA', 'CA', '-5', '50.182777', '-86.696388', 1, 'true', 0),
('YQQ', 'Royal Canadian Air Force Station', 'YQQ', 'Comox', 'CANADA', 'CA', '-8', '49.710833', '-124.886667', 1, 'true', 0),
('YQR', 'Regina Municipal', 'YQR', 'Regina', 'CANADA', 'CA', '-6', '50.431944', '-104.665833', 2, 'true', 0),
('YMJ', 'Moose Jaw Arpt', 'YQR', 'Regina', 'CANADA', 'CA', '-6', '50.330278', '-105.559167', 2, '', 0),
('YQS', 'Pembroke Area Municipal Arpt', 'YQS', 'St Thomas', 'CANADA', 'CA', '-100', '42.77', '-81.1108', 1, 'true', 0),
('YQT', 'Thunder Bay Arpt', 'YQT', 'Thunder Bay', 'CANADA', 'CA', '-5', '48.371944', '-89.323889', 1, 'true', 0),
('YQU', 'Grande Prairie Arpt', 'YQU', 'Grande Prairie', 'CANADA', 'CA', '-7', '55.179722', '-118.885', 1, 'true', 0),
('YQV', 'Yorkton Airport', 'YQV', 'Yorkton', 'CANADA', 'CA', '-6', '51.264721', '-102.461667', 1, 'true', 0),
('YQW', 'North Battleford Arpt', 'YQW', 'North Battleford', 'CANADA', 'CA', '-6', '52.769167', '-108.24361', 1, 'true', 0),
('YQX', 'Gander International', 'YQX', 'Gander', 'CANADA', 'CA', '-4', '48.936944', '-54.568056', 1, 'true', 0),
('YQY', 'Sydney Airport', 'YQY', 'Sydney', 'CANADA', 'CA', '-4', '46.161388', '-60.047779', 1, 'true', 0),
('YQZ', 'Quesnel Arpt', 'YQZ', 'Quesnel', 'CANADA', 'CA', '-8', '53.026112', '-122.510278', 1, 'true', 0),
('YRB', 'Resolute Arpt', 'YRB', 'Resolute', 'CANADA', 'CA', '-6', '74.716944', '-94.969444', 1, 'true', 0),
('YRF', 'Cartwright Arpt', 'YRF', 'Cartwright', 'CANADA', 'CA', '-4', '53.6828', '-57.0419', 1, 'true', 0),
('YRG', 'Rigolet Arpt', 'YRG', 'Rigolet', 'CANADA', 'CA', '-4', '54.1797', '-58.4575', 1, 'true', 0),
('YRI', 'Riviere Du Loup Arpt', 'YRI', 'Riviere Du Loup', 'CANADA', 'CA', '-5', '47.764444', '-69.584722', 1, 'true', 0),
('YRJ', 'Roberval Airport', 'YRJ', 'Roberval', 'CANADA', 'CA', '-5', '48.52', '-72.265556', 1, 'true', 0),
('YRL', 'Federal Red Lake', 'YRL', 'Red Lake', 'CANADA', 'CA', '-6', '51.0669', '-93.7931', 1, 'true', 0),
('YRQ', 'Three Rivers Arpt', 'YRQ', 'Trois Rivieres', 'CANADA', 'CA', '-100', '46.3528', '-72.6794', 1, 'true', 0),
('YRT', 'Rankin Inlet Arpt', 'YRT', 'Rankin Inlet', 'CANADA', 'CA', '-6', '62.81139', '-92.115833', 1, 'true', 0),
('YSB', 'Sudbury Municipal Arpt', 'YSB', 'Sudbury', 'CANADA', 'CA', '-5', '46.625', '-80.798889', 2, 'true', 0),
('XDY', 'Sudbury Junction Rail Station', 'YSB', 'Sudbury', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YSC', 'Sherbrooke Airport', 'YSC', 'Sherbrooke', 'CANADA', 'CA', '-5', '45.438611', '-71.691389', 1, 'true', 0),
('YSH', 'Smith Falls Rail Station', 'YSH', 'Smith Falls', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YSJ', 'St John Municipal', 'YSJ', 'St John', 'CANADA', 'CA', '-4', '45.316111', '-65.890278', 1, 'true', 0),
('YSK', 'Sanikiluaq Arpt', 'YSK', 'Sanikiluaq', 'CANADA', 'CA', '-5', '56.5378', '-79.2467', 1, 'true', 0),
('YSL', 'Edmunston Arpt', 'YSL', 'St Leonard', 'CANADA', 'CA', '-100', '47.1575', '-67.8347', 1, 'true', 0),
('YSM', 'Ft Smith Municipal Arpt', 'YSM', 'Ft Smith', 'CANADA', 'CA', '-7', '60.020278', '-111.961944', 1, 'true', 0),
('YSN', 'Salmon Arm Municipal', 'YSN', 'Salmon Arm', 'CANADA', 'CA', '-100', '43.1917', '-79.1717', 1, 'true', 0),
('YSO', 'Postville Arpt', 'YSO', 'Postville', 'CANADA', 'CA', '-4', '54.910278', '-59.785278', 1, 'true', 0),
('YSP', 'Marathon Municipal Arpt', 'YSP', 'Marathon', 'CANADA', 'CA', '-5', '48.755278', '-86.344444', 1, 'true', 0),
('YST', 'St Therese Pt Municipal', 'YST', 'St Theris Point', 'CANADA', 'CA', '-6', '53.8456', '-94.8519', 1, 'true', 0),
('YTA', 'Pembroke And Area', 'YTA', 'Pembroke', 'CANADA', 'CA', '-5', '45.864399', '-77.251701', 1, 'true', 0),
('YTD', 'Thicket Portage Rail Station', 'YTD', 'Thicket Portage', 'CANADA', 'CA', '-100', '55.3189', '-97.7078', 1, 'true', 0),
('YTE', 'Cape Dorset Arpt', 'YTE', 'Cape Dorset', 'CANADA', 'CA', '-5', '64.23', '-76.526667', 1, 'true', 0),
('YTF', 'Alma Municipal Arpt', 'YTF', 'Alma', 'CANADA', 'CA', '-6', '48.508611', '-71.641389', 1, 'true', 0),
('YTH', 'Thompson Arpt', 'YTH', 'Thompson', 'CANADA', 'CA', '-6', '55.801111', '-97.864166', 1, 'true', 0),
('YTJ', 'Terrace Bay Municipal Arpt', 'YTJ', 'Terrace Bay', 'CANADA', 'CA', '-100', '48.8133', '-87.0994', 1, 'true', 0),
('YTL', 'Big Trout Arpt', 'YTL', 'Big Trout', 'CANADA', 'CA', '-5', '53.8178', '-89.8969', 1, 'true', 0),
('YTM', 'International Airport', 'YTM', 'Mont Tremblant', 'CANADA', 'CA', '-5', '46.409444', '-74.78', 1, 'true', 0),
('YBZ', 'Toronto Downtown Rail Station', 'YTO', 'Toronto', 'CANADA', 'CA', '-5', '43.645278', '-79.380556', 5, '', 0),
('YYZ', 'Lester B Pearson Intl', 'YTO', 'Toronto', 'CANADA', 'CA', '-5', '43.677223', '-79.630556', 5, '', 0),
('YTZ', 'Toronto City Centre Airport', 'YTO', 'Toronto', 'CANADA', 'CA', '-5', '43.627499', '-79.396167', 5, '', 0),
('YKZ', 'Buttonville Arpt', 'YTO', 'Toronto', 'CANADA', 'CA', '-5', '43.862221', '-79.37', 5, '', 0),
('XLQ', 'Guildwood Rail Station', 'YTO', 'Toronto', 'CANADA', 'CA', '-100', '0', '0', 5, '', 0),
('YTQ', 'Tasiujaq Arpt', 'YTQ', 'Tasiujaq', 'CANADA', 'CA', '-5', '58.6678', '-69.9558', 1, 'true', 0),
('YTR', 'Trenton Municipal Arpt', 'YTR', 'Trenton', 'CANADA', 'CA', '-5', '44.118889', '-77.528056', 1, 'true', 0),
('YTS', 'Timmins Municipal Arpt', 'YTS', 'Timmins', 'CANADA', 'CA', '-5', '48.569721', '-81.376667', 1, 'true', 0),
('YUD', 'Umiujaq Arpt', 'YUD', 'Umiujaq', 'CANADA', 'CA', '-5', '56.5361', '-76.5183', 1, 'true', 0),
('YUM', 'Yuma Intl', 'YUM', 'Yuma', 'UNITED STATES', 'US', '-7', '32.656578', '-114.60598', 1, 'true', 0),
('YUX', 'Hall Beach Arpt', 'YUX', 'Hall Beach', 'CANADA', 'CA', '-5', '68.776111', '-81.243611', 1, 'true', 0),
('YUY', 'Rouyn Noranda Arpt', 'YUY', 'Rouyn Noranda', 'CANADA', 'CA', '-5', '48.206111', '-78.835556', 1, 'true', 0),
('YVA', 'Iconi Arpt', 'YVA', 'Moroni', 'COMOROS', 'KM', '3', '-11.7108', '43.2439', 2, 'true', 0),
('HAH', 'Prince Said Ibrahim In', 'YVA', 'Moroni', 'COMOROS', 'KM', '3', '-11.533661', '43.27185', 2, '', 0),
('YVB', 'Municipal Bonaventure', 'YVB', 'Bonaventure', 'CANADA', 'CA', '-4', '48.0711', '-65.4603', 1, 'true', 0),
('YVE', 'Vernon Municipal Arpt', 'YVE', 'Vernon', 'CANADA', 'CA', '-100', '50.25', '-119.3333', 1, 'true', 0),
('YVG', 'Vermilion Arpt', 'YVG', 'Vermilion', 'CANADA', 'CA', '-7', '53.355833', '-110.82389', 1, 'true', 0),
('YVM', 'Qikiqtarjuaq Arpt', 'YVM', 'Qikiqtarjuaq', 'CANADA', 'CA', '-5', '67.545833', '-64.031389', 1, 'true', 0),
('YVO', 'Val d Or Municipal Arpt', 'YVO', 'Val D Or', 'CANADA', 'CA', '-5', '48.053333', '-77.782778', 1, 'true', 0),
('YVP', 'Kuujjuaq Arpt', 'YVP', 'Kuujjuaq', 'CANADA', 'CA', '-5', '58.096111', '-68.426944', 1, 'true', 0),
('YVQ', 'Norman Wells Municipal Arpt', 'YVQ', 'Norman Wells', 'CANADA', 'CA', '-7', '65.281617', '-126.798219', 1, 'true', 0),
('YVR', 'Vancouver Intl Arpt', 'YVR', 'Vancouver', 'CANADA', 'CA', '-8', '49.193889', '-123.184444', 4, 'true', 0),
('YDT', 'Boundary Bay Arpt', 'YVR', 'Vancouver', 'CANADA', 'CA', '-8', '49.073889', '-123.0075', 4, '', 0),
('CXH', 'Coal Harbor Sea Plane Arpt', 'YVR', 'Vancouver', 'CANADA', 'CA', '-8', '49.289722', '-123.115833', 4, '', 0),
('XEA', 'Vancouver Rail Station', 'YVR', 'Vancouver', 'CANADA', 'CA', '-100', '0', '0', 4, '', 0),
('YVZ', 'Deer Lake Arpt', 'YVZ', 'Deer Lake', 'CANADA', 'CA', '-6', '52.6558', '-94.0614', 1, 'true', 0),
('YWB', 'Kangiqsujuaq Arpt', 'YWB', 'Kangiqsujuaq', 'CANADA', 'CA', '-6', '61.588611', '-71.929444', 1, 'true', 0),
('XEF', 'Winnipeg Rail Station', 'YWG', 'Winnipeg', 'CANADA', 'CA', '-6', '49.8889', '-97.1342', 2, '', 0),
('YWG', 'Winnipeg Intl Arpt', 'YWG', 'Winnipeg', 'CANADA', 'CA', '-6', '49.910036', '-97.239886', 2, 'true', 0),
('YWK', 'Wabush Arpt', 'YWK', 'Wabush', 'CANADA', 'CA', '-4', '52.921944', '-66.864444', 1, 'true', 0),
('YWL', 'Williams Lake Municipal', 'YWL', 'Williams Lake', 'CANADA', 'CA', '-8', '52.183056', '-122.054167', 1, 'true', 0),
('YWR', 'White River Rail Station', 'YWR', 'White River', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YWS', 'Whistler Arpt', 'YWS', 'Whistler', 'CANADA', 'CA', '-8', '50.1436', '-122.949', 1, 'true', 0),
('YXC', 'Cranbrook Municipal', 'YXC', 'Cranbrook', 'CANADA', 'CA', '-7', '49.612222', '-115.781944', 1, 'true', 0),
('YKY', 'Kindersley Arpt', 'YXE', 'Saskatoon', 'CANADA', 'CA', '-6', '51.5175', '-109.180833', 2, '', 0),
('YXE', 'Saskatoon Municipal', 'YXE', 'Saskatoon', 'CANADA', 'CA', '-6', '52.170834', '-106.699722', 2, 'true', 0),
('YXH', 'Medicine Hat Airport', 'YXH', 'Medicine Hat', 'CANADA', 'CA', '-7', '50.01889', '-110.720833', 1, 'true', 0),
('YXJ', 'Ft St John Municipal Arpt', 'YXJ', 'Ft St John', 'CANADA', 'CA', '-8', '56.238056', '-120.740278', 1, 'true', 0),
('YXK', 'Rimouski Municipal Arpt', 'YXK', 'Rimouski', 'CANADA', 'CA', '-6', '48.478056', '-68.496944', 1, 'true', 0),
('YXL', 'Sioux Lookout Arpt', 'YXL', 'Sioux Lookout', 'CANADA', 'CA', '-6', '50.113889', '-91.905278', 1, 'true', 0),
('YXN', 'Whale Cove Arpt', 'YXN', 'Whale Cove', 'CANADA', 'CA', '-6', '62.24', '-92.5981', 1, 'true', 0),
('YXP', 'Pangnirtung Arpt', 'YXP', 'Pangnirtung', 'CANADA', 'CA', '-5', '66.145', '-65.713611', 1, 'true', 0),
('XDV', 'Prince George Rail Station', 'YXS', 'Prince George', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YXS', 'Prince George Municipal', 'YXS', 'Prince George', 'CANADA', 'CA', '-8', '53.889444', '-122.678889', 2, 'true', 0),
('YXT', 'Terrace Municipal Arpt', 'YXT', 'Terrace', 'CANADA', 'CA', '-8', '54.468508', '-128.576219', 1, 'true', 0),
('XDQ', 'London Rail Station', 'YXU', 'London', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YXU', 'London Municipal', 'YXU', 'London', 'CANADA', 'CA', '-5', '43.033056', '-81.151111', 2, 'true', 0),
('YXX', 'Abbotsford Arpt', 'YXX', 'Abbotsford', 'CANADA', 'CA', '-8', '49.025278', '-122.360556', 1, 'true', 0),
('YXY', 'Whitehorse Arpt', 'YXY', 'Whitehorse', 'CANADA', 'CA', '-8', '60.709553', '-135.067269', 1, 'true', 0),
('YXZ', 'Municipal Wawa', 'YXZ', 'Wawa', 'CANADA', 'CA', '-5', '47.966944', '-84.786389', 1, 'true', 0),
('YYB', 'North Bay Municipal', 'YYB', 'North Bay', 'CANADA', 'CA', '-5', '46.363611', '-79.422778', 1, 'true', 0),
('YYC', 'Calgary Intl Arpt', 'YYC', 'Calgary', 'CANADA', 'CA', '-7', '51.113888', '-114.020278', 2, 'true', 0),
('YQF', 'Red Deer Arpt', 'YYC', 'Calgary', 'CANADA', 'CA', '-7', '52.182222', '-113.894444', 2, '', 0),
('YYD', 'Smithers Municipal', 'YYD', 'Smithers', 'CANADA', 'CA', '-8', '54.824722', '-127.182778', 1, 'true', 0),
('YYE', 'Ft Nelson Municipal Arpt', 'YYE', 'Fort Nelson', 'CANADA', 'CA', '-8', '58.836389', '-122.596944', 1, 'true', 0),
('YYF', 'Penticton Municipal Arpt', 'YYF', 'Penticton', 'CANADA', 'CA', '-8', '49.463056', '-119.602222', 1, 'true', 0),
('YYG', 'Charlottetown Municipal', 'YYG', 'Charlottetown', 'CANADA', 'CA', '-4', '46.290001', '-63.121111', 1, 'true', 0),
('YYH', 'Taloyoak Arpt', 'YYH', 'Taloyoak', 'CANADA', 'CA', '-6', '69.546667', '-93.576667', 1, 'true', 0),
('YYI', 'Rivers Rail Station', 'YYI', 'Rivers', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YYJ', 'Victoria Intl Arpt', 'YYJ', 'Victoria', 'CANADA', 'CA', '-8', '48.646944', '-123.425833', 2, 'true', 0),
('YWH', 'Inner Harbor Sea Plane Arpt', 'YYJ', 'Victoria', 'CANADA', 'CA', '-8', '48.422778', '-123.3875', 2, '', 0),
('YYL', 'Lynn Lake Rail Station', 'YYL', 'Lynn Lake', 'CANADA', 'CA', '-6', '56.863888', '-101.07611', 1, 'true', 0),
('YYN', 'Swift Current Arpt', 'YYN', 'Swift Current', 'CANADA', 'CA', '-6', '50.291944', '-107.690556', 1, 'true', 0),
('XAD', 'Churchill Rail Station', 'YYQ', 'Churchill', 'CANADA', 'CA', '-6', '58.76775', '-94.17425', 2, '', 0),
('YYQ', 'Churchill Arpt', 'YYQ', 'Churchill', 'CANADA', 'CA', '-6', '58.739167', '-94.065', 2, 'true', 0),
('YYR', 'Municipal Goose Bay', 'YYR', 'Goose Bay', 'CANADA', 'CA', '-4', '53.319168', '-60.425833', 1, 'true', 0),
('YYT', 'St Johns Arpt', 'YYT', 'St Johns', 'CANADA', 'CA', '-3', '47.61861', '-52.751945', 1, 'true', 0),
('YYU', 'Japuskasing Municipal Arpt', 'YYU', 'Kapuskasing', 'CANADA', 'CA', '-5', '49.413889', '-82.4675', 1, 'true', 0),
('YYW', 'Armstrong Rail Station', 'YYW', 'Armstromg', 'CANADA', 'CA', '-5', '50.290279', '-88.909721', 1, 'true', 0),
('YYY', 'Mont Joli Arpt', 'YYY', 'Mont Joli', 'CANADA', 'CA', '-5', '48.608612', '-68.208056', 1, 'true', 0),
('YZA', 'Ashcroft Rail Station', 'YZA', 'Ashcroft', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('YZF', 'Yellowknife Arpt', 'YZF', 'Yellowknife', 'CANADA', 'CA', '-7', '62.462778', '-114.440278', 1, 'true', 0),
('YZG', 'Salluit Arpt', 'YZG', 'Salluit', 'CANADA', 'CA', '-5', '62.1794', '-75.6672', 1, 'true', 0),
('YZP', 'Federal Airport', 'YZP', 'Sandspit', 'CANADA', 'CA', '-8', '53.254333', '-131.813833', 1, 'true', 0),
('YZR', 'Sarnia Airport', 'YZR', 'Sarnia', 'CANADA', 'CA', '-5', '42.999444', '-82.308889', 2, 'true', 0),
('XDX', 'Sarina Rail Station', 'YZR', 'Sarnia', 'CANADA', 'CA', '-100', '0', '0', 2, '', 0),
('YZS', 'Coral Harbour Arpt', 'YZS', 'Coral Harbour', 'CANADA', 'CA', '-7', '50.330278', '-115.873333', 1, 'true', 0),
('YZT', 'Port Hardy Municipal', 'YZT', 'Port Hardy', 'CANADA', 'CA', '-8', '50.680556', '-127.366667', 1, 'true', 0),
('YZV', 'Sept Iles Municipal Arpt', 'YZV', 'Sept Iles', 'CANADA', 'CA', '-5', '50.223333', '-66.265556', 1, 'true', 0),
('YZX', 'Greenwood Arpt', 'YZX', 'Greenwood', 'CANADA', 'CA', '-4', '44.984444', '-64.916944', 1, 'true', 0),
('YZZ', 'Trail Arpt', 'YZZ', 'Trail', 'CANADA', 'CA', '-8', '49.055556', '-117.609167', 1, 'true', 0),
('ZAD', 'Zadar Arpt', 'ZAD', 'Zadar', 'CROATIA', 'HR', '1', '44.108269', '15.346697', 1, 'true', 0),
('ZAG', 'Zagreb Arpt', 'ZAG', 'Zagreb', 'CROATIA', 'HR', '1', '45.742931', '16.068778', 1, 'true', 0),
('ZAL', 'Pichoy', 'ZAL', 'Valdivia', 'CHILE', 'CL', '-4', '-39.649956', '-73.086111', 1, 'true', 0),
('ZAO', 'Laberandie Arpt', 'ZAO', 'Cahors', 'FRANCE', 'FR', '-100', '44.3506', '1.4786', 1, 'true', 0),
('ZAZ', 'Zaragoza Airport', 'ZAZ', 'Zaragoza', 'SPAIN', 'ES', '1', '41.666242', '-1.041553', 1, 'true', 0),
('ZBD', 'Jiang Men Ferry', 'ZBD', 'Jiang Men', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('ZBF', 'Bathurst Arpt', 'ZBF', 'Bathurst', 'CANADA', 'CA', '-4', '47.6297', '-65.7389', 1, 'true', 0),
('ZBL', 'Biloela Arpt', 'ZBL', 'Biloela', 'AUSTRALIA', 'AU', '-100', '-24.4', '150.5', 1, 'true', 0),
('ZBM', 'Bromont Regional Arpt', 'ZBM', 'Bromont', 'CANADA', 'CA', '-100', '45.2908', '-72.7414', 1, 'true', 0),
('ZBW', 'Atibaia Arpt', 'ZBW', 'Atibaia', 'BRAZIL', 'BR', '-100', '0', '0', 1, 'true', 0),
('ZBZ', 'Xin Hui Ferry Arpt', 'ZBZ', 'Xin Hui', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('ZCL', 'Zacatecas Airport', 'ZCL', 'Zacatecas', 'MEXICO', 'MX', '-6', '22.897112', '-102.68689', 1, 'true', 0),
('ZCO', 'Manquehue Arpt', 'ZCO', 'Temuco', 'CHILE', 'CL', '-4', '-38.766819', '-72.637097', 1, 'true', 0),
('ZCU', 'She Kou Ferry', 'ZCU', 'She Kou', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('ZEC', 'Secunda Arpt', 'ZEC', 'Secunda', 'SOUTH AFRICA', 'ZA', '-100', '0', '0', 1, 'true', 0),
('ZFI', 'Chesterfield Bus Station', 'ZFI', 'Chesterfield', 'UNITED KINGDOM', 'GB', '-100', '0', '0', 1, 'true', 0),
('ZFV', 'Philadelphia Rail Station', 'ZFV', 'Philadelphia Rail Station', 'UNITED STATES', 'US', '-5', '39.9557', '-75.182', 1, 'true', 0),
('ZGS', 'Gethsemanie Arpt', 'ZGS', 'Gethsemanie', 'CANADA', 'CA', '-100', '50.333', '-60.667', 1, 'true', 0),
('ZHA', 'Zhanjiang Airport', 'ZHA', 'Zhangjiang', 'CHINA', 'CN', '8', '21.2144', '110.358', 1, 'true', 0),
('ZHO', 'Houston Bus Station', 'ZHO', 'Houston', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('ZIG', 'Ziguinchor Arpt', 'ZIG', 'Ziguinchor', 'SENEGAL', 'SN', '0', '12.555617', '-16.281783', 1, 'true', 0),
('ZIH', 'Zihuatanejo Intl', 'ZIH', 'Zihuatanejo', 'MEXICO', 'MX', '-6', '17.601569', '-101.460536', 1, 'true', 0),
('ZJN', 'Swan River Municipal Arpt', 'ZJN', 'Swan River', 'CANADA', 'CA', '-6', '52.1206', '-101.236', 1, 'true', 0),
('ZKG', 'Kegaska Arpt', 'ZKG', 'Kegaska', 'CANADA', 'CA', '-4', '50.195833', '-61.265833', 1, 'true', 0),
('ZLO', 'Manzanillo Arpt', 'ZLO', 'Manzanillo', 'MEXICO', 'MX', '-6', '19.144778', '-104.558631', 1, 'true', 0),
('ZLT', 'La Tabatiere Arpt', 'ZLT', 'La Tabatiere', 'CANADA', 'CA', '-4', '50.8308', '-58.9756', 1, 'true', 0),
('ZNE', 'Newman Airport', 'ZNE', 'Newman', 'AUSTRALIA', 'AU', '8', '-23.4178', '119.803', 1, 'true', 0),
('IGS', 'Ingolstadt Arpt', 'ZNQ', 'Ingolstadt', 'GERMANY', 'DE', '1', '48.7777', '11.422', 1, '', 0),
('ZNZ', 'Kisauni Arpt', 'ZNZ', 'Zanzibar', 'TANZANIA', 'TZ', '3', '-6.222025', '39.224886', 1, 'true', 0),
('ZOS', 'Canal Balo Arpt', 'ZOS', 'Osorno', 'CHILE', 'CL', '-4', '-40.611208', '-73.061042', 1, 'true', 0),
('ZPC', 'Pucon Arpt', 'ZPC', 'Pucon', 'CHILE', 'CL', '-4', '-39.2928', '-71.9159', 1, 'true', 0),
('ZPE', 'Osnabrueck Rail Service', 'ZPE', 'Osnabruck', 'GERMANY', 'DE', '-100', '0', '0', 1, 'true', 0),
('ZPP', 'Rail Station Reutlingen', 'ZPP', 'Reutlingen', 'GERMANY', 'DE', '-100', '0', '0', 1, 'true', 0),
('ZQF', 'Trier Arpt', 'ZQF', 'Trier', 'GERMANY', 'DE', '1', '49.8635', '6.788167', 1, 'true', 0),
('ZQN', 'Frankton Airport', 'ZQN', 'Queenstown', 'NEW ZEALAND', 'NZ', '12', '-45.021111', '168.739167', 1, 'true', 0),
('ZQS', 'Queen Charlotte Island Arpt', 'ZQS', 'Queen Charlotte Island', 'CANADA', 'CA', '-100', '0', '0', 1, 'true', 0),
('ZQW', 'Zweibruecken Arpt', 'ZQW', 'Zweibruecken', 'GERMANY', 'DE', '1', '49.209445', '7.401323', 1, 'true', 0),
('ZRH', 'Zurich Airport', 'ZRH', 'Zurich', 'SWITZERLAND', 'CH', '1', '47.464722', '8.549167', 1, 'true', 0),
('ZSA', 'San Salvador Arpt', 'ZSA', 'San Salvador', 'BAHAMAS', 'BS', '-5', '24.063275', '-74.523967', 1, 'true', 0),
('ZSE', 'St Pierre Dela Reunion Arpt', 'ZSE', 'St Pierre Dela Reunion', 'REUNION', 'RE', '5', '-21.320039', '55.423581', 1, 'true', 0),
('ZSG', 'Sonneberg Railway Station', 'ZSG', 'Sonneberg', 'GERMANY', 'DE', '-100', '0', '0', 1, 'true', 0),
('ZSJ', 'Sandy Lake Arpt', 'ZSJ', 'Sandy Lake', 'CANADA', 'CA', '-6', '53.0642', '-93.3444', 1, 'true', 0),
('SZW', 'Parchim Arpt', 'ZSR', 'Schwerin', 'GERMANY', 'DE', '1', '53.426997', '11.783436', 1, '', 0),
('ZTB', 'Tete A La Baleine Arpt', 'ZTB', 'Tete A La Baleine', 'CANADA', 'CA', '-4', '50.6744', '-59.3836', 1, 'true', 0),
('ZTH', 'Zakinthos Arpt', 'ZTH', 'Zakinthos', 'GREECE', 'GR', '2', '37.750853', '20.88425', 1, 'true', 0),
('ZUH', 'Zhuhai Arpt', 'ZUH', 'Zhuhai', 'CHINA', 'CN', '8', '22.0064', '113.376', 1, 'true', 0),
('ZUM', 'Churchhill Falls Arpt', 'ZUM', 'Churchhill Falls', 'CANADA', 'CA', '-4', '53.5619', '-64.1064', 1, 'true', 0),
('ZVD', 'Drangedal Rail Station', 'ZVD', 'Drangedal', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('ZXO', 'Fauske Rail Station', 'ZXO', 'Fauske', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('ZXU', 'Rygge Rail Station', 'ZXU', 'Rygge', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('ZXX', 'Rade Rail Station', 'ZXX', 'Rade', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('ZYI', 'Zunyi Arpt', 'ZYI', 'Zunyi', 'CHINA', 'CN', '-100', '0', '0', 1, 'true', 0),
('ZYL', 'Sylhet Osmany Arpt', 'ZYL', 'Sylhet', 'BANGLADESH', 'BD', '6', '24.963242', '91.866783', 1, 'true', 0),
('ZYP', 'New York Penn STN', 'ZYP', 'New York Penn STN', 'UNITED STATES', 'US', '-5', '40.7505', '-73.9935', 1, 'true', 0),
('ZYV', 'Vegarshei Rail Station', 'ZYV', 'Vegarshei', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('ZYW', 'Sandvika Rail Station', 'ZYW', 'Sandvika', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('ZYY', 'Marnardal Rail Station', 'ZYY', 'Marnardal', 'NORWAY', 'NO', '-100', '0', '0', 1, 'true', 0),
('ZZV', 'Zanesville Arpt', 'ZZV', 'Zanesville', 'UNITED STATES', 'US', '-100', '39.9445', '-81.8921', 1, 'true', 0),
('BKA', 'Bykovo', 'MOW', 'Moscow', 'RUSSIA', 'RU', NULL, NULL, NULL, 3, 'true', 0),
('MOV', 'Moscow Airprt', 'MOV', 'Moscow', 'RUSSIA', 'RU', NULL, NULL, NULL, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ajency`
--

CREATE TABLE `ajency` (
  `id` int(8) NOT NULL,
  `ajency_username` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `ajency_password` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `ajency_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `ajency_loginatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `ajency_active` int(2) NOT NULL,
  `ajency_name` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `ajency_namemng` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `ajency_email` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `ajency_ip` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `ajency_img` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `ajency_tell` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `ajency_adres` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `ajency_api` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `ajency_apiactive` int(2) NOT NULL,
  `ajency_emailverfy` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `ajency_emailactive` int(2) NOT NULL,
  `ajency_tellverfy` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `ajency_tellactive` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `ajency`
--

INSERT INTO `ajency` (`id`, `ajency_username`, `ajency_password`, `ajency_createdatdate`, `ajency_loginatdate`, `ajency_active`, `ajency_name`, `ajency_namemng`, `ajency_email`, `ajency_ip`, `ajency_img`, `ajency_tell`, `ajency_adres`, `ajency_api`, `ajency_apiactive`, `ajency_emailverfy`, `ajency_emailactive`, `ajency_tellverfy`, `ajency_tellactive`) VALUES
(1, 'ajency', 'eyJpdiI6InV5b2N3VUZTQStTcnpwMGI3RlBLOEE9PSIsInZhbHVlIjoiWG42aTAyNE9tYWlVcnBLdlJac3pvUT09IiwibWFjIjoiYzlkMWRmMzUxZWFmYjcwODJkYTRiMWI4MDg1YmIxYmVhYjAyNTE3NGM2ZDdjMjI1ZjhjMWI2M2RkYzliZTU3NiJ9', '2017-04-15 16:14:21', '2017-12-09 14:37:48', 1, 'آژانس ب', 'احمد ایل بیگی', 'ellham1390@gmail.com', '37.255.150.253', '', '09135551396', '	  iranian	    \r\n  \r\n', 'wwn67u01s84w9ozavfq8hbcf', 1, '', 0, '', 0),
(2, 'tttttt', 'eyJpdiI6IkEwV3ZWSzVvQzU1b1pvVUs0RDRSWlE9PSIsInZhbHVlIjoieXdSU3BvWXM3MG91TnRLOGUyZ294QT09IiwibWFjIjoiZWE4M2ZhMGE2MDk3MWE0Yjg0YmZhY2UyZjQ1NjJiNWUxNTI0NGM4NDQ2ODFlYjUxYzQ5N2ZlNDExZDE1YjNhMiJ9', '2017-05-04 18:47:57', '', 0, '', '', '', '', 'demowhite.jpg', '', '', '', 0, '', 0, '', 0),
(3, 'yyyyyyyy', 'eyJpdiI6InltaXUxTnBSWFNGeFBwNHpJXC80emhBPT0iLCJ2YWx1ZSI6IkN2UVJFWXhKR0E4ZUhEZ0VHejl1U1E9PSIsIm1hYyI6IjkwZTljZGJiNTljMzg4ODg1OTNkYmFhOTU2NzIyMjBmOTljOTYyZjIyYjU3ODg1ZjUzNTdiNWQ5NzA0Njc5ZTMifQ==', '2017-05-24 16:34:44', '2017-05-24 16:34:44', 0, '', '', '', '::1', 'demowhite.jpg', '', '', '', 0, '', 0, '', 0),
(4, 'agency', 'eyJpdiI6IkpJeVFBdEFYTndIWDNZTGFBSUFBTmc9PSIsInZhbHVlIjoiK0lBV1F3TkxKWk10RjhiYkF6YnNWdz09IiwibWFjIjoiMTlhOWE2ODJjZjg5YjE2ZTk4OGIxOTE4YzZlMWM1N2M1MmQ0M2JhODgyOTQwOGUxMDFiYmZlZjllZWM2NjZmZiJ9', '2017-05-28 11:57:52', '2017-05-28 11:57:52', 1, 'agency turk', 'bednan dolam', 'ellham1390@gmail.com', '::1', 'demowhite.jpg', '09137775568', '	  	    \r\ndddd ffffff gggg  \r\n', 'hnqort96zrxeqq9d34u8fnxv', 1, '49893', 1, '43219', 1),
(5, 'fffffffffffffffff', 'eyJpdiI6IjZqemVPXC9wUTRYKzFBNW1IWm5uWW1BPT0iLCJ2YWx1ZSI6InZkdGpRQThHdkNqRDNtR0laak1BMUE9PSIsIm1hYyI6ImQwZWUzOWNiZTUxMzBjYTY3MjhhOGUyM2U5MDVkOTBiYTEwYjk5MDlmZmU3YTY0MTFhMDc0ZjczYzM1ZTc0NTUifQ==', '2017-06-01 15:48:39', '', 0, '', '', '', '', 'demowhite.jpg', '', '', '', 0, '', 0, '', 0),
(6, 'gggggggggggggg', 'eyJpdiI6Ilk3TXBwYzg5d2RUTElxZVhaMlNSUXc9PSIsInZhbHVlIjoiZjFRQjNhR0FtdGFLYnFiMWZHRHp3Zz09IiwibWFjIjoiNTFkNzkxMjI2NTY1YzQ5NDg3YjI5MTcxNTMwNmVhNDliNmQ5YzFiNDI1NGMwNDk1NjA5OWUxY2RmYjVmMDU4MSJ9', '2017-06-01 15:49:51', '', 1, '', '', '', '', '1496316203Penguins.jpg', '', '', 'efrp4z6vgiz7s35ybwtbxdof', 1, '', 0, '', 0),
(7, 'dolania', 'eyJpdiI6ImpkaFN6RUxcL1NjOFwvMytrTHNNcWVSUT09IiwidmFsdWUiOiJGWElBTGp5T1RORjdzdXVjNk1aUll3PT0iLCJtYWMiOiJiOTU0ZWYzM2IwMzEzODk4NTllZTU0ZWI4Y2U2ZTc1OWY0YmMxYmUwZWQ2MTdkNWEyYmE0ZmI2MDdlNWVlZTM0In0=', '2017-08-13 13:08:01', '2017-08-13 13:08:58', 0, '', '', '', '185.83.196.18', 'demowhite.jpg', '', '', '', 0, '', 0, '', 0),
(8, 'gdsajency', 'eyJpdiI6Ikp4OXMwS0JXczhkV1hUVmk3Ym54SXc9PSIsInZhbHVlIjoiOFh4T04rOGo2WlFhUmg3UFQ1QUhpdz09IiwibWFjIjoiYThlNGJkMjkzYTM4YzllNDExZGE3Y2IyMTg0ZjAyNTdmYThkOTZkYzE0YTJmYWZmMzlmZTllZjcwYTdmYjE2OCJ9', '2017-11-25 14:32:48', '2017-12-09 13:46:38', 1, 'ozavsarla', 'mahmoud ghoochanı', 'mahmoud@ghoochani.info', '88.248.188.16', 'demowhite.jpg', '05319747310', 'trabzon ıran turkey	  	    \r\n  \r\n', '', 0, '', 0, '', 0),
(9, 'metro', 'eyJpdiI6ImgzaUFHZVRrTW0rQ2huR3ZiTTltNmc9PSIsInZhbHVlIjoibGtPRlNCNkRkeVhSOUxRc3NYYTJvUT09IiwibWFjIjoiZDI5ODhlMmY2NjgyZWZkMTUzZWI5MzU4MzIyMWExZDhkY2QzM2EyNDUxMWQxZDM1Y2I0OTAyMTBhNWYxNzRlMyJ9', '2017-12-04 12:52:09', '2017-12-19 14:00:25', 1, 'Metro', 'Metro', 'info@trabzongoldengroup.com', '81.214.70.238', 'demowhite.jpg', '05558945000', 'trabzon - meydan ', '', 0, '', 0, '', 0),
(10, 'admini', 'eyJpdiI6IkppYTR4c3Z5Q3VLam1EUjcwQU9Rc2c9PSIsInZhbHVlIjoiUVZYalh2MG9YSzR5dXYzcG5Ia2FMZz09IiwibWFjIjoiZjU3MzBiY2VjZjIyODRkYjk2Mjk5MThkNDU0NDg0ZjMzMjRiZTg0OTg1ZTZhZDcwN2Y0OTlkNTRjMDllNGJlNCJ9', '2017-12-21 18:40:09', '2017-12-24 03:55:33', 1, '', '', '', '77.98.249.117', 'demowhite.jpg', '', '', '', 0, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `answertest`
--

CREATE TABLE `answertest` (
  `id` int(11) NOT NULL,
  `answ_idtest` int(9) NOT NULL,
  `answ_examtest` int(8) NOT NULL,
  `answ_key` varchar(4) COLLATE utf8_persian_ci NOT NULL,
  `answ_qst` varchar(4) COLLATE utf8_persian_ci NOT NULL,
  `answ_testtrue` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `belit`
--

CREATE TABLE `belit` (
  `id` int(12) NOT NULL,
  `bel_origin` int(8) NOT NULL,
  `bel_originname` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_originnem` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `bel_originctr` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_originctrimg` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `bel_desti` int(8) NOT NULL,
  `bel_destiname` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_destinem` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `bel_destictr` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_destictrimg` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `bel_datefly` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_hfly` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `bel_mfly` int(2) NOT NULL,
  `bel_createdatdate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `bel_rateajency` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `bel_rateuser` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `bel_arou` int(2) NOT NULL,
  `bel_idajency` int(8) NOT NULL,
  `bel_iduser` int(8) NOT NULL,
  `bel_costdes` varchar(666) COLLATE utf8_persian_ci NOT NULL,
  `bel_cost` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `bel_cur` int(6) NOT NULL,
  `bel_curname` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_curnem` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `bel_status` int(2) NOT NULL,
  `bel_des` varchar(666) COLLATE utf8_persian_ci NOT NULL,
  `bel_codfly` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `bel_daterezerv` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_datebuy` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_bls` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `bel_codrezerv` varchar(11) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `belit`
--

INSERT INTO `belit` (`id`, `bel_origin`, `bel_originname`, `bel_originnem`, `bel_originctr`, `bel_originctrimg`, `bel_desti`, `bel_destiname`, `bel_destinem`, `bel_destictr`, `bel_destictrimg`, `bel_datefly`, `bel_hfly`, `bel_mfly`, `bel_createdatdate`, `bel_rateajency`, `bel_rateuser`, `bel_arou`, `bel_idajency`, `bel_iduser`, `bel_costdes`, `bel_cost`, `bel_cur`, `bel_curname`, `bel_curnem`, `bel_status`, `bel_des`, `bel_codfly`, `bel_daterezerv`, `bel_datebuy`, `bel_bls`, `bel_codrezerv`) VALUES
(248, 4, 'ISFAHAN', 'ISF', 'IRAN', '1493040901images.png', 5, 'istanbul', 'IST', 'Turkey', '1493304748trlarge.gif', '05/31/2017', '02:45 AM', 0, '2017-05-29 03:04:57', '101', '111', 4, 0, 1, 'ddddddddddddd', '5', 1, 'Dollar', 'USD', 1, '    \r\nrrrrrrrrrrrrrr', 'codfly ffgggg', '2017-05-29 03:05:18', '', '16154040629', '793099234'),
(249, 4, 'ISFAHAN', 'ISF', 'IRAN', '1493040901images.png', 5, 'istanbul', 'IST', 'Turkey', '1493304748trlarge.gif', '05/31/2017', '02:45 AM', 0, '2017-05-29 03:04:57', '101', '111', 3, 1, 0, 'ddddddddddddd', '5', 1, 'Dollar', 'USD', 2, '    \r\nrrrrrrrrrrrrrr', 'codfly ffgggg', '2017-05-29 03:05:39', '2017-05-30 02:09:35', '16154040629', '616721882'),
(250, 4, 'ISFAHAN', 'ISF', 'IRAN', '1493040901images.png', 5, 'istanbul', 'IST', 'Turkey', '1493304748trlarge.gif', '05/31/2017', '02:45 AM', 0, '2017-05-29 03:04:57', '101', '111', 3, 1, 0, 'ddddddddddddd', '5', 1, 'Dollar', 'USD', 1, '    \r\nrrrrrrrrrrrrrr', 'codfly ffgggg', '2017-05-30 15:28:59', '', '16154040629', '572993593'),
(251, 4, 'ISFAHAN', 'ISF', 'IRAN', '1493040901images.png', 5, 'istanbul', 'IST', 'Turkey', '1493304748trlarge.gif', '05/31/2017', '02:45 AM', 0, '2017-05-29 03:04:57', '101', '111', 0, 0, 0, 'ddddddddddddd', '5', 1, 'Dollar', 'USD', 0, '    \r\nrrrrrrrrrrrrrr', 'codfly ffgggg', '', '', '16154040629', ''),
(252, 4, 'ISFAHAN', 'ISF', 'IRAN', '1493040901images.png', 5, 'istanbul', 'IST', 'Turkey', '1493304748trlarge.gif', '05/31/2017', '02:45 AM', 0, '2017-05-29 03:04:57', '101', '111', 0, 0, 0, 'ddddddddddddd', '5', 1, 'Dollar', 'USD', 0, '    \r\nrrrrrrrrrrrrrr', 'codfly ffgggg', '', '', '16154040629', ''),
(253, 6, 'Mumbai ', 'MUM', 'INDIA', '1493716037INDIA-FLAG_20140411234504.jpg', 2, 'Rom', 'ROM', 'italy', '1493384451italy-clip-art-at-clker-com-vector-clip-art-online-royalty-free-D48Cqr-clipart.png', '05/31/2017', '03:00 AM', 0, '2017-05-29 03:23:00', '1001', '1011', 4, 0, 1, 'rrrrrrrrrrrr', '11', 1, 'Dollar', 'USD', 1, '    rrrrrrrrrrrrrr\r\n', 'ggghg', '2017-05-29 03:23:29', '', '49614017131', '155125284'),
(254, 6, 'Mumbai ', 'MUM', 'INDIA', '1493716037INDIA-FLAG_20140411234504.jpg', 2, 'Rom', 'ROM', 'italy', '1493384451italy-clip-art-at-clker-com-vector-clip-art-online-royalty-free-D48Cqr-clipart.png', '05/31/2017', '03:00 AM', 0, '2017-05-29 03:23:00', '1001', '1011', 3, 1, 0, 'rrrrrrrrrrrr', '11', 1, 'Dollar', 'USD', 2, '    rrrrrrrrrrrrrr\r\n', 'ggghg', '2017-05-30 15:30:26', '', '49614017131', '758456507'),
(255, 6, 'Mumbai ', 'MUM', 'INDIA', '1493716037INDIA-FLAG_20140411234504.jpg', 2, 'Rom', 'ROM', 'italy', '1493384451italy-clip-art-at-clker-com-vector-clip-art-online-royalty-free-D48Cqr-clipart.png', '05/31/2017', '03:00 AM', 0, '2017-05-29 03:23:00', '1001', '1011', 0, 0, 0, 'rrrrrrrrrrrr', '11', 1, 'Dollar', 'USD', 0, '    rrrrrrrrrrrrrr\r\n', 'ggghg', '', '', '49614017131', ''),
(256, 6, 'Mumbai ', 'MUM', 'INDIA', '1493716037INDIA-FLAG_20140411234504.jpg', 2, 'Rom', 'ROM', 'italy', '1493384451italy-clip-art-at-clker-com-vector-clip-art-online-royalty-free-D48Cqr-clipart.png', '05/31/2017', '03:00 AM', 0, '2017-05-29 03:23:00', '1001', '1011', 0, 0, 0, 'rrrrrrrrrrrr', '11', 1, 'Dollar', 'USD', 0, '    rrrrrrrrrrrrrr\r\n', 'ggghg', '', '', '49614017131', ''),
(257, 6, 'Mumbai ', 'MUM', 'INDIA', '1493716037INDIA-FLAG_20140411234504.jpg', 2, 'Rom', 'ROM', 'italy', '1493384451italy-clip-art-at-clker-com-vector-clip-art-online-royalty-free-D48Cqr-clipart.png', '05/31/2017', '03:00 AM', 0, '2017-05-29 03:23:00', '1001', '1011', 0, 0, 0, 'rrrrrrrrrrrr', '11', 1, 'Dollar', 'USD', 0, '    rrrrrrrrrrrrrr\r\n', 'ggghg', '', '', '49614017131', ''),
(258, 1, 'tokio', 'tko', 'japan', '', 3, 'Tehran', 'TEH', 'IRAN', '1493040901images.png', '05/31/2017', '04:15 PM', 0, '2017-05-30 16:33:52', '0.5', '0.6', 3, 1, 0, 'ddddddddd', '0.005', 1, 'Dollar', 'USD', 1, '    ttttttttttttttttttt\r\n', 'rrrrrrrrrr', '2017-05-30 16:34:22', '', '42686997773', '965677665'),
(259, 1, 'tokio', 'tko', 'japan', '', 3, 'Tehran', 'TEH', 'IRAN', '1493040901images.png', '05/31/2017', '04:15 PM', 0, '2017-05-30 16:33:52', '0.5', '0.6', 0, 0, 0, 'ddddddddd', '0.005', 1, 'Dollar', 'USD', 0, '    ttttttttttttttttttt\r\n', 'rrrrrrrrrr', '', '', '42686997773', ''),
(260, 1, 'tokio', 'tko', 'japan', '', 3, 'Tehran', 'TEH', 'IRAN', '1493040901images.png', '05/31/2017', '04:15 PM', 0, '2017-05-30 16:33:52', '0.5', '0.6', 0, 0, 0, 'ddddddddd', '0.005', 1, 'Dollar', 'USD', 0, '    ttttttttttttttttttt\r\n', 'rrrrrrrrrr', '', '', '42686997773', ''),
(261, 1, 'tokio', 'tko', 'japan', '', 3, 'Tehran', 'TEH', 'IRAN', '1493040901images.png', '05/31/2017', '04:15 PM', 0, '2017-05-30 16:33:52', '0.5', '0.6', 0, 0, 0, 'ddddddddd', '0.005', 1, 'Dollar', 'USD', 0, '    ttttttttttttttttttt\r\n', 'rrrrrrrrrr', '', '', '42686997773', ''),
(262, 1, 'tokio', 'tko', 'japan', '', 3, 'Tehran', 'TEH', 'IRAN', '1493040901images.png', '05/31/2017', '04:15 PM', 0, '2017-05-30 16:33:52', '0.5', '0.6', 0, 0, 0, 'ddddddddd', '0.005', 1, 'Dollar', 'USD', 0, '    ttttttttttttttttttt\r\n', 'rrrrrrrrrr', '', '', '42686997773', '');

-- --------------------------------------------------------

--
-- Table structure for table `belitrezerv`
--

CREATE TABLE `belitrezerv` (
  `id` int(9) NOT NULL,
  `blr_codrezerv` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `blr_number` varchar(8) COLLATE utf8_persian_ci NOT NULL,
  `blr_sum` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `blr_codbelit` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `blr_arou` int(2) NOT NULL,
  `blr_from` int(11) NOT NULL,
  `blr_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `belitrezerv`
--

INSERT INTO `belitrezerv` (`id`, `blr_codrezerv`, `blr_number`, `blr_sum`, `blr_codbelit`, `blr_arou`, `blr_from`, `blr_status`) VALUES
(33, '793099234', '1', '116', '16154040629', 4, 1, 1),
(34, '616721882', '1', '106', '16154040629', 3, 1, 2),
(35, '155125284', '1', '1022', '49614017131', 4, 1, 2),
(36, '572993593', '1', '106', '16154040629', 3, 1, 1),
(37, '758456507', '1', '1012', '49614017131', 3, 1, 2),
(38, '965677665', '1', '0.505', '42686997773', 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `belits`
--

CREATE TABLE `belits` (
  `bel_id` int(12) NOT NULL,
  `bel_email` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_tell` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_basefare` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `bel_pay` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `bel_finical` int(11) NOT NULL,
  `bel_mergey` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `bel_ticketnumber` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bel_pnr` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `bel_ses` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `bel_result` varchar(2222) COLLATE utf8_persian_ci NOT NULL,
  `bel_rul` varchar(15555) COLLATE utf8_persian_ci NOT NULL,
  `bel_aro` int(2) NOT NULL,
  `bel_iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `belits`
--

INSERT INTO `belits` (`bel_id`, `bel_email`, `bel_tell`, `bel_createdatdate`, `bel_basefare`, `bel_pay`, `bel_finical`, `bel_mergey`, `bel_ticketnumber`, `bel_pnr`, `bel_ses`, `bel_result`, `bel_rul`, `bel_aro`, `bel_iduser`) VALUES
(81, '', '', '2017-11-08 02:26:48', '2545.74', '', 0, '', '', '', '', '', '', 0, 0),
(82, '', '', '2017-11-08 02:28:03', '742.55', '742.55', 0, '445b82ad-1d80-4a8c-920f-a92b9f182a20', '771-5623826804', '', '', '', '', 0, 0),
(83, '', '', '2017-11-08 02:31:26', '1199.45', '', 0, '', '', '', '', '', '', 0, 0),
(84, '', '', '2017-11-08 02:36:54', '2761.62', '2761.62', 0, 'eedfe187-a134-4d43-a52e-098f9930001f', '771-5623826805', '', '', '', '', 0, 0),
(85, 'ali-azim@hotmail.com', '', '2017-11-08 09:05:55', '989.70', '', 0, '', '', '', '', '', '', 0, 0),
(86, 'ali-azim@hotmail.com', '', '2017-11-08 09:09:40', '2232.59', '', 0, '', '', '', '', '', '', 0, 0),
(87, 'celal@barsanturizm.com', '902122211221', '2017-11-08 17:36:06', '742.55', '', 0, '', '', '', '', '', '', 0, 0),
(88, 'mahmoud@ghoochani.info', '00989195020236', '2017-11-10 15:01:10', '930.98', '', 0, '', '', '', '', '', '', 0, 0),
(89, 'ozkan@ozkanozer.com', '', '2017-11-10 15:31:08', '869.24', '', 0, '', '', '', '', '', '', 0, 0),
(90, 'ali-azim@hotmail.com', '00905327415258', '2017-11-10 15:33:41', '1091.69', '', 0, '', '', '', '', '', '', 0, 0),
(91, 'ozkan@ozkanozer.com', '', '2017-11-10 15:33:47', '807.05', '', 0, '', '', '', '', '', '', 0, 0),
(92, 'ozkan@ozkanozer.com', '', '2017-11-10 15:33:53', '807.05', '', 0, '', '', '', '', '', '', 0, 0),
(93, 'ozkan@ozkanozer.com', '', '2017-11-10 15:35:07', '629.37', '', 0, 'd6fcca7b-6215-474c-b879-697197545fad', '', '', '', '', '', 0, 0),
(94, 'ozkan@ozkanozer.com', '', '2017-11-10 15:47:33', '688.67', '', 0, 'c3cef212-5972-4e2a-bb64-08a3241ac95a', '390-5623826806', '', '', '', '', 0, 0),
(95, 'ozkan@ozkanozer.com', '', '2017-11-10 15:59:42', '777.82', '', 0, '', '', '', '', '', '', 0, 0),
(96, 'ozkan@ozkanozer.com', '', '2017-11-10 16:00:46', '978.77', '', 0, '', '', '', '', '', '', 0, 0),
(97, 'ozkan@ozkanozer.com', '', '2017-11-10 16:01:21', '777.82', '', 0, '', '', '', '', '', '', 0, 0),
(98, 'celal@barsanturizm.com', '902122211221', '2017-11-11 11:59:56', '629.37', '', 0, '', '', '', '', '', '', 0, 0),
(99, 'celal@barsanturizm.com', '902122211221', '2017-11-11 12:06:06', '718.30', '', 0, '', '', '', '', '', '', 0, 0),
(100, 'celal@barsanturizm.com', '902122211221', '2017-11-11 12:16:16', '869.24', '', 0, '', '', '', '', '', '', 0, 0),
(101, 'celal@barsanturizm.com', '902122211221', '2017-11-11 12:22:35', '807.05', '', 0, 'ca373d3a-4e33-4106-ac7f-50409f440595', '', '', '', '', '', 0, 0),
(102, 'ali-azim@hotmail.com', '00905327409188', '2017-11-11 12:36:14', '1319.29', '', 0, '', '', '', '', '', '', 0, 0),
(103, 'ali-azim@hotmail.com', '+905327409188', '2017-11-11 12:47:37', '560.21', '', 0, '2dd251f0-6147-4fd8-b514-ea685519737c', '', '', '', '', '', 0, 0),
(104, 'mustafa1390@gmail.com', '989137775568', '2017-11-11 15:24:21', '337.01', '', 0, 'c21564cc-c428-476d-85fd-17039e9f44f8', '390-5623826826', '', '', '', '', 0, 0),
(105, 'mustafa1390@gmail.com', '989137775568', '2017-11-11 15:26:53', '560.21', '', 0, 'e58e0be5-32c7-4f21-b8ae-8057b45d5c19', '', 'U838C4', '', '', '', 0, 0),
(106, 'ozkan@ozkanozer.com', '', '2017-11-11 15:36:35', '869.24', '', 0, '73f9e01a-4ccf-4228-8808-5d40b5748005', '', 'U84TK8', '', '', '', 0, 0),
(107, 'ozkan@ozkanozer.com', '', '2017-11-11 15:43:17', '903.26', '', 0, '', '', '', '', '', '', 0, 0),
(108, '', '', '2017-11-11 15:43:32', '903.26', '', 0, '', '', '', '', '', '', 0, 0),
(109, 'ozkan@ozkanozer.com', '', '2017-11-11 15:43:40', '903.26', '', 0, '', '', '', '', '', '', 0, 0),
(110, 'ozkan@ozkanozer.com', '', '2017-11-11 15:44:51', '777.82', '', 0, '', '', '', '', '', '', 0, 0),
(111, '', '', '2017-11-11 15:45:04', '777.82', '', 0, '', '', '', '', '', '', 0, 0),
(112, 'ozkan@ozkanzoer.com', '', '2017-11-11 15:46:05', '1148.23', '', 0, '53c422d1-9a06-49c9-85be-6ee0e335fa59', '065-5623826833', 'U86GSU', '', '', '', 0, 0),
(113, 'ali-azim@hotmail.com', '+905327409188', '2017-11-11 16:15:38', '633.50', '', 0, 'bfe7ea4c-6a96-46da-9f00-deaddbc4e38d', '', 'U8AJHX', '', '', '', 0, 0),
(114, 'celal@barsanturizm.com', '', '2017-11-11 16:52:35', '1258.75', '', 0, '', '', '', '', '', '', 0, 0),
(115, 'ozkan@ozkanozer.com', '', '2017-11-11 16:54:35', '1614.10', '', 0, '', '', '', '', '', '', 0, 0),
(116, 'ozkan@ozkanozer.com', '', '2017-11-11 16:55:20', '1614.10', '', 0, '', '', '', '', '', '', 0, 0),
(117, 'ozkan@ozkanozer.com', '', '2017-11-11 16:56:06', '807.05', '', 0, '', '', '', '', '', '', 0, 0),
(118, 'ozkan@ozkanozer.com', '', '2017-11-11 16:56:32', '869.24', '', 0, '', '', '', '', '', '', 0, 0),
(119, 'celal@barsanturizm.com', '902122211221', '2017-11-11 16:57:04', '3425.10', '', 0, '', '', '', '', '', '', 0, 0),
(120, '', '902122211221', '2017-11-11 16:57:39', '3425.10', '', 0, '', '', '', '', '', '', 0, 0),
(121, 'ozkan@ozkanozer.com', '', '2017-11-11 16:57:59', '718.30', '', 0, '', '', '', '', '', '', 0, 0),
(122, 'mustafa1390@gmail.com', '989137775568', '2017-11-11 17:05:03', '1106.48', '', 0, '', '', '', '', '', '', 0, 0),
(123, 'ozkan@ozkanozer.com', '', '2017-11-11 17:13:26', '1614.10', '', 0, '', '', '', '', '', '', 0, 0),
(124, '', '', '2017-11-11 17:13:41', '1738.47', '', 0, '', '', '', '', '', '', 0, 0),
(125, 'OZKAN@ozkanozer.com', '', '2017-11-11 17:24:58', '807.05', '', 0, '', '', '', '', '', '', 0, 0),
(126, 'ozkan@ozkanozer.com', '', '2017-11-11 17:29:42', '544.31', '', 0, '', '', '', '', '', '', 0, 0),
(127, 'celal@barsanturizm.com', '902122211221', '2017-11-11 17:38:45', '1650.17', '', 0, '81df916e-e574-4d8b-9212-6695995d55f5', '', 'U8L5JF', '', '', '', 0, 0),
(128, 'celal@barsanturizm.com', '902122211221', '2017-11-11 17:58:34', '3289.94', '', 0, '11a3c2d8-ee9e-48d4-9396-18790c56ef94', '', 'U8P7CN', '', '', '', 0, 0),
(129, 'celal@barsanturizm.com', '902122211221', '2017-11-11 18:10:21', '9087.15', '', 0, '', '', '', '', '', '', 0, 0),
(130, 'mustafa1390@gmail.com', '76575', '2017-11-13 17:43:45', '1062.10', '', 0, '', '', '', '4zgky0gwpdftr02xkohb3xro', '', '', 0, 0),
(131, 'mustafa1390@gmail.com', '098899888877', '2017-11-13 17:44:33', '1062.10', '', 0, '', '', '', '4zgky0gwpdftr02xkohb3xro', '', '', 0, 0),
(132, 'mustafa1390@gmail.com', '98879789', '2017-11-13 17:47:25', '1228.76', '', 0, '', '', '', 'bzw2mkuv44p4adewys1kdbc1', '', '', 0, 0),
(133, 'mustafa1390@gmail.com', '989137775568', '2017-11-13 18:16:20', '1232.63', '', 0, '', '', '', 'hkjeeuyfoiqqsparpxxceyyf', '', '', 0, 0),
(134, 'mustafa1390@gmail.com', '989137775568', '2017-11-13 18:22:58', '562.12', '', 0, '', '', '', '4kiksnqhkhibpva35k5fto0t', '', '', 0, 0),
(135, 'gggggg@gmail.com', '88999999', '2017-11-13 18:24:45', '629.37', '', 0, '02d7ef4b-3b2d-45af-848b-22379c0c9e96', '', 'UJZ3HS', 'wob1k3cp1zfuuimg0232rdj2', '{\"Status\":true,\"ErrorCode\":\"\",\"ErrorDescription\":null,\"TicketInfoList\":[{\"id\":4559,\"firstname\":\"fattah\",\"lastname\":\"rozbeh\",\"email\":\"mustafa1390@gmail.com\",\"phone\":\"00989384762155\",\"providerid\":0,\"pnr\":\"UJZ3HS\",\"total\":629.37,\"servicefee\":44.42,\"providerfee\":35.54,\"recorddate\":\"13.11.2017 17:52:10\",\"iscancel\":0,\"canceldate\":\"\",\"billingname\":\"fattah rozbeh\",\"billingaddress\":\"UcuzaUç\",\"taxoffice\":\"TC\",\"taxnum\":\"11111111110\",\"weborpanel\":0,\"fresult\":{\"flightlist\":[{\"direction\":0,\"airline\":\"XY\",\"flightno\":\"502\",\"flightdatetime\":\"19.11.2017 12:20\",\"origin\":\"DXB\",\"arrivaldatetime\":\"19.11.2017 14:35\",\"destination\":\"JED\",\"classcode\":\"P\"}],\"passengerlist\":[{\"gender\":\"MR\",\"firstname\":\"fattah\",\"lastname\":\"rozbeh\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"ADT\",\"eticketnumber\":\"\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000}]},\"mergekey\":\"02d7ef4b-3b2d-45af-848b-22379c0c9e96\",\"ticketn', '', 0, 0),
(136, 'nmnnn@go.lo', '987777777', '2017-11-13 18:30:00', '1077.16', '', 0, '', '', '', 'evtryzacvcn2qoihk4py4iln', '', '', 0, 0),
(137, 'mustafa1390@gmail.com', '65656', '2017-11-13 18:31:40', '1199.45', '', 0, '', '', '', 'd2ykevmbpczlahbjewfob40v', '', '', 0, 0),
(138, 'anari@gmail.com', '654644546', '2017-11-13 18:37:39', '2380.90', '', 0, '', '', '', 'rgo2jduptgsj5pkk23wk11zx', '', '', 0, 0),
(139, 'mustafa@gmail.com', '9855555556666', '2017-11-13 18:50:11', '10514.64', '', 0, '', '', '', 'qqcki4u1dr21jvdijvnqb5fh', '', '', 0, 0),
(140, 'anari@gmail.com', '6546546', '2017-11-13 18:52:01', '1199.45', '', 0, '', '', '', '1bqls1por1tewvcaiiylhtux', '', '', 0, 0),
(141, 'mustafa1390@gmail.com', '989137775568', '2017-11-13 19:04:12', '2133.40', '', 0, '04a08828-5b6b-41cf-af05-6a6dd7b4dc06', '176-5623826867', 'UK4QXJ', 'mm2if0zctq5y1isvrh5tzuco', '{\"Status\":true,\"ErrorCode\":\"\",\"ErrorDescription\":null,\"TicketInfoList\":[{\"id\":4561,\"firstname\":\"jalal\",\"lastname\":\"ahmadi\",\"email\":\"mustafa1390@gmail.com\",\"phone\":\"00989384762155\",\"providerid\":0,\"pnr\":\"UK4QXJ\",\"total\":2133.40,\"servicefee\":44.42,\"providerfee\":35.54,\"recorddate\":\"13.11.2017 18:31:18\",\"iscancel\":0,\"canceldate\":\"\",\"billingname\":\"jalal ahmadi\",\"billingaddress\":\"UcuzaUç\",\"taxoffice\":\"TC\",\"taxnum\":\"11111111110\",\"weborpanel\":0,\"fresult\":{\"flightlist\":[{\"direction\":0,\"airline\":\"EK\",\"flightno\":\"976\",\"flightdatetime\":\"20.11.2017 05:40\",\"origin\":\"IKA\",\"arrivaldatetime\":\"20.11.2017 08:20\",\"destination\":\"DXB\",\"classcode\":\"U\"},{\"direction\":1,\"airline\":\"EK\",\"flightno\":\"977\",\"flightdatetime\":\"27.11.2017 20:45\",\"origin\":\"DXB\",\"arrivaldatetime\":\"27.11.2017 22:30\",\"destination\":\"IKA\",\"classcode\":\"U\"}],\"passengerlist\":[{\"gender\":\"MR\",\"firstname\":\"jalal\",\"lastname\":\"ahmadi\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"ADT\",\"eticketnumber\":\"176-5623826867\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000}]},\"mergekey\":\"04a08828-5b6b-41cf-af05-6a6dd7b4dc06\",\"ticketnumber\":\"176-5623826867;\"}]}', '', 0, 0),
(142, 'co.mashahd@gmail.com', '00989195020236', '2017-11-13 19:17:44', '1024.26', '', 0, '', '', '', 'jbh521l5wcyy425p3sakhamz', '', '', 0, 0),
(143, 'mustafa1390@gmail.com', '989137775568', '2017-11-15 22:46:59', '915.31', '', 0, '', '', '', 'bzuk31couav1pljrmh0iv2ze', '', 'HTTP/1.1 200 OK\r\nCache-Control: private\r\nContent-Type: text/html; charset=utf-8\r\nServer: Microsoft-IIS/10.0\r\nSet-Cookie: ASP.NET_SessionId=xtwtwgray5ovlzhjex4j34t3; path=/; HttpOnly\r\nX-AspNet-Version: 4.0.30319\r\nX-Powered-By: ASP.NET\r\nAccess-Control-Allow-Origin: *\r\nAccess-Control-Allow-Methods: POST, GET\r\nDate: Wed, 15 Nov 2017 19:13:48 GMT\r\nContent-Length: 11171\r\n\r\n{\"Status\":true,\"ErrorCode\":\"\",\"ErrorDescription\":\"\",\"sessionid\":null,\"FareRuleInfos\":[{\"FareReference\":\"VLY1PXOW\",\"FilingAirline\":\"TK\",\"MarketingAirline\":\"TK\",\"DepartureAirportLocationCode\":\"THR\",\"ArrivalAirportLocationCode\":\"TZX\"}],\"FareRulesTextsList\":[{\"SubTitle\":\"RULE APPLICATION\",\"SubCode\":\"RU\",\"Paragraph\":\"<p>ECONOMY CLASS TK FARES\\r<br /> APPLICATION\\r<br />   AREA\\r<br />     THESE FARES APPLY\\r<br />     FROM MIDDLE EAST TO TURKEY.\\r<br />   CLASS OF SERVICE\\r<br />     THESE FARES APPLY FOR ECONOMY CLASS SERVICE.\\r<br />   TYPES OF TRANSPORTATION\\r<br />     FARES GOVERNED BY THIS RULE CAN BE USED TO CREATE\\r<br />     ONE-WAY/ROUND-TRIP/OPEN-JAW JOURNEYS.\\r<br /> OTHER CONDITIONS\\r<br />   PASSENGER EXPENSES NOT PERMITTED\\r<br />   ---------------------------------------\\r<br />   MILES ACCRUAL IS SUBJECT TO THE OPERATING AIRLINE\\r<br />   -\\r<br />   PLEASE NOTE THAT THE BOOKING CLASS SHOWN ON YOUR\\r<br />   TICKET MAY DIFFER FROM THE BOOKING CLASS RELEVANT\\r<br />   FOR THE MILEAGE ACCRUAL\\r<br />   -----------------------------------------\\r<br /></p>\"},{\"SubTitle\":\"MIN STAY\",\"SubCode\":\"MN\",\"Paragraph\":\"<p>  NONE UNLESS OTHERWISE SPECIFIED\\r<br /></p>\"}', 0, 0),
(144, 'anari@gmail.com', '989137775568', '2017-11-15 22:56:03', '1034.09', '', 0, '', '', '', 'pluzsyb10tgga150aa1wf1g4', '', 'HTTP/1.1 200 OK\r\nCache-Control: private\r\nContent-Type: text/html; charset=utf-8\r\nServer: Microsoft-IIS/10.0\r\nSet-Cookie: ASP.NET_SessionId=npekiqs3vailpsrcmq2pvfwn; path=/; HttpOnly\r\nX-AspNet-Version: 4.0.30319\r\nX-Powered-By: ASP.NET\r\nAccess-Control-Allow-Origin: *\r\nAccess-Control-Allow-Methods: POST, GET\r\nDate: Wed, 15 Nov 2017 19:22:52 GMT\r\nContent-Length: 12772\r\n\r\n{\"Status\":true,\"ErrorCode\":\"\",\"ErrorDescription\":\"\",\"sessionid\":null,\"FareRuleInfos\":[{\"FareReference\":\"UFARE\",\"FilingAirline\":\"XY\",\"MarketingAirline\":\"XY\",\"DepartureAirportLocationCode\":\"IST\",\"ArrivalAirportLocationCode\":\"RUH\"},{\"FareReference\":\"LFARE\",\"FilingAirline\":\"XY\",\"MarketingAirline\":\"XY\",\"DepartureAirportLocationCode\":\"RUH\",\"ArrivalAirportLocationCode\":\"JED\"}],\"FareRulesTextsList\":[{\"SubTitle\":\"RULE APPLICATION\",\"SubCode\":\"RU\",\"Paragraph\":\"<p>ONE WAY ECONOMY CLASS FARES BETWEEN EUROPE AND MIDDLE EAST\\r<br /> APPLICATION\\r<br />   AREA\\r<br />     THESE FARES APPLY\\r<br />     BETWEEN EUROPE AND MIDDLE EAST.\\r<br />   CLASS OF SERVICE\\r<br />     THESE FARES APPLY FOR ECONOMY CLASS SERVICE.\\r<br />   TYPES OF TRANSPORTATION\\r<br />     THIS RULE GOVERNS ONE-WAY FARES.\\r<br />     FARES GOVERNED BY THIS RULE CAN BE USED TO CREATE\\r<br />     ONE-WAY/ROUND-TRIP/CIRCLE-TRIP/OPEN-JAW JOURNEYS.\\r<br /> CAPACITY LIMITATIONS\\r<br />   THE CARRIER SHALL LIMIT THE NUMBER OF PASSENGERS CARRIED\\r<br />   ON ANY ONE FLIGHT AT FARES GOVERNED BY THIS RULE AND SUCH\\r<br />   FARES WILL NOT NECESSARILY BE AVAILABLE ON ALL FLIGHTS.\\r<br />   THE NUMBER OF SEATS WHICH THE CAR', 0, 0),
(145, 'mustafa1390@gmail.com', '2556644554', '2017-11-16 02:34:53', '879.00', '', 0, '', '', '', '5tfes1x2uqzvksf44fl1nu4e', '', '', 0, 0),
(146, 'mustafa1390@gmail.com', '2556644554', '2017-11-16 02:39:21', '1351.02', '', 0, '', '', '', '235v14wmfoqzgvtqaqvs4krp', '', '', 0, 0),
(147, 'ali-azim@hotmail.com', '+905327409188', '2017-11-16 10:03:45', '1060.76', '', 0, '', '', '', '5siybo2ppfwz4p2oztidlj05', '', '', 0, 0),
(148, 'ali-azim@hotmail.com', '+905327409188', '2017-11-16 10:05:13', '1060.76', '', 0, '', '', '', '5siybo2ppfwz4p2oztidlj05', '', '', 0, 0),
(149, 'ali-azim@hotmail.com', '+905327409188', '2017-11-16 10:06:38', '1060.76', '', 0, '', '', '', '5siybo2ppfwz4p2oztidlj05', '', '', 0, 0),
(150, 'co.mashahd@gmail.com', '00989195020236', '2017-11-16 16:56:25', '997.74', '', 0, '', '', '', 'efo33eruyojmfex01wphemyj', '', '', 0, 0),
(151, 'co.mashahd@gmail.com', '00989195020236', '2017-11-16 16:59:25', '612.54', '', 0, '', '', '', 'dfghfech0elmj0k0p1z1nwmu', '', '', 0, 0),
(152, 'celal@barsanturizm.com', '902122211221', '2017-11-16 17:39:13', '915.09', '', 0, '', '', '', 'oelpiawsyjojlwx0lv0i5pht', '', '', 0, 0),
(153, 'mahmut@barsanturizm.com', '902122211221', '2017-11-16 17:40:56', '915.09', '', 0, '161423a5-d81e-4002-963a-5973349d5a33', '589-5623826873', 'V2WOMT', 'oelpiawsyjojlwx0lv0i5pht', '{\"Status\":true,\"ErrorCode\":\"\",\"ErrorDescription\":null,\"TicketInfoList\":[{\"id\":4575,\"firstname\":\"Mahmut\",\"lastname\":\"Zumbul\",\"email\":\"mustafa1390@gmail.com\",\"phone\":\"00989384762155\",\"providerid\":0,\"pnr\":\"V2WOMT\",\"total\":915.09,\"servicefee\":67.23,\"providerfee\":35.86,\"recorddate\":\"16.11.2017 17:08:12\",\"iscancel\":0,\"canceldate\":\"\",\"billingname\":\"Mahmut Zumbul\",\"billingaddress\":\"UcuzaUç\",\"taxoffice\":\"TC\",\"taxnum\":\"11111111110\",\"weborpanel\":0,\"fresult\":{\"flightlist\":[{\"direction\":0,\"airline\":\"9W\",\"flightno\":\"587\",\"flightdatetime\":\"30.11.2017 19:20\",\"origin\":\"DXB\",\"arrivaldatetime\":\"01.12.2017 00:20\",\"destination\":\"DEL\",\"classcode\":\"W\"},{\"direction\":1,\"airline\":\"9W\",\"flightno\":\"582\",\"flightdatetime\":\"05.12.2017 04:05\",\"origin\":\"DEL\",\"arrivaldatetime\":\"05.12.2017 06:45\",\"destination\":\"AUH\",\"classcode\":\"W\"},{\"direction\":1,\"airline\":\"EY\",\"flightno\":\"6550\",\"flightdatetime\":\"05.12.2017 08:00\",\"origin\":\"AUH\",\"arrivaldatetime\":\"05.12.2017 09:20\",\"destination\":\"XNB\",\"classcode\":\"W\"}],\"passengerlist\":[{\"gender\":\"MR\",\"firstname\":\"Mahmut\",\"lastname\":\"Zumbul\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"ADT\",\"eticketnumber\":\"589-5623826873\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000}]},\"mergekey\":\"161423a5-d81e-4002-963a-5973349d5a33\",\"ticketnumber\":\"589-5623826873;\"}]}', '', 0, 0),
(154, 'celal@barsanturizm.com', '902122211221', '2017-11-16 17:50:19', '3491.59', '', 0, '', '', '', 'suvydwfc1sayg1rocmchfpzd', '', '', 0, 0),
(155, 'ali-azim@hotmail.com', '+905327409188', '2017-11-16 18:22:04', '1477.06', '', 0, '', '', '', 'r3noado0lnm0vob33c0vs0bo', '', '', 0, 0),
(156, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 12:12:25', '894.02', '', 0, '', '', '', '221biaebjmpoxssjgome32ot', '', '', 0, 0),
(157, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 12:20:12', '1873.47', '', 0, '', '', '', 'inmykpny4ytacmd1pyumzk52', '', '', 0, 0),
(158, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 12:36:34', '675.29', '', 0, '', '', '', 'fr1nfjdersmnyi1zz2qtm04s', '', '', 0, 0),
(159, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 12:37:38', '675.29', '', 0, '', '', '', 'fr1nfjdersmnyi1zz2qtm04s', '', '', 0, 0),
(160, 'mustafa1390@gmail.com', '5675675', '2017-11-20 13:41:45', '1148.92', '', 0, '', '', '', 'nkistrnbeabjjrkemqxmz5ni', '', '', 0, 0),
(161, 'mustafa1390@gmail.com', '568568', '2017-11-20 13:43:14', '939.47', '', 0, '', '', '', 'lmbwi0avgdl3o3kfa5b1zkzt', '', '', 0, 0),
(162, 'mustafa1390@gmail.com', '6757567', '2017-11-20 13:46:07', '563.28', '', 0, '', '', '', 'ftabccenko0ypewt3jhl1cej', '', '', 0, 0),
(163, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 14:08:55', '1278.73', '', 0, '', '', '', 'zpgtd05brxit5xrsr2y1lfad', '', '', 0, 0),
(164, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 14:10:42', '1148.92', '', 0, '', '', '', 'm0w2tfdkrjagiqfgngonbz0a', '', '', 0, 0),
(165, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 14:12:03', '1148.92', '', 0, '', '', '', 'm0w2tfdkrjagiqfgngonbz0a', '', '', 0, 0),
(166, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 14:12:16', '1148.92', '', 0, '', '', '', 'm0w2tfdkrjagiqfgngonbz0a', '', '', 0, 0),
(167, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 14:15:20', '4985.78', '', 0, '', '', '', 'ylgyspqtosis35wa0zr5igo0', '', '', 0, 0),
(168, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 14:17:39', '1801.26', '', 0, '', '', '', 'e4s430k0d05mtghzmkfb0jnt', '', '', 0, 0),
(169, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 14:19:15', '1801.26', '', 0, '', '', '', 'e4s430k0d05mtghzmkfb0jnt', '', '', 0, 0),
(170, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 14:20:22', '4985.78', '', 0, '', '', '', 'ylgyspqtosis35wa0zr5igo0', '', '', 0, 0),
(171, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 14:20:55', '639.43', '', 0, '857c1206-37db-4bdb-8555-a00241ae1ada', '235-5623826874', 'VNWCJS', 'owikm1iphsasuqdr3vscw5uy', '{\"Status\":true,\"ErrorCode\":\"\",\"ErrorDescription\":null,\"TicketInfoList\":[{\"id\":4578,\"firstname\":\"ali\",\"lastname\":\"azimov\",\"email\":\"mustafa1390@gmail.com\",\"phone\":\"00989384762155\",\"providerid\":0,\"pnr\":\"VNWCJS\",\"total\":639.43,\"servicefee\":44.82,\"providerfee\":35.86,\"recorddate\":\"20.11.2017 13:48:02\",\"iscancel\":0,\"canceldate\":\"\",\"billingname\":\"ali azimov\",\"billingaddress\":\"UcuzaUç\",\"taxoffice\":\"TC\",\"taxnum\":\"11111111110\",\"weborpanel\":0,\"fresult\":{\"flightlist\":[{\"direction\":0,\"airline\":\"TK\",\"flightno\":\"420\",\"flightdatetime\":\"30.11.2017 04:25\",\"origin\":\"VKO\",\"arrivaldatetime\":\"30.11.2017 07:30\",\"destination\":\"IST\",\"classcode\":\"V\"}],\"passengerlist\":[{\"gender\":\"MR\",\"firstname\":\"ali\",\"lastname\":\"azimov\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"ADT\",\"eticketnumber\":\"235-5623826874\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000}]},\"mergekey\":\"857c1206-37db-4bdb-8555-a00241ae1ada\",\"ticketnumber\":\"235-5623826874;\"}]}', '', 0, 0),
(172, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 14:23:46', '4985.78', '', 0, '', '', '', 'ylgyspqtosis35wa0zr5igo0', '', '', 0, 0),
(173, 'co.mashahd@gmail.com', '00989195020236', '2017-11-20 14:24:12', '1093.43', '', 0, '', '', '', '2ccentd5c0dyc4km3swcmbd4', '', '', 0, 0),
(174, 'ouc2005@gmail.com', '902126591202', '2017-11-20 14:40:08', '6028.20', '', 0, '', '', '', 'lqein0x4xvpy24qxpdjfzbv4', '', '', 0, 0),
(175, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 15:56:42', '630.20', '', 0, '', '', '', 'yp0twxnsqtjc3r2pnm3m0hls', '', '', 0, 0),
(176, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 16:14:19', '1126.56', '', 0, '', '', '', '0p2bh2afmso5omfasirv2nng', '', '', 0, 0),
(177, 'mustafa1390@gmail.com', '6546546', '2017-11-20 16:17:09', '563.28', '', 0, '', '', '', 'uidiiqgmsv5ipmhlferfzuu0', '', '', 0, 0),
(178, 'mustafa1390@gmail.com', '955545454455', '2017-11-20 16:18:03', '563.28', '', 0, '', '', '', 'uidiiqgmsv5ipmhlferfzuu0', '', '', 0, 0),
(179, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 16:28:28', '699.31', '', 0, '', '', '', 'fhtksyhw0tcomxvpp455uvoi', '', '', 0, 0),
(180, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 16:45:24', '565.34', '', 0, '', '', '', 'dnnhlftp4ezerbptp01vn3n0', '', '', 0, 0),
(181, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 16:46:58', '997.74', '', 0, '', '', '', 'ijtgf4bsj0i4nzfvfylmfw2x', '', '', 0, 0),
(182, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 16:55:31', '766.73', '', 0, '', '', '', '01e10kdbbo2l3nyfnw2c5yft', '', '', 0, 0),
(183, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 16:58:11', '915.31', '', 0, '', '', '', 'xcinwxfc03s5ludi5tqjrfjc', '', '', 0, 0),
(184, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 17:15:24', '1376.98', '', 0, '68e3d7c3-9a4a-48dd-969b-e5b1cb9c4da7', '', 'VONJD9', 'sk3eep0mdojcuwhu2ibo5hvd', '{\"Status\":true,\"ErrorCode\":\"\",\"ErrorDescription\":null,\"TicketInfoList\":[{\"id\":4581,\"firstname\":\"mostafa\",\"lastname\":\"yosefi\",\"email\":\"mustafa1390@gmail.com\",\"phone\":\"00989384762155\",\"providerid\":0,\"pnr\":\"VONJD9\",\"total\":1376.98,\"servicefee\":44.82,\"providerfee\":35.86,\"recorddate\":\"20.11.2017 16:42:58\",\"iscancel\":0,\"canceldate\":\"\",\"billingname\":\"mostafa yosefi\",\"billingaddress\":\"UcuzaUç\",\"taxoffice\":\"TC\",\"taxnum\":\"11111111110\",\"weborpanel\":0,\"fresult\":{\"flightlist\":[{\"direction\":0,\"airline\":\"SV\",\"flightno\":\"595\",\"flightdatetime\":\"27.11.2017 23:00\",\"origin\":\"DXB\",\"arrivaldatetime\":\"28.11.2017 01:15\",\"destination\":\"JED\",\"classcode\":\"V\"},{\"direction\":1,\"airline\":\"SV\",\"flightno\":\"1030\",\"flightdatetime\":\"30.11.2017 11:40\",\"origin\":\"JED\",\"arrivaldatetime\":\"30.11.2017 13:15\",\"destination\":\"RUH\",\"classcode\":\"V\"},{\"direction\":1,\"airline\":\"SV\",\"flightno\":\"560\",\"flightdatetime\":\"30.11.2017 16:05\",\"origin\":\"RUH\",\"arrivaldatetime\":\"30.11.2017 19:00\",\"destination\":\"DXB\",\"classcode\":\"V\"}],\"passengerlist\":[{\"gender\":\"MR\",\"firstname\":\"mostafa\",\"lastname\":\"yosefi\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"ADT\",\"eticketnumber\":\"\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000},{\"gender\":\"MR\",\"firstname\":\"yosef\",\"lastname\":\"yosefi\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"INF\",\"eticketnumber\":\"\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000}]},\"mergekey\":\"68e3d7c3-9a4a-48dd-969b-e5b1cb9c4da7\",\"ticketnumber\":\"\"}]}', '', 0, 0),
(185, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 17:41:20', '1785.53', '', 0, '', '', '', 'vdfyyijzcn35usss0uc2supy', '', '', 0, 0),
(186, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 17:42:49', '1785.53', '', 0, '', '', '', 'vdfyyijzcn35usss0uc2supy', '', '', 0, 0),
(187, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 17:46:16', '493.22', '', 0, '97ede709-fae5-47ff-9424-5cb85d4fdf8e', '235-5623826875', 'VOQ24U', 'qwy2mxx10vuuceozvkckl1vl', '{\"Status\":true,\"ErrorCode\":\"\",\"ErrorDescription\":null,\"TicketInfoList\":[{\"id\":4582,\"firstname\":\"ali\",\"lastname\":\"azimov\",\"email\":\"mustafa1390@gmail.com\",\"phone\":\"00989384762155\",\"providerid\":0,\"pnr\":\"VOQ24U\",\"total\":493.22,\"servicefee\":44.82,\"providerfee\":35.86,\"recorddate\":\"20.11.2017 17:13:20\",\"iscancel\":0,\"canceldate\":\"\",\"billingname\":\"ali azimov\",\"billingaddress\":\"UcuzaUç\",\"taxoffice\":\"TC\",\"taxnum\":\"11111111110\",\"weborpanel\":0,\"fresult\":{\"flightlist\":[{\"direction\":0,\"airline\":\"TK\",\"flightno\":\"419\",\"flightdatetime\":\"28.11.2017 00:35\",\"origin\":\"IST\",\"arrivaldatetime\":\"28.11.2017 03:30\",\"destination\":\"VKO\",\"classcode\":\"V\"}],\"passengerlist\":[{\"gender\":\"MR\",\"firstname\":\"ali\",\"lastname\":\"azimov\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"ADT\",\"eticketnumber\":\"235-5623826875\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000},{\"gender\":\"MR\",\"firstname\":\"ali\",\"lastname\":\"mamamama\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"INF\",\"eticketnumber\":\"235-5623826876\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000}]},\"mergekey\":\"97ede709-fae5-47ff-9424-5cb85d4fdf8e\",\"ticketnumber\":\"235-5623826875;235-5623826876;\"}]}', '', 0, 0),
(188, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 17:49:04', '675.29', '', 0, '', '', '', 'apyzrt1lhwmcue4ldejupn50', '', '', 0, 0),
(189, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 17:53:12', '3193.12', '', 0, '', '', '', '5rww5tkkeoqeoylqhjp3q02w', '', '', 0, 0),
(190, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 17:54:32', '3193.12', '', 0, '', '', '', '5rww5tkkeoqeoylqhjp3q02w', '', '', 0, 0),
(191, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 17:55:56', '3193.12', '', 0, '', '', '', '5rww5tkkeoqeoylqhjp3q02w', '', '', 0, 0),
(192, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 18:02:51', '2104.84', '', 0, '', '', '', 'gxjkislapizgpf1pqdxdgsla', '', '', 0, 0),
(193, 'ali-azim@hotmail.com', '+905327409188', '2017-11-20 18:37:28', '5338.12', '', 0, '', '', '', 'zdnu0v3ejxit3zblpvv0ly34', '', '', 0, 0),
(194, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 18:57:42', '1075.37', '', 0, '', '', '', 'flqkeqqnk4bltcv03ko3dt2i', '', '', 0, 0),
(195, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 19:00:57', '1124.05', '', 0, '', '', '', 'flqkeqqnk4bltcv03ko3dt2i', '', '', 0, 0),
(196, 'mustafa1390@gmail.com', '989137775568', '2017-11-20 19:06:48', '751.17', '', 0, '', '', '', 'srab1xut53rvvrdkf2aukx1u', '', '', 0, 0),
(197, 'ali-azim@hotmail.com', '+905327409188', '2017-11-21 09:01:22', '2029.81', '', 0, '', '', '', 'gpdqaqnrym3e3guhhx1tcmda', '', '', 0, 0),
(198, 'ali-azim@hotmail.com', '+905327409188', '2017-11-21 09:02:22', '2029.81', '', 0, '', '', '', 'gpdqaqnrym3e3guhhx1tcmda', '', '', 0, 0),
(199, 'ali-azim@hotmail.com', '+905327409188', '2017-11-21 09:03:17', '2029.81', '', 0, '', '', '', 'gpdqaqnrym3e3guhhx1tcmda', '', '', 0, 0),
(200, 'ali-azim@hotmail.com', '+905327409188', '2017-11-21 10:39:42', '2029.81', '', 0, '', '', '', 'xxzi304axjsbalstznoirh4z', '', '', 0, 0),
(201, 'ali-azim@hotmail.com', '+905327409188', '2017-11-21 10:40:34', '2029.81', '', 0, '', '', '', 'xxzi304axjsbalstznoirh4z', '', '', 0, 0),
(202, 'ali-azim@hotmail.com', '5327409188', '2017-11-21 10:41:32', '2029.81', '', 0, '', '', '', 'xxzi304axjsbalstznoirh4z', '', '', 0, 0),
(203, 'ali-azim@hotmail.com', '5327409188', '2017-11-21 10:44:22', '1137.58', '', 0, '', '', '', '4l5xsyejo45q2kf2c0iux3ev', '', '', 0, 0),
(204, 'ali-azim@hotmail.com', '5327409188', '2017-11-21 10:45:18', '1137.58', '', 0, '', '', '', '4l5xsyejo45q2kf2c0iux3ev', '', '', 0, 0),
(205, 'celal@barsanturizm.com', '902122211221', '2017-11-21 12:46:39', '2855.83', '', 0, '', '', '', 'wvyxduuj1jn3egdp3kqz2xew', '', '', 0, 0),
(206, 'FERAY@BARSANTURIZM.COM', '902122211358', '2017-11-21 12:48:53', '2855.83', '', 0, '', '', '', 'wvyxduuj1jn3egdp3kqz2xew', '', '', 0, 0),
(207, 'esra@barsanturizm.com', '905547395851', '2017-11-21 12:59:08', '3517.77', '', 0, '', '', '', 't4qinu2qud22wdinhdthlzx1', '', '', 0, 0),
(208, 'sevde@barsanturizm.com', '905547395850', '2017-11-21 13:08:42', '4675.74', '', 0, '', '', '', 'ufoq5ib3h1we552i3pi2h0h0', '', '', 0, 0),
(209, 'ercan@barsanturizm.com', '905533541298', '2017-11-21 18:01:06', '1446.25', '', 0, '', '', '', '301oqpzgg2lhylsezjjmhshi', '', '', 0, 0),
(210, 'gul@barsanturizm.com', '905423241806', '2017-11-21 18:06:51', '1425.62', '', 0, '', '', '', 'ggseplg5gmlx2awwpjyz3qwp', '', '', 0, 0),
(211, 'mustafa1390@gmail.com', '989137775568', '2017-11-22 00:52:17', '1279.44', '', 0, '', '', '', 'yrvnzfyx44dy2nxeiw5z3mwk', '', '', 0, 0),
(212, 'ali-azim@hotmail.com', '+905327409188', '2017-11-22 13:06:25', '929.26', '', 0, '11a2b076-aa23-44c1-9d96-fd9772db077e', '235-5799739165', 'WGURPL', 'f3dg2cjg1i4qv5th4143i1i2', '{\"Status\":true,\"ErrorCode\":\"\",\"ErrorDescription\":null,\"TicketInfoList\":[{\"id\":19325,\"firstname\":\"ali\",\"lastname\":\"azimov\",\"email\":\"mustafa1390@gmail.com\",\"phone\":\"00989384762155\",\"providerid\":0,\"pnr\":\"WGURPL\",\"total\":929.26,\"servicefee\":91.71,\"providerfee\":27.52,\"recorddate\":\"22.11.2017 12:30:42\",\"iscancel\":0,\"canceldate\":\"\",\"billingname\":\"ali azimov\",\"billingaddress\":\"UcuzaUç\",\"taxoffice\":\"TC\",\"taxnum\":\"11111111110\",\"weborpanel\":0,\"fresult\":{\"flightlist\":[{\"direction\":0,\"airline\":\"TK\",\"flightno\":\"419\",\"flightdatetime\":\"30.01.2018 00:35\",\"origin\":\"IST\",\"arrivaldatetime\":\"30.01.2018 03:30\",\"destination\":\"VKO\",\"classcode\":\"V\"}],\"passengerlist\":[{\"gender\":\"MR\",\"firstname\":\"ali\",\"lastname\":\"azimov\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"ADT\",\"eticketnumber\":\"235-5799739165\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000},{\"gender\":\"MR\",\"firstname\":\"veli\",\"lastname\":\"azimov\",\"birthdate\":null,\"passportnumber\":null,\"passportdate\":null,\"nationality\":null,\"type\":\"CHD\",\"eticketnumber\":\"235-5799739166\",\"tckimlik\":\"11111111110\",\"basefare\":0.0000,\"totalfare\":0.0000,\"taxfare1\":0.0000,\"taxfare2\":0.0000,\"taxfare3\":0.0000}]},\"mergekey\":\"11a2b076-aa23-44c1-9d96-fd9772db077e\",\"ticketnumber\":\"235-5799739165;235-5799739166;\"}]}', '', 0, 0),
(213, 'mustafa1390@gmail.com', '989137775568', '2017-11-22 18:06:12', '702.88', '', 0, '', '', '', 'bog0fdgyvbdqfynlaovt2nof', '', '', 0, 0),
(214, 'ozkan@ozkanozer.com', '05382171959', '2017-11-25 13:26:21', '934.57', '', 0, '', '', '', 'fxzzpyg1chzgyiilboe0qizy', '', '', 0, 0),
(215, 'ibrahim@barsanturizm.com', '902122161555', '2017-11-25 14:59:30', '1083.24', '', 0, '', '', '', 'p2ahipkmq0o0bu55rs0nct1e', '', '', 0, 0),
(216, 'mustafa1390@gmail.com', '989137775568', '2017-11-25 17:21:39', '1302.71', '', 0, '', '', '', 'mviwwkzm1s041f2schrgehmh', '', '', 0, 0),
(217, 'mustafa1390@gmail.com', '989137775568', '2017-11-25 17:43:38', '1050.35', '', 0, '', '', '', 'ivdqoklk5n3mtj3fvnh1liti', '', '', 0, 0),
(218, 'mustafa1390@gmail.com', '989137775568', '2017-11-25 17:44:22', '1050.35', '', 0, '', '', '', 'ivdqoklk5n3mtj3fvnh1liti', '', '', 0, 0),
(219, 'mustafa1390@gmail.com', '989137775568', '2017-11-25 17:47:13', '1050.35', '', 0, '', '', '', 'ivdqoklk5n3mtj3fvnh1liti', '', '', 0, 0),
(220, 'anari@gmail.com', '6546546', '2017-11-25 17:50:10', '945.67', '', 0, '', '', '', 'ivdqoklk5n3mtj3fvnh1liti', '', '', 0, 0),
(221, 'mustafa1390@gmail.com', '989137775568', '2017-11-25 17:51:26', '1418.86', '', 0, '', '', '', 'tfndgvp2yup1k1ltl3vulrzb', '', '', 0, 0),
(222, 'anari@gmail.com', '989137775568', '2017-11-30 14:50:22', '1246.60', '', 0, '', '', '', 'ha0jrhvralzmww344bz454qk', '', '', 0, 0),
(223, 'anari@gmail.com', '989137775568', '2017-11-30 14:52:48', '1246.60', '', 0, '', '', '', 'ha0jrhvralzmww344bz454qk', '', '', 0, 0),
(224, 'anari@gmail.com', '989137775568', '2017-11-30 14:53:19', '1246.60', '', 0, '', '', '', 'ha0jrhvralzmww344bz454qk', '', '', 0, 0),
(225, 'mustafa1390@gmail.com', '989137775568', '2017-11-30 15:07:14', '2040.24', '2241.24', 0, '', '', '', 'ansntathwytzxwxtsaaqfw1l', '', '', 0, 0),
(226, 'mustafa1390@gmail.com', '989137775568', '2017-12-01 12:42:13', '7246.66', '7447.66', 0, '', '', '', 'bksupschbkevi0whbgm0b25e', '', '', 0, 0),
(227, 'mustafa1390@gmail.com', '989137775568', '2017-12-02 01:12:46', '587.70', '788.7', 0, '', '', '', 'hv0cvqavbkyhlgvvjqkjfara', '', '', 0, 0),
(228, 'mustafa1390@gmail.com', '989137775568', '2017-12-02 01:19:31', '504.40', '705.4', 0, '', '', '', 'lsamoh5dn25pdoxlmr4loete', '', '', 0, 0),
(229, 'mustafa1390@gmail.com', '989137775568', '2017-12-02 01:23:31', '714.76', '915.76', 0, '', '', '', '0x4h4ugnfu1fm31t4cbr5k2u', '', '', 0, 0),
(230, 'co.mashahd@gmail.com', '00989195020236', '2017-12-02 09:00:39', '579.48', '599.48', 0, '', '', '', 'dnohym3pmrbvbiu3hcar5snn', '', '', 0, 0),
(231, 'ransohrab@gmail.com', '05319747310', '2017-12-02 17:29:37', '904.04', '924.04', 0, '', '', '', 'kwqfjescz3ttsyn0un2juprv', '', '', 0, 0),
(232, 'mustafa1390@gmail.com', '989137775568', '2017-12-10 00:35:47', '628.05', '648.05', 0, '', '', '', 'qvbjc4gfzorxuajl5bfa3n3k', '', '', 0, 0),
(233, 'mustafa1390@gmail.com', '989137775568', '2017-12-10 00:48:28', '628.05', '648.05', 0, '', '', '', 'qvbjc4gfzorxuajl5bfa3n3k', '', '', 0, 0),
(234, 'mustafa1390@gmail.com', '989137775568', '2017-12-10 00:53:12', '628.05', '648.05', 0, '', '', '', 'qvbjc4gfzorxuajl5bfa3n3k', '', '', 0, 0),
(235, 'mustafa1390@gmail.com', '989137775568', '2017-12-10 13:25:30', '1564.26', '583.13', 0, '', '', '', '12pkdses2q0v13hk1dhi2zow', '', '', 0, 0),
(236, 'mustafa1390@gmail.com', '989137775568', '2017-12-10 13:35:58', '1564.26', '583.13', 0, '', '', '', '12pkdses2q0v13hk1dhi2zow', '', '', 0, 0),
(237, 'mustafa1390@gmail.com', '989137775568', '2017-12-10 13:41:50', '1564.26', '583.13', 0, '', '', '', '12pkdses2q0v13hk1dhi2zow', '', '', 0, 0),
(238, 'sdarfsdfg@gfg.oi', '989137775568', '2017-12-12 17:48:11', '5975.02', '2,151.01', 0, '', '', '', 'agvbse2nmm5wwmfqmvpc30w5', '', '', 0, 0),
(239, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 17:52:33', '5975.02', '2,151.01', 0, '', '', '', 'agvbse2nmm5wwmfqmvpc30w5', '', '', 0, 0),
(240, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 17:53:07', '5975.02', '2,151.01', 0, '', '', '', 'agvbse2nmm5wwmfqmvpc30w5', '', '', 0, 0),
(241, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 17:53:41', '5975.02', '2,151.01', 0, '', '', '', 'agvbse2nmm5wwmfqmvpc30w5', '', '', 0, 0),
(242, 'sdarfsdfg@gfg.oi', '65656', '2017-12-12 18:14:56', '2799.21', '1,007.72', 0, '', '', '', 'awwysbqzwqegd40ihsiplstq', '', '', 0, 0),
(243, 'sdarfsdfg@gfg.oi', '65656', '2017-12-12 18:15:35', '2799.21', '1,007.72', 0, '', '', '', 'awwysbqzwqegd40ihsiplstq', '', '', 0, 0),
(244, 'anari@gmail.com', 'fgh', '2017-12-12 18:16:19', '1290.73', '464.66', 0, '', '', '', 'awwysbqzwqegd40ihsiplstq', '', '', 0, 0),
(245, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 18:21:34', '5952.34', '2,142.84', 0, '', '', '', 'nl5aj22ia20xpp2wdi5jnvyo', '', '', 0, 0),
(246, 'sdarfsdfg@gfg.oi', '989137775568', '2017-12-12 18:23:08', '1290.73', '464.66', 0, '', '', '', '4bmwmgvg4dh4otaneiruohhk', '', '', 0, 0),
(247, 'sdarfsdfg@gfg.oi', '989137775568', '2017-12-12 18:25:12', '1290.73', '464.66', 0, '', '', '', '4bmwmgvg4dh4otaneiruohhk', '', '', 0, 0),
(248, 'sdarfsdfg@gfg.oi', '989137775568', '2017-12-12 18:25:24', '1290.73', '464.66', 0, '', '', '', '4bmwmgvg4dh4otaneiruohhk', '', '', 0, 0),
(249, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 18:27:14', '1127.98', '406.07', 0, '', '', '', 'ajo154xaptdo4taiee505iex', '', '', 0, 0),
(250, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 19:15:11', '1290.73', '367.86', 0, '', '', '', 'z1ij50jvasab5enucxivtsqd', '', '', 0, 0),
(251, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 19:16:21', '4325.06', '1,232.64', 0, '', '', '', 'z1ij50jvasab5enucxivtsqd', '', '', 0, 0),
(252, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 19:17:53', '3393.24', '967.07', 0, '', '', '', 'p34f5f0gdkxwgdgonlko1brz', '', '', 0, 0),
(253, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 19:25:23', '1290.73', '367.86', 0, '', '', '', '2n2ysqsenl5cjltsd45yp43k', '', '', 0, 0),
(254, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 19:27:16', '2111.67', '601.83', 0, '', '', '', 'r3xr3ei1snc30zj3znlwgeh5', '', '', 0, 0),
(255, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 19:41:46', '1112.34', '317.02', 0, '', '', '', 'r3xr3ei1snc30zj3znlwgeh5', '', '', 0, 0),
(256, 'mustafa1390@gmail.com', '6546546', '2017-12-12 19:42:29', '6479.13', '1,846.55', 0, '', '', '', 'r3xr3ei1snc30zj3znlwgeh5', '', '', 0, 0),
(257, 'mustafa1390@gmail.com', '6546546', '2017-12-12 21:34:44', '6479.13', '1,846.55', 0, '', '', '', 'r3xr3ei1snc30zj3znlwgeh5', '', '', 0, 0),
(258, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 21:40:42', '9048.30', '2,578.77', 0, '', '', '', 'o3wxbb3dgek3iiourbmphxd1', '', '', 0, 0),
(259, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 21:47:06', '1731.40', '493.45', 0, '', '', '', 'xkbvz3yy4x1qogbizarycyus', '', '', 0, 0),
(260, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 21:47:38', '1731.40', '493.45', 0, '', '', '', 'xkbvz3yy4x1qogbizarycyus', '', '', 0, 0),
(261, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 21:49:12', '1731.40', '493.45', 0, '', '', '', 'xkbvz3yy4x1qogbizarycyus', '', '', 0, 0),
(262, 'mustafa1390@gmail.com', '989137775568', '2017-12-12 21:57:22', '1407.09', '401.02', 0, '', '', '', 'pjujn01x1ds4hiebold4e2rg', '', '', 0, 0),
(263, 'mustafa1390@gmail.com', '6546546', '2017-12-12 21:58:21', '1706.28', '486.29', 0, '', '', '', 'pjujn01x1ds4hiebold4e2rg', '', '', 0, 0),
(264, 'sdarfsdfg@gfg.oi', '989137775568', '2017-12-12 22:05:53', '1501.27', '427.86', 0, '', '', '', 'wxdqfftkiossmbnikqzd5jvm', '', '', 0, 0),
(265, 'sdarfsdfg@gfg.oi', '989137775568', '2017-12-12 22:07:13', '1501.27', '427.86', 0, '', '', '', 'wxdqfftkiossmbnikqzd5jvm', '', '', 0, 0),
(266, 'mustafa1390@gmail.com', '6546546', '2017-12-12 22:08:03', '1501.27', '427.86', 0, '', '', '', 'wxdqfftkiossmbnikqzd5jvm', '', '', 0, 0),
(267, 'ddd@ffff.op', '777777', '2017-12-22 22:50:06', '593.08', '169.03', 0, '', '', '', '5e15qi1hkbmx2hvjnnowfbmq', '', '', 0, 0),
(268, 'ddd@ffff.op', '777777', '2017-12-22 22:54:42', '593.08', '169.03', 0, '', '', '', '5e15qi1hkbmx2hvjnnowfbmq', '', '', 0, 0),
(269, 'ddd@ffff.op', '777777', '2017-12-22 23:12:30', '593.08', '169.03', 0, '', '', '', '5e15qi1hkbmx2hvjnnowfbmq', '', '', 0, 0),
(270, 'ddd@ffff.op', '777777', '2017-12-22 23:29:53', '1110.50', '316.49', 0, '', '', '', 'wivcnjzxwzi32pgs5kz0viht', '', '', 0, 0),
(271, 'ddd@ffff.op', '777777', '2017-12-23 00:07:19', '1269.93', '361.93', 0, '', '', '', 'nhlt5sbwliigjy404zq3hmo3', '', '', 0, 0),
(272, 'ddd@ffff.op', '777777', '2017-12-23 00:09:13', '1119.32', '319.01', 0, '', '', '', 'l4drklkxncxbwmd4lczcuheb', '', '', 0, 0),
(273, 'ddd@ffff.op', '777777', '2017-12-23 00:14:44', '1119.32', '319.01', 0, '', '', '', 'l4drklkxncxbwmd4lczcuheb', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `belitsearch`
--

CREATE TABLE `belitsearch` (
  `id` int(12) NOT NULL,
  `bls_origin` int(6) NOT NULL,
  `bls_desti` int(6) NOT NULL,
  `bls_datefly` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bls_hfly` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `bls_number` int(6) NOT NULL,
  `bls_codbelit` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `bls_codfly` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bls_originname` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bls_destiname` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bls_originnem` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `bls_destinem` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `bls_originctr` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bls_destictr` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bls_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `bls_active` int(2) NOT NULL,
  `bls_remain` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `belitsearch`
--

INSERT INTO `belitsearch` (`id`, `bls_origin`, `bls_desti`, `bls_datefly`, `bls_hfly`, `bls_number`, `bls_codbelit`, `bls_codfly`, `bls_originname`, `bls_destiname`, `bls_originnem`, `bls_destinem`, `bls_originctr`, `bls_destictr`, `bls_createdatdate`, `bls_active`, `bls_remain`) VALUES
(27, 4, 5, '05/31/2017', '02:45 AM', 5, '16154040629', 'codfly ffgggg', 'ISFAHAN', 'istanbul', 'ISF', 'IST', 'IRAN', 'Turkey', '2017-05-29 03:04:57', 0, 2),
(28, 6, 2, '05/31/2017', '03:00 AM', 5, '49614017131', 'ggghg', 'Mumbai ', 'Rom', 'MUM', 'ROM', 'INDIA', 'italy', '2017-05-29 03:23:00', 0, 3),
(29, 1, 3, '05/31/2017', '04:15 PM', 5, '42686997773', 'rrrrrrrrrr', 'tokio', 'Tehran', 'tko', 'TEH', 'japan', 'IRAN', '2017-05-30 16:33:51', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `charge`
--

CREATE TABLE `charge` (
  `charge_id` int(11) NOT NULL,
  `charge_arou` int(2) NOT NULL,
  `charge_iduser` int(11) NOT NULL,
  `charge_pay` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `charge_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `charge`
--

INSERT INTO `charge` (`charge_id`, `charge_arou`, `charge_iduser`, `charge_pay`, `charge_createdatdate`) VALUES
(1, 3, 1, '2000', '2017-11-30 01:19:36'),
(2, 3, 8, '10', '2017-12-02 08:55:42'),
(3, 3, 10, '0', '2017-12-21 18:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(8) NOT NULL,
  `cit_name` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `cit_nem` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `cit_ctr` int(6) NOT NULL,
  `cit_active` int(2) NOT NULL,
  `cit_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `cit_name`, `cit_nem`, `cit_ctr`, `cit_active`, `cit_createdatdate`) VALUES
(1, 'tokio', 'tko', 3, 1, '2017-04-21 14:55:43'),
(2, 'Rom', 'ROM', 1, 1, '2017-04-21 16:41:54'),
(3, 'Tehran', 'TEH', 7, 1, '2017-04-24 18:28:04'),
(4, 'ISFAHAN', 'ISF', 7, 1, '2017-04-24 18:28:48'),
(5, 'istanbul', 'IST', 8, 1, '2017-04-27 15:10:50'),
(6, 'Mumbai ', 'MUM', 9, 1, '2017-05-02 13:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `clas`
--

CREATE TABLE `clas` (
  `id` int(4) NOT NULL,
  `clas_lesson` int(4) NOT NULL,
  `clas_name` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `clas_active` int(2) NOT NULL,
  `clas_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `clas_startdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `clas_term` int(4) NOT NULL,
  `clas_period` int(6) NOT NULL,
  `clas_level` int(4) NOT NULL,
  `clas_professor` int(6) NOT NULL,
  `clas_finical` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `clas`
--

INSERT INTO `clas` (`id`, `clas_lesson`, `clas_name`, `clas_active`, `clas_createdatdate`, `clas_startdate`, `clas_term`, `clas_period`, `clas_level`, `clas_professor`, `clas_finical`) VALUES
(6, 8, 'زبان انگلیسی', 1, '2017-03-01 18:31:07', '2017-04-19', 9, 33, 25, 0, 0),
(7, 8, 'زبان انگلیسی', 1, '2017-03-01 18:32:38', '2017-04-11', 11, 34, 15, 0, 0),
(8, 8, 'زبان انگلیسی', 1, '2017-03-01 18:36:49', '2017-04-15', 12, 35, 16, 7, 0),
(9, 12, 'زبان فرانسه', 1, '2017-03-08 22:39:50', '2017-04-25', 13, 37, 30, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comid`
--

CREATE TABLE `comid` (
  `id` int(30) NOT NULL,
  `seq` int(4) NOT NULL,
  `went` int(2) NOT NULL,
  `back` int(2) NOT NULL,
  `com` int(4) NOT NULL,
  `wbssearch` int(22) NOT NULL,
  `show` int(2) NOT NULL,
  `sort` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comodid`
--

CREATE TABLE `comodid` (
  `id` int(4) NOT NULL,
  `comod_name` varchar(999) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `comodid`
--

INSERT INTO `comodid` (`id`, `comod_name`) VALUES
(5, '	   تعیین سطح ، مشاوره و برنامه ریزی آموزشی رایگان\r\n'),
(6, '	محیطی کاملاً حرفه ای و دوستانه\r\n   \r\n'),
(7, '	   کلاس های متنوع با توجه به نیاز و زمان دانشجویان\r\n\r\n'),
(8, '	   کاملا آنلاین و بدون نیاز به رفت و آمدهای روزانه !!!\r\n'),
(9, '	   برپایی کلاسها به صورت کاملا مجازی و در تمام طول شبانه روز !\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(5) NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `countryName` varchar(45) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `countryName`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(10, 'AR', 'Argentina'),
(11, 'AS', 'American Samoa'),
(12, 'AT', 'Austria'),
(13, 'AU', 'Australia'),
(14, 'AW', 'Aruba'),
(15, 'AX', '?land'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BA', 'Bosnia and Herzegovina'),
(18, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso'),
(22, 'BG', 'Bulgaria'),
(23, 'BH', 'Bahrain'),
(24, 'BI', 'Burundi'),
(25, 'BJ', 'Benin'),
(26, 'BL', 'Saint Barth?lemy'),
(27, 'BM', 'Bermuda'),
(28, 'BN', 'Brunei'),
(29, 'BO', 'Bolivia'),
(30, 'BQ', 'Bonaire'),
(31, 'BR', 'Brazil'),
(32, 'BS', 'Bahamas'),
(33, 'BT', 'Bhutan'),
(34, 'BV', 'Bouvet Island'),
(35, 'BW', 'Botswana'),
(36, 'BY', 'Belarus'),
(37, 'BZ', 'Belize'),
(38, 'CA', 'Canada'),
(39, 'CC', 'Cocos [Keeling] Islands'),
(40, 'CD', 'Democratic Republic of the Congo'),
(41, 'CF', 'Central African Republic'),
(42, 'CG', 'Republic of the Congo'),
(43, 'CH', 'Switzerland'),
(44, 'CI', 'Ivory Coast'),
(45, 'CK', 'Cook Islands'),
(46, 'CL', 'Chile'),
(47, 'CM', 'Cameroon'),
(48, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(50, 'CR', 'Costa Rica'),
(51, 'CU', 'Cuba'),
(52, 'CV', 'Cape Verde'),
(53, 'CW', 'Curacao'),
(54, 'CX', 'Christmas Island'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czechia'),
(57, 'DE', 'Germany'),
(58, 'DJ', 'Djibouti'),
(59, 'DK', 'Denmark'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'DZ', 'Algeria'),
(63, 'EC', 'Ecuador'),
(64, 'EE', 'Estonia'),
(65, 'EG', 'Egypt'),
(66, 'EH', 'Western Sahara'),
(67, 'ER', 'Eritrea'),
(68, 'ES', 'Spain'),
(69, 'ET', 'Ethiopia'),
(70, 'FI', 'Finland'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GD', 'Grenada'),
(79, 'GE', 'Georgia'),
(80, 'GF', 'French Guiana'),
(81, 'GG', 'Guernsey'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GL', 'Greenland'),
(85, 'GM', 'Gambia'),
(86, 'GN', 'Guinea'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'KE', 'Kenya'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'KH', 'Cambodia'),
(118, 'KI', 'Kiribati'),
(119, 'KM', 'Comoros'),
(120, 'KN', 'Saint Kitts and Nevis'),
(121, 'KP', 'North Korea'),
(122, 'KR', 'South Korea'),
(123, 'KW', 'Kuwait'),
(124, 'KY', 'Cayman Islands'),
(125, 'KZ', 'Kazakhstan'),
(126, 'LA', 'Laos'),
(127, 'LB', 'Lebanon'),
(128, 'LC', 'Saint Lucia'),
(129, 'LI', 'Liechtenstein'),
(130, 'LK', 'Sri Lanka'),
(131, 'LR', 'Liberia'),
(132, 'LS', 'Lesotho'),
(133, 'LT', 'Lithuania'),
(134, 'LU', 'Luxembourg'),
(135, 'LV', 'Latvia'),
(136, 'LY', 'Libya'),
(137, 'MA', 'Morocco'),
(138, 'MC', 'Monaco'),
(139, 'MD', 'Moldova'),
(140, 'ME', 'Montenegro'),
(141, 'MF', 'Saint Martin'),
(142, 'MG', 'Madagascar'),
(143, 'MH', 'Marshall Islands'),
(144, 'MK', 'Macedonia'),
(145, 'ML', 'Mali'),
(146, 'MM', 'Myanmar [Burma]'),
(147, 'MN', 'Mongolia'),
(148, 'MO', 'Macao'),
(149, 'MP', 'Northern Mariana Islands'),
(150, 'MQ', 'Martinique'),
(151, 'MR', 'Mauritania'),
(152, 'MS', 'Montserrat'),
(153, 'MT', 'Malta'),
(154, 'MU', 'Mauritius'),
(155, 'MV', 'Maldives'),
(156, 'MW', 'Malawi'),
(157, 'MX', 'Mexico'),
(158, 'MY', 'Malaysia'),
(159, 'MZ', 'Mozambique'),
(160, 'NA', 'Namibia'),
(161, 'NC', 'New Caledonia'),
(162, 'NE', 'Niger'),
(163, 'NF', 'Norfolk Island'),
(164, 'NG', 'Nigeria'),
(165, 'NI', 'Nicaragua'),
(166, 'NL', 'Netherlands'),
(167, 'NO', 'Norway'),
(168, 'NP', 'Nepal'),
(169, 'NR', 'Nauru'),
(170, 'NU', 'Niue'),
(171, 'NZ', 'New Zealand'),
(172, 'OM', 'Oman'),
(173, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(175, 'PF', 'French Polynesia'),
(176, 'PG', 'Papua New Guinea'),
(177, 'PH', 'Philippines'),
(178, 'PK', 'Pakistan'),
(179, 'PL', 'Poland'),
(180, 'PM', 'Saint Pierre and Miquelon'),
(181, 'PN', 'Pitcairn Islands'),
(182, 'PR', 'Puerto Rico'),
(183, 'PS', 'Palestine'),
(184, 'PT', 'Portugal'),
(185, 'PW', 'Palau'),
(186, 'PY', 'Paraguay'),
(187, 'QA', 'Qatar'),
(188, 'RE', 'R?union'),
(189, 'RO', 'Romania'),
(190, 'RS', 'Serbia'),
(191, 'RU', 'Russia'),
(192, 'RW', 'Rwanda'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SB', 'Solomon Islands'),
(195, 'SC', 'Seychelles'),
(196, 'SD', 'Sudan'),
(197, 'SE', 'Sweden'),
(198, 'SG', 'Singapore'),
(199, 'SH', 'Saint Helena'),
(200, 'SI', 'Slovenia'),
(201, 'SJ', 'Svalbard and Jan Mayen'),
(202, 'SK', 'Slovakia'),
(203, 'SL', 'Sierra Leone'),
(204, 'SM', 'San Marino'),
(205, 'SN', 'Senegal'),
(206, 'SO', 'Somalia'),
(207, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(209, 'ST', 'S?o Tom? and Pr?ncipe'),
(210, 'SV', 'El Salvador'),
(211, 'SX', 'Sint Maarten'),
(212, 'SY', 'Syria'),
(213, 'SZ', 'Swaziland'),
(214, 'TC', 'Turks and Caicos Islands'),
(215, 'TD', 'Chad'),
(216, 'TF', 'French Southern Territories'),
(217, 'TG', 'Togo'),
(218, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(220, 'TK', 'Tokelau'),
(221, 'TL', 'East Timor'),
(222, 'TM', 'Turkmenistan'),
(223, 'TN', 'Tunisia'),
(224, 'TO', 'Tonga'),
(225, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TV', 'Tuvalu'),
(228, 'TW', 'Taiwan'),
(229, 'TZ', 'Tanzania'),
(230, 'UA', 'Ukraine'),
(231, 'UG', 'Uganda'),
(232, 'UM', 'U.S. Minor Outlying Islands'),
(233, 'US', 'United States'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VA', 'Vatican City'),
(237, 'VC', 'Saint Vincent and the Grenadines'),
(238, 'VE', 'Venezuela'),
(239, 'VG', 'British Virgin Islands'),
(240, 'VI', 'U.S. Virgin Islands'),
(241, 'VN', 'Vietnam'),
(242, 'VU', 'Vanuatu'),
(243, 'WF', 'Wallis and Futuna'),
(244, 'WS', 'Samoa'),
(245, 'XK', 'Kosovo'),
(246, 'YE', 'Yemen'),
(247, 'YT', 'Mayotte'),
(248, 'ZA', 'South Africa'),
(249, 'ZM', 'Zambia'),
(250, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(6) NOT NULL,
  `ctr_name` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `ctr_nem` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `ctr_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `ctr_active` int(2) NOT NULL,
  `ctr_img` varchar(99) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `ctr_name`, `ctr_nem`, `ctr_createdatdate`, `ctr_active`, `ctr_img`) VALUES
(1, 'italy', 'ita', '2017-04-21 13:50:45', 1, '1493384451italy-clip-art-at-clker-com-vector-clip-art-online-royalty-free-D48Cqr-clipart.png'),
(2, 'spain', 'spn', '2017-04-21 13:51:23', 1, '1492766481Jellyfish.jpg'),
(3, 'japan', 'jpn', '2017-04-21 14:25:47', 1, ''),
(5, 'Brazil', 'BRA', '2017-04-21 16:33:49', 1, ''),
(6, 'Yemen', 'Yem', '04/05/2017', 1, '1492788122Penguins.jpg'),
(7, 'IRAN', 'IRN', '2017-04-24 18:05:04', 1, '1493040901images.png'),
(8, 'Turkey', 'TUR', '2017-04-27 15:09:25', 1, '1493304748trlarge.gif'),
(9, 'INDIA', 'IND', '2017-05-01 16:45:23', 1, '1493716037INDIA-FLAG_20140411234504.jpg'),
(11, 'ggg', 'hhghgh', '2017-10-29 18:32:00', 0, 'demowhite.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(4) NOT NULL,
  `cur_name` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `cur_nem` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `cur_rateajency` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `cur_rateuser` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `cur_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `cur_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `cur_name`, `cur_nem`, `cur_rateajency`, `cur_rateuser`, `cur_createdatdate`, `cur_active`) VALUES
(1, 'Dollar', 'USD', '0.285714285', '0.294117647', '2017-04-19 14:33:39', 1),
(2, 'Lyre', 'TL', '1110', '1130', '2017-05-29 19:57:24', 1),
(3, 'RIAL', 'RIAL', '10000', '10000', '2018-01-13 12:18:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ddddd`
--

CREATE TABLE `ddddd` (
  `Field1` char(254) COLLATE utf8_persian_ci DEFAULT NULL,
  `Field2` char(254) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `ddddd`
--

INSERT INTO `ddddd` (`Field1`, `Field2`) VALUES
('CREATE TABLE \'Table1_Sayfa1\' (\'fld1\' text,\'fld2\' text,\'fld3\' text,\'fld4\' text,\'fld5\' text,\'fld6\' text,\'fld7\' text,\'fld8\' text,\'fld9\' text)', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'id\',\'countrycode\',\'country\',\'citycode\',\'city\',\'airportcode\',\'airport\',\'totalportinthecity\',\'rankforturkey\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'1\',\'AE\',\'Birlesik Arap Emirlikleri\',\'AAN\',\'Al Ain\',\'AAN\',\'International\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'2\',\'AE\',\'Birlesik Arap Emirlikleri\',\'AUH\',\'Abu Dhabi\',\'ZVJ\',\'EK BUS STATION\',\'3\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'3\',\'AE\',\'Birlesik Arap Emirlikleri\',\'AUH\',\'Abu Dhabi\',\'AUH\',\'International\',\'3\',\'98\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'4\',\'AE\',\'Birlesik Arap Emirlikleri\',\'AUH\',\'Abu Dhabi\',\'AZI\',\'Bateen\',\'3\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'5\',\'AE\',\'Birlesik Arap Emirlikleri\',\'DXB\',\'Dubai\',\'DXB\',\'Dubai Intl\',\'6\',\'97\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'6\',\'AE\',\'Birlesik Arap Emirlikleri\',\'DXB\',\'Dubai\',\'NHD\',\'Minhad Ab\',\'6\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'7\',\'AE\',\'Birlesik Arap Emirlikleri\',\'DXB\',\'Dubai\',\'DWC\',\'Al Maktoum Intl\',\'6\',\'98\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'8\',\'AE\',\'Birlesik Arap Emirlikleri\',\'DXB\',\'Dubai\',\'ZJF\',\'Jebel Ali Free Zone\',\'6\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'9\',\'AE\',\'Birlesik Arap Emirlikleri\',\'DXB\',\'Dubai\',\'DCG\',\'Dubai Creek Spb\',\'6\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'10\',\'AE\',\'Birlesik Arap Emirlikleri\',\'DXB\',\'Dubai\',\'XNB\',\'Dubai Bus Station\',\'6\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'11\',\'AE\',\'Birlesik Arap Emirlikleri\',\'FJR\',\'Fujairah\',\'FJR\',\'International\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'12\',\'AE\',\'Birlesik Arap Emirlikleri\',\'QIW\',\'Umm Al Quwain\',\'QIW\',\'Umm Alquwain\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'13\',\'AE\',\'Birlesik Arap Emirlikleri\',\'RKT\',\'Ras Al Khaimah\',\'RKT\',\'International\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'14\',\'AE\',\'Birlesik Arap Emirlikleri\',\'SHJ\',\'Sarjah\',\'SHJ\',\'Sharjah\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'15\',\'AF\',\'Afganistan\',\'BIN\',\'Bamyan\',\'BIN\',\'Bamyan\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'16\',\'AF\',\'Afganistan\',\'BST\',\'Lashkar Gah\',\'BST\',\'Bost\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'17\',\'AF\',\'Afganistan\',\'CCN\',\'Chaghcharan\',\'CCN\',\'Chaghcharan\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'18\',\'AF\',\'Afganistan\',\'DAZ\',\'Darwaz\',\'DAZ\',\'Darwaz\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'19\',\'AF\',\'Afganistan\',\'DWR\',\'Dwyer\',\'DWR\',\'Air Base\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'20\',\'AF\',\'Afganistan\',\'FAH\',\'Farah\',\'FAH\',\'Farah\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'21\',\'AF\',\'Afganistan\',\'FBD\',\'Faizabad\',\'FBD\',\'Faizabad\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'22\',\'AF\',\'Afganistan\',\'GRG\',\'Gardez\',\'GRG\',\'Gardez\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'23\',\'AF\',\'Afganistan\',\'GZI\',\'Ghazni\',\'GZI\',\'Ghazni\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'24\',\'AF\',\'Afganistan\',\'HEA\',\'Herat\',\'HEA\',\'Herat\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'25\',\'AF\',\'Afganistan\',\'IMZ\',\'Nimroz\',\'IMZ\',\'Nimroz\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'26\',\'AF\',\'Afganistan\',\'JAA\',\'Jalalabad\',\'JAA\',\'Jalalabad\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'27\',\'AF\',\'Afganistan\',\'KBL\',\'Kabil\',\'KBL\',\'International\',\'1\',\'98\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'28\',\'AF\',\'Afganistan\',\'KDH\',\'Kandahar\',\'KDH\',\'International\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'29\',\'AF\',\'Afganistan\',\'KHT\',\'Khost\',\'KHT\',\'Chapman\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'30\',\'AF\',\'Afganistan\',\'KUR\',\'Kuran Wa Munjan\',\'KUR\',\'Razer\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'31\',\'AF\',\'Afganistan\',\'KWH\',\'Khwahan\',\'KWH\',\'Khwahan\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'32\',\'AF\',\'Afganistan\',\'LQN\',\'Qalah-Ye Now\',\'LQN\',\'Qalah-Ye Now\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'33\',\'AF\',\'Afganistan\',\'MMZ\',\'Maimanah\',\'MMZ\',\'Maimanah\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'34\',\'AF\',\'Afganistan\',\'MZR\',\'Mazar-E Sharif\',\'MZR\',\'Mazar-E Sharif\',\'1\',\'98\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'35\',\'AF\',\'Afganistan\',\'OAA\',\'Shank\',\'OAA\',\'Air Base\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'36\',\'AF\',\'Afganistan\',\'OAI\',\'Bagram\',\'OAI\',\'Bagram\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'37\',\'AF\',\'Afganistan\',\'OAS\',\'Sharana\',\'OAS\',\'Air Base\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'38\',\'AF\',\'Afganistan\',\'OLR\',\'Salerno\',\'OLR\',\'Air Base\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'39\',\'AF\',\'Afganistan\',\'SBF\',\'Sardeh Band\',\'SBF\',\'Sardeh Band\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'40\',\'AF\',\'Afganistan\',\'SGA\',\'Sheghnan\',\'SGA\',\'Sheghnan\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'41\',\'AF\',\'Afganistan\',\'TII\',\'Tarin Kot\',\'TII\',\'Tereen\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'42\',\'AF\',\'Afganistan\',\'TQN\',\'Taloqan\',\'TQN\',\'Taloqan\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'43\',\'AF\',\'Afganistan\',\'UND\',\'Kunduz\',\'UND\',\'Kunduz\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'44\',\'AF\',\'Afganistan\',\'URN\',\'Urgun\',\'URN\',\'Urgun\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'45\',\'AF\',\'Afganistan\',\'URZ\',\'Uruzgan\',\'URZ\',\'Uruzgan\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'46\',\'AF\',\'Afganistan\',\'ZAJ\',\'Zaranj\',\'ZAJ\',\'Zaranj\',\'1\',\'99\')', ''),
('INSERT INTO \'Table1_Sayfa1\' (\'47\',\'AG\',\'Antigua And Barbuda\',\'ANU\',\'Antigua\',\'ANU\',\'Vc Bird Intl\',\'1\',\'99\')', '');

-- --------------------------------------------------------

--
-- Table structure for table `demoedivence`
--

CREATE TABLE `demoedivence` (
  `id` int(3) NOT NULL,
  `demedv_pagename` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `demedv_nameedv` varchar(111) COLLATE utf8_persian_ci NOT NULL,
  `demedv_des1` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `demedv_des2` varchar(111) COLLATE utf8_persian_ci NOT NULL,
  `demedv_des3` varchar(333) COLLATE utf8_persian_ci NOT NULL,
  `demedv_des4` varchar(333) COLLATE utf8_persian_ci NOT NULL,
  `demedv_des5` varchar(333) COLLATE utf8_persian_ci NOT NULL,
  `demedv_des6` varchar(333) COLLATE utf8_persian_ci NOT NULL,
  `demedv_des7` varchar(444) COLLATE utf8_persian_ci NOT NULL,
  `demedv_emz` varchar(88) COLLATE utf8_persian_ci NOT NULL,
  `demedv_mnglab` varchar(222) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `demoedivence`
--

INSERT INTO `demoedivence` (`id`, `demedv_pagename`, `demedv_nameedv`, `demedv_des1`, `demedv_des2`, `demedv_des3`, `demedv_des4`, `demedv_des5`, `demedv_des6`, `demedv_des7`, `demedv_emz`, `demedv_mnglab`) VALUES
(1, 'گواهی', ' گواهی پایان دوره', '     من لم یشکرالمخلوق و لم یشکرالخالق\n  \n  \n  \n  \n  \n', '        به موجب این حکم گواهی می شود\n  \n  \n  \n  \n  \n  \n', '        به شماره ملی\n  \n  \n  \n  \n  \n  \n  \n  \n', '        موفق به اخذ گواهی\n  \n  \n  \n  \n  \n  \n', '         در سطح\r\n  \r\n  \r\n  \r\n  \r\n  \r\n', '        شده است . این گواهی بنا به درخواست نامبرده به صورت آنلاین از سایت تهیه شده است .\n  \n  \n  \n  \n  \n', '          \nبا آرزوی توفیق روز افزون برای شما   \n  \n  \n', 'امضا', 'محمود قوچانی مدیر'),
(2, 'گواهی', ' گواهی پایان دوره', '     من لم یشکرالمخلوق و لم یشکرالخالق', '        به موجب این حکم گواهی می شود                  ', '        به شماره ملی                        ', '        موفق به اخذ گواهی', '         در سطح               ', '        شده است . این گواهی بنا به درخواست نامبرده به صورت آنلاین از سایت تهیه شده است .', '           با آرزوی توفیق روز افزون برای شما         ', 'امضا', 'محمود قوچانی مدیر');

-- --------------------------------------------------------

--
-- Table structure for table `direction`
--

CREATE TABLE `direction` (
  `id` int(22) NOT NULL,
  `dir_idbelit` int(11) NOT NULL,
  `dir_origin` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `dir_origintime` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `dir_originairport` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `dir_originmairport` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `dir_dest` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `dir_desttime` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `dir_destairport` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `dir_destmairport` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `dir_origindate` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `dir_destdate` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `dir_airline` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `dir_logo` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `dir_class` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `dir_numberflight` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `dir_bag` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `dir_durit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `dir_dir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `direction`
--

INSERT INTO `direction` (`id`, `dir_idbelit`, `dir_origin`, `dir_origintime`, `dir_originairport`, `dir_originmairport`, `dir_dest`, `dir_desttime`, `dir_destairport`, `dir_destmairport`, `dir_origindate`, `dir_destdate`, `dir_airline`, `dir_logo`, `dir_class`, `dir_numberflight`, `dir_bag`, `dir_durit`, `dir_dir`) VALUES
(304, 81, 'Tehran', '15:20', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '18:25', 'Ataturk ', 'IST', '2017-11-14', '2017-11-14', 'Turkish Airlines', 'TK', 'V', '871', '30kg', '14Hours 50Minute', 0),
(305, 81, 'İstanbul', '00:45', 'Ataturk ', 'IST', 'Kabil', '07:10', 'International ', 'KBL', '2017-11-15', '2017-11-15', 'Turkish Airlines', 'TK', 'V', '706', '30kg', '14Hours 50Minute', 0),
(306, 81, 'Kabil', '08:50', 'International ', 'KBL', 'İstanbul', '13:20', 'Ataturk ', 'IST', '2017-11-25', '2017-11-25', 'Turkish Airlines', 'TK', 'V', '707', '30kg', '20Hours 20Minute', 1),
(307, 81, 'İstanbul', '00:40', 'Ataturk ', 'IST', 'Tehran', '04:10', 'Imam Khomeini Intl ', 'IKA', '2017-11-26', '2017-11-26', 'Turkish Airlines', 'TK', 'V', '872', '30kg', '20Hours 20Minute', 1),
(308, 82, 'Tehran', '02:35', 'Imam Khomeini Intl ', 'IKA', 'Bakü', '04:30', 'Heydar Aliyev Intl ', 'GYD', '2017-11-21', '2017-11-21', 'Azerbaijan Airlines', 'J2', 'O', '9006', '1 parça', '09Hours 50Minute', 0),
(309, 82, 'Bakü', '10:00', 'Heydar Aliyev Intl ', 'GYD', 'Dubai', '12:55', 'Dubai Intl ', 'DXB', '2017-11-21', '2017-11-21', 'Azerbaijan Airlines', 'J2', 'T', '11', '1 parça', '09Hours 50Minute', 0),
(310, 83, 'Tehran', '17:15', 'Imam Khomeini Intl ', 'IKA', 'Muskat', '20:20', 'Muscat International ', 'MCT', '2017-11-15', '2017-11-15', 'Oman Air', 'WY', 'U', '434', '2 parça', '16Hours 15Minute', 0),
(311, 83, 'Muskat', '08:45', 'Muscat International ', 'MCT', 'Dubai', '10:00', 'Dubai Intl ', 'DXB', '2017-11-16', '2017-11-16', 'Oman Air', 'WY', 'U', '603', '2 parça', '16Hours 15Minute', 0),
(312, 83, 'Dubai', '23:15', 'Dubai Intl ', 'DXB', 'Muskat', '00:30', 'Muscat International ', 'MCT', '2017-11-28', '2017-11-29', 'Oman Air', 'WY', 'U', '614', '2 parça', '17Hours 30Minute', 1),
(313, 83, 'Muskat', '14:00', 'Muscat International ', 'MCT', 'Tehran', '16:15', 'Imam Khomeini Intl ', 'IKA', '2017-11-29', '2017-11-29', 'Oman Air', 'WY', 'U', '433', '2 parça', '17Hours 30Minute', 1),
(314, 84, 'Tehran', '07:00', 'Imam Khomeini Intl ', 'IKA', 'Dubai', '09:45', 'Dubai Intl ', 'DXB', '2017-11-21', '2017-11-21', 'Iran Air', 'IR', 'Y', '658', '40kg', '02Hours 15Minute', 0),
(315, 84, 'Dubai', '02:30', 'Dubai Intl ', 'DXB', 'Bakü', '05:30', 'Heydar Aliyev Intl ', 'GYD', '2017-11-28', '2017-11-28', 'Azerbaijan Airlines', 'J2', 'Q', '16', '1 parça', '08Hours 25Minute', 1),
(316, 84, 'Bakü', '09:30', 'Heydar Aliyev Intl ', 'GYD', 'Tehran', '10:25', 'Imam Khomeini Intl ', 'IKA', '2017-11-28', '2017-11-28', 'Azerbaijan Airlines', 'J2', 'Q', '9017', '1 parça', '08Hours 25Minute', 1),
(317, 85, 'Duşanbe', '03:55', 'Dushanbe ', 'DYU', 'EKATERINBURG', '07:15', 'Koltsovo ', 'SVX', '2017-12-26', '2017-12-26', 'Ural Airlines', 'U6', 'A', '2954', '1 parça', '08Hours 00Minute', 0),
(318, 85, 'EKATERINBURG', '09:30', 'Koltsovo ', 'SVX', 'Moskova', '09:55', 'Domodedovo ', 'DME', '2017-12-26', '2017-12-26', 'Ural Airlines', 'U6', 'A', '272', '1 parça', '08Hours 00Minute', 0),
(319, 86, 'Duşanbe', '03:55', 'Dushanbe ', 'DYU', 'EKATERINBURG', '07:15', 'Koltsovo ', 'SVX', '2018-01-30', '2018-01-30', 'Ural Airlines', 'U6', 'E', '2954', '1 parça', '08Hours 00Minute', 0),
(320, 86, 'EKATERINBURG', '09:30', 'Koltsovo ', 'SVX', 'Moskova', '09:55', 'Domodedovo ', 'DME', '2018-01-30', '2018-01-30', 'Ural Airlines', 'U6', 'W', '272', '1 parça', '08Hours 00Minute', 0),
(321, 86, 'Moskova', '14:20', 'Domodedovo ', 'DME', 'EKATERINBURG', '18:40', 'Koltsovo ', 'SVX', '2018-02-13', '2018-02-13', 'Ural Airlines', 'U6', 'A', '269', '1 parça', '10Hours 20Minute', 1),
(322, 86, 'EKATERINBURG', '23:30', 'Koltsovo ', 'SVX', 'Duşanbe', '02:40', 'Dushanbe ', 'DYU', '2018-02-13', '2018-02-14', 'Ural Airlines', 'U6', 'A', '2953', '1 parça', '10Hours 20Minute', 1),
(323, 87, 'Tehran', '02:35', 'Imam Khomeini Intl ', 'IKA', 'Bakü', '04:30', 'Heydar Aliyev Intl ', 'GYD', '2017-11-30', '2017-11-30', 'Azerbaijan Airlines', 'J2', 'O', '9006', '1 parça', '09Hours 50Minute', 0),
(324, 87, 'Bakü', '10:00', 'Heydar Aliyev Intl ', 'GYD', 'Dubai', '12:55', 'Dubai Intl ', 'DXB', '2017-11-30', '2017-11-30', 'Azerbaijan Airlines', 'J2', 'T', '11', '1 parça', '09Hours 50Minute', 0),
(325, 88, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-14', '2017-11-14', 'Atlasjet Airlines', 'KK', 'E', '1185', '30kg', '07Hours 25Minute', 0),
(326, 88, 'İstanbul', '11:05', 'Ataturk ', 'IST', 'Trabzon', '12:55', 'Trabzon ', 'TZX', '2017-11-14', '2017-11-14', 'Atlasjet Airlines', 'KK', 'B', '62', '30kg', '07Hours 25Minute', 0),
(327, 88, 'Trabzon', '19:15', 'Trabzon ', 'TZX', 'İstanbul', '21:05', 'Ataturk ', 'IST', '2017-11-21', '2017-11-21', 'Atlasjet Airlines', 'KK', 'B', '63', '30kg', '07Hours 30Minute', 1),
(328, 88, 'İstanbul', '23:45', 'Ataturk ', 'IST', 'Tehran', '03:15', 'Imam Khomeini Intl ', 'IKA', '2017-11-21', '2017-11-22', 'Atlasjet Airlines', 'KK', 'E', '1184', '30kg', '07Hours 30Minute', 1),
(329, 89, 'Dubai', '19:45', 'Dubai Intl ', 'DXB', 'Riyadh', '20:40', 'King Khalid Intl ', 'RUH', '2017-11-26', '2017-11-26', 'Nasair', 'XY', 'P', '208', '1 parça', '09Hours 00Minute', 0),
(330, 89, 'Riyadh', '02:05', 'King Khalid Intl ', 'RUH', 'Abha', '03:45', 'Abha ', 'AHB', '2017-11-27', '2017-11-27', 'Nasair', 'XY', 'L', '865', '1 parça', '09Hours 00Minute', 0),
(331, 93, 'Mexico City', '15:10', 'Juarez Intl ', 'MEX', 'Houston', '17:22', 'G.Bush Intercont ', 'IAH', '2017-11-21', '2017-11-21', 'United Airlines', 'UA', 'V', '1091', '1 parça', '20Hours 20Minute', 0),
(332, 93, 'Houston', '19:00', 'G.Bush Intercont ', 'IAH', 'Frankfurt', '11:40', 'Frankfurt Intl ', 'FRA', '2017-11-21', '2017-11-22', 'United Airlines', 'UA', 'Q', '46', '1 parça', '20Hours 20Minute', 0),
(333, 93, 'Frankfurt', '13:40', 'Frankfurt Intl ', 'FRA', 'Tehran', '21:00', 'Imam Khomeini Intl ', 'IKA', '2017-11-22', '2017-11-22', 'Lufthansa', 'LH', 'Q', '600', '1 parça', '20Hours 20Minute', 0),
(334, 94, 'Tehran', '04:15', 'Imam Khomeini Intl ', 'IKA', 'Atina', '06:40', 'Athens Int E Venizelos ', 'ATH', '2017-11-26', '2017-11-26', 'Aegean Airlines', 'A3', 'S', '949', '1 parça', '17Hours 00Minute', 0),
(335, 94, 'Atina', '16:15', 'Athens Int E Venizelos ', 'ATH', 'Paris', '18:45', 'Charles De Gaulle ', 'CDG', '2017-11-26', '2017-11-26', 'Aegean Airlines', 'A3', 'S', '614', '1 parça', '17Hours 00Minute', 0),
(336, 95, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-26', '2017-11-26', 'Pegasus Airlines', 'PC', 'E', '513', '20kg', '11Hours 35Minute', 0),
(337, 95, 'İstanbul', '10:45', 'Sabiha Gokcen ', 'SAW', 'Londra', '11:55', 'Stansted ', 'STN', '2017-11-26', '2017-11-26', 'Pegasus Airlines', 'PC', 'E', '1181', '20kg', '11Hours 35Minute', 0),
(338, 96, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-26', '2017-11-26', 'Atlasjet Airlines', 'KK', 'U', '1185', '30kg', '10Hours 00Minute', 0),
(339, 96, 'İstanbul', '11:25', 'Ataturk ', 'IST', 'Londra', '12:30', 'Stansted ', 'STN', '2017-11-26', '2017-11-26', 'Atlasjet Airlines', 'KK', 'L', '2001', '30kg', '10Hours 00Minute', 0),
(340, 97, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-26', '2017-11-26', 'Pegasus Airlines', 'PC', 'E', '513', '20kg', '11Hours 35Minute', 0),
(341, 97, 'İstanbul', '10:45', 'Sabiha Gokcen ', 'SAW', 'Londra', '11:55', 'Stansted ', 'STN', '2017-11-26', '2017-11-26', 'Pegasus Airlines', 'PC', 'E', '1181', '20kg', '11Hours 35Minute', 0),
(342, 98, 'Dubai', '12:20', 'Dubai Intl ', 'DXB', 'Cidde', '14:35', 'King Abdulaziz Intl ', 'JED', '2017-11-29', '2017-11-29', 'Nasair', 'XY', 'P', '502', '1 parça', '03Hours 15Minute', 0),
(343, 99, 'Dubai', '14:30', 'Dubai Intl ', 'DXB', 'Cidde', '16:50', 'King Abdulaziz Intl ', 'JED', '2017-11-29', '2017-11-29', 'Flydubai', 'FZ', 'K', '833', '20kg', '03Hours 20Minute', 0),
(344, 101, 'Dubai', '12:20', 'Dubai Intl ', 'DXB', 'Cidde', '14:35', 'King Abdulaziz Intl ', 'JED', '2017-12-06', '2017-12-06', 'Nasair', 'XY', 'P', '502', '1 parça', '10Hours 40Minute', 0),
(345, 101, 'Cidde', '20:50', 'King Abdulaziz Intl ', 'JED', 'Abha', '22:00', 'Abha ', 'AHB', '2017-12-06', '2017-12-06', 'Nasair', 'XY', 'L', '433', '1 parça', '10Hours 40Minute', 0),
(346, 102, 'Duşanbe', '13:30', 'Dushanbe ', 'DYU', 'Almaata', '16:15', 'International ', 'ALA', '2017-11-29', '2017-11-29', 'Air Astana', 'KC', 'S', '132', '20kg', '24Hours 00Minute', 0),
(347, 102, 'Almaata', '10:35', 'International ', 'ALA', 'Tehran', '12:00', 'Imam Khomeini Intl ', 'IKA', '2017-11-30', '2017-11-30', 'Air Astana', 'KC', 'S', '251', '20kg', '24Hours 00Minute', 0),
(348, 103, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2017-12-29', '2017-12-29', 'Turkish Airlines', 'TK', 'V', '875', '30kg', '03Hours 20Minute', 0),
(349, 104, 'İstanbul', '10:45', 'Ataturk ', 'IST', 'Atina', '11:30', 'Athens Int E Venizelos ', 'ATH', '2017-11-23', '2017-11-23', 'OLYMPIC AIR', 'A3', 'P', '991', '1 parça', '16Hours 10Minute', 0),
(350, 104, 'Atina', '22:25', 'Athens Int E Venizelos ', 'ATH', 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', '2017-11-23', '2017-11-24', 'Aegean Airlines', 'A3', 'P', '948', '1 parça', '16Hours 10Minute', 0),
(351, 105, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2017-11-29', '2017-11-29', 'Turkish Airlines', 'TK', 'V', '875', '30kg', '03Hours 20Minute', 0),
(352, 106, 'Dubai', '21:35', 'Dubai Intl ', 'DXB', 'Riyadh', '22:30', 'King Khalid Intl ', 'RUH', '2017-11-28', '2017-11-28', 'Nasair', 'XY', 'P', '210', '1 parça', '11Hours 50Minute', 0),
(353, 106, 'Riyadh', '06:45', 'King Khalid Intl ', 'RUH', 'Abha', '08:25', 'Abha ', 'AHB', '2017-11-29', '2017-11-29', 'Nasair', 'XY', 'L', '81', '1 parça', '11Hours 50Minute', 0),
(354, 107, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-28', '2017-11-28', 'Atlasjet Airlines', 'KK', 'E', '1185', '30kg', '10Hours 00Minute', 0),
(355, 107, 'İstanbul', '11:25', 'Ataturk ', 'IST', 'Londra', '12:30', 'Stansted ', 'STN', '2017-11-28', '2017-11-28', 'Atlasjet Airlines', 'KK', 'L', '2001', '30kg', '10Hours 00Minute', 0),
(356, 108, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-28', '2017-11-28', 'Atlasjet Airlines', 'KK', 'E', '1185', '30kg', '10Hours 00Minute', 0),
(357, 108, 'İstanbul', '11:25', 'Ataturk ', 'IST', 'Londra', '12:30', 'Stansted ', 'STN', '2017-11-28', '2017-11-28', 'Atlasjet Airlines', 'KK', 'L', '2001', '30kg', '10Hours 00Minute', 0),
(358, 109, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-28', '2017-11-28', 'Atlasjet Airlines', 'KK', 'E', '1185', '30kg', '10Hours 00Minute', 0),
(359, 109, 'İstanbul', '11:25', 'Ataturk ', 'IST', 'Londra', '12:30', 'Stansted ', 'STN', '2017-11-28', '2017-11-28', 'Atlasjet Airlines', 'KK', 'L', '2001', '30kg', '10Hours 00Minute', 0),
(360, 110, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'E', '513', '20kg', '09Hours 30Minute', 0),
(361, 110, 'İstanbul', '08:50', 'Sabiha Gokcen ', 'SAW', 'Londra', '09:50', 'Stansted ', 'STN', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'E', '1169', '20kg', '09Hours 30Minute', 0),
(362, 111, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'E', '513', '20kg', '09Hours 30Minute', 0),
(363, 111, 'İstanbul', '08:50', 'Sabiha Gokcen ', 'SAW', 'Londra', '09:50', 'Stansted ', 'STN', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'E', '1169', '20kg', '09Hours 30Minute', 0),
(364, 112, 'Dubai', '16:00', 'Dubai Intl ', 'DXB', 'Riyadh', '17:05', 'King Khalid Intl ', 'RUH', '2017-11-12', '2017-11-12', 'Saudi Arabian Airlines', 'SV', 'V', '559', '2 parça', '06Hours 10Minute', 0),
(365, 112, 'Riyadh', '19:25', 'King Khalid Intl ', 'RUH', 'Abha', '21:10', 'Abha ', 'AHB', '2017-11-12', '2017-11-12', 'Saudi Arabian Airlines', 'SV', 'V', '1665', '2 parça', '06Hours 10Minute', 0),
(366, 112, 'Abha', '14:00', 'Abha ', 'AHB', 'Riyadh', '15:40', 'King Khalid Intl ', 'RUH', '2017-11-27', '2017-11-27', 'Saudi Arabian Airlines', 'SV', 'V', '1692', '2 parça', '06Hours 00Minute', 1),
(367, 112, 'Riyadh', '18:10', 'King Khalid Intl ', 'RUH', 'Dubai', '21:00', 'Dubai Intl ', 'DXB', '2017-11-27', '2017-11-27', 'Saudi Arabian Airlines', 'SV', 'V', '552', '2 parça', '06Hours 00Minute', 1),
(368, 113, 'Moskova', '04:25', 'Vnukovo Intl ', 'VKO', 'İstanbul', '07:30', 'Ataturk ', 'IST', '2018-01-29', '2018-01-29', 'Turkish Airlines', 'TK', 'V', '420', '30kg', '03Hours 05Minute', 0),
(369, 114, 'Dubai', '19:30', 'Dubai Intl ', 'DXB', 'Cidde', '21:45', 'King Abdulaziz Intl ', 'JED', '2017-12-27', '2017-12-27', 'Nasair', 'XY', 'P', '510', '1 parça', '03Hours 15Minute', 0),
(370, 115, 'Dubai', '19:30', 'Dubai Intl ', 'DXB', 'Cidde', '21:45', 'King Abdulaziz Intl ', 'JED', '2017-11-21', '2017-11-21', 'Nasair', 'XY', 'P', '510', '1 parça', '13Hours 40Minute', 0),
(371, 115, 'Cidde', '07:00', 'King Abdulaziz Intl ', 'JED', 'Abha', '08:10', 'Abha ', 'AHB', '2017-11-22', '2017-11-22', 'Nasair', 'XY', 'L', '425', '1 parça', '13Hours 40Minute', 0),
(372, 116, 'Tehran', '04:15', 'Imam Khomeini Intl ', 'IKA', 'Muskat', '07:20', 'Muscat International ', 'MCT', '2017-12-14', '2017-12-14', 'Oman Air', 'WY', 'U', '432', '2 parça', '05Hours 15Minute', 0),
(373, 116, 'Muskat', '08:45', 'Muscat International ', 'MCT', 'Dubai', '10:00', 'Dubai Intl ', 'DXB', '2017-12-14', '2017-12-14', 'Oman Air', 'WY', 'U', '603', '2 parça', '05Hours 15Minute', 0),
(374, 117, 'Dubai', '12:20', 'Dubai Intl ', 'DXB', 'Cidde', '14:35', 'King Abdulaziz Intl ', 'JED', '2017-11-21', '2017-11-21', 'Nasair', 'XY', 'P', '502', '1 parça', '10Hours 40Minute', 0),
(375, 117, 'Cidde', '20:50', 'King Abdulaziz Intl ', 'JED', 'Abha', '22:00', 'Abha ', 'AHB', '2017-11-21', '2017-11-21', 'Nasair', 'XY', 'L', '433', '1 parça', '10Hours 40Minute', 0),
(376, 118, 'Dubai', '21:35', 'Dubai Intl ', 'DXB', 'Riyadh', '22:30', 'King Khalid Intl ', 'RUH', '2017-11-21', '2017-11-21', 'Nasair', 'XY', 'P', '210', '1 parça', '11Hours 50Minute', 0),
(377, 118, 'Riyadh', '06:45', 'King Khalid Intl ', 'RUH', 'Abha', '08:25', 'Abha ', 'AHB', '2017-11-22', '2017-11-22', 'Nasair', 'XY', 'L', '81', '1 parça', '11Hours 50Minute', 0),
(378, 119, 'Dubai', '12:20', 'Dubai Intl ', 'DXB', 'Cidde', '14:35', 'King Abdulaziz Intl ', 'JED', '2017-11-21', '2017-11-21', 'Nasair', 'XY', 'P', '502', '1 parça', '10Hours 40Minute', 0),
(379, 119, 'Cidde', '20:50', 'King Abdulaziz Intl ', 'JED', 'Abha', '22:00', 'Abha ', 'AHB', '2017-11-21', '2017-11-21', 'Nasair', 'XY', 'L', '433', '1 parça', '10Hours 40Minute', 0),
(380, 120, 'Dubai', '19:30', 'Dubai Intl ', 'DXB', 'Cidde', '21:45', 'King Abdulaziz Intl ', 'JED', '2017-11-21', '2017-11-21', 'Nasair', 'XY', 'P', '510', '1 parça', '03Hours 15Minute', 0),
(381, 121, 'Dubai', '14:30', 'Dubai Intl ', 'DXB', 'Cidde', '16:50', 'King Abdulaziz Intl ', 'JED', '2017-11-21', '2017-11-21', 'Flydubai', 'FZ', 'K', '833', '20kg', '03Hours 20Minute', 0),
(382, 122, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-29', '2017-11-29', 'Pegasus Airlines', 'PC', 'P', '513', '20kg', '29Hours 00Minute', 0),
(383, 122, 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '08:20', 'Trabzon ', 'TZX', '2017-11-30', '2017-11-30', 'Pegasus Airlines', 'PC', 'E', '2810', '20kg', '29Hours 00Minute', 0),
(384, 123, 'Dubai', '19:30', 'Dubai Intl ', 'DXB', 'Cidde', '21:45', 'King Abdulaziz Intl ', 'JED', '2017-12-19', '2017-12-19', 'Nasair', 'XY', 'P', '510', '1 parça', '13Hours 40Minute', 0),
(385, 123, 'Cidde', '07:00', 'King Abdulaziz Intl ', 'JED', 'Abha', '08:10', 'Abha ', 'AHB', '2017-12-20', '2017-12-20', 'Nasair', 'XY', 'L', '425', '1 parça', '13Hours 40Minute', 0),
(386, 124, 'Dubai', '13:55', 'Dubai Intl ', 'DXB', 'Riyadh', '14:50', 'King Khalid Intl ', 'RUH', '2017-12-19', '2017-12-19', 'Nasair', 'XY', 'P', '206', '1 parça', '08Hours 40Minute', 0),
(387, 124, 'Riyadh', '19:55', 'King Khalid Intl ', 'RUH', 'Abha', '21:35', 'Abha ', 'AHB', '2017-12-19', '2017-12-19', 'Nasair', 'XY', 'L', '89', '1 parça', '08Hours 40Minute', 0),
(388, 125, 'Dubai', '12:20', 'Dubai Intl ', 'DXB', 'Cidde', '14:35', 'King Abdulaziz Intl ', 'JED', '2017-11-28', '2017-11-28', 'Nasair', 'XY', 'P', '502', '1 parça', '10Hours 40Minute', 0),
(389, 125, 'Cidde', '20:50', 'King Abdulaziz Intl ', 'JED', 'Abha', '22:00', 'Abha ', 'AHB', '2017-11-28', '2017-11-28', 'Nasair', 'XY', 'L', '433', '1 parça', '10Hours 40Minute', 0),
(390, 126, 'Tehran', '15:35', 'Imam Khomeini Intl ', 'IKA', 'Dubai', '18:20', 'Dubai Intl ', 'DXB', '2017-11-29', '2017-11-29', 'Flydubai', 'FZ', 'B', '242', '30kg', '02Hours 15Minute', 0),
(391, 127, 'Cidde', '20:20', 'King Abdulaziz Intl ', 'JED', 'Dubai', '00:30', 'Dubai Intl ', 'DXB', '2017-12-06', '2017-12-07', 'Emirates', 'EK', 'T', '804', '40kg', '09Hours 10Minute', 0),
(392, 127, 'Dubai', '03:25', 'Dubai Intl ', 'DXB', 'Islamabad', '07:30', 'Benazir Bhutto Intl ', 'ISB', '2017-12-07', '2017-12-07', 'Emirates', 'EK', 'T', '612', '40kg', '09Hours 10Minute', 0),
(393, 127, 'Islamabad', '12:20', 'Benazir Bhutto Intl ', 'ISB', 'Dubai', '14:55', 'Dubai Intl ', 'DXB', '2017-12-20', '2017-12-20', 'Emirates', 'EK', 'T', '613', '30kg', '20Hours 05Minute', 1),
(394, 127, 'Dubai', '04:10', 'Dubai Intl ', 'DXB', 'Cidde', '06:25', 'King Abdulaziz Intl ', 'JED', '2017-12-21', '2017-12-21', 'Flydubai', 'FZ', 'V', '835', '30kg', '20Hours 05Minute', 1),
(395, 128, 'Cidde', '11:30', 'King Abdulaziz Intl ', 'JED', 'Dubai', '15:30', 'Dubai Intl ', 'DXB', '2017-11-15', '2017-11-15', 'Flydubai', 'FZ', 'V', '832', '40kg', '12Hours 05Minute', 0),
(396, 128, 'Dubai', '21:35', 'Dubai Intl ', 'DXB', 'Islamabad', '01:35', 'Benazir Bhutto Intl ', 'ISB', '2017-11-15', '2017-11-16', 'Emirates', 'EK', 'T', '614', '40kg', '12Hours 05Minute', 0),
(397, 128, 'Islamabad', '09:00', 'Benazir Bhutto Intl ', 'ISB', 'Dubai', '11:35', 'Dubai Intl ', 'DXB', '2017-11-22', '2017-11-22', 'Emirates', 'EK', 'T', '613', '30kg', '11Hours 20Minute', 1),
(398, 128, 'Dubai', '16:10', 'Dubai Intl ', 'DXB', 'Cidde', '18:20', 'King Abdulaziz Intl ', 'JED', '2017-11-22', '2017-11-22', 'Emirates', 'EK', 'T', '803', '30kg', '11Hours 20Minute', 1),
(399, 129, 'Taşkent', '14:20', 'Vostohny ', 'TAS', 'Almaata', '16:50', 'International ', 'ALA', '2017-12-13', '2017-12-13', 'Air Astana', 'KC', 'B', '128', '20kg', '23Hours 10Minute', 0),
(400, 129, 'Almaata', '10:35', 'International ', 'ALA', 'Tehran', '12:00', 'Imam Khomeini Intl ', 'IKA', '2017-12-14', '2017-12-14', 'Air Astana', 'KC', 'B', '251', '20kg', '23Hours 10Minute', 0),
(401, 129, 'Tehran', '15:35', 'Imam Khomeini Intl ', 'IKA', 'Dubai', '18:20', 'Dubai Intl ', 'DXB', '2017-12-20', '2017-12-20', 'Flydubai', 'FZ', 'B', '242', '20kg', '24Hours 25Minute', 1),
(402, 129, 'Dubai', '02:30', 'Dubai Intl ', 'DXB', 'Bakü', '05:30', 'Heydar Aliyev Intl ', 'GYD', '2017-12-21', '2017-12-21', 'Azerbaijan Airlines', 'J2', 'H', '16', '20kg', '24Hours 25Minute', 1),
(403, 129, 'Bakü', '13:55', 'Heydar Aliyev Intl ', 'GYD', 'Taşkent', '17:30', 'Vostohny ', 'TAS', '2017-12-21', '2017-12-21', 'Uzbekistan Airways', 'HY', 'T', '756', '20kg', '24Hours 25Minute', 1),
(404, 131, 'Trabzon', '15:30', 'Trabzon ', 'TZX', 'İstanbul', '17:20', 'Sabiha Gokcen ', 'SAW', '2017-11-21', '2017-11-21', 'Pegasus Airlines', 'PC', 'E', '2823', '20kg', '11Hours 00Minute', 0),
(405, 131, 'İstanbul', '23:30', 'Sabiha Gokcen ', 'SAW', 'Tehran', '03:00', 'Imam Khomeini Intl ', 'IKA', '2017-11-21', '2017-11-22', 'Pegasus Airlines', 'PC', 'G', '512', '20kg', '11Hours 00Minute', 0),
(406, 131, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-29', '2017-11-29', 'Pegasus Airlines', 'PC', 'G', '513', '20kg', '06Hours 25Minute', 1),
(407, 131, 'İstanbul', '08:05', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '09:45', 'Trabzon ', 'TZX', '2017-11-29', '2017-11-29', 'Pegasus Airlines', 'PC', 'E', '2814', '20kg', '06Hours 25Minute', 1),
(408, 132, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-21', '2017-11-21', 'Atlasjet Airlines', 'KK', 'X', '1185', ' BAG', '09Hours 45Minute', 0),
(409, 132, 'İstanbul', '11:30', 'Ataturk ', 'IST', 'Cidde', '15:15', 'King Abdulaziz Intl ', 'JED', '2017-11-21', '2017-11-21', 'Atlasjet Airlines', 'KK', 'X', '830', ' BAG', '09Hours 45Minute', 0),
(410, 132, 'Cidde', '16:40', 'King Abdulaziz Intl ', 'JED', 'İstanbul', '20:30', 'Ataturk ', 'IST', '2017-11-28', '2017-11-28', 'Atlasjet Airlines', 'KK', 'V', '831', ' BAG', '10Hours 05Minute', 1),
(411, 132, 'İstanbul', '23:45', 'Ataturk ', 'IST', 'Tehran', '03:15', 'Imam Khomeini Intl ', 'IKA', '2017-11-28', '2017-11-29', 'Atlasjet Airlines', 'KK', 'V', '1184', ' BAG', '10Hours 05Minute', 1),
(412, 133, 'Cidde', '07:05', 'King Abdulaziz Intl ', 'JED', 'Dubai', '10:50', 'Dubai Intl ', 'DXB', '2017-11-20', '2017-11-20', 'Saudi Arabian Airlines', 'SV', 'V', '566', '2  BAG', '02Hours 45Minute', 0),
(413, 133, 'Dubai', '16:00', 'Dubai Intl ', 'DXB', 'Riyadh', '17:05', 'King Khalid Intl ', 'RUH', '2017-11-29', '2017-11-29', 'Saudi Arabian Airlines', 'SV', 'V', '559', '2  BAG', '05Hours 55Minute', 1),
(414, 133, 'Riyadh', '19:05', 'King Khalid Intl ', 'RUH', 'Cidde', '20:55', 'King Abdulaziz Intl ', 'JED', '2017-11-29', '2017-11-29', 'Saudi Arabian Airlines', 'SV', 'V', '1045', '2  BAG', '05Hours 55Minute', 1),
(415, 134, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-14', '2017-11-14', 'Pegasus Airlines', 'PC', 'P', '513', '20kg', '06Hours 25Minute', 0),
(416, 134, 'İstanbul', '08:05', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '09:45', 'Trabzon ', 'TZX', '2017-11-14', '2017-11-14', 'Pegasus Airlines', 'PC', 'E', '2814', '20kg', '06Hours 25Minute', 0),
(417, 135, 'Dubai', '12:20', 'Dubai Intl ', 'DXB', 'Cidde', '14:35', 'King Abdulaziz Intl ', 'JED', '2017-11-19', '2017-11-19', 'Nasair', 'XY', 'P', '502', '1  BAG', '03Hours 15Minute', 0),
(418, 136, 'Cidde', '07:20', 'King Abdulaziz Intl ', 'JED', 'Dubai', '11:15', 'Dubai Intl ', 'DXB', '2017-11-21', '2017-11-21', 'Nasair', 'XY', 'P', '501', '1  BAG', '02Hours 55Minute', 0),
(419, 136, 'Dubai', '19:30', 'Dubai Intl ', 'DXB', 'Cidde', '21:45', 'King Abdulaziz Intl ', 'JED', '2017-11-29', '2017-11-29', 'Nasair', 'XY', 'P', '510', '1  BAG', '03Hours 15Minute', 1),
(420, 137, 'Tehran', '04:15', 'Imam Khomeini Intl ', 'IKA', 'Muskat', '07:20', 'Muscat International ', 'MCT', '2017-11-21', '2017-11-21', 'Oman Air', 'WY', 'U', '432', '2  BAG', '05Hours 15Minute', 0),
(421, 137, 'Muskat', '08:45', 'Muscat International ', 'MCT', 'Dubai', '10:00', 'Dubai Intl ', 'DXB', '2017-11-21', '2017-11-21', 'Oman Air', 'WY', 'U', '603', '2  BAG', '05Hours 15Minute', 0),
(422, 137, 'Dubai', '22:45', 'Dubai Intl ', 'DXB', 'Muskat', '00:05', 'Muscat International ', 'MCT', '2017-11-28', '2017-11-29', 'Oman Air', 'WY', 'U', '612', '2  BAG', '18Hours 00Minute', 1),
(423, 137, 'Muskat', '14:00', 'Muscat International ', 'MCT', 'Tehran', '16:15', 'Imam Khomeini Intl ', 'IKA', '2017-11-29', '2017-11-29', 'Oman Air', 'WY', 'U', '433', '2  BAG', '18Hours 00Minute', 1),
(424, 138, 'Abu Dhabi', '11:30', 'International ', 'AUH', 'Muskat', '12:45', 'Muscat International ', 'MCT', '2017-11-20', '2017-11-20', 'Oman Air', 'WY', 'N', '634', '2  BAG', '05Hours 15Minute', 0),
(425, 138, 'Muskat', '14:00', 'Muscat International ', 'MCT', 'Tehran', '16:15', 'Imam Khomeini Intl ', 'IKA', '2017-11-20', '2017-11-20', 'Oman Air', 'WY', 'N', '433', '2  BAG', '05Hours 15Minute', 0),
(426, 138, 'Tehran', '04:15', 'Imam Khomeini Intl ', 'IKA', 'Muskat', '07:20', 'Muscat International ', 'MCT', '2017-11-28', '2017-11-28', 'Oman Air', 'WY', 'N', '432', '2  BAG', '10Hours 25Minute', 1),
(427, 138, 'Muskat', '14:00', 'Muscat International ', 'MCT', 'Abu Dhabi', '15:10', 'International ', 'AUH', '2017-11-28', '2017-11-28', 'Etihad Airways', 'WY', 'N', '5383', '2  BAG', '10Hours 25Minute', 1),
(428, 139, 'Tehran', '15:20', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '18:25', 'Ataturk ', 'IST', '2017-11-21', '2017-11-21', 'Turkish Airlines', 'TK', 'L', '871', ' BAG', '23Hours 10Minute', 0),
(429, 139, 'İstanbul', '21:35', 'Ataturk ', 'IST', 'Amman', '23:55', 'Queen Alia ', 'AMM', '2017-11-21', '2017-11-21', 'Turkish Airlines', 'TK', 'L', '812', ' BAG', '23Hours 10Minute', 0),
(430, 139, 'Amman', '10:00', 'Queen Alia ', 'AMM', 'Şarjah', '14:00', 'Sharjah ', 'SHJ', '2017-11-22', '2017-11-22', 'Jordan Aviation', 'R5', 'Y', '665', ' BAG', '23Hours 10Minute', 0),
(431, 139, 'Şarjah', '01:30', 'Sharjah ', 'SHJ', 'Kahire', '03:30', 'Cairo Intl ', 'CAI', '2017-11-30', '2017-11-30', 'Egyptair', 'MS', 'H', '967', ' BAG', '26Hours 25Minute', 1),
(432, 139, 'Kahire', '10:30', 'Cairo Intl ', 'CAI', 'Atina', '12:30', 'Athens Int E Venizelos ', 'ATH', '2017-11-30', '2017-11-30', 'Egyptair', 'MS', 'H', '747', ' BAG', '26Hours 25Minute', 1),
(433, 139, 'Atina', '22:25', 'Athens Int E Venizelos ', 'ATH', 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', '2017-11-30', '2017-12-01', 'Aegean Airlines', 'A3', 'Y', '948', ' BAG', '26Hours 25Minute', 1),
(434, 140, 'Tehran', '17:15', 'Imam Khomeini Intl ', 'IKA', 'Muskat', '20:20', 'Muscat International ', 'MCT', '2017-11-29', '2017-11-29', 'Oman Air', 'WY', 'U', '434', '2  BAG', '09Hours 25Minute', 0),
(435, 140, 'Muskat', '01:55', 'Muscat International ', 'MCT', 'Dubai', '03:10', 'Dubai Intl ', 'DXB', '2017-11-30', '2017-11-30', 'Oman Air', 'WY', 'U', '601', '2  BAG', '09Hours 25Minute', 0),
(436, 140, 'Dubai', '22:45', 'Dubai Intl ', 'DXB', 'Muskat', '00:05', 'Muscat International ', 'MCT', '2017-12-21', '2017-12-22', 'Oman Air', 'WY', 'U', '612', '2  BAG', '05Hours 10Minute', 1),
(437, 140, 'Muskat', '01:10', 'Muscat International ', 'MCT', 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', '2017-12-22', '2017-12-22', 'Oman Air', 'WY', 'U', '431', '2  BAG', '05Hours 10Minute', 1),
(438, 141, 'Tehran', '05:40', 'Imam Khomeini Intl ', 'IKA', 'Dubai', '08:20', 'Dubai Intl ', 'DXB', '2017-11-20', '2017-11-20', 'Emirates', 'EK', 'U', '976', '30kg', '02Hours 10Minute', 0),
(439, 141, 'Dubai', '20:45', 'Dubai Intl ', 'DXB', 'Tehran', '22:30', 'Imam Khomeini Intl ', 'IKA', '2017-11-27', '2017-11-27', 'Emirates', 'EK', 'U', '977', '30kg', '02Hours 15Minute', 1),
(440, 142, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-15', '2017-11-15', 'Atlasjet Airlines', 'KK', 'X', '1185', '30kg', '07Hours 25Minute', 0),
(441, 142, 'İstanbul', '11:05', 'Ataturk ', 'IST', 'Trabzon', '12:55', 'Trabzon ', 'TZX', '2017-11-15', '2017-11-15', 'Atlasjet Airlines', 'KK', 'Y', '62', '30kg', '07Hours 25Minute', 0),
(442, 142, 'Trabzon', '19:15', 'Trabzon ', 'TZX', 'İstanbul', '21:05', 'Ataturk ', 'IST', '2017-11-22', '2017-11-22', 'Atlasjet Airlines', 'KK', 'B', '63', '30kg', '07Hours 30Minute', 1),
(443, 142, 'İstanbul', '23:45', 'Ataturk ', 'IST', 'Tehran', '03:15', 'Imam Khomeini Intl ', 'IKA', '2017-11-22', '2017-11-23', 'Atlasjet Airlines', 'KK', 'E', '1184', '30kg', '07Hours 30Minute', 1),
(444, 143, 'Tehran', '05:05', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:05', 'Ataturk ', 'IST', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'V', '873', '30kg', '09Hours 05Minute', 0),
(445, 143, 'İstanbul', '11:55', 'Ataturk ', 'IST', 'Trabzon', '13:40', 'Trabzon ', 'TZX', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'Y', '2828', '30kg', '09Hours 05Minute', 0),
(446, 144, 'İstanbul', '22:50', 'Sabiha Gokcen ', 'SAW', 'Riyadh', '02:40', 'King Khalid Intl ', 'RUH', '2017-11-30', '2017-12-01', 'Nasair', 'XY', 'U', '256', '1  BAG', '14Hours 25Minute', 0),
(447, 144, 'Riyadh', '11:30', 'King Khalid Intl ', 'RUH', 'Cidde', '13:15', 'King Abdulaziz Intl ', 'JED', '2017-12-01', '2017-12-01', 'Nasair', 'XY', 'L', '35', '1  BAG', '14Hours 25Minute', 0),
(448, 145, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-21', '2017-11-21', 'Pegasus Airlines', 'PC', 'P', '513', ' BAG', '03Hours 20Minute', 0),
(449, 145, 'İstanbul', '23:30', 'Sabiha Gokcen ', 'SAW', 'Tehran', '03:00', 'Imam Khomeini Intl ', 'IKA', '2017-11-29', '2017-11-30', 'Pegasus Airlines', 'PC', 'P', '512', ' BAG', '03Hours 00Minute', 1),
(450, 146, 'Cidde', '09:35', 'King Abdulaziz Intl ', 'JED', 'İstanbul', '13:20', 'Sabiha Gokcen ', 'SAW', '2017-11-27', '2017-11-27', 'Nasair', 'XY', 'P', '555', '1  BAG', '03Hours 45Minute', 0),
(451, 146, 'İstanbul', '14:10', 'Sabiha Gokcen ', 'SAW', 'Cidde', '18:00', 'King Abdulaziz Intl ', 'JED', '2017-11-30', '2017-11-30', 'Nasair', 'XY', 'O', '556', '1  BAG', '03Hours 50Minute', 1),
(452, 149, 'Moskova', '15:40', 'Vnukovo Intl ', 'VKO', 'İstanbul', '18:55', 'Ataturk ', 'IST', '2017-12-27', '2017-12-27', 'Turkish Airlines', 'TK', 'L', '418', '30kg', '10Hours 50Minute', 0),
(453, 149, 'İstanbul', '21:40', 'Ataturk ', 'IST', 'Duşanbe', '04:30', 'Dushanbe ', 'DYU', '2017-12-27', '2017-12-28', 'Turkish Airlines', 'TK', 'L', '254', '30kg', '10Hours 50Minute', 0),
(454, 150, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-12-16', '2017-12-16', 'Atlasjet Airlines', 'KK', 'E', '1185', '30kg', '07Hours 25Minute', 0),
(455, 150, 'İstanbul', '11:05', 'Ataturk ', 'IST', 'Trabzon', '12:55', 'Trabzon ', 'TZX', '2017-12-16', '2017-12-16', 'Atlasjet Airlines', 'KK', 'B', '62', '30kg', '07Hours 25Minute', 0),
(456, 150, 'Trabzon', '19:15', 'Trabzon ', 'TZX', 'İstanbul', '21:05', 'Ataturk ', 'IST', '2017-12-29', '2017-12-29', 'Atlasjet Airlines', 'KK', 'B', '63', '30kg', '07Hours 30Minute', 1),
(457, 150, 'İstanbul', '23:45', 'Ataturk ', 'IST', 'Tehran', '03:15', 'Imam Khomeini Intl ', 'IKA', '2017-12-29', '2017-12-30', 'Atlasjet Airlines', 'KK', 'U', '1184', '30kg', '07Hours 30Minute', 1),
(458, 151, 'Trabzon', '20:00', 'Trabzon ', 'TZX', 'İstanbul', '21:50', 'Sabiha Gokcen ', 'SAW', '2017-12-17', '2017-12-17', 'Pegasus Airlines', 'PC', 'F', '2827', '20kg', '06Hours 30Minute', 0),
(459, 151, 'İstanbul', '23:30', 'Sabiha Gokcen ', 'SAW', 'Tehran', '03:00', 'Imam Khomeini Intl ', 'IKA', '2017-12-17', '2017-12-18', 'Pegasus Airlines', 'PC', 'P', '512', '20kg', '06Hours 30Minute', 0),
(460, 153, 'Dubai', '19:20', 'Dubai Intl ', 'DXB', 'Delhi', '00:20', 'Indira Gandhi Intl ', 'DEL', '2017-11-30', '2017-12-01', 'Jet Airways', '9W', 'W', '587', ' BAG', '03Hours 30Minute', 0),
(461, 153, 'Delhi', '04:05', 'Indira Gandhi Intl ', 'DEL', 'Abu Dhabi', '06:45', 'International ', 'AUH', '2017-12-05', '2017-12-05', 'Jet Airways', '9W', 'W', '582', ' BAG', '06Hours 45Minute', 1),
(462, 153, 'Abu Dhabi', '08:00', 'International ', 'AUH', 'Dubai', '09:20', 'Dubai Bus Station ', 'XNB', '2017-12-05', '2017-12-05', 'Etihad Airways', '9W', 'W', '6550', ' BAG', '06Hours 45Minute', 1),
(463, 154, 'Dubai', '12:45', 'Dubai Intl ', 'DXB', 'Tehran', '14:35', 'Imam Khomeini Intl ', 'IKA', '2017-12-06', '2017-12-06', 'Flydubai', 'FZ', 'B', '241', ' BAG', '02Hours 20Minute', 0),
(464, 154, 'Tehran', '13:00', 'Imam Khomeini Intl ', 'IKA', 'Almaata', '18:50', 'International ', 'ALA', '2017-12-19', '2017-12-19', 'Air Astana', 'KC', 'S', '252', ' BAG', '17Hours 50Minute', 1),
(465, 154, 'Almaata', '04:20', 'International ', 'ALA', 'Dubai', '07:20', 'Dubai Intl ', 'DXB', '2017-12-20', '2017-12-20', 'Flydubai', 'FZ', 'R', '736', ' BAG', '17Hours 50Minute', 1),
(466, 155, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-12-26', '2017-12-26', 'Pegasus Airlines', 'PC', 'P', '513', '20kg', '03Hours 20Minute', 0),
(467, 157, 'Moskova', '04:25', 'Vnukovo Intl ', 'VKO', 'İstanbul', '07:30', 'Ataturk ', 'IST', '2018-01-30', '2018-01-30', 'Turkish Airlines', 'TK', 'V', '420', '30kg', '03Hours 05Minute', 0),
(468, 169, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-29', '2017-11-29', 'Atlasjet Airlines', 'KK', 'X', '1185', '30kg', '03Hours 25Minute', 0),
(469, 169, 'İstanbul', '23:45', 'Ataturk ', 'IST', 'Tehran', '03:15', 'Imam Khomeini Intl ', 'IKA', '2017-12-26', '2017-12-27', 'Atlasjet Airlines', 'KK', 'X', '1184', '30kg', '03Hours 00Minute', 1),
(470, 171, 'Moskova', '04:25', 'Vnukovo Intl ', 'VKO', 'İstanbul', '07:30', 'Ataturk ', 'IST', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'V', '420', '30kg', '03Hours 05Minute', 0),
(471, 173, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-22', '2017-11-22', 'Atlasjet Airlines', 'KK', 'E', '1185', '30kg', '07Hours 25Minute', 0),
(472, 173, 'İstanbul', '11:05', 'Ataturk ', 'IST', 'Trabzon', '12:55', 'Trabzon ', 'TZX', '2017-11-22', '2017-11-22', 'Atlasjet Airlines', 'KK', 'B', '62', '30kg', '07Hours 25Minute', 0),
(473, 173, 'Trabzon', '19:15', 'Trabzon ', 'TZX', 'İstanbul', '21:05', 'Ataturk ', 'IST', '2017-11-29', '2017-11-29', 'Atlasjet Airlines', 'KK', 'B', '63', '30kg', '07Hours 30Minute', 1),
(474, 173, 'İstanbul', '23:45', 'Ataturk ', 'IST', 'Tehran', '03:15', 'Imam Khomeini Intl ', 'IKA', '2017-11-29', '2017-11-30', 'Atlasjet Airlines', 'KK', 'E', '1184', '30kg', '07Hours 30Minute', 1),
(475, 174, 'Tehran', '07:45', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '10:40', 'Ataturk ', 'IST', '2017-11-23', '2017-11-23', 'Turkish Airlines', 'TK', 'V', '879', '30kg', '09Hours 15Minute', 0),
(476, 174, 'İstanbul', '12:50', 'Ataturk ', 'IST', 'Cidde', '16:30', 'King Abdulaziz Intl ', 'JED', '2017-11-23', '2017-11-23', 'Turkish Airlines', 'TK', 'V', '92', '30kg', '09Hours 15Minute', 0),
(477, 174, 'Cidde', '18:00', 'King Abdulaziz Intl ', 'JED', 'İstanbul', '22:00', 'Ataturk ', 'IST', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'V', '93', '30kg', '09Hours 40Minute', 1),
(478, 174, 'İstanbul', '00:40', 'Ataturk ', 'IST', 'Tehran', '04:10', 'Imam Khomeini Intl ', 'IKA', '2017-12-01', '2017-12-01', 'Turkish Airlines', 'TK', 'V', '872', '30kg', '09Hours 40Minute', 1),
(479, 175, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'V', '875', '30kg', '03Hours 20Minute', 0),
(480, 176, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'P', '513', '20kg', '06Hours 25Minute', 0),
(481, 176, 'İstanbul', '08:05', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '09:45', 'Trabzon ', 'TZX', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'E', '2814', '20kg', '06Hours 25Minute', 0),
(482, 177, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-27', '2017-11-27', 'Pegasus Airlines', 'PC', 'P', '513', '20kg', '14Hours 15Minute', 0),
(483, 177, 'İstanbul', '15:55', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '17:35', 'Trabzon ', 'TZX', '2017-11-27', '2017-11-27', 'Pegasus Airlines', 'PC', 'E', '2824', '20kg', '14Hours 15Minute', 0),
(484, 178, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-27', '2017-11-27', 'Pegasus Airlines', 'PC', 'P', '513', '20kg', '14Hours 15Minute', 0),
(485, 178, 'İstanbul', '15:55', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '17:35', 'Trabzon ', 'TZX', '2017-11-27', '2017-11-27', 'Pegasus Airlines', 'PC', 'E', '2824', '20kg', '14Hours 15Minute', 0),
(486, 179, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:40', 'Sabiha Gokcen ', 'SAW', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'P', '513', '20kg', '06Hours 25Minute', 0),
(487, 179, 'İstanbul', '08:05', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '09:45', 'Trabzon ', 'TZX', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'E', '2814', '20kg', '06Hours 25Minute', 0),
(488, 180, 'İstanbul', '12:15', 'Sabiha Gokcen ', 'SAW', 'Moskova', '15:15', 'Domodedovo ', 'DME', '2017-11-30', '2017-11-30', 'Pegasus Airlines', 'PC', 'P', '386', '20kg', '03Hours 00Minute', 0),
(489, 181, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-26', '2017-11-26', 'Atlasjet Airlines', 'KK', 'U', '1185', '30kg', '07Hours 25Minute', 0),
(490, 181, 'İstanbul', '11:05', 'Ataturk ', 'IST', 'Trabzon', '12:55', 'Trabzon ', 'TZX', '2017-11-26', '2017-11-26', 'Atlasjet Airlines', 'KK', 'B', '62', '30kg', '07Hours 25Minute', 0),
(491, 181, 'Trabzon', '19:15', 'Trabzon ', 'TZX', 'İstanbul', '21:05', 'Ataturk ', 'IST', '2017-11-30', '2017-11-30', 'Atlasjet Airlines', 'KK', 'B', '63', '30kg', '07Hours 30Minute', 1),
(492, 181, 'İstanbul', '23:45', 'Ataturk ', 'IST', 'Tehran', '03:15', 'Imam Khomeini Intl ', 'IKA', '2017-11-30', '2017-12-01', 'Atlasjet Airlines', 'KK', 'E', '1184', '30kg', '07Hours 30Minute', 1),
(493, 182, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-28', '2017-11-28', 'Atlasjet Airlines', 'KK', 'X', '1185', '30kg', '09Hours 45Minute', 0),
(494, 182, 'İstanbul', '11:30', 'Ataturk ', 'IST', 'Cidde', '15:15', 'King Abdulaziz Intl ', 'JED', '2017-11-28', '2017-11-28', 'Atlasjet Airlines', 'KK', 'X', '830', '30kg', '09Hours 45Minute', 0),
(495, 183, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2017-11-27', '2017-11-27', 'Turkish Airlines', 'TK', 'V', '875', '30kg', '22Hours 00Minute', 0),
(496, 183, 'İstanbul', '23:10', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '00:55', 'Trabzon ', 'TZX', '2017-11-27', '2017-11-28', 'Turkish Airlines', 'TK', 'Y', '7438', '30kg', '22Hours 00Minute', 0),
(497, 184, 'Dubai', '23:00', 'Dubai Intl ', 'DXB', 'Cidde', '01:15', 'King Abdulaziz Intl ', 'JED', '2017-11-27', '2017-11-28', 'Saudi Arabian Airlines', 'SV', 'V', '595', '2  BAG', '03Hours 15Minute', 0),
(498, 184, 'Cidde', '11:40', 'King Abdulaziz Intl ', 'JED', 'Riyadh', '13:15', 'King Khalid Intl ', 'RUH', '2017-11-30', '2017-11-30', 'Saudi Arabian Airlines', 'SV', 'V', '1030', '2  BAG', '06Hours 20Minute', 1),
(499, 184, 'Riyadh', '16:05', 'King Khalid Intl ', 'RUH', 'Dubai', '19:00', 'Dubai Intl ', 'DXB', '2017-11-30', '2017-11-30', 'Saudi Arabian Airlines', 'SV', 'V', '560', '2  BAG', '06Hours 20Minute', 1),
(500, 186, 'Moskova', '14:05', 'Domodedovo ', 'DME', 'Atina', '16:45', 'Athens Int E Venizelos ', 'ATH', '2017-11-30', '2017-11-30', 'Aegean Airlines', 'A3', 'P', '971', 'El Bagajı BAG', '19Hours 50Minute', 0),
(501, 186, 'Atina', '07:20', 'Athens Int E Venizelos ', 'ATH', 'İstanbul', '09:55', 'Ataturk ', 'IST', '2017-12-01', '2017-12-01', 'OLYMPIC AIR', 'A3', 'P', '990', 'El Bagajı BAG', '19Hours 50Minute', 0),
(502, 186, 'İstanbul', '16:50', 'Ataturk ', 'IST', 'Atina', '17:35', 'Athens Int E Venizelos ', 'ATH', '2017-12-27', '2017-12-27', 'OLYMPIC AIR', 'A3', 'T', '993', 'El Bagajı BAG', '20Hours 25Minute', 1),
(503, 186, 'Atina', '08:45', 'Athens Int E Venizelos ', 'ATH', 'Moskova', '13:15', 'Domodedovo ', 'DME', '2017-12-28', '2017-12-28', 'Aegean Airlines', 'A3', 'T', '970', 'El Bagajı BAG', '20Hours 25Minute', 1),
(504, 187, 'İstanbul', '00:35', 'Ataturk ', 'IST', 'Moskova', '03:30', 'Vnukovo Intl ', 'VKO', '2017-11-28', '2017-11-28', 'Turkish Airlines', 'TK', 'V', '419', '30kg', '02Hours 55Minute', 0),
(505, 188, 'Moskova', '04:25', 'Vnukovo Intl ', 'VKO', 'İstanbul', '07:30', 'Ataturk ', 'IST', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'V', '420', '30kg', '03Hours 05Minute', 0),
(506, 192, 'Moskova', '04:25', 'Vnukovo Intl ', 'VKO', 'İstanbul', '07:30', 'Ataturk ', 'IST', '2017-11-29', '2017-11-29', 'Turkish Airlines', 'TK', 'V', '420', '30kg', '03Hours 05Minute', 0),
(507, 192, 'İstanbul', '00:35', 'Ataturk ', 'IST', 'Moskova', '03:30', 'Vnukovo Intl ', 'VKO', '2017-12-29', '2017-12-29', 'Turkish Airlines', 'TK', 'V', '419', '30kg', '02Hours 55Minute', 1),
(508, 193, 'Cidde', '21:10', 'King Abdulaziz Intl ', 'JED', 'Abu Dhabi', '01:00', 'International ', 'AUH', '2017-11-30', '2017-12-01', 'Nasair', 'EY', 'L', '1395', '2  BAG', '06Hours 00Minute', 0),
(509, 193, 'Abu Dhabi', '02:50', 'International ', 'AUH', 'Dubai', '04:10', 'Dubai Bus Station ', 'XNB', '2017-12-01', '2017-12-01', 'Etihad Airways', 'EY', 'L', '5414', '2  BAG', '06Hours 00Minute', 0),
(510, 193, 'Dubai', '10:30', 'Dubai Bus Station ', 'XNB', 'Abu Dhabi', '11:50', 'International ', 'AUH', '2017-12-29', '2017-12-29', 'Etihad Airways', 'EY', 'L', '5417', '2  BAG', '06Hours 15Minute', 1),
(511, 193, 'Abu Dhabi', '13:45', 'International ', 'AUH', 'Cidde', '15:45', 'King Abdulaziz Intl ', 'JED', '2017-12-29', '2017-12-29', 'Etihad Airways', 'EY', 'L', '311', '2  BAG', '06Hours 15Minute', 1),
(512, 194, 'Cidde', '11:30', 'King Abdulaziz Intl ', 'JED', 'Dubai', '15:30', 'Dubai Intl ', 'DXB', '2017-11-30', '2017-11-30', 'Flydubai', 'FZ', 'Q', '832', '20kg', '03Hours 00Minute', 0),
(513, 195, 'Cidde', '07:20', 'King Abdulaziz Intl ', 'JED', 'Dubai', '11:15', 'Dubai Intl ', 'DXB', '2017-11-30', '2017-11-30', 'Nasair', 'XY', 'U', '501', '1  BAG', '02Hours 55Minute', 0),
(514, 196, 'Dubai', '12:20', 'Dubai Intl ', 'DXB', 'Cidde', '14:35', 'King Abdulaziz Intl ', 'JED', '2017-11-29', '2017-11-29', 'Nasair', 'XY', 'P', '502', '1  BAG', '03Hours 15Minute', 0),
(515, 199, 'Moskova', '11:10', 'Vnukovo Intl ', 'VKO', 'Bakü', '15:00', 'Heydar Aliyev Intl ', 'GYD', '2017-11-30', '2017-11-30', 'Azerbaijan Airlines', 'J2', 'X', '808', '1  BAG', '08Hours 30Minute', 0),
(516, 199, 'Bakü', '17:35', 'Heydar Aliyev Intl ', 'GYD', 'İstanbul', '19:40', 'Ataturk ', 'IST', '2017-11-30', '2017-11-30', 'Azerbaijan Airlines', 'J2', 'X', '8079', '1  BAG', '08Hours 30Minute', 0),
(517, 199, 'İstanbul', '10:50', 'Sabiha Gokcen ', 'SAW', 'Bakü', '14:35', 'Heydar Aliyev Intl ', 'GYD', '2017-12-30', '2017-12-30', 'Azerbaijan Airlines', 'J2', 'X', '9104', '1  BAG', '07Hours 50Minute', 1),
(518, 199, 'Bakü', '16:30', 'Heydar Aliyev Intl ', 'GYD', 'Moskova', '18:40', 'Vnukovo Intl ', 'VKO', '2017-12-30', '2017-12-30', 'Azerbaijan Airlines', 'J2', 'X', '809', '1  BAG', '07Hours 50Minute', 1),
(519, 202, 'Moskova', '11:10', 'Vnukovo Intl ', 'VKO', 'Bakü', '15:00', 'Heydar Aliyev Intl ', 'GYD', '2017-11-29', '2017-11-29', 'Azerbaijan Airlines', 'J2', 'X', '808', '1  BAG', '08Hours 30Minute', 0),
(520, 202, 'Bakü', '17:35', 'Heydar Aliyev Intl ', 'GYD', 'İstanbul', '19:40', 'Ataturk ', 'IST', '2017-11-29', '2017-11-29', 'Azerbaijan Airlines', 'J2', 'X', '8079', '1  BAG', '08Hours 30Minute', 0),
(521, 202, 'İstanbul', '10:50', 'Sabiha Gokcen ', 'SAW', 'Bakü', '14:35', 'Heydar Aliyev Intl ', 'GYD', '2017-12-28', '2017-12-28', 'Azerbaijan Airlines', 'J2', 'X', '9104', '1  BAG', '07Hours 50Minute', 1),
(522, 202, 'Bakü', '16:30', 'Heydar Aliyev Intl ', 'GYD', 'Moskova', '18:40', 'Vnukovo Intl ', 'VKO', '2017-12-28', '2017-12-28', 'Azerbaijan Airlines', 'J2', 'X', '809', '1  BAG', '07Hours 50Minute', 1),
(523, 204, 'Moskova', '04:25', 'Vnukovo Intl ', 'VKO', 'İstanbul', '07:30', 'Ataturk ', 'IST', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'V', '420', '30kg', '03Hours 05Minute', 0),
(524, 204, 'İstanbul', '00:35', 'Ataturk ', 'IST', 'Moskova', '03:30', 'Vnukovo Intl ', 'VKO', '2017-12-27', '2017-12-27', 'Turkish Airlines', 'TK', 'V', '419', '30kg', '02Hours 55Minute', 1),
(525, 206, 'Dubai', '11:15', 'Dubai Intl ', 'DXB', 'Muskat', '12:30', 'Muscat International ', 'MCT', '2017-11-30', '2017-11-30', 'Oman Air', 'WY', 'L', '604', '2  BAG', '06Hours 15Minute', 0),
(526, 206, 'Muskat', '14:20', 'Muscat International ', 'MCT', 'Delhi', '19:00', 'Indira Gandhi Intl ', 'DEL', '2017-11-30', '2017-11-30', 'Oman Air', 'WY', 'L', '247', '2  BAG', '06Hours 15Minute', 0),
(527, 206, 'Delhi', '15:25', 'Indira Gandhi Intl ', 'DEL', 'Muskat', '17:40', 'Muscat International ', 'MCT', '2017-12-06', '2017-12-06', 'Oman Air', 'WY', 'L', '246', '2  BAG', '05Hours 55Minute', 1),
(528, 206, 'Muskat', '18:40', 'Muscat International ', 'MCT', 'Dubai', '19:50', 'Dubai Intl ', 'DXB', '2017-12-06', '2017-12-06', 'Oman Air', 'WY', 'L', '623', '2  BAG', '05Hours 55Minute', 1),
(529, 207, 'Dubai', '08:00', 'Dubai Intl ', 'DXB', 'Bahreyn', '08:15', 'Bahrain Intl ', 'BAH', '2017-12-06', '2017-12-06', 'Gulf Air', 'GF', 'W', '501', '30kg', '06Hours 50Minute', 0),
(530, 207, 'Bahreyn', '10:15', 'Bahrain Intl ', 'BAH', 'Kahire', '12:50', 'Cairo Intl ', 'CAI', '2017-12-06', '2017-12-06', 'Gulf Air', 'GF', 'W', '71', '30kg', '06Hours 50Minute', 0),
(531, 207, 'Kahire', '13:40', 'Cairo Intl ', 'CAI', 'Bahreyn', '17:30', 'Bahrain Intl ', 'BAH', '2017-12-13', '2017-12-13', 'Gulf Air', 'GF', 'W', '70', '30kg', '04Hours 55Minute', 1),
(532, 207, 'Bahreyn', '18:20', 'Bahrain Intl ', 'BAH', 'Dubai', '20:35', 'Dubai Intl ', 'DXB', '2017-12-13', '2017-12-13', 'Gulf Air', 'GF', 'W', '510', '30kg', '04Hours 55Minute', 1),
(533, 208, 'Delhi', '05:50', 'Indira Gandhi Intl ', 'DEL', 'Moskova', '09:50', 'Sheremetyevo ', 'SVO', '2017-12-07', '2017-12-07', 'Aeroflot', 'SU', 'N', '233', '2  BAG', '22Hours 45Minute', 0),
(534, 208, 'Moskova', '22:15', 'Sheremetyevo ', 'SVO', 'Tehran', '02:35', 'Imam Khomeini Intl ', 'IKA', '2017-12-07', '2017-12-08', 'Aeroflot', 'SU', 'N', '512', '2  BAG', '22Hours 45Minute', 0),
(535, 208, 'Tehran', '04:30', 'Imam Khomeini Intl ', 'IKA', 'Moskova', '08:00', 'Sheremetyevo ', 'SVO', '2017-12-13', '2017-12-13', 'Aeroflot', 'SU', 'E', '513', '2  BAG', '17Hours 15Minute', 1),
(536, 208, 'Moskova', '15:10', 'Sheremetyevo ', 'SVO', 'Delhi', '23:45', 'Indira Gandhi Intl ', 'DEL', '2017-12-13', '2017-12-13', 'Aeroflot', 'SU', 'E', '234', '2  BAG', '17Hours 15Minute', 1),
(537, 209, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-11-30', '2017-11-30', 'Atlasjet Airlines', 'KK', 'X', '1185', '30kg', '10Hours 05Minute', 0),
(538, 209, 'İstanbul', '11:50', 'Ataturk ', 'IST', 'Cidde', '15:35', 'King Abdulaziz Intl ', 'JED', '2017-11-30', '2017-11-30', 'Atlasjet Airlines', 'KK', 'X', '830', '30kg', '10Hours 05Minute', 0),
(539, 211, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2017-11-29', '2017-11-29', 'Pegasus Airlines', 'PC', 'U', '513', '20kg', '29Hours 00Minute', 0),
(540, 211, 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '08:20', 'Trabzon ', 'TZX', '2017-11-30', '2017-11-30', 'Pegasus Airlines', 'PC', 'E', '2810', '20kg', '29Hours 00Minute', 0),
(541, 211, 'Trabzon', '22:30', 'Trabzon ', 'TZX', 'İstanbul', '00:15', 'Sabiha Gokcen ', 'SAW', '2017-12-08', '2017-12-09', 'Pegasus Airlines', 'PC', 'E', '2829', '20kg', '28Hours 00Minute', 1),
(542, 211, 'İstanbul', '23:30', 'Sabiha Gokcen ', 'SAW', 'Tehran', '03:00', 'Imam Khomeini Intl ', 'IKA', '2017-12-09', '2017-12-10', 'Pegasus Airlines', 'PC', 'T', '512', '20kg', '28Hours 00Minute', 1),
(543, 212, 'İstanbul', '00:35', 'Ataturk ', 'IST', 'Moskova', '03:30', 'Vnukovo Intl ', 'VKO', '2018-01-30', '2018-01-30', 'Turkish Airlines', 'TK', 'V', '419', '30kg', '02Hours 55Minute', 0),
(544, 213, 'İstanbul', '01:40', 'Ataturk ', 'IST', 'Bakü', '05:25', 'Heydar Aliyev Intl ', 'GYD', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'J2', 'O', '6338', '1  BAG', '10Hours 15Minute', 0),
(545, 213, 'Bakü', '10:00', 'Heydar Aliyev Intl ', 'GYD', 'Dubai', '12:55', 'Dubai Intl ', 'DXB', '2017-11-30', '2017-11-30', 'Azerbaijan Airlines', 'J2', 'O', '11', '1  BAG', '10Hours 15Minute', 0),
(546, 214, 'Tehran', '06:20', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '09:10', 'Sabiha Gokcen ', 'SAW', '2017-11-28', '2017-11-28', 'Turkish Airlines', 'TK', 'V', '899', '30kg', '03Hours 20Minute', 0),
(547, 214, 'İstanbul', '21:05', 'Sabiha Gokcen ', 'SAW', 'Tehran', '00:30', 'Imam Khomeini Intl ', 'IKA', '2017-12-19', '2017-12-20', 'Turkish Airlines', 'TK', 'V', '898', '30kg', '02Hours 55Minute', 1),
(548, 215, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2017-12-13', '2017-12-13', 'Turkish Airlines', 'TK', 'V', '875', '30kg', '03Hours 20Minute', 0),
(549, 216, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'U', '513', '20kg', '14Hours 20Minute', 0),
(550, 216, 'İstanbul', '16:00', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '17:40', 'Trabzon ', 'TZX', '2017-11-28', '2017-11-28', 'Pegasus Airlines', 'PC', 'E', '2824', '20kg', '14Hours 20Minute', 0),
(551, 216, 'Trabzon', '06:05', 'Trabzon ', 'TZX', 'İstanbul', '07:50', 'Sabiha Gokcen ', 'SAW', '2017-11-30', '2017-11-30', 'Pegasus Airlines', 'PC', 'E', '2831', '20kg', '20Hours 25Minute', 1),
(552, 216, 'İstanbul', '23:30', 'Sabiha Gokcen ', 'SAW', 'Tehran', '03:00', 'Imam Khomeini Intl ', 'IKA', '2017-11-30', '2017-12-01', 'Pegasus Airlines', 'PC', 'T', '512', '20kg', '20Hours 25Minute', 1),
(553, 217, 'Tehran', '06:20', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '09:10', 'Sabiha Gokcen ', 'SAW', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'V', '899', '30kg', '17Hours 20Minute', 0),
(554, 217, 'İstanbul', '18:50', 'Sabiha Gokcen ', 'SAW', 'Ankara', '20:00', 'Esenboga ', 'ESB', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'Y', '2978', '30kg', '17Hours 20Minute', 0),
(555, 217, 'Ankara', '21:55', 'Esenboga ', 'ESB', 'Trabzon', '23:10', 'Trabzon ', 'TZX', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'Y', '7068', '30kg', '17Hours 20Minute', 0),
(556, 218, 'Tehran', '06:20', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '09:10', 'Sabiha Gokcen ', 'SAW', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'V', '899', '30kg', '17Hours 20Minute', 0),
(557, 218, 'İstanbul', '18:50', 'Sabiha Gokcen ', 'SAW', 'Ankara', '20:00', 'Esenboga ', 'ESB', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'Y', '2978', '30kg', '17Hours 20Minute', 0),
(558, 218, 'Ankara', '21:55', 'Esenboga ', 'ESB', 'Trabzon', '23:10', 'Trabzon ', 'TZX', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'Y', '7068', '30kg', '17Hours 20Minute', 0);
INSERT INTO `direction` (`id`, `dir_idbelit`, `dir_origin`, `dir_origintime`, `dir_originairport`, `dir_originmairport`, `dir_dest`, `dir_desttime`, `dir_destairport`, `dir_destmairport`, `dir_origindate`, `dir_destdate`, `dir_airline`, `dir_logo`, `dir_class`, `dir_numberflight`, `dir_bag`, `dir_durit`, `dir_dir`) VALUES
(559, 219, 'Tehran', '06:20', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '09:10', 'Sabiha Gokcen ', 'SAW', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'V', '899', '30kg', '17Hours 20Minute', 0),
(560, 219, 'İstanbul', '18:50', 'Sabiha Gokcen ', 'SAW', 'Ankara', '20:00', 'Esenboga ', 'ESB', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'Y', '2978', '30kg', '17Hours 20Minute', 0),
(561, 219, 'Ankara', '21:55', 'Esenboga ', 'ESB', 'Trabzon', '23:10', 'Trabzon ', 'TZX', '2017-11-30', '2017-11-30', 'Turkish Airlines', 'TK', 'Y', '7068', '30kg', '17Hours 20Minute', 0),
(562, 220, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2017-11-30', '2017-11-30', 'Pegasus Airlines', 'PC', 'S', '513', '20kg', '16Hours 20Minute', 0),
(563, 220, 'İstanbul', '18:00', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '19:40', 'Trabzon ', 'TZX', '2017-11-30', '2017-11-30', 'Pegasus Airlines', 'PC', 'E', '2826', '20kg', '16Hours 20Minute', 0),
(564, 221, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2017-11-29', '2017-11-29', 'Pegasus Airlines', 'PC', 'T', '513', '20kg', '29Hours 00Minute', 0),
(565, 221, 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '08:20', 'Trabzon ', 'TZX', '2017-11-30', '2017-11-30', 'Pegasus Airlines', 'PC', 'E', '2810', '20kg', '29Hours 00Minute', 0),
(566, 221, 'Trabzon', '22:30', 'Trabzon ', 'TZX', 'İstanbul', '00:15', 'Sabiha Gokcen ', 'SAW', '2017-12-09', '2017-12-10', 'Pegasus Airlines', 'PC', 'E', '2829', '20kg', '28Hours 00Minute', 1),
(567, 221, 'İstanbul', '23:30', 'Sabiha Gokcen ', 'SAW', 'Tehran', '03:00', 'Imam Khomeini Intl ', 'IKA', '2017-12-10', '2017-12-11', 'Pegasus Airlines', 'PC', 'Z', '512', '20kg', '28Hours 00Minute', 1),
(568, 222, 'Trabzon', '08:25', 'Trabzon ', 'TZX', 'İstanbul', '10:20', 'Ataturk ', 'IST', '2017-12-02', '2017-12-02', 'Atlasjet Airlines', 'KK', 'M', '61', '30kg', '15Hours 55Minute', 0),
(569, 222, 'İstanbul', '20:05', 'Ataturk ', 'IST', 'Dubai', '01:20', 'Dubai Intl ', 'DXB', '2017-12-02', '2017-12-03', 'Emirates', 'EK', 'K', '122', '30kg', '15Hours 55Minute', 0),
(570, 223, 'Trabzon', '08:25', 'Trabzon ', 'TZX', 'İstanbul', '10:20', 'Ataturk ', 'IST', '2017-12-02', '2017-12-02', 'Atlasjet Airlines', 'KK', 'M', '61', '30kg', '15Hours 55Minute', 0),
(571, 223, 'İstanbul', '20:05', 'Ataturk ', 'IST', 'Dubai', '01:20', 'Dubai Intl ', 'DXB', '2017-12-02', '2017-12-03', 'Emirates', 'EK', 'K', '122', '30kg', '15Hours 55Minute', 0),
(572, 224, 'Trabzon', '08:25', 'Trabzon ', 'TZX', 'İstanbul', '10:20', 'Ataturk ', 'IST', '2017-12-02', '2017-12-02', 'Atlasjet Airlines', 'KK', 'M', '61', '30kg', '15Hours 55Minute', 0),
(573, 224, 'İstanbul', '20:05', 'Ataturk ', 'IST', 'Dubai', '01:20', 'Dubai Intl ', 'DXB', '2017-12-02', '2017-12-03', 'Emirates', 'EK', 'K', '122', '30kg', '15Hours 55Minute', 0),
(574, 225, 'Trabzon', '06:00', 'Trabzon ', 'TZX', 'İstanbul', '07:55', 'Sabiha Gokcen ', 'SAW', '2017-12-01', '2017-12-01', 'Turkish Airlines', 'TK', 'Y', '7439', '30kg', '08Hours 45Minute', 0),
(575, 225, 'İstanbul', '10:15', 'Sabiha Gokcen ', 'SAW', 'Dubai', '15:45', 'Dubai Intl ', 'DXB', '2017-12-01', '2017-12-01', 'Turkish Airlines', 'TK', 'L', '756', '30kg', '08Hours 45Minute', 0),
(576, 225, 'Dubai', '17:00', 'Dubai Intl ', 'DXB', 'İstanbul', '21:15', 'Sabiha Gokcen ', 'SAW', '2017-12-07', '2017-12-07', 'Turkish Airlines', 'TK', 'L', '757', '30kg', '08Hours 55Minute', 1),
(577, 225, 'İstanbul', '23:10', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '00:55', 'Trabzon ', 'TZX', '2017-12-07', '2017-12-08', 'Turkish Airlines', 'TK', 'Y', '7438', '30kg', '08Hours 55Minute', 1),
(578, 226, 'Trabzon', '13:35', 'Trabzon ', 'TZX', 'İstanbul', '15:30', 'Ataturk ', 'IST', '2018-01-01', '2018-01-01', 'Turkish Airlines', 'TK', 'Y', '2829', '30kg', '13Hours 10Minute', 0),
(579, 226, 'İstanbul', '23:45', 'Ataturk ', 'IST', 'Tehran', '03:15', 'Imam Khomeini Intl ', 'IKA', '2018-01-01', '2018-01-02', 'Atlasjet Airlines', 'KK', 'Y', '1184', '30kg', '13Hours 10Minute', 0),
(580, 226, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2018-01-06', '2018-01-06', 'Atlasjet Airlines', 'KK', 'Y', '1185', '30kg', '14Hours 20Minute', 1),
(581, 226, 'İstanbul', '18:00', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '19:50', 'Trabzon ', 'TZX', '2018-01-06', '2018-01-06', 'Turkish Airlines', 'TK', 'Y', '7434', '30kg', '14Hours 20Minute', 1),
(582, 227, 'Trabzon', '22:30', 'Trabzon ', 'TZX', 'İstanbul', '00:15', 'Sabiha Gokcen ', 'SAW', '2018-01-03', '2018-01-04', 'Pegasus Airlines', 'PC', 'E', '2829', '20kg', '28Hours 00Minute', 0),
(583, 227, 'İstanbul', '23:30', 'Sabiha Gokcen ', 'SAW', 'Tehran', '03:00', 'Imam Khomeini Intl ', 'IKA', '2018-01-04', '2018-01-05', 'Pegasus Airlines', 'PC', 'P', '512', '20kg', '28Hours 00Minute', 0),
(584, 228, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2018-02-10', '2018-02-10', 'Pegasus Airlines', 'PC', 'U', '513', '20kg', '03Hours 15Minute', 0),
(585, 229, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2018-01-06', '2018-01-06', 'Pegasus Airlines', 'PC', 'V', '513', '20kg', '03Hours 15Minute', 0),
(586, 230, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2017-12-26', '2017-12-26', 'Turkish Airlines', 'TK', 'V', '875', '30kg', '03Hours 20Minute', 0),
(587, 231, 'Moskova', '15:40', 'Vnukovo Intl ', 'VKO', 'İstanbul', '18:55', 'Ataturk ', 'IST', '2017-12-26', '2017-12-26', 'Turkish Airlines', 'TK', 'V', '418', '30kg', '06Hours 50Minute', 0),
(588, 231, 'İstanbul', '20:45', 'Ataturk ', 'IST', 'Trabzon', '22:30', 'Trabzon ', 'TZX', '2017-12-26', '2017-12-26', 'Turkish Airlines', 'TK', 'Y', '2830', '30kg', '06Hours 50Minute', 0),
(589, 232, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2017-12-27', '2017-12-27', 'Pegasus Airlines', 'PC', 'U', '513', '20kg', '29Hours 00Minute', 0),
(590, 232, 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '08:20', 'Trabzon ', 'TZX', '2017-12-28', '2017-12-28', 'Pegasus Airlines', 'PC', 'E', '2810', '20kg', '29Hours 00Minute', 0),
(591, 233, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2017-12-27', '2017-12-27', 'Pegasus Airlines', 'PC', 'U', '513', '20kg', '29Hours 00Minute', 0),
(592, 233, 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '08:20', 'Trabzon ', 'TZX', '2017-12-28', '2017-12-28', 'Pegasus Airlines', 'PC', 'E', '2810', '20kg', '29Hours 00Minute', 0),
(593, 234, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2017-12-27', '2017-12-27', 'Pegasus Airlines', 'PC', 'U', '513', '20kg', '29Hours 00Minute', 0),
(594, 234, 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '08:20', 'Trabzon ', 'TZX', '2017-12-28', '2017-12-28', 'Pegasus Airlines', 'PC', 'E', '2810', '20kg', '29Hours 00Minute', 0),
(595, 235, 'Tehran', '05:05', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:05', 'Ataturk ', 'IST', '2017-12-19', '2017-12-19', 'Turkish Airlines', 'TK', 'V', '873', '30kg', '15Hours 15Minute', 0),
(596, 235, 'İstanbul', '18:00', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '19:50', 'Trabzon ', 'TZX', '2017-12-19', '2017-12-19', 'Turkish Airlines', 'TK', 'Y', '7434', '30kg', '15Hours 15Minute', 0),
(597, 235, 'Trabzon', '07:45', 'Trabzon ', 'TZX', 'İstanbul', '09:40', 'Ataturk ', 'IST', '2017-12-28', '2017-12-28', 'Turkish Airlines', 'TK', 'Y', '2839', '30kg', '16Hours 15Minute', 1),
(598, 235, 'İstanbul', '21:05', 'Sabiha Gokcen ', 'SAW', 'Tehran', '00:30', 'Imam Khomeini Intl ', 'IKA', '2017-12-28', '2017-12-29', 'Turkish Airlines', 'TK', 'V', '898', '30kg', '16Hours 15Minute', 1),
(599, 236, 'Tehran', '05:05', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:05', 'Ataturk ', 'IST', '2017-12-19', '2017-12-19', 'Turkish Airlines', 'TK', 'V', '873', '30kg', '15Hours 15Minute', 0),
(600, 236, 'İstanbul', '18:00', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '19:50', 'Trabzon ', 'TZX', '2017-12-19', '2017-12-19', 'Turkish Airlines', 'TK', 'Y', '7434', '30kg', '15Hours 15Minute', 0),
(601, 236, 'Trabzon', '07:45', 'Trabzon ', 'TZX', 'İstanbul', '09:40', 'Ataturk ', 'IST', '2017-12-28', '2017-12-28', 'Turkish Airlines', 'TK', 'Y', '2839', '30kg', '16Hours 15Minute', 1),
(602, 236, 'İstanbul', '21:05', 'Sabiha Gokcen ', 'SAW', 'Tehran', '00:30', 'Imam Khomeini Intl ', 'IKA', '2017-12-28', '2017-12-29', 'Turkish Airlines', 'TK', 'V', '898', '30kg', '16Hours 15Minute', 1),
(603, 237, 'Tehran', '05:05', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:05', 'Ataturk ', 'IST', '2017-12-19', '2017-12-19', 'Turkish Airlines', 'TK', 'V', '873', '30kg', '15Hours 15Minute', 0),
(604, 237, 'İstanbul', '18:00', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '19:50', 'Trabzon ', 'TZX', '2017-12-19', '2017-12-19', 'Turkish Airlines', 'TK', 'Y', '7434', '30kg', '15Hours 15Minute', 0),
(605, 237, 'Trabzon', '07:45', 'Trabzon ', 'TZX', 'İstanbul', '09:40', 'Ataturk ', 'IST', '2017-12-28', '2017-12-28', 'Turkish Airlines', 'TK', 'Y', '2839', '30kg', '16Hours 15Minute', 1),
(606, 237, 'İstanbul', '21:05', 'Sabiha Gokcen ', 'SAW', 'Tehran', '00:30', 'Imam Khomeini Intl ', 'IKA', '2017-12-28', '2017-12-29', 'Turkish Airlines', 'TK', 'V', '898', '30kg', '16Hours 15Minute', 1),
(607, 238, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2018-01-19', '2018-01-19', 'Turkish Airlines', 'IR', 'Y', '1875', '30  BAG', '16Hours 25Minute', 0),
(608, 238, 'İstanbul', '17:35', 'Ataturk ', 'IST', 'Trabzon', '19:20', 'Trabzon ', 'TZX', '2018-01-19', '2018-01-19', 'Turkish Airlines', 'TK', 'Y', '2832', '30  BAG', '16Hours 25Minute', 0),
(609, 239, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2018-01-19', '2018-01-19', 'Turkish Airlines', 'IR', 'Y', '1875', '30  BAG', '16Hours 25Minute', 0),
(610, 239, 'İstanbul', '17:35', 'Ataturk ', 'IST', 'Trabzon', '19:20', 'Trabzon ', 'TZX', '2018-01-19', '2018-01-19', 'Turkish Airlines', 'TK', 'Y', '2832', '30  BAG', '16Hours 25Minute', 0),
(611, 240, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2018-01-19', '2018-01-19', 'Turkish Airlines', 'IR', 'Y', '1875', '30  BAG', '16Hours 25Minute', 0),
(612, 240, 'İstanbul', '17:35', 'Ataturk ', 'IST', 'Trabzon', '19:20', 'Trabzon ', 'TZX', '2018-01-19', '2018-01-19', 'Turkish Airlines', 'TK', 'Y', '2832', '30  BAG', '16Hours 25Minute', 0),
(613, 241, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2018-01-19', '2018-01-19', 'Turkish Airlines', 'IR', 'Y', '1875', '30  BAG', '16Hours 25Minute', 0),
(614, 241, 'İstanbul', '17:35', 'Ataturk ', 'IST', 'Trabzon', '19:20', 'Trabzon ', 'TZX', '2018-01-19', '2018-01-19', 'Turkish Airlines', 'TK', 'Y', '2832', '30  BAG', '16Hours 25Minute', 0),
(615, 244, 'Tehran', '04:35', 'Imam Khomeini Intl ', 'IKA', 'Muskat', '07:45', 'Muscat International ', 'MCT', '2017-12-31', '2017-12-31', 'Oman Air', 'WY', 'L', '432', '2  BAG', '13Hours 35Minute', 0),
(616, 244, 'Muskat', '17:25', 'Muscat International ', 'MCT', 'Dubai', '18:40', 'Dubai Intl ', 'DXB', '2017-12-31', '2017-12-31', 'Oman Air', 'WY', 'L', '607', '2  BAG', '13Hours 35Minute', 0),
(617, 245, 'Tehran', '03:25', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:15', 'Ataturk ', 'IST', '2017-12-26', '2017-12-26', 'Turkish Airlines', 'IR', 'Y', '1875', '30  BAG', '16Hours 25Minute', 0),
(618, 245, 'İstanbul', '17:35', 'Ataturk ', 'IST', 'Trabzon', '19:20', 'Trabzon ', 'TZX', '2017-12-26', '2017-12-26', 'Turkish Airlines', 'TK', 'Y', '2832', '30  BAG', '16Hours 25Minute', 0),
(619, 246, 'Tehran', '17:15', 'Imam Khomeini Intl ', 'IKA', 'Muskat', '20:20', 'Muscat International ', 'MCT', '2017-12-27', '2017-12-27', 'Oman Air', 'WY', 'N', '434', '2  BAG', '16Hours 05Minute', 0),
(620, 246, 'Muskat', '08:40', 'Muscat International ', 'MCT', 'Dubai', '09:50', 'Dubai Intl ', 'DXB', '2017-12-28', '2017-12-28', 'Oman Air', 'WY', 'N', '603', '2  BAG', '16Hours 05Minute', 0),
(621, 247, 'Tehran', '17:15', 'Imam Khomeini Intl ', 'IKA', 'Muskat', '20:20', 'Muscat International ', 'MCT', '2017-12-27', '2017-12-27', 'Oman Air', 'WY', 'N', '434', '2  BAG', '16Hours 05Minute', 0),
(622, 247, 'Muskat', '08:40', 'Muscat International ', 'MCT', 'Dubai', '09:50', 'Dubai Intl ', 'DXB', '2017-12-28', '2017-12-28', 'Oman Air', 'WY', 'N', '603', '2  BAG', '16Hours 05Minute', 0),
(623, 248, 'Tehran', '17:15', 'Imam Khomeini Intl ', 'IKA', 'Muskat', '20:20', 'Muscat International ', 'MCT', '2017-12-27', '2017-12-27', 'Oman Air', 'WY', 'N', '434', '2  BAG', '16Hours 05Minute', 0),
(624, 248, 'Muskat', '08:40', 'Muscat International ', 'MCT', 'Dubai', '09:50', 'Dubai Intl ', 'DXB', '2017-12-28', '2017-12-28', 'Oman Air', 'WY', 'N', '603', '2  BAG', '16Hours 05Minute', 0),
(625, 249, 'İstanbul', '23:45', 'Ataturk ', 'IST', 'Tehran', '03:15', 'Imam Khomeini Intl ', 'IKA', '2017-12-27', '2017-12-28', 'Atlasjet Airlines', 'KK', 'V', '1184', '30  BAG', '03Hours 00Minute', 0),
(626, 249, 'Tehran', '06:00', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:55', 'Ataturk ', 'IST', '2017-12-30', '2017-12-30', 'Atlasjet Airlines', 'KK', 'X', '1185', '30  BAG', '03Hours 25Minute', 1),
(627, 250, 'Tehran', '11:00', 'Imam Khomeini Intl ', 'IKA', 'Dubai', '13:35', 'Dubai Intl ', 'DXB', '2017-12-27', '2017-12-27', 'Emirates', 'EK', 'L', '972', '30  BAG', '02Hours 05Minute', 0),
(628, 250, 'Dubai', '02:25', 'Dubai Intl ', 'DXB', 'Tehran', '04:10', 'Imam Khomeini Intl ', 'IKA', '2017-12-30', '2017-12-30', 'Emirates', 'EK', 'L', '975', '30  BAG', '02Hours 15Minute', 1),
(629, 251, 'Tehran', '07:00', 'Imam Khomeini Intl ', 'IKA', 'Dubai', '09:45', 'Dubai Intl ', 'DXB', '2017-12-27', '2017-12-27', 'Iran Air', 'IR', 'Y', '658', '40  BAG', '02Hours 15Minute', 0),
(630, 251, 'Dubai', '02:25', 'Dubai Intl ', 'DXB', 'Tehran', '04:10', 'Imam Khomeini Intl ', 'IKA', '2017-12-30', '2017-12-30', 'Emirates', 'EK', 'U', '975', '30  BAG', '02Hours 15Minute', 1),
(631, 253, 'Tehran', '11:25', 'Imam Khomeini Intl ', 'IKA', 'Bakü', '13:20', 'Heydar Aliyev Intl ', 'GYD', '2017-12-21', '2017-12-21', 'Azerbaijan Airlines', 'J2', 'G', '9018', '2  BAG', '13Hours 15Minute', 0),
(632, 253, 'Bakü', '22:15', 'Heydar Aliyev Intl ', 'GYD', 'Dubai', '01:10', 'Dubai Intl ', 'DXB', '2017-12-21', '2017-12-22', 'Azerbaijan Airlines', 'J2', 'G', '15', '2  BAG', '13Hours 15Minute', 0),
(633, 253, 'Dubai', '14:10', 'Dubai Intl ', 'DXB', 'Bakü', '17:10', 'Heydar Aliyev Intl ', 'GYD', '2017-12-30', '2017-12-30', 'Azerbaijan Airlines', 'J2', 'U', '12', '2  BAG', '10Hours 45Minute', 1),
(634, 253, 'Bakü', '23:30', 'Heydar Aliyev Intl ', 'GYD', 'Tehran', '00:25', 'Imam Khomeini Intl ', 'IKA', '2017-12-30', '2017-12-31', 'Azerbaijan Airlines', 'J2', 'U', '9005', '2  BAG', '10Hours 45Minute', 1),
(635, 255, 'Cidde', '13:40', 'King Abdulaziz Intl ', 'JED', 'Bahreyn', '15:40', 'Bahrain Intl ', 'BAH', '2017-12-26', '2017-12-26', 'Gulf Air', 'GF', 'W', '172', '1  BAG', '05Hours 55Minute', 0),
(636, 255, 'Bahreyn', '18:20', 'Bahrain Intl ', 'BAH', 'Dubai', '20:35', 'Dubai Intl ', 'DXB', '2017-12-26', '2017-12-26', 'Gulf Air', 'GF', 'W', '510', '1  BAG', '05Hours 55Minute', 0),
(637, 255, 'Dubai', '17:00', 'Dubai Intl ', 'DXB', 'Bahreyn', '17:15', 'Bahrain Intl ', 'BAH', '2017-12-30', '2017-12-30', 'Gulf Air', 'GF', 'W', '507', '1  BAG', '04Hours 30Minute', 1),
(638, 255, 'Bahreyn', '18:00', 'Bahrain Intl ', 'BAH', 'Cidde', '20:30', 'King Abdulaziz Intl ', 'JED', '2017-12-30', '2017-12-30', 'Gulf Air', 'GF', 'W', '173', '1  BAG', '04Hours 30Minute', 1),
(639, 258, 'Tehran', '15:20', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '18:25', 'Ataturk ', 'IST', '2017-12-26', '2017-12-26', 'Turkish Airlines', 'IR', 'Y', '1871', '30  KG', '07Hours 40Minute', 0),
(640, 258, 'İstanbul', '20:45', 'Ataturk ', 'IST', 'Trabzon', '22:30', 'Trabzon ', 'TZX', '2017-12-26', '2017-12-26', 'Turkish Airlines', 'TK', 'Y', '2830', '30  KG', '07Hours 40Minute', 0),
(641, 258, 'Trabzon', '20:15', 'Trabzon ', 'TZX', 'İstanbul', '22:20', 'Ataturk ', 'IST', '2017-12-30', '2017-12-30', 'Turkish Airlines', 'TK', 'Y', '2833', '30  KG', '07Hours 25Minute', 1),
(642, 258, 'İstanbul', '00:40', 'Ataturk ', 'IST', 'Tehran', '04:10', 'Imam Khomeini Intl ', 'IKA', '2017-12-31', '2017-12-31', 'Turkish Airlines', 'IR', 'Y', '1872', '30  KG', '07Hours 25Minute', 1),
(643, 259, 'Tehran', '07:45', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '10:40', 'Ataturk ', 'IST', '2017-12-27', '2017-12-27', 'Turkish Airlines', 'TK', 'H', '879', '30  KG', '19Hours 35Minute', 0),
(644, 259, 'İstanbul', '22:25', 'Sabiha Gokcen ', 'SAW', 'Dubai', '03:50', 'Dubai Intl ', 'DXB', '2017-12-27', '2017-12-28', 'Turkish Airlines', 'TK', 'H', '758', '30  KG', '19Hours 35Minute', 0),
(645, 259, 'Dubai', '05:20', 'Dubai Intl ', 'DXB', 'İstanbul', '09:30', 'Sabiha Gokcen ', 'SAW', '2017-12-30', '2017-12-30', 'Turkish Airlines', 'TK', 'E', '759', '30  KG', '19Hours 55Minute', 1),
(646, 259, 'İstanbul', '21:10', 'Ataturk ', 'IST', 'Tehran', '00:45', 'Imam Khomeini Intl ', 'IKA', '2017-12-30', '2017-12-31', 'Turkish Airlines', 'TK', 'E', '874', '30  KG', '19Hours 55Minute', 1),
(647, 260, 'Tehran', '07:45', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '10:40', 'Ataturk ', 'IST', '2017-12-27', '2017-12-27', 'Turkish Airlines', 'TK', 'H', '879', '30  KG', '19Hours 35Minute', 0),
(648, 260, 'İstanbul', '22:25', 'Sabiha Gokcen ', 'SAW', 'Dubai', '03:50', 'Dubai Intl ', 'DXB', '2017-12-27', '2017-12-28', 'Turkish Airlines', 'TK', 'H', '758', '30  KG', '19Hours 35Minute', 0),
(649, 260, 'Dubai', '05:20', 'Dubai Intl ', 'DXB', 'İstanbul', '09:30', 'Sabiha Gokcen ', 'SAW', '2017-12-30', '2017-12-30', 'Turkish Airlines', 'TK', 'E', '759', '30  KG', '19Hours 55Minute', 1),
(650, 260, 'İstanbul', '21:10', 'Ataturk ', 'IST', 'Tehran', '00:45', 'Imam Khomeini Intl ', 'IKA', '2017-12-30', '2017-12-31', 'Turkish Airlines', 'TK', 'E', '874', '30  KG', '19Hours 55Minute', 1),
(651, 261, 'Tehran', '07:45', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '10:40', 'Ataturk ', 'IST', '2017-12-27', '2017-12-27', 'Turkish Airlines', 'TK', 'H', '879', '30  KG', '19Hours 35Minute', 0),
(652, 261, 'İstanbul', '22:25', 'Sabiha Gokcen ', 'SAW', 'Dubai', '03:50', 'Dubai Intl ', 'DXB', '2017-12-27', '2017-12-28', 'Turkish Airlines', 'TK', 'H', '758', '30  KG', '19Hours 35Minute', 0),
(653, 261, 'Dubai', '05:20', 'Dubai Intl ', 'DXB', 'İstanbul', '09:30', 'Sabiha Gokcen ', 'SAW', '2017-12-30', '2017-12-30', 'Turkish Airlines', 'TK', 'E', '759', '30  KG', '19Hours 55Minute', 1),
(654, 261, 'İstanbul', '21:10', 'Ataturk ', 'IST', 'Tehran', '00:45', 'Imam Khomeini Intl ', 'IKA', '2017-12-30', '2017-12-31', 'Turkish Airlines', 'TK', 'E', '874', '30  KG', '19Hours 55Minute', 1),
(655, 263, 'Cidde', '05:30', 'King Abdulaziz Intl ', 'JED', 'Abu Dhabi', '09:05', 'International ', 'AUH', '2017-12-24', '2017-12-24', 'Etihad Airways', 'EY', 'L', '314', '2  BAG', '04Hours 55Minute', 0),
(656, 263, 'Abu Dhabi', '10:05', 'International ', 'AUH', 'Dubai', '11:25', 'Dubai Bus Station ', 'XNB', '2017-12-24', '2017-12-24', 'Etihad Airways', 'EY', 'L', '5420', '2  BAG', '04Hours 55Minute', 0),
(657, 263, 'Dubai', '23:50', 'Dubai Bus Station ', 'XNB', 'Abu Dhabi', '01:10', 'International ', 'AUH', '2017-12-30', '2017-12-31', 'Etihad Airways', 'EY', 'L', '5429', '2  BAG', '06Hours 00Minute', 1),
(658, 263, 'Abu Dhabi', '03:00', 'International ', 'AUH', 'Cidde', '04:50', 'King Abdulaziz Intl ', 'JED', '2017-12-31', '2017-12-31', 'Nasair', 'EY', 'L', '1394', '2  BAG', '06Hours 00Minute', 1),
(659, 264, 'Tehran', '06:20', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '09:10', 'Sabiha Gokcen ', 'SAW', '2017-12-25', '2017-12-25', 'Turkish Airlines', 'TK', 'V', '899', '30  KG', '13Hours 30Minute', 0),
(660, 264, 'İstanbul', '17:35', 'Ataturk ', 'IST', 'Trabzon', '19:20', 'Trabzon ', 'TZX', '2017-12-25', '2017-12-25', 'Turkish Airlines', 'TK', 'Y', '2832', '30  KG', '13Hours 30Minute', 0),
(661, 264, 'Trabzon', '09:40', 'Trabzon ', 'TZX', 'İstanbul', '11:45', 'Ataturk ', 'IST', '2017-12-28', '2017-12-28', 'Turkish Airlines', 'TK', 'Y', '2827', '30  KG', '14Hours 35Minute', 1),
(662, 264, 'İstanbul', '21:10', 'Ataturk ', 'IST', 'Tehran', '00:45', 'Imam Khomeini Intl ', 'IKA', '2017-12-28', '2017-12-29', 'Turkish Airlines', 'TK', 'L', '874', '30  KG', '14Hours 35Minute', 1),
(663, 265, 'Tehran', '15:20', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '18:25', 'Ataturk ', 'IST', '2017-12-25', '2017-12-25', 'Turkish Airlines', 'TK', 'L', '871', '30  KG', '07Hours 40Minute', 0),
(664, 265, 'İstanbul', '20:45', 'Ataturk ', 'IST', 'Trabzon', '22:30', 'Trabzon ', 'TZX', '2017-12-25', '2017-12-25', 'Turkish Airlines', 'TK', 'Y', '2830', '30  KG', '07Hours 40Minute', 0),
(665, 265, 'Trabzon', '23:25', 'Trabzon ', 'TZX', 'İstanbul', '01:15', 'Ataturk ', 'IST', '2017-12-28', '2017-12-29', 'Turkish Airlines', 'TK', 'Y', '2831', '30  KG', '13Hours 55Minute', 1),
(666, 265, 'İstanbul', '10:15', 'Ataturk ', 'IST', 'Tehran', '13:50', 'Imam Khomeini Intl ', 'IKA', '2017-12-29', '2017-12-29', 'Turkish Airlines', 'TK', 'V', '870', '30  KG', '13Hours 55Minute', 1),
(667, 266, 'Tehran', '05:05', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '08:05', 'Ataturk ', 'IST', '2017-12-25', '2017-12-25', 'Turkish Airlines', 'TK', 'L', '873', '30  KG', '13Hours 00Minute', 0),
(668, 266, 'İstanbul', '15:40', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '17:35', 'Trabzon ', 'TZX', '2017-12-25', '2017-12-25', 'Turkish Airlines', 'TK', 'Y', '7430', '30  KG', '13Hours 00Minute', 0),
(669, 266, 'Trabzon', '13:35', 'Trabzon ', 'TZX', 'İstanbul', '15:30', 'Ataturk ', 'IST', '2017-12-28', '2017-12-28', 'Turkish Airlines', 'TK', 'Y', '2829', '30  KG', '15Hours 30Minute', 1),
(670, 266, 'İstanbul', '01:55', 'Ataturk ', 'IST', 'Tehran', '05:35', 'Imam Khomeini Intl ', 'IKA', '2017-12-29', '2017-12-29', 'Turkish Airlines', 'TK', 'V', '878', '30  KG', '15Hours 30Minute', 1),
(671, 267, 'Cidde', '07:20', 'King Abdulaziz Intl ', 'JED', 'Dubai', '11:15', 'Dubai Intl ', 'DXB', '2017-12-26', '2017-12-26', 'Nasair', 'XY', 'U', '501', '1  BAG', '02Hours 55Minute', 0),
(672, 268, 'Cidde', '07:20', 'King Abdulaziz Intl ', 'JED', 'Dubai', '11:15', 'Dubai Intl ', 'DXB', '2017-12-26', '2017-12-26', 'Nasair', 'XY', 'U', '501', '1  BAG', '02Hours 55Minute', 0),
(673, 269, 'Cidde', '07:20', 'King Abdulaziz Intl ', 'JED', 'Dubai', '11:15', 'Dubai Intl ', 'DXB', '2017-12-26', '2017-12-26', 'Nasair', 'XY', 'U', '501', '1  BAG', '02Hours 55Minute', 0),
(674, 270, 'Cidde', '13:05', 'King Abdulaziz Intl ', 'JED', 'Bahreyn', '15:05', 'Bahrain Intl ', 'BAH', '2017-12-26', '2017-12-26', 'Gulf Air', 'GF', 'W', '184', '1  BAG', '04Hours 10Minute', 0),
(675, 270, 'Bahreyn', '16:00', 'Bahrain Intl ', 'BAH', 'Dubai', '18:15', 'Dubai Intl ', 'DXB', '2017-12-26', '2017-12-26', 'Gulf Air', 'GF', 'W', '508', '1  BAG', '04Hours 10Minute', 0),
(676, 270, 'Dubai', '17:00', 'Dubai Intl ', 'DXB', 'Bahreyn', '17:15', 'Bahrain Intl ', 'BAH', '2017-12-31', '2017-12-31', 'Gulf Air', 'GF', 'W', '507', '1  BAG', '04Hours 30Minute', 1),
(677, 270, 'Bahreyn', '18:00', 'Bahrain Intl ', 'BAH', 'Cidde', '20:30', 'King Abdulaziz Intl ', 'JED', '2017-12-31', '2017-12-31', 'Gulf Air', 'GF', 'W', '173', '1  BAG', '04Hours 30Minute', 1),
(678, 273, 'Tehran', '03:50', 'Imam Khomeini Intl ', 'IKA', 'İstanbul', '06:35', 'Sabiha Gokcen ', 'SAW', '2017-12-25', '2017-12-25', 'Pegasus Airlines', 'PC', 'U', '513', '20kg', '06Hours 30Minute', 0),
(679, 273, 'İstanbul', '08:05', 'Sabiha Gokcen ', 'SAW', 'Trabzon', '09:50', 'Trabzon ', 'TZX', '2017-12-25', '2017-12-25', 'Pegasus Airlines', 'PC', 'E', '2814', '20kg', '06Hours 30Minute', 0),
(680, 273, 'Trabzon', '20:00', 'Trabzon ', 'TZX', 'İstanbul', '21:45', 'Sabiha Gokcen ', 'SAW', '2017-12-31', '2017-12-31', 'Pegasus Airlines', 'PC', 'E', '2827', '20kg', '06Hours 30Minute', 1),
(681, 273, 'İstanbul', '23:30', 'Sabiha Gokcen ', 'SAW', 'Tehran', '03:00', 'Imam Khomeini Intl ', 'IKA', '2017-12-31', '2018-01-01', 'Pegasus Airlines', 'PC', 'G', '512', '20kg', '06Hours 30Minute', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ebanking_mellat`
--

CREATE TABLE `ebanking_mellat` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `address` text COLLATE utf8_persian_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `post_code` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `details` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `price` int(11) NOT NULL,
  `clint_ip` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `ShenaseMoshtari` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `ShenasePardakht` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `VazeiyatKharid` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `ShomareDarkhast` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `CodeMarjaeTarakonesh` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `date` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `ebanking_mellat`
--

INSERT INTO `ebanking_mellat` (`id`, `name`, `address`, `mobile`, `email`, `post_code`, `details`, `price`, `clint_ip`, `ShenaseMoshtari`, `ShenasePardakht`, `VazeiyatKharid`, `ShomareDarkhast`, `CodeMarjaeTarakonesh`, `date`) VALUES
(1, 'سعید قاسم زاده', 'یزد - بلوار پاسداران - کوچه شهید طاهری پلاک3', '09335760512', 'user@yahoo.com', '', 'آموزش انتقال پول اینترنتی', 50000, '188.245.150.148', '5F3B3E02DE56CAD', '', '19', '362395056', '1037041434', '1393/08/05 - 18:41:14'),
(2, 'پژمان امیری', 'تهران - میدان هفت تیر - داردخانه تهرانی', '09127254865', 'p.amiri@gmail.com', '', 'تست برنامه درگاه ملت', 100000, '151.245.219.173', '264ED83365EAA1B', '', '17', '108089162', '', '1393/08/06'),
(3, 'محسن محمدی', 'تهران - میدان ونک', '09129159542', 'mohsen.mohammadi1987@yaho.com', '', 'تست پرداخت جهت خرید درگاه', 60000, '151.245.198.170', 'FCDAD9F7A516B17', '', '12', '213949975', '', '1393/08/08'),
(4, 'احمد موسوی', 'تهران - میدان فاطمی، وزارت جهاد کشاورزی', '09124582111', 'a.mousavi@gmail.com', '', 'ندارد', 150000, '151.245.198.170', '139A2A4122DAFF7', '', '13', '', '', '1393/08/09'),
(5, 'اکبر اسودی', 'شیراز - خیابان ملاصدرا، پاساژ سرو', '09179158745', 'agarden2005@gmail.com', '', 'ندارد', 80000, '151.245.198.170', '3C4871644EDFAAF', '', '416', '133332354', '', '1393/08/11'),
(6, 'روح الله مقدسی', 'سمنان - بلوار امام، جنب بانک ملی', '09179157486', 'moghadasi_2003@yahoo.com', '', 'بهای طراحی سایت', 1500000, '151.245.209.23', '1B4EAA4D728A8C04', '1B4EAA4D728A8C04', '0', '168395334', '1524684582', '1393/08/14'),
(7, 'dfgdfg', 'fgfgfg', '09132759605', 'mustafdaa1390@gmail.com', '', 'kjkhjhhg', 10000, '::1', '421', '', '', '', '', ''),
(8, 'dfgdfg', 'fgfgfg', '09132759605', 'mustafdaa1390@gmail.com', '', 'kjkhjhhg', 45555, '::1', '421', '', '', '', '', ''),
(9, 'hfghfgh', 'اصفهان', '09130617538', 'mustafa1390@gmail.com', '', 'dfsgdfgdfgdf', 10000, '::1', '421', '', '', '', '', ''),
(10, 'مصطفی', 'اصفهان', '09130617538', 'mustafa1390@gmail.com', '', 'hjhjghj hj', 10000, '::1', '421', '', '', '', '', ''),
(11, 'مصطفی', 'اصفهان', '09130617538', 'mustafa1390@gmail.com', '', 'ghhgfhfgh', 10000, '::1', '421', '', '', '', '', ''),
(12, '', '', '', '', '', '', 0, '', '', '99207F98DFCFF82D', '0', '1187366546', '122660612038', '1395/12/18 - 22:41:40'),
(13, '', '', '', '', '', '', 0, '', '', 'F4796A2995220DDB', '0', '1636010468', '122660676506', '1395/12/18 - 22:47:09'),
(14, '', '', '', '', '', '', 0, '', '', 'CB752120D48013B2', '0', '885723626', '122661157375', '1395/12/18 - 23:36:44'),
(15, '', '', '', '', '', '', 0, '', '', 'BF54620E33CF8E05', '0', '1070606884', '124395221532', '1396/03/09 - 03:20:17'),
(16, '', '', '', '', '', '', 0, '', '', 'C85F73D33A8EE4FD', '0', '745337009', '124404004852', '1396/03/09 - 15:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(4) NOT NULL,
  `exam_tit` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `exam_des` varchar(666) COLLATE utf8_persian_ci NOT NULL,
  `exam_arou` int(2) NOT NULL,
  `exam_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `exam_professor` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `exam_tit`, `exam_des`, `exam_arou`, `exam_createdatdate`, `exam_professor`) VALUES
(1, 'تمرین اول من', '', 1, '2017-02-25 10:49:21', 6),
(2, 'تمرین دوم من', '    \r\nتوضیحات مربوط به تمرین دوم من', 1, '2017-02-25 10:50:33', 6),
(3, 'نمونه موارد مهم زبان انگلیسی', 'در تمرینات پیش رو مهمترین نکات کلیدی کلاسها به اطلاع شما می رسد    \r\n', 1, '2017-02-28 23:16:37', 6);

-- --------------------------------------------------------

--
-- Table structure for table `examtest`
--

CREATE TABLE `examtest` (
  `id` int(6) NOT NULL,
  `examtest_listexam` int(6) NOT NULL,
  `examtest_idstudent` int(6) NOT NULL,
  `examtest_poin` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `examtest_idexam` int(8) NOT NULL,
  `examtest_flg` int(2) NOT NULL,
  `examtest_date` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finicals`
--

CREATE TABLE `finicals` (
  `id` int(4) NOT NULL,
  `finical_arou` int(2) NOT NULL,
  `finical_iduser` int(8) NOT NULL,
  `finical_pay` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `finical_number` int(8) NOT NULL,
  `finical_clas` int(4) NOT NULL,
  `finical_inc` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `finical_codrezerv` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `finical_payment` int(2) NOT NULL,
  `finical_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `finical_paymentdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `finical_shenasepardakht` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `finical_codmarjatarakonesh` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `finical_shomaredarkhast` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `finicals`
--

INSERT INTO `finicals` (`id`, `finical_arou`, `finical_iduser`, `finical_pay`, `finical_number`, `finical_clas`, `finical_inc`, `finical_codrezerv`, `finical_payment`, `finical_createdatdate`, `finical_paymentdate`, `finical_shenasepardakht`, `finical_codmarjatarakonesh`, `finical_shomaredarkhast`) VALUES
(86, 4, 1, '116', 199997316, 0, '4', '793099234', 0, '2017-05-29 03:05:18', '', '', '', ''),
(87, 3, 1, '106', 744734386, 0, '4', '616721882', 1, '2017-05-29 03:05:39', '2017-05-30 02:09:35', '', '', ''),
(88, 4, 1, '1022', 871421996, 0, '4', '155125284', 1, '2017-05-29 03:23:29', '2017-05-30 03:20:18', 'BF54620E33CF8E05', '124395221532', '1070606884'),
(89, 3, 1, '106', 969999049, 0, '4', '572993593', 0, '2017-05-30 15:28:59', '', '', '', ''),
(90, 3, 1, '1012', 814716716, 0, '4', '758456507', 1, '2017-05-30 15:30:26', '2017-05-30 15:31:28', 'C85F73D33A8EE4FD', '124404004852', '745337009'),
(91, 3, 1, '0.505', 378742370, 0, '4', '965677665', 0, '2017-05-30 16:34:22', '2017-05-30 16:43:14', '1FE4D7B01CC4ED0E', '', '1768511414');

-- --------------------------------------------------------

--
-- Table structure for table `getwaypay`
--

CREATE TABLE `getwaypay` (
  `id` int(2) NOT NULL,
  `getway_terminal` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `getway_username` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `getway_password` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `getway_merchent` varchar(111) COLLATE utf8_persian_ci NOT NULL,
  `getway_name` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `getway_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `getway_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `getwaypay`
--

INSERT INTO `getwaypay` (`id`, `getway_terminal`, `getway_username`, `getway_password`, `getway_merchent`, `getway_name`, `getway_createdatdate`, `getway_active`) VALUES
(1, '699700', 'atinegar', '80661', '', 'درگاه پرداخت بانک ملت', '2017-03-12 10:52:47', 1),
(2, '', '', '', '1cee1870-cfff-11e6-9f5b-000c295eb8fc', 'درگاه پرداخت واسط زرین پال', '2017-05-29 20:01:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groupajency`
--

CREATE TABLE `groupajency` (
  `id` int(6) NOT NULL,
  `graj_name` varchar(22) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `groupajency`
--

INSERT INTO `groupajency` (`id`, `graj_name`) VALUES
(1, 'گروه اولیه');

-- --------------------------------------------------------

--
-- Table structure for table `groupprofessor`
--

CREATE TABLE `groupprofessor` (
  `id` int(6) NOT NULL,
  `grpr_name` varchar(222) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupstudent`
--

CREATE TABLE `groupstudent` (
  `id` int(3) NOT NULL,
  `grst_name` varchar(55) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `groupstudent`
--

INSERT INTO `groupstudent` (`id`, `grst_name`) VALUES
(1, 'دانشجویان بدهکار'),
(2, 'دانشجویان نخبه'),
(3, 'آی کیو بالاها');

-- --------------------------------------------------------

--
-- Table structure for table `groupuser`
--

CREATE TABLE `groupuser` (
  `id` int(6) NOT NULL,
  `grus_name` varchar(55) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `groupuser`
--

INSERT INTO `groupuser` (`id`, `grus_name`) VALUES
(1, 'گروه اول کاربران');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(3) NOT NULL,
  `lng_name` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_style` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmnglang` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwlang` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddlang` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsuccess` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wlang` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrtl` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wltr` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wtsuccess` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wback` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrow` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdelet` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wobservation` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wstatus` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wactive` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_winactive` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wstyle` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsuperadmin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpanel` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnodate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wreg` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wedit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wspecifi` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmanage` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wbrand` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmbrand` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrecentlogin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wip` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmyprofile` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wprofile` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wlogin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wexit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wadmin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wadmins` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwadmin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddadmin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wusername` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpassword` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wconfpassword` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `lng_werror` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wuserandpas` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_werrornot` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnotelq` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wshort` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wlong` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_welquser` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_welqname` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcreatedatdate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wname` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wemail` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wtell` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wadres` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waccess` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wimg` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wupload` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wuploadclick` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_welanat` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waccadmin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpassadmin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsms` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_whi` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsucsec` varchar(77) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnewpas` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wactivedon` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wajency` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wajencys` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwajency` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddajency` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnameajency` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnameajencymng` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waccajency` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpassajency` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waccuser` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpassuser` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wuser` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wusers` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwuser` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wadduser` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnameuser` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wajencysgroups` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wusersgroups` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwusergroup` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwajencygroup` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwgroup` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddgroup` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnamegroup` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddgroupaj` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddgroupus` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wajencymember` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wusermember` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpanelsms` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwpanelsms` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnamepanelsms` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnumberpanelsms` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddpage` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddnew` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wtit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wheader` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wtext` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wkhtext` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpages` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnews` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwpage` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwnew` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wqstandrep` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wqst` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrep` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wactivition` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wactiveemail` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wactivetell` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmyemail` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmytell` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsendverfytoemail` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsendverfytotell` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcodeactive` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmessageactive` varchar(333) COLLATE utf8_persian_ci NOT NULL,
  `lng_wactiveemails` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wactivetells` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsendverfyemailsuc` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsendverfytellsuc` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `lng_wactiveemailsuc` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `lng_wactivetellsuc` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcodeactiveerror` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddticket` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwticket` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsend` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wtickets` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnewmes` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wreps` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wwaitreps` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wclose` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wticketnumber` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wticketcreat` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wtypingmes` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wticketuser` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wticketajency` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wclosen` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnotfs` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddnotfo` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddnotfg` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrecever` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrecevers` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwnotf` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnotfajency` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnotfuser` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddnotfaj` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddnotfus` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnotfnoread` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnotfnumber` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdemolang` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddcur` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwcur` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnem` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnamecur` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrateajency` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrateuser` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wratecur` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcur` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wctr` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wctrs` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwctr` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnamectr` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddctr` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcits` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwcit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnamecit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddcit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wbelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wbelits` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wusersbelits` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wajencysbelits` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwbelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_waddbelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnamebelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_worigin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdesti` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_welqordes` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdatefly` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_whfly` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wbelrateajency` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wbelrateuser` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcostdes` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wbelcost` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdes` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcodfly` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdatebuy` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdaterezerv` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnumberbelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnumbermember` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wsold` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrezervd` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcodrezerv` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wid` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdemobelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwdemobelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcodbelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcosts` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wbelrate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpayd` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrezervbelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wbuybelit` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpayment` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpaymentcur` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpaymentcurforone` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdosnotbelit` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wfactor` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wfactors` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wfactornotelq` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwfactor` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnumberfactor` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpayfactor` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpaydone` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpaynot` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wuserfactor` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wajencyfactor` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wusersfactors` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wajencysfactors` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wgetway` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwgetway` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wprint` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_windexsite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmngindexsite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwindexsite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmngveiw` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmngsps` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wheadersite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpagesite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wfootersite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wtitsite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdessite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdesfootersite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wlogosite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wregag` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wregus` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wlogag` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wlogus` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wlinks` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_whome` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcmbckhome` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_active` int(2) NOT NULL,
  `lng_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wslide` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmngslide` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_winsslide` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wslides` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwslide` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wbelittraking` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wveiwstaticsite` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wwbs` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wreqwbs` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcreateapi` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wapi` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wrahwbs` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wwbsag` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wwbsus` varchar(66) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `lng_name`, `lng_style`, `lng_wmnglang`, `lng_wveiwlang`, `lng_waddlang`, `lng_wsuccess`, `lng_wlang`, `lng_wrtl`, `lng_wltr`, `lng_wtsuccess`, `lng_wback`, `lng_wrow`, `lng_wdelet`, `lng_wobservation`, `lng_wstatus`, `lng_wactive`, `lng_winactive`, `lng_wstyle`, `lng_wsuperadmin`, `lng_wpanel`, `lng_wnodate`, `lng_wreg`, `lng_wedit`, `lng_wspecifi`, `lng_wmanage`, `lng_wbrand`, `lng_wmbrand`, `lng_wrecentlogin`, `lng_wip`, `lng_wmyprofile`, `lng_wprofile`, `lng_wlogin`, `lng_wexit`, `lng_wadmin`, `lng_wadmins`, `lng_wveiwadmin`, `lng_waddadmin`, `lng_wusername`, `lng_wpassword`, `lng_wconfpassword`, `lng_werror`, `lng_wuserandpas`, `lng_werrornot`, `lng_wnotelq`, `lng_wshort`, `lng_wlong`, `lng_welquser`, `lng_welqname`, `lng_wcreatedatdate`, `lng_wname`, `lng_wemail`, `lng_wtell`, `lng_wadres`, `lng_waccess`, `lng_wimg`, `lng_wupload`, `lng_wuploadclick`, `lng_welanat`, `lng_waccadmin`, `lng_wpassadmin`, `lng_wsms`, `lng_whi`, `lng_wsucsec`, `lng_wnewpas`, `lng_wactivedon`, `lng_wajency`, `lng_wajencys`, `lng_wveiwajency`, `lng_waddajency`, `lng_wnameajency`, `lng_wnameajencymng`, `lng_waccajency`, `lng_wpassajency`, `lng_waccuser`, `lng_wpassuser`, `lng_wuser`, `lng_wusers`, `lng_wveiwuser`, `lng_wadduser`, `lng_wnameuser`, `lng_wajencysgroups`, `lng_wusersgroups`, `lng_wveiwusergroup`, `lng_wveiwajencygroup`, `lng_wveiwgroup`, `lng_waddgroup`, `lng_wnamegroup`, `lng_waddgroupaj`, `lng_waddgroupus`, `lng_wajencymember`, `lng_wusermember`, `lng_wpanelsms`, `lng_wveiwpanelsms`, `lng_wnamepanelsms`, `lng_wnumberpanelsms`, `lng_waddpage`, `lng_waddnew`, `lng_wtit`, `lng_wheader`, `lng_wtext`, `lng_wkhtext`, `lng_wpages`, `lng_wnews`, `lng_wveiwpage`, `lng_wveiwnew`, `lng_wqstandrep`, `lng_wqst`, `lng_wrep`, `lng_wactivition`, `lng_wactiveemail`, `lng_wactivetell`, `lng_wmyemail`, `lng_wmytell`, `lng_wsendverfytoemail`, `lng_wsendverfytotell`, `lng_wcodeactive`, `lng_wmessageactive`, `lng_wactiveemails`, `lng_wactivetells`, `lng_wsendverfyemailsuc`, `lng_wsendverfytellsuc`, `lng_wactiveemailsuc`, `lng_wactivetellsuc`, `lng_wcodeactiveerror`, `lng_waddticket`, `lng_wveiwticket`, `lng_wsend`, `lng_wtickets`, `lng_wnewmes`, `lng_wreps`, `lng_wwaitreps`, `lng_wclose`, `lng_wticketnumber`, `lng_wticketcreat`, `lng_wtypingmes`, `lng_wticketuser`, `lng_wticketajency`, `lng_wclosen`, `lng_wnotfs`, `lng_waddnotfo`, `lng_waddnotfg`, `lng_wrecever`, `lng_wrecevers`, `lng_wveiwnotf`, `lng_wnotfajency`, `lng_wnotfuser`, `lng_waddnotfaj`, `lng_waddnotfus`, `lng_wnotfnoread`, `lng_wnotfnumber`, `lng_wdemolang`, `lng_waddcur`, `lng_wveiwcur`, `lng_wnem`, `lng_wnamecur`, `lng_wrateajency`, `lng_wrateuser`, `lng_wratecur`, `lng_wcur`, `lng_wctr`, `lng_wctrs`, `lng_wveiwctr`, `lng_wnamectr`, `lng_waddctr`, `lng_wcit`, `lng_wcits`, `lng_wveiwcit`, `lng_wnamecit`, `lng_waddcit`, `lng_wbelit`, `lng_wbelits`, `lng_wusersbelits`, `lng_wajencysbelits`, `lng_wveiwbelit`, `lng_waddbelit`, `lng_wnamebelit`, `lng_worigin`, `lng_wdesti`, `lng_welqordes`, `lng_wdatefly`, `lng_whfly`, `lng_wbelrateajency`, `lng_wbelrateuser`, `lng_wcostdes`, `lng_wbelcost`, `lng_wdes`, `lng_wcodfly`, `lng_wdatebuy`, `lng_wdaterezerv`, `lng_wnumberbelit`, `lng_wnumbermember`, `lng_wsold`, `lng_wrezervd`, `lng_wcodrezerv`, `lng_wid`, `lng_wdemobelit`, `lng_wveiwdemobelit`, `lng_wcodbelit`, `lng_wcosts`, `lng_wbelrate`, `lng_wpayd`, `lng_wrezervbelit`, `lng_wbuybelit`, `lng_wpayment`, `lng_wpaymentcur`, `lng_wpaymentcurforone`, `lng_wdosnotbelit`, `lng_wfactor`, `lng_wfactors`, `lng_wfactornotelq`, `lng_wveiwfactor`, `lng_wnumberfactor`, `lng_wpayfactor`, `lng_wpaydone`, `lng_wpaynot`, `lng_wuserfactor`, `lng_wajencyfactor`, `lng_wusersfactors`, `lng_wajencysfactors`, `lng_wgetway`, `lng_wveiwgetway`, `lng_wprint`, `lng_windexsite`, `lng_wmngindexsite`, `lng_wveiwindexsite`, `lng_wmngveiw`, `lng_wmngsps`, `lng_wheadersite`, `lng_wpagesite`, `lng_wfootersite`, `lng_wtitsite`, `lng_wdessite`, `lng_wdesfootersite`, `lng_wlogosite`, `lng_wregag`, `lng_wregus`, `lng_wlogag`, `lng_wlogus`, `lng_wlinks`, `lng_whome`, `lng_wcmbckhome`, `lng_active`, `lng_createdatdate`, `lng_wslide`, `lng_wmngslide`, `lng_winsslide`, `lng_wslides`, `lng_wveiwslide`, `lng_wbelittraking`, `lng_wveiwstaticsite`, `lng_wwbs`, `lng_wreqwbs`, `lng_wcreateapi`, `lng_wapi`, `lng_wrahwbs`, `lng_wwbsag`, `lng_wwbsus`) VALUES
(3, 'فارسی', 'style', 'مدیریت زبان', 'مشاهده زبانها', 'اضافه کردن زبان', 'با موفقیت انجام شد.', 'زبان', 'راست به چپ', 'چپ به راست', 'موفقیت', 'بازگشت', 'ردیف', 'حذف', 'مشاهده', 'وضعیت', 'فعال', 'غیرفعال', 'استایل', 'سوپرادمین', 'پنل', 'داده ای وجود ندارد', 'ثبت', 'ویرایش', 'مشخصات', 'مدیریت', 'Global Distribution System', 'GDS', 'آخرین ورود', 'آی پی', 'پروفایل من', 'پروفایل', 'ورود', 'خروج', 'مدیر', 'مدیران', 'مشاهده مدیران', 'ثبت مدیر', 'نام کاربری', 'رمزعبور', 'رمزعبور با تکرار آن مطابقت ندارد', 'اخطار', 'نام کاربری و رمزعبور خود را وارد نمایید', 'لطفا اطلاعات را به درستی وارد نمایید', 'نامعتبر', 'کوتاه', 'طولانی', 'این نام کاربری قبلا در سیستم ثبت شده است', 'قبلا در سیستم ثبت شده است', 'تاریخ ثبت', 'نام و نام خانوادگی', 'ایمیل', 'تلفن', 'آدرس', 'سطح دسترسی', 'عکس', 'آپلود', 'برای آپلود تصویر کلیک نمایید', 'اطلاع رسانی', 'فعال سازی اکانت مدیر', 'تغییر رمز مدیر', 'پیامک', 'سلام', 'رمز شما با موفقیت تغییر کرد', 'رمز جدید', 'اکانت شما با موفقیت فعال شد', 'آژانس', 'آژانس ها', 'مشاهده آژانس ها', 'ثبت آژانس', 'نام آژانس', 'نام مدیر آژانس', 'فعالسازی اکانت آژانس', 'تغییر رمز آژانس', 'فعالسازی اکانت کاربر', 'تغییر رمز کاربر', 'کاربر', 'کاربران', 'مشاهده کاربران', 'ثبت کاربر', 'نام کاربر', 'گروههای آژانسها', 'گروههای کاربران', 'مشاهده گروه کاربران', 'مشاهده گروه آژانس ها', 'مشاهده گروهها', 'ثبت گروه', 'نام گروه', 'ثبت گروه آژانسها', 'ثبت گروه کاربران', 'آژانس های عضو', 'کاربران عضو', 'پنل پیامک', 'مشاهده پنل پیامک', 'نام پنل پیامک', 'شماره پنل پیامک', 'ثبت صفحه', 'ثبت خبر', 'عنوان', 'هدر', 'متن', 'خلاصه متن', 'صفحات', 'اخبار', 'مشاهده صفحات', 'مشاهده اخبار', 'سوالات متداول', 'پرسش', 'پاسخ', 'فعالسازی', 'فعالسازی ایمیل', 'فعالسازی شماره همراه', 'ایمیل من', 'شماره همراه من', 'ارسال کد فعالسازی به ایمیل', 'ارسال کد فعالسازی به شماره همراه', 'کد فعالسازی', 'اکانت کاربری شما غیر فعال است لطفا نسبت به ورفای شماره همراه و ایمیل خود اقدام نمایید تا پس از اکتیو شدن شماه همراه و ایمیل ، اکانت شما بصورت اتوماتیک فعال گردد تا بتوانید از خدمات سایت استفاده نمایید.', 'ایمیل فعال است', 'شماره همراه فعال است', 'کدفعالسازی با موفقیت به ایمیل شما فرستاده شد', 'کدفعالسازی با موفقیت به شماره همراه شما فرستاده شد', 'ایمیل شما با موفقیت فعال شد', 'شماره همراه شما با موفقیت فعال شد', 'متاسفانه کدفعالسازی اشتباه وارد شده است', 'ثبت تیکت', 'مشاهده تیکت', 'ارسال', 'تیکت ها', 'پیام جدید', 'پاسخ داده شده', 'منتظر پاسخ', 'بسته شده', 'تیکت شماره', 'ایجاد کننده تیکت', 'پیام خود را تایپ نمایید', 'تیکتهای کاربران', 'تیکتهای آژانسها', 'بستن تیکت', 'اطلاعیه ها', 'ثبت اطلاعیه تکی', 'ثبت اطلاعیه گروهی', 'گیرنده', 'گیرندگان', 'مشاهده اطلاعیه', 'اطلاعیه آژانس ها', 'اطلاعیه کاربران', 'ثبت اطلاعیه آژانس', 'ثبت اطلاعیه کاربر', 'اطلاعیه هنوز توسط گیرنده خوانده نشده است', 'اطلاعیه شماره', 'زبان پیش فرض', 'ثبت ارز', 'مشاهده ارز', 'نماد', 'نام ارز', 'نرخ ارز برای آژانس', 'نرخ ارز برای کاربر', 'نرخ ارز', 'ارز', 'کشور', 'کشورها', 'مشاهده کشورها', 'نام کشور', 'ثبت کشور', 'شهر', 'شهرها', 'مشاهده شهرها', 'نام شهر', 'ثبت کشور', 'بلیط', 'بلیط ها', 'بلیط های کاربران', 'بلیط های آژانس ها', 'مشاهده بلیط ها', 'ثبت بلیط', 'نام بلیط', 'مبدا', 'مقصد', 'مبدا و مقصد نمی تواند یکی باشد', 'تاریخ پرواز', 'ساعت پرواز', 'قیمت بلیط برای آژانس', 'قیمت بلیط برای کاربر', 'توضیحات هزینه', 'هزینه', 'توضیحات', 'کد پرواز', 'تاریخ خرید', 'تاریخ رزرو', 'تعداد بلیط', 'تعداد نفر', 'فروخته نشده', 'رزرو شده', 'کد رزرو', 'آیدی', 'دمو بلیط', 'مشاهده دمو بلیط', 'کد بلیط', 'هزینه ها', 'قیمت بلیط برای هر نفر', 'پرداخت شده', 'رزرو بلیط', 'خرید بلیط', 'پرداخت', 'مبلغ قابل پرداخت', 'مبلغ قابل پرداخت برای هر نفر', 'تعداد بلیط های درخواستی شما وجو ندارد', 'فاکتور', 'فاکتورها', 'متاسفانه فاکتور معتبر نمی باشد', 'مشاهده فاکتورها', 'شماره فاکتور', 'پرداخت فاکتور', 'مبلغ پرداخت شده است', 'مبلغ پرداخت نشده است', 'فاکتور کاربر', 'فاکتور آژانس', 'فاکتورها کاربران', 'فاکتورهای آژانسها', 'درگاه پرداخت', 'مشاهده درگاه پرداخت', 'پرینت', 'صفحه اصلی سایت', 'مدیریت صفحه اصلی سایت', 'مشاهده صفحه اصلی سایت', 'مدیریت نمایش', 'مدیریت جزییات', 'هدر ', 'صفحه سایت', 'فوتر سایت', 'عنوان سایت', 'توضیحات سایت', 'متن آخر زیر فوتر سایت', 'لوگو سایت', 'ثبت نام آژانس', 'ثبت نام کاربر', 'ورود آژانس', 'ورود کاربر', 'لینک ها', 'صفحه اصلی', 'بازگشت به صفحه اصلی', 1, '', 'اسلاید', 'مدیریت اسلاید', 'ثبت اسلاید', 'اسلایدها', 'مشاهده اسلاید', 'پیگیری بلیط', 'مشاهده آمار بازدید سایت', 'وب سرویس', 'درخواست وب سرویس', 'ساخت api', 'api', 'راهنمای  وب سرویس', 'راهنمای وب سرویس برای آژانسها', 'راهنمای وب سرویس برای کاربران'),
(4, 'english', 'styleltr', 'Management Language', 'View Languages', 'Add Language', 'done successfully', 'language', 'right to left', 'left to right', 'Success', 'coming back', 'row', 'delet', 'observation', 'status', 'active', 'inactive', 'style', 'superadmin', 'panel', 'no date', 'Register', 'Edit', 'Specifications', 'Management', 'Global Distribution System', 'GDS', 'Last Login', 'IP', 'My Profile', 'Profile', 'Login', 'Exit', 'Admin', 'Admins', 'View admins', 'Administrator Registration', 'username', 'password', 'Password by repeating it does not match', 'Warning', 'Enter your user name and password', 'Please enter the information correctly', 'Invalid', 'Short', 'Long', 'This username has already been registered in the system', 'Is already registered in the system', 'Date of Registration', 'Name', 'Email ', 'Tell', 'Adres', 'Access level', 'Picture', 'Upload', 'Click image to upload photos', 'Notices', 'Enable administrator account', 'Change password Admin', 'SMS', 'Hi', 'Your password was successfully changed', 'New Password', 'Your account has been successfully activated', 'Agency', 'Agencys', 'View Agency', 'Registration Agency', 'Agency Name', 'Director of the agency Name', 'Agency Account Activation', 'Change Password Agency', 'User Account Activation', 'Change Password User', 'User', 'Users', 'View User', 'Registration User', 'Name User', 'Groups Agencies', 'Groups Users', 'View Group Users', 'View Group Agencies', 'View Groups', 'Group Registration', 'Group Name', 'Registered agency groups', 'Registered user groups', 'Member Agencies', 'Member Users', 'Panel SMS', 'Veiw Panel SMS', 'Name Panel SMS', 'Number Panel SMS', 'Registration Page', 'Registration News', 'Title', 'Header', 'Text', 'Summary Text', 'Pages', 'News', 'Veiw Pages', 'Veiw News', 'Question and Response ', 'Question', 'Response', 'Activation', 'Activation Email', 'ActivationTell', 'My Email', 'My Tell', 'Send activation code to email', 'Send activation code to tell', 'Activation Code', 'Message to activate the account.', 'Email is enabled', 'Tell is enabled', 'The activation code was successfully sent to your email', 'The activation code was successfully sent to your tell', 'Your email has been successfully activated', 'Your tell has been successfully activated', 'Unfortunately, the activation code is entered incorrectly', 'Submit Ticket', 'View Tickets', 'Send', 'Tickets', 'New message', 'has been answered', 'Waiting for reply', 'closed', 'Ticket Number', 'Starters Ticket', 'Type your message', 'Tickets Users', 'Tickets Agencies', 'Close Ticket', 'Notifications', 'Registration of Single Notificati', 'Registration of  Groups Notificat', 'Receiver', 'Receivers', 'View Notifications', ' Agencies Notifications ', ' Users Notifications ', 'Registered Agency  Notifications', 'Registered User Notifications', 'The receiver is still unread Notifications', 'Notifications Number', 'Default language', 'Registration Currency', 'View Currency', 'Symbol', 'Currency Name', 'Exchange rate for the Agency', 'Exchange rate for the User', 'Exchange rate', 'Currency', 'Country', 'the countries', 'View your country', 'Country name', 'Registration country', 'City', 'cities', 'View cities', 'City name', 'Registration country', 'Ticket', 'Tickets', 'Ticket Users', 'Ticket Agencies', 'View Tickets', 'Registration Ticket', 'Ticket name', 'Origin', 'Destination', 'Origin and destination can not be the', 'Flight Date', 'Flight Time', 'Tickets for AGENCY', 'Tickets for USER', 'Description Price', 'Price', 'Description ', 'Flight Code', 'Buy Date', 'Reservation Date', 'Number of tickets', 'Number of people', 'No Sold', 'Reserved', 'Reservation code', 'ID', 'Tickets demo', 'View the demo tickets', 'Code ticket', 'Costs', 'Ticket prices per person', 'Paid', 'Rezerv tickets', 'Buy tickets', 'Payment', 'The amount payable', 'The amount payable per person', 'The number of tickets you requested does not exist', 'Factor', 'Factors', 'Unfortunately, it is not a valid invoice', 'View invoices', 'Invoice number', 'Pay Invoices', 'Amount paid', 'The amount has not been paid', 'User factor', 'Agency factor', 'Users factors', 'Factors agencies', 'Payment gateway', 'View payment gateway', 'Print', 'Home Site', 'Management Home Page', 'View Home Page', 'Show Management', 'Details Management', 'site header', 'site page', 'site footer', 'site title', 'Description Site', 'The final text of the footer site', 'site logo', 'Registration Agency', 'Registration User', 'Agency Login', 'User Login', 'Links', 'Home', 'Back to main page', 1, '', 'Slide', 'Management Slide', 'Sign Slide', 'Slides', 'View slides', 'Tracking ticket', 'View Visit Site', 'Webservice', 'Request Webservice', 'create api', 'api', 'Webservice', '', ''),
(7, 'Türkçe', 'styleltr', 'Dil yönetimi', 'Dil seçenekleri görüntüle', 'Dil ekle', 'Mesaj başarılı', 'dil', 'Sağdan sola', 'Soldan sağa', 'Başarı', 'Geri', 'Sıra', 'Silme', 'Gözlem', 'Durum', 'Aktif', 'Pasif', 'stil', 'Superadmin', 'Panel', 'Veri yok', 'Kayıt', 'Kaydet', 'Özellikler', 'Yönetim', 'Site Markası', 'Marka Kısaltma', 'Son giriş', 'IP', 'Profilim', 'Profil', 'Giriş', 'Çıkış', 'Yönetici', 'Yönetim', 'Yöneticileri görüntüle', 'Yönetici kaydı', 'Kullanıcı adı', 'Şifre', 'Parola eşleşmiyor', 'Uyarı', 'Kullanıcı adınızı ve şifrenizi girin', 'Lütfen bilgileri doğru bir şekilde giriniz', 'Geçersiz', 'kısa', 'uzun', 'Bu kullanıcı adı sistemde zaten kayıtlı', 'Sistemde zaten kayıtlı', 'Kayıt tarihi', 'Ad / Soyad', 'E-mail', 'Telefon', 'Adres', 'Erişim ', 'Fotoğraf', 'Yükleme', 'Yüklemek için resmi tıklayın', 'Bilgi', 'Yönetici hesabını etkinleştir', 'Yönetici şifresini değiştir', 'SMS', 'Merhaba', 'Şifreniz başarıyla değiştirildi', 'Yeni şifre', 'Hesabınız başarıyla aktifleştirildi', 'Acente', 'Acenteler', 'Acenteleri gör', 'Acente kaydı', 'Acente adı', 'Acente Yönetici Adı', 'Kullanıcı Acente etkinleştir', 'Acente şifresini değiştir', 'Kullanıcıhesabını etkinleştir', 'Kullanıcı şifresini değiştir', 'Kullanıcı', 'Kullanıcılar', 'Kullanıcı görüntüle', 'Kullanıcı kaydı', 'Kullanıcı adı', 'Acente grupları', 'Kullanıcı grupları', 'Kullanıcı grubunu görüntüleme', 'Acente gruplarını görüntüleme', 'Grupları görüntüleme', 'Grup kaydı', 'Grup adı', 'Acente gruplarının kaydı', 'Kullanıcı grubunu kaydet', 'Acente Üyeleri', 'Kullanıcılar', 'SMS paneli', 'SMS panelini görüntüle', 'SMS panelin adı', 'SMS Panel Numarası', 'Sayfa kaydı', 'Haber kaydı', 'Unvan', 'Başlık', 'Metin', 'Metin özeti', 'Sayfalar', 'Haber', 'Sayfaları görüntüle', 'Haberleri görüntüle', 'Soru ve Cevap', 'Soru', 'Cevap', 'Etkinleştirme', 'E-mail aktifleştirme', 'Cep Telefon Numarasını Aktifleşti', 'E-mail', 'Cep telefon numaram', 'aktifleştirme kodunu e-mail\'e gön', 'Cep telefonuna aktivasyon kodu gö', 'Aktifleştirme kodu', 'Hesabı aktifleştirmek için mesaj', 'E-mail aktif', 'Cep telefonu numarası aktiftir', 'Aktifleştirme kodu başarıyla e-mailinize gönderildi', 'Aktifleştirme kodu başarıyla cep telefonunuza gönderildi', 'E-mailiniz başarıyla aktifleştirildi', 'Cep telefonunuz başarıyla aktifleştirildi', 'Üzgünüz, aktifleştirme kodunu yanlış girdiniz', 'Destek yaz', 'Destek isteğini görüntüle', 'Gönderme', 'Destekler', 'Yeni ileti', 'Yanıtlanan', 'Cevabı beklemek', 'Kilitli', 'Destek numarası', 'Destek Oluşturucusu', 'Mesajınızı yazın', 'Kullanıcı desteklerleri', 'Acente destekleri', 'Desteği kapat', 'Duyurular', 'Tek bildirim kaydet', 'Grup bildirimlerini kaydet', 'Alıcı', 'Alıcılar', 'Bildirimleri görüntüle', 'Acente duyuruları', 'Kullanıcı Duyuruları', 'Acente Bildirimlerini Kaydedin', 'Kullanıcı bildirimlerini kaydet', 'Bildirim henüz alıcı tarafından okunmadı.', 'Bildirim Numarası', 'Varsayılan dil', 'Para birimi kaydı', 'Para birimi görüntüle', 'sembol', 'Para birimi ', 'Acente için döviz kurları', 'Kullanıcı için döviz kurları', 'Döviz kuru', 'Kur', 'Ülke', 'Ülkeler', 'Ülkeleri göster', 'Ülke adı', 'Ülke kaydı', 'Şehir', 'Şehirler', 'Şehirleri görüntüle', 'Şehir adı', 'Ülke kaydı', 'Bilet', 'Biletler', 'Kullanıcı biletleri', 'Acente biletleri', 'Biletleri görüntüle', 'Bilet kaydı', 'Bilet adı', 'Nerden', 'Nereye', 'Nerden Nereye aynı olamaz', 'Uçuş tarihi', 'Uçuş zamanı', 'Acente için bilet fiyatı', 'Kullanıcı için bilet fiyatı', 'Masraf açıklama', 'Maliyet', 'açıklama', 'Uçuş kodu', 'Satın alma tarihi', 'Rezervasyon tarihi', 'Bilet sayısı', 'Kişi sayısı', 'Satılmadı', 'Rezerve edilmiş', 'Rezervasyon kodu', 'ID', 'Demo bilet', 'Demo biletleri görüntüle', 'Bilet kodu', 'Maliyetler', 'Kişi başı bilet fiyatı', 'Ödenmiş', 'Bilet rezervasyonu ', 'Bilet satın al', 'Ödeme', 'Ödenecek tutar', 'Kişi başına ödenecek tutar', 'Talep ettiğiniz biletlerin sayısı geçerli değil', 'Fatura', 'Faturalar', 'Maalesef fatura geçerli değil', 'Faturaları görüntüleme', 'Fatura numarası', 'Ödeme faturası', 'Tutar ödenmiştir', 'Tutar ödenmedi', 'Kullanıcı faturası', 'Acente  Faturası', 'Kullanıcı Faturaları', 'Acente Faturaları', 'Ödeme Portalı', 'Ödeme bağlantı noktasını görüntül', 'Yazdır', 'Site Ana Sayfası', 'Ana sayfa yönetimi', 'Ana sayfa görüntüleme', 'Görüntü yönetimi', 'Ayrıntıları yönet', 'Site başlığı', 'Site sayfası', 'Site alt başlık', 'Site unvanı', 'Site açıklamaları', 'Site alt başlığı metni', 'Site Logosu', 'Acente kaydı', 'Kullanıcı kaydı', 'Acente Girişi', 'Kullanıcı girişi', 'Bağlantılar', 'Ana sayfa', 'Ana sayfaya dön', 1, '2017-10-30 20:34:48', 'Slayt', 'Slayt yönetimi', 'Slayt kaydı', 'Slaytlar', 'Slayt gösterisini görüntüle', 'Bileti takip et', 'Site ziyaret istatistiklerini görüntüleme', 'Web servisi', 'Web hizmeti talebi', 'API düzenleme', 'API', 'Web Hizmeti Rehberi', 'Acenteler için Web Hizmeti Rehber', 'Üyeler için Web Hizmeti Rehberi'),
(8, 'Русский', 'styleltr', 'Управление языка', 'Просмотр языков', 'Добавить язык', 'Сообщение успешно', 'язык', 'с право на лево', 'с лево на право', 'Успех', 'Назад', 'Ряд', 'Удалить', 'Наблюдение', 'Ситуация', 'Активный', 'Пасивный', 'стиль', 'superadmin', 'Панель', 'Нет данных', 'Регистрация', 'Редактировать', 'спецификации', 'Управления', 'Global Distribution System', 'GDS', 'Последний визит', 'IP', 'Мой профиль', 'Профиль', 'Вход', 'Выход', 'Менеджер', 'Менеджер', 'Просмотр менеджеров', 'Регистрация менеджкра', 'имя пользователя', 'пароль', 'Пароль не соответствует', 'Предупреждение', 'Введите имя пользователя и пароль', 'Пожалуйста, введите информацию правильно', 'Недействительный', 'Короткий', 'Длинный', 'Это имя пользователя уже зарегистрировано в системе', 'Уже зарегистрированы в системе', 'Дата регистрации', 'Имя Фамилия', 'Е-mail', 'Телефон', 'Адрес', 'Уровень доступа', 'Фото', 'Загрузить', 'Нажмите, чтобы загрузить фотографии', 'Уведомление', 'Активировать учетную запись админ', 'Изменить пароль менеджера', 'СМС', 'Привет', 'Ваш пароль успешно изменен', 'Новый пароль', 'Ваш аккаунт успешно активирован', 'Агент', 'Агентства', 'Просмотр агентства', 'Регистрация агента', 'Название агентства', 'Имя директора агентства', 'Активация учетной записи агентств', 'Изменить пароль агентства', 'Активация учетной записи пользова', 'Изменить пароль пользователя', 'Пользователь', 'Пользователи', 'Просмотр пользователей', 'Регистрация пользователя', 'Имя пользователя', 'Группы агентства', 'Пользователи Групп', 'Просмотр Пользователей Групп', 'Просмотр групп агентств ', 'Просмотр Групп', 'Регистрация Группы', 'Название Группы', 'Регестрация групп агентсв', 'Регистрация Пользователей Групп', 'Члены агентства', 'Члены пользователей', 'Панель SMS', 'Просмотр панель SMS', 'Название панель SMS', 'Номер панель SMS', 'Страница Регистрации', 'Регистрация Новостей', 'Титул', 'Заголовок', 'Текст', 'Резюме Текста', 'Страницы', 'Новости', 'Просмотр Страниц', 'Просмотр Новостей', 'Вопросы и Ответы', 'Вопрос', 'Ответ', 'Активация', 'Активация Электронной Почты', 'Активировать номер телефона', 'Моя Почта', 'Мой телефон', 'Отправить код активации по электр', 'Отпавить код активации на мобильн', 'Код Активации', 'Сообщение для активации учетной записи', 'Электронная Почта Активна', 'Мобильный номер активен', 'Код активации успешно отправлен на электронную почту', 'Код активации успешно отправлен на ваш  мобильный телефон', 'Ваше письмо успешно активировано', 'Ваш номер мобильного телефона успешно активирован', 'К сожалению, код активации введен неверно', 'Подтвердит поддержки', 'Просмотр ', 'Послать', 'Поддержки', 'Новое сообщение', 'Ответченный', 'Ожидание ответа', 'Закрыто', 'Номер поддержки', 'Стартовый поддержки', 'Введите ваше сообщение', 'Поддержки Пользователи', 'Поддержки Агентства', 'Закрыть поддержки', 'Уведомления', 'Зарегистрированные уведомление', 'Зарегистрированные групповие увед', 'Получатель', 'Получатели', 'Просмотр уведомлений', 'Уведомления агентств', 'Уведомления пользователей', 'Уведомления зарегистрированного а', 'Зарегистрировать пользовательские', 'Уведомления ещё непрочитанные со стороны получателя', 'Номер уведомления', 'Язык по умолчанию', 'Регистрация валюта', 'Просмотр валюты', 'Символ', 'Название валюты', 'Курс валюты для Агентств', 'Курс валюты для пользователя', 'Курс валюты', 'Валюта', 'Страна', 'Страны', 'Просмотр вашей страны', 'Имя страны', 'Регистрации страна', 'Город', 'Города', 'Просмотр города', 'Название города', 'Регистрации страна', 'Билет', 'Билеты', 'Билети для пользователи', 'Билети для агентств', 'Просмотр билетов', 'Регистрация билета', 'Название билета', 'Пункт отправления', 'Пункт назначения', 'Пункт отправления и пункт назначения не могут быть одинаковыми', 'Дата полета', 'Время полета', 'Билеты для Агентство', 'Билеты для пользователя', 'Описание расходы билета', 'Цена', 'Описание', 'Код рейса', 'Дата покупки', 'Дата бронирования', 'Количество билетов', 'Количество людей', 'Не продано', 'Зарезервировано', 'Код бронирования', 'Идентификационный номер', 'Демонстрация билетов', 'Просмотр демонстрация билетов', 'Код билета', 'Расходы', 'Цены билета на человека', 'Оплачено', 'Бронь билетов', 'Купить билеты', 'Оплата', 'Сумма к оплате', 'Сумма, оплата на человека', 'Количество запрошенных вами билетов не существует', 'Счет-фактура', 'Счет-фактуры', 'К сожалению, это не действительная счет-фактура', 'Просмотр счет-фактур', 'Номер счет-фактуры', 'Платежные счет-фактуры', 'Уплаченного сумма', 'Сумма не выплачена', 'Счет-фактура пользователя', 'Счет-фактура агентства', 'Счет-фактуры пользователей', 'Счет-фактуры агентств', 'Платежный портал', 'Просмотр платежного портала', 'Распечатать', 'Главная страница', 'Управления главная страницей ', '', '', '', 'Загаловок сайта', 'Страница сайта', 'Нижная строка ', '', '', '', '', '', '', '', '', '', '', '', 1, '2017-10-30 20:40:39', 'Слайд', 'Управление слайда', 'Вход слайда', 'Слайды', 'Просмотр слайдов', 'Отслеживание билета', '', 'Веб-сервис', 'Запрос Веб-сервиса', 'Создать API', 'API', 'Веб-сервис', 'Руководство для веб-служб для агентств', 'Руководство для веб-служб для пользователей'),
(9, 'Тоҷикӣ', 'styleltr', 'Идоракунии забонҳо', 'Намоиши забонҳо', 'Забон илова кардан', 'Паём муваффақ', 'Забон', 'Аз рост ба чап', 'Аз чап ба рост', 'Муваффақият', 'Бозгашт', 'Навбат', 'Пок кардан', 'Мушоҳида', 'Вазъият', 'Фаъол', 'Ғайрифаъол', 'Шакл', 'Superadmin', 'Панел', 'Маълумот нест', 'Бақайдгирӣ', 'Қайд', 'Мушахассот', 'Мудирият', 'Бренди сайт', 'Бренд дар ҳолати кӯтоҳ', 'Вурудӣ охир', 'IP', 'Профили ман', 'Профил', 'Дохилшавӣ', 'Берун шудан', 'Менеҷер', 'Менеҷерон', 'Намоиши мудирон', 'Сабти номи мудир', 'Номи корбар', 'Парол', 'Парол мувофиқат намекунад', 'Огоҳӣ', 'Номи корбар ва паролро ворид кунед', 'Лутфан маълумоти дурустро ворид кунед', 'Номаълум', 'Кӯтоҳ', 'Дароз', 'Ин номи корбар аллакай дар система ба қайд гирифта шудааст', 'Аллакай дар система сабт шудааст', 'Санаи бақайдгирӣ', 'Ному насаб', 'E-mail', 'Телефон', 'Суроға', 'Дастрасӣ', 'Акс', 'зеркашӣ', 'Барои нусхабардорӣ тасвиро пахш кунед', 'Иттилоот', 'Ҳисоби корбарро фаъол созед', 'Пароли менеҷерро иваз намоед', 'Паёмаки мобилӣ', 'Салом', 'Паролатон бо муваффақият иваз карда шуд', 'Пароли нав', 'Ҳисобатон бо муваффақият фаъол карда шуд', 'Агента', 'Агентаҳо', 'Намоиши агентаҳо', 'Бақайдгирии агента', 'Номи агента', 'Номи директори агента', 'Ҳисоби агентаро фаъол созед', 'Пароли агентиро иваз кунед', 'Ҳисоби корбарро фаъол созед', 'Пароли корбарро иваз намоед', 'Корбар', 'Корбарон', 'Намоиши корбарон', ' Бақайдгирии Корбар', 'Номи корбар', 'Гуруҳҳои агентӣ', 'Гуруҳҳои аъзоҳо', 'Намоиши гуруҳҳои аъзоҳо', 'Намоиши гуруҳҳои агентӣ', 'Намоиши гуруҳҳо', 'Қайди гуруҳ', 'Номи гуруҳ', 'Қайди гуруҳҳои агентӣ', 'гуруҳи аъзоҳоро қайд намо', 'Аъзоҳои агента', 'Аъзоҳо', 'Панели паём', 'Намоиши панели паём', 'Номи панели паём', 'Рақами панели паём', 'Қайди саҳифаҳо', 'Қайди ахбор', 'Унвон', 'Сарлавҳа', 'Матн', 'Хулосаи матн', 'Саҳифаҳо', 'Ахбор', 'Намоиши саҳифаҳо', 'Намоиши ахбор', 'Саволу ҷавоб', 'Савол', 'Ҷавоб', 'Фаъолсозӣ', 'Фаъолсозии e-mail', 'Фаъолсозии рақами мобилиам', 'E-mail`и ман', 'Рақами мобилиям', 'Коди фаъолсозиро ба э-майл ирсол ', 'Коди фаъолсозиро ба рақами мобили', 'Коди фаъолсозӣ', 'Паёми фаъолсозии суратҳисоб', 'Э-майл  фаъол аст', 'Рақами мобилиам фаъол аст', 'Коди  фаъолсозӣ бо муваффақият ба э-майли шумо фиристода шуд', 'Коди  фаъолсозӣ бо муваффақият ба рақами мобилии шумо фиристода шуд', 'Э-майли шумо бо муваффақият фаъол карда шуд', 'Рақами мобилии шумо бо муваффақият фаъол карда шуд', 'Паёми фаъолсозии суратҳисобро ба e-mail ирсол намо', 'Қабули чипта', 'Дидани чиптаҳо', 'Ирсол намоед', 'Чиптаҳо', 'Паёми нав', 'Ҷавоб дода шуд', 'Мунтазири ҷавоб', 'Пушида шуд', 'Рақами чипта', 'Навистани чипта', 'Паёми худро нависед', 'Чиптаҳои корбарон', 'Агентаҳои чиптадиҳанда', 'Чипта гирифта шуд', 'Хабарнома', 'Хабарномаҳои ягонаро қайд кунед', 'Хабарномаҳои корбарони қайдшуда', 'Қабулкунанда', 'Қабулкунандагон', 'Дидани хабарнома', 'Хабарномаҳои Агентаҳо', 'Хабарномаҳои корбарон', 'Хабарномаи Агентаи қайдшуда', 'Хабарномаҳои корбарро қайд кунед', 'Хабарнома хонда нашудааст', 'Теъдоди хабарномаҳо', 'Забони асосӣ', 'Қайди асъор', 'Намоиши асъор', 'Рамз', 'Номи асъор', 'Қурби асъор барои агентаҳо', 'Қурби асъор барои корбарон', 'Қурби асъор', 'Қурб', 'Давлат', 'Давлатҳо', 'Намоиши давлатҳо', 'Номи давлат', 'Қайди давлат', 'Шаҳр', 'Шаҳрҳо', 'Намоиши шаҳрҳо', 'Номи шаҳр', 'Қайди давлат', 'Чипта', 'Чиптаҳо', 'Чиптаҳои корбар', 'Чиптаҳои агента', 'Дидани чипта', 'Қайди чипта', 'Номи чипта', 'Ҷои парвоз', 'Ҷои фуруд', 'Ҷои парвоз ва фуруд якхела намешавад', 'Таърихи парвоз', 'Вақти парвоз', 'Арзиши чипта барои агента', 'Арзиши чипта барои корбар', 'Эъзоҳи нархи чипта', 'Нархи чипта', 'Тавзеҳот', 'Коди парвоз', 'Таърихи хариди чипта', 'Таърихи захираи чипта', 'Теъдоди чипта', 'Теъдоди нафар', 'Фурухта нашуд', 'Захира шуд', 'Коди захирашуда', 'ID', 'Чиптаи санҷишӣ', 'Намоиши чиптаи санҷишӣ', 'Коди чипта', 'Хароҷотҳо', 'Арзиши сарикасии чиптаҳо', 'Пардохт шуд', 'Захираи чипта', 'Хариди чипта', 'Пардохт', 'Маблағи қаблии пардохт', 'Маблағи қаблии пардохти сарикасӣ', 'Теъдоди чиптаҳои дархостшуда вуҷуд надорад', 'Ҳисоб-фактура', 'Ҳисоб-фактураҳо', 'Мутаъсифона ҳисоб-фактураи нодуруст', 'Дидани ҳисоб-фактураҳо', 'Рақами ҳисоб-фактура', 'Пардоти ҳисоб-фактура', 'Маблағ пардохт шуд', 'Маблағ пардохт нашуд', 'Ҳисоб-фактураи корбар', 'Ҳисоб-фактураи агента', 'Ҳисоб-фактураҳои корбар', 'Ҳисоб-фактураҳои агента', 'Гузаргоҳи пардохт', 'Дидани гузаргоҳи пардохт', 'Чоп намоед', 'Саҳифаи асосии сайт', 'Идоракунии саҳифаи асосӣ', 'Дидани саҳифаи асосӣ', 'Намоиши идоракунӣ', 'Тафарруоти идоракунӣ', 'Болои сайт', 'Саҳифаи сайт', 'Поёни сайт', 'Сарлавҳаи сайт', 'Тавзеҳоти сайт', 'Матни охирини поёни сайт', 'Логои сайт', 'Бақайдгирии агента', 'Бақайдгирии корбар', 'Воридшавии агента', 'Воридшавии корбар', 'Пайвандҳои муфид', 'Ба саҳифаи аввал', 'Баргаштан ба саҳифаи аввал', 1, '2017-10-30 20:45:52', 'Слайд', 'Идораи слайд', 'Қайди слайд', 'Слайдҳо', 'Дидани слайдҳо', 'Таъкиби чипта', 'Намоиши омори боздидҳои сайт', 'Хизматрасонӣ веб', 'Дархости шабакаи вебсайт', 'Сохти API', 'API', 'Дастури хадамоти интернетӣ', 'Дастури хадамоти интернетӣ барои агентаҳо', 'Дастури хадамоти интернетӣ барои корбарон'),
(10, 'France', 'styleltr', 'مدیریت زبان', ' مشاهده زبان ها', 'اضافه کردن زبان', '', '', '', '', 'موفقیت', '', 'ردیف', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'last', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2017-11-28 20:08:06', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'العربیة', 'style', 'اداره اللغه', 'عرض الغات', 'اضافه الغه', 'رساله النجاح', 'لغه', 'من الیمین الی الیسار', 'من السیار الی الیمین', 'النجاح', 'الرجاع', 'صف', 'ازاله', 'العرض', 'الوضع', 'نشط', 'غیرنشط', 'استایل', 'المدیره العالی', 'بنل - لوحه', 'لایوجد بیانات', 'تسجیل', 'تحریر', 'مواصفات', 'اداره', 'وضع علامه علی الموقع', 'اختصار للعلامه', 'آخر تسجیل دخول', 'آی بی', 'ملغی الشخصی', 'بروفایل', 'الدخول', 'خروج', 'المدیر', 'المدیرین', 'عرض المدیر', 'تسجیل المدیر', '', 'کلمه المرور', 'کلمه المرور لاتتطابق مع ذلک', 'تحذیر', '', 'الرجاء ادخال المعلومات بشکل صحیح', 'باطل', 'باختصار', 'طویل', '', '', 'تایخ التسجیل', '', '', '', '', 'مستدی الوصول', '', '', '', 'معلومات', 'تنشیط حساب الاداره', 'تغییر کلمه المرور المدیر', 'الرساله', 'مرحبا', 'تم تعبیر کلمه المرور بنجاح', 'کلمه مرور جدیده', 'تم اکمال حسابک بنجاح', 'وکاله', 'وکالات', 'عرض الوکالات', 'التسجیل الوکاله', 'اسم الوکاله', 'اسم المدیر الوکاله', '', '', '', '', 'المستخدم', 'المستخدمین', 'عرض المستخدمین', 'تسجیل المستخدم', 'اسم المستخدم', 'مجموعات الوکالات', 'مجموعات المستخدمین', 'عرض مجموعه المستخدمین', 'عرض مجموعات الوکالات', 'عرض المجموعات', 'تسجیل المجموعه', 'اسم المجموعه', 'تسجیل مجموعه الوکالات', 'التسجیل مجموعه المستخدمین', 'الوکالات الاعضاء', 'الستخدمین  الاعضاء', 'لوحه الرسائل', 'لوحه الرسائل القصیره', 'اسم لوحه الرسائل', 'رقم لوحه الرسائل', 'تسجیل الصفحه', 'تسجیل اخبار', 'لقب', 'راس الورقه', 'النص', 'ملخص نص', 'صفحات', 'اخبار', 'عرض الصفحات', 'انظر الاخبار', 'السوال و الجواب', 'السوال', 'الجواب', 'تفعیل', 'تمکین البرید الاء لکترونی', 'تنشیط رقم الجوال', 'بریدی الاء لکترونی', 'رقم هاتفی النقال', 'ارسال رمز التفعیل الی البرید الاک', 'ارسال رمز التفعیل', 'رمز التنشیط', 'رساله لتفعیل الحساب', 'البرید الاء لکترونی النشط', 'رقم هاتف الجوال شغاله', 'تم اکمال رمز التفعیل بنجاح', 'تم ارسال رمز التنشیط بنحاح الی رقم هاتفک الجوال', '', 'تم تنشیط رقم الجوالک بنجاح', 'للاسف،تم ادخال رمز التفعیل بشکل غیرصحیح', 'تسجیل التذاکر', 'عرض التذکره', 'ارسال', 'تذاکر', 'رساله جدیده', 'تم الرد', 'فی انتظار الاءجابه', 'مقفل', 'رقم التذکره', 'صانع التذکر', 'اکتب رسالتک -طباعه رسالتک', 'تذاکر المستخدمین', 'تذاکره الوکالات', 'اغلق التذکره', 'اعلانات', 'تسجیل الاء خطارات واحده', 'تسجیل اشعارات المجموعه', 'المتلقی', 'المتلقیون', 'عرض الاء شعارات', 'اعلان الوکالات', 'اعلان المتسخدمین', 'شبجیل اعلان الوکالات', 'تسجیل اعلان المستخدمین', 'لم تتم قراءه  الاشعارات بعد من قبل المستلم ', 'اعلان الارقام', 'اللغه الافتراضیه', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2017-12-08 12:18:19', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(3) NOT NULL,
  `lng_wnotaccess` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcharge` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wchargeinc` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wchargefin` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnamecost` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpayy` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wraterialiran` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wratedollar` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `lng_wstatic` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wpageobsersite` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wlinkpage` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wobserdate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wlistobser` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdeletstatic` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wgetways` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wnamegetway` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wshomaredarkhast` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wshenasepardakht` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wcodmarjatarakonesh` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wfrom` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wto` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_woneway` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wtwoway` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdatewent` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wdateback` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmngindexgds` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `lng_wamaranlyz` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wairlines` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wservicecrecard` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `lng_wmyusers` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `decpr` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lng_wnotaccess`, `lng_wcharge`, `lng_wchargeinc`, `lng_wchargefin`, `lng_wnamecost`, `lng_wpayy`, `lng_wraterialiran`, `lng_wratedollar`, `lng_wstatic`, `lng_wpageobsersite`, `lng_wlinkpage`, `lng_wobserdate`, `lng_wlistobser`, `lng_wdeletstatic`, `lng_wgetways`, `lng_wnamegetway`, `lng_wshomaredarkhast`, `lng_wshenasepardakht`, `lng_wcodmarjatarakonesh`, `lng_wfrom`, `lng_wto`, `lng_woneway`, `lng_wtwoway`, `lng_wdatewent`, `lng_wdateback`, `lng_wmngindexgds`, `lng_wamaranlyz`, `lng_wairlines`, `lng_wservicecrecard`, `lng_wmyusers`, `decpr`) VALUES
(3, 'دسترسی به صفحه مورد نظر امکان پذیر نمی باشد', 'شارژ اکانت', 'افزایش شارژ', '', '', '', '', '', 'آمار', 'صفحه بازدید شده', 'لینک صفحه', 'تاریخ و ساعت بازدید', 'لیست بازدید', 'حذف تمامی آمار مشاهده سایت', 'درگاههای پرداخت', 'نام درگاه پرداخت', 'شماره درخواست', 'شناسه پرداخت', 'کدمرجع تراکنش', 'از', 'به', 'یک طرفه', 'دوطرفه', 'تاریخ رفت', 'تاریخ برگشت', 'مدیریت محتوای صفحه اول', 'آمار و آنالیز سایت', 'خطوط هوایی', 'خدمات کریدت کارت', 'کاربران ما', 1),
(4, 'Access to the page is not possible.', 'charge', 'Increase charge', 'Charging bill', '', '', '', '', 'statistics', 'Page Visited', 'Date and time of visit', 'time obser', 'Visit List', 'Remove all Statistics Visit the s', 'Payment gateways', 'Name payment gateway', 'Application Number', 'Payment code', 'Transaction reference code', 'From', 'To', 'One_Way', 'Round_Trip', 'Departure date', 'Return date', '', '', '', '', '', 2),
(7, 'İstenilen sayfaya erişilemiyor', 'Hesap yükleme', 'Hesap ekleme', 'Hesap bakiyesi', 'Hesap adı', 'TL Hesabı', '', '', 'istatistik', 'Ziyaret edilen sayfa', 'Sayfa bağlantıları', 'Ziyaret tarih ve saati', 'Ziyaret listesi', 'Tüm site istatistiklerini sil', 'Ödeme Portalları', 'Ödeme portalı adı', 'Talep numarası', 'Ödeme numarası', 'İşlem Referans Kodu', '', '', '', '', '', '', '', '', '', '', '', 3),
(8, 'Доступ к странице невозможен', 'Пополнение счета', 'Пополнить счет', 'Увеличение счет', 'Наименование валюты', 'Сумма в турецкое лира', 'Обменный курс   иранского риала', 'Обменный курс  доллара', 'Статистика', 'Посещаемое страниц', 'Дата и время посещения', 'Наблюдатель времени', 'Список посещений', 'Удалить всю статистику посещений ', 'Платежные порталы', 'Наименование платежного портала', 'Номер заявления', 'Код оплаты', 'Код ссылки транзакции', '', '', '', '', '', '', '', '', '', '', '', 4),
(9, 'Саҳифа дастнорас аст', 'Пуркунии суратҳисоб', 'Баландбардории ҳаққи хизмат', 'Тавозуни суратҳисоб', 'Номи асъор', 'Маблағи асъор', 'Маблағ бо Риёли Эрон', 'Маблағ бо Доллари ИМА', 'Омор', 'Саҳифаи боздида', 'Пайвандҳои саҳифа', 'Таърих ва соати боздида', 'Руихати боздида', 'Тамоми омори сайтри таза намоед', 'Гузаргоҳҳои пардохт', 'Номи гузаргоҳи пардохт', 'Рақами дархост', 'Коди пардохт', 'Коди интиқол', '', '', '', '', '', '', '', '', '', '', '', 5),
(10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6),
(11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(4) NOT NULL,
  `lesson_name` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `lesson_active` int(2) NOT NULL,
  `lesson_unit` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `lesson_name`, `lesson_active`, `lesson_unit`) VALUES
(8, 'زبان انگلیسی', 1, 0),
(9, 'زبان ترکی استانبولی', 1, 0),
(10, 'زبان فارسی', 1, 0),
(11, 'زبان آلمانی', 1, 0),
(12, 'زبان فرانسه', 1, 0),
(13, 'زبان عربی', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(3) NOT NULL,
  `level_name` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `level_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level_name`, `level_active`) VALUES
(15, 'سطح مقدماتی انگلیسی', 1),
(16, 'سطح متوسط انگلیسی', 1),
(17, 'سطح نیمه پیشرفته انگلیسی', 0),
(18, 'سطح پیشرفته انگلیسی', 0),
(19, 'سطح مبتدی ترکی استانبولی', 1),
(20, 'سطح متوسط ترکی استانبولی', 0),
(21, 'سطح نیمه پیشرفته ترکی استانبولی', 0),
(22, 'سطح پیشرفته ترکی استانبولی', 0),
(23, 'سطح مبتدی زبان آلمانی', 0),
(24, 'سطح متوسط زبان آلمانی', 0),
(25, 'سطح اول زبان انگلیسی', 1),
(26, 'سطح A1  زبان فرانسه', 1),
(27, 'سطح A2  زبان فرانسه', 0),
(28, 'سطح B1  زبان فرانسه', 0),
(29, 'سطح B2  زبان فرانسه', 0),
(30, 'سطح C1  زبان فرانسه', 0),
(31, 'سطح C2  زبان فرانسه', 0),
(32, 'سطح مقدماتی زبان عربی', 1),
(33, 'سطح متوسط زبان عربی', 0),
(34, 'سطح پیشرفته زبان عربی', 0);

-- --------------------------------------------------------

--
-- Table structure for table `listedivence`
--

CREATE TABLE `listedivence` (
  `id` int(2) NOT NULL,
  `listedv_pagename` varchar(111) COLLATE utf8_persian_ci NOT NULL,
  `listedv_nameedv` varchar(111) COLLATE utf8_persian_ci NOT NULL,
  `listedv_des1` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `listedv_des2` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `listedv_des3` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `listedv_des4` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `listedv_des5` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `listedv_des6` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `listedv_des7` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `listedv_emz` varchar(111) COLLATE utf8_persian_ci NOT NULL,
  `listedv_mnglab` varchar(111) COLLATE utf8_persian_ci NOT NULL,
  `listedv_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `listedv_extdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `listedv_arou` int(2) NOT NULL,
  `listedv_idprofessor` int(6) NOT NULL,
  `listedv_period` int(6) NOT NULL,
  `listedv_level` int(4) NOT NULL,
  `listedv_idstudent` int(8) NOT NULL,
  `listedv_number` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `listedv_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listexam`
--

CREATE TABLE `listexam` (
  `id` int(6) NOT NULL,
  `listex_exam` int(6) NOT NULL,
  `listex_period` int(4) NOT NULL,
  `listex_term` int(4) NOT NULL,
  `listex_clas` int(6) NOT NULL,
  `listex_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `listexam`
--

INSERT INTO `listexam` (`id`, `listex_exam`, `listex_period`, `listex_term`, `listex_clas`, `listex_createdatdate`) VALUES
(2, 1, 0, 0, 1, '2017-02-28 13:46:31'),
(5, 2, 0, 0, 1, '2017-02-28 14:19:31'),
(6, 1, 0, 0, 1, '2017-02-28 14:19:48'),
(7, 1, 0, 0, 5, '2017-02-28 23:12:29'),
(8, 3, 0, 0, 4, '2017-02-28 23:23:06'),
(9, 3, 0, 0, 4, '2017-02-28 23:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `listgroupajency`
--

CREATE TABLE `listgroupajency` (
  `id` int(6) NOT NULL,
  `listgraj_grajid` int(6) NOT NULL,
  `listgraj_ajencyid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `listgroupajency`
--

INSERT INTO `listgroupajency` (`id`, `listgraj_grajid`, `listgraj_ajencyid`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `listgroupprofessor`
--

CREATE TABLE `listgroupprofessor` (
  `id` int(8) NOT NULL,
  `listgrpr_grprid` int(8) NOT NULL,
  `listgrpr_professorid` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listgroupstudent`
--

CREATE TABLE `listgroupstudent` (
  `id` int(4) NOT NULL,
  `listgrst_grstid` int(3) NOT NULL,
  `listgrst_studentid` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `listgroupstudent`
--

INSERT INTO `listgroupstudent` (`id`, `listgrst_grstid`, `listgrst_studentid`) VALUES
(2, 2, 5),
(4, 2, 8),
(5, 3, 8),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `listgroupuser`
--

CREATE TABLE `listgroupuser` (
  `id` int(8) NOT NULL,
  `listgrus_grusid` int(8) NOT NULL,
  `listgrus_userid` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `listgroupuser`
--

INSERT INTO `listgroupuser` (`id`, `listgrus_grusid`, `listgrus_userid`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `liststudentsision`
--

CREATE TABLE `liststudentsision` (
  `id` int(12) NOT NULL,
  `listsis_idstudent` int(8) NOT NULL,
  `listsis_studentname` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `listsis_level` int(4) NOT NULL,
  `listsis_period` int(6) NOT NULL,
  `listsis_term` int(6) NOT NULL,
  `listsis_sision` int(8) NOT NULL,
  `listsis_clas` int(8) NOT NULL,
  `listsis_peresent` int(2) NOT NULL,
  `listsis_active` int(2) NOT NULL,
  `listsis_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `liststudentsision`
--

INSERT INTO `liststudentsision` (`id`, `listsis_idstudent`, `listsis_studentname`, `listsis_level`, `listsis_period`, `listsis_term`, `listsis_sision`, `listsis_clas`, `listsis_peresent`, `listsis_active`, `listsis_createdatdate`) VALUES
(102, 5, '', 0, 25, 1, 2, 1, 1, 0, '2017-02-27 13:59:39'),
(103, 6, '', 0, 25, 1, 2, 1, 1, 0, '2017-02-27 13:59:39'),
(104, 0, '', 0, 0, 0, 0, 0, 2, 0, '1'),
(105, 0, '', 0, 0, 0, 0, 0, 2, 0, '6'),
(106, 0, '', 0, 0, 0, 0, 0, 2, 0, '6'),
(107, 0, '', 0, 0, 0, 0, 0, 2, 0, '5'),
(108, 0, '', 0, 0, 0, 0, 0, 2, 0, '6'),
(109, 0, '', 0, 0, 0, 0, 0, 2, 0, '6'),
(110, 0, '', 0, 0, 0, 0, 0, 2, 0, '5'),
(111, 0, '', 0, 0, 0, 0, 0, 2, 0, '6'),
(112, 0, '', 0, 0, 0, 0, 0, 2, 0, '6'),
(113, 0, '', 0, 0, 0, 0, 0, 2, 0, '5'),
(114, 0, '', 0, 0, 0, 0, 0, 2, 0, '6'),
(115, 0, '', 0, 0, 0, 0, 0, 2, 0, '5'),
(116, 0, '', 0, 0, 0, 0, 0, 2, 0, '6'),
(117, 0, '', 0, 0, 0, 0, 0, 2, 0, '5'),
(118, 0, '', 0, 0, 0, 0, 0, 2, 0, '6'),
(119, 5, '', 0, 25, 1, 3, 1, 0, 0, '2017-02-27 18:40:26'),
(120, 6, '', 0, 25, 1, 3, 1, 0, 0, '2017-02-27 18:40:26'),
(121, 5, '', 0, 25, 1, 5, 1, 0, 0, '2017-02-27 18:43:58'),
(122, 6, '', 0, 25, 1, 5, 1, 1, 0, '2017-02-27 18:43:58'),
(123, 5, '', 0, 25, 1, 6, 1, 0, 0, '2017-02-27 19:15:09'),
(124, 6, '', 0, 25, 1, 6, 1, 1, 0, '2017-02-27 19:15:09'),
(125, 8, '', 0, 32, 8, 14, 5, 0, 0, '2017-02-28 23:18:53'),
(126, 8, '', 0, 37, 13, 15, 9, 0, 0, '2017-03-19 01:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `liststudentterm`
--

CREATE TABLE `liststudentterm` (
  `id` int(8) NOT NULL,
  `liststud_idstudent` int(8) NOT NULL,
  `liststud_level` int(4) NOT NULL,
  `liststud_period` int(6) NOT NULL,
  `liststud_term` int(6) NOT NULL,
  `liststud_finical` int(8) NOT NULL,
  `liststud_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `liststudentterm`
--

INSERT INTO `liststudentterm` (`id`, `liststud_idstudent`, `liststud_level`, `liststud_period`, `liststud_term`, `liststud_finical`, `liststud_createdatdate`) VALUES
(16, 6, 9, 26, 4, 18, '2017-02-24 22:15:37'),
(17, 6, 7, 25, 1, 19, '2017-02-25 19:01:44'),
(18, 5, 7, 25, 1, 21, '2017-02-25 19:36:43'),
(19, 8, 11, 30, 6, 22, '2017-02-28 22:28:04'),
(20, 8, 10, 31, 7, 23, '2017-02-28 22:42:07'),
(21, 8, 11, 32, 8, 24, '2017-02-28 22:49:44'),
(22, 8, 16, 35, 12, 25, '2017-03-01 19:13:51'),
(23, 14, 16, 35, 12, 26, '2017-03-07 11:13:12'),
(24, 13, 16, 35, 12, 27, '2017-03-07 11:14:13'),
(25, 12, 16, 35, 12, 28, '2017-03-07 11:14:56'),
(26, 11, 16, 35, 12, 29, '2017-03-07 11:15:25'),
(27, 10, 16, 35, 12, 30, '2017-03-07 11:15:53'),
(28, 9, 16, 35, 12, 31, '2017-03-07 11:16:19'),
(29, 6, 25, 33, 9, 32, '2017-03-07 18:21:29'),
(30, 6, 30, 37, 13, 59, '2017-03-08 22:40:37'),
(31, 8, 30, 37, 13, 60, '2017-03-08 23:35:44'),
(32, 19, 16, 35, 12, 61, '2017-03-17 00:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(8) NOT NULL,
  `mes_des` varchar(4999) COLLATE utf8_persian_ci NOT NULL,
  `mes_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `mes_ticket` int(6) NOT NULL,
  `mes_flg` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `mes_des`, `mes_createdatdate`, `mes_ticket`, `mes_flg`) VALUES
(47, 'متن اول من    \r\n', '2017-04-15 13:16:22', 14, 1),
(48, '    \r\nپیام خود را تایپ نمایید', '2017-04-15 14:18:09', 15, 1),
(49, '    \r\nآلبالو', '2017-04-15 14:20:30', 16, 1),
(50, 'هلو میشه جواب مدیر', '2017-04-15 15:06:08', 16, 2),
(51, 'ذذذذذذذذ', '2017-04-15 15:07:36', 16, 1),
(52, 'فففغفغفغف فغفغ فف غفففغفغف غ', '2017-04-15 15:08:11', 16, 2),
(53, 'یببیب ی ی ی ب ', '2017-04-15 15:10:54', 16, 2),
(54, 'soalbadi ma', '2017-04-15 16:04:23', 16, 2),
(55, 'kodak', '2017-04-15 16:05:05', 16, 1),
(56, 'اتاتاا', '2017-04-15 16:07:01', 16, 1),
(57, 'لبلبلبلب', '2017-04-15 16:07:46', 15, 2),
(58, 'متن آژانس       \r\n  \r\n', '2017-04-15 16:34:18', 17, 1),
(59, 'متن دو من', '2017-04-16 13:41:45', 17, 1),
(60, 'متن سوم', '2017-04-16 13:42:30', 17, 1),
(61, '    یبلیبلبیلی\r\n', '2017-04-16 13:59:49', 18, 1),
(62, 'زظسبیسب', '2017-04-16 14:00:12', 18, 1),
(63, 'جواب آژانس', '2017-04-16 14:58:44', 17, 2),
(64, 'جواب آژانس ففف ', '2017-04-16 14:59:15', 17, 2),
(65, 'بیا', '2017-04-16 15:00:06', 17, 2),
(66, 'hghghgh', '2017-04-16 15:20:19', 17, 1),
(67, '    \r\nمگگ..گکگک', '2017-04-16 15:31:14', 19, 3),
(68, '        \r\n  متن متن متن \r\n  \r\n', '2017-04-16 18:04:18', 20, 3),
(70, 'متن تست\r\n', '2017-04-17 01:10:28', 22, 3),
(71, '      متن تستس متن تستی\r\n  \r\n', '2017-04-17 01:12:18', 23, 3),
(72, 'matn matn', '2017-04-17 01:41:57', 24, 3),
(73, 'taray', '2017-04-17 01:42:52', 25, 3),
(74, 'متن ارسالی واسه کاربر\r\n  \r\n', '2017-04-17 13:43:09', 26, 3),
(75, 'text user    \r\n', '2017-04-17 16:28:21', 27, 3),
(77, '    jhgjjgj\r\n', '2017-04-17 17:22:39', 29, 3),
(78, 'gfgff', '2017-04-17 17:29:18', 14, 2),
(79, '    \r\ndfgdfgd', '2017-04-17 17:29:27', 30, 3),
(80, 'مشترک گرامی خط شما با موفقیت فعال شد   \r\n', '2017-04-23 16:08:39', 31, 3),
(81, '  متن متن  \r\n', '2017-06-08 01:44:36', 32, 3),
(82, 'salam be khodam bvaraye test    \r\n', '2017-12-02 17:09:28', 33, 1),
(83, 'marhabo', '2017-12-02 17:12:03', 33, 1),
(84, 'سلام به شما دوست عزیز . این برای تست ارسال شده است . ', '2017-12-02 17:12:10', 33, 1),
(85, 'علیک سلاام . مشکل چیه دوست عزیز ؟ ', '2017-12-15 22:12:16', 33, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mngindex`
--

CREATE TABLE `mngindex` (
  `id` int(2) NOT NULL,
  `ind_hperiod` int(2) NOT NULL,
  `ind_hfaq` int(2) NOT NULL,
  `ind_hpage` int(2) NOT NULL,
  `ind_hnew` int(2) NOT NULL,
  `ind_hquiz` int(11) NOT NULL,
  `ind_himglog` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `ind_hregag` int(2) NOT NULL,
  `ind_hregus` int(2) NOT NULL,
  `ind_hlogag` int(2) NOT NULL,
  `ind_hlogus` int(2) NOT NULL,
  `ind_freg` int(2) NOT NULL,
  `ind_flog` int(2) NOT NULL,
  `ind_fperiod` int(2) NOT NULL,
  `ind_fpage` int(2) NOT NULL,
  `ind_fnew` int(2) NOT NULL,
  `ind_fquiz` int(2) NOT NULL,
  `ind_mnumber` int(2) NOT NULL,
  `ind_mnumberdes` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `ind_mfaq` int(2) NOT NULL,
  `ind_fcopy` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `ind_ftitile` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `ind_cont` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `ind_flogprof` int(2) NOT NULL,
  `ind_fregag` int(2) NOT NULL,
  `ind_fregus` int(2) NOT NULL,
  `ind_flogag` int(2) NOT NULL,
  `ind_flogus` int(2) NOT NULL,
  `ind_wbsag` varchar(7777) COLLATE utf8_persian_ci NOT NULL,
  `ind_wbsus` varchar(7777) COLLATE utf8_persian_ci NOT NULL,
  `ind_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `ind_tax` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `ind_taxp` varchar(22) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `mngindex`
--

INSERT INTO `mngindex` (`id`, `ind_hperiod`, `ind_hfaq`, `ind_hpage`, `ind_hnew`, `ind_hquiz`, `ind_himglog`, `ind_hregag`, `ind_hregus`, `ind_hlogag`, `ind_hlogus`, `ind_freg`, `ind_flog`, `ind_fperiod`, `ind_fpage`, `ind_fnew`, `ind_fquiz`, `ind_mnumber`, `ind_mnumberdes`, `ind_mfaq`, `ind_fcopy`, `ind_ftitile`, `ind_cont`, `ind_flogprof`, `ind_fregag`, `ind_fregus`, `ind_flogag`, `ind_flogus`, `ind_wbsag`, `ind_wbsus`, `ind_createdatdate`, `ind_tax`, `ind_taxp`) VALUES
(1, 1, 1, 1, 1, 1, '1514585842logog.jpg', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, '', 1, '', '', '', 1, 1, 1, 1, 1, '<p>\r\n	agency</p>\r\n', '<p>\r\n	users</p>\r\n', '2018-01-06 20:08:48', 'COSTS', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `mngindexgds`
--

CREATE TABLE `mngindexgds` (
  `id` int(2) NOT NULL,
  `gds_cont` varchar(1999) COLLATE utf8_persian_ci NOT NULL,
  `gds_img` varchar(99) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `mngindexgds`
--

INSERT INTO `mngindexgds` (`id`, `gds_cont`, `gds_img`) VALUES
(1, '   In addition to great deals on cheap flights and hotels, exclusive discounts on short breaks across the France and worldwide are available to Gds724 customers.\r\n,We provide a fast, easy, cost effective way to compare and book airport ground transportation worldwide.  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n', ''),
(2, '      The GDS724 fast and powerful search engine makes searching and comparing for the cheapest flight and hotels a breeze. Simply click and compare!  \r\n  Organize your whole trip in just a few clicks! Quick and easy for a stress-free holiday!\r\n\r\n', ''),
(3, '      Build your own low-cost holidays with the best flight and hotel deals and combinations. Have it your way!  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n', ''),
(4, '      Book both products in the same process and save up to 30% on your trip! Find cheap weekend breaks and save time, it\'s a fact!  \r\n  \r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(4) NOT NULL,
  `new_tit` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `new_kh` varchar(444) COLLATE utf8_persian_ci NOT NULL,
  `new_des` varchar(9999) COLLATE utf8_persian_ci NOT NULL,
  `new_img` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `new_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `new_active` int(2) NOT NULL,
  `new_lng` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `new_tit`, `new_kh`, `new_des`, `new_img`, `new_createdatdate`, `new_active`, `new_lng`) VALUES
(1, 'سلامون علیکم', 'تست برای خلاصه متن می نویسم قربت الی الله ...', '<p>\r\n	دقت نمایید این سامانه افتتاح رسمی خواهد شد&nbsp;</p>\r\n<p>\r\n	چشم</p>\r\n', '1495925621photo_2017-05-27_12-58-51.jpg', '2017-05-09 14:38:57', 1, 3),
(2, 'عنوان دوم خبر', 'خلاصه متن همینه همینه  \r\n', '<p>\r\n	متن کامل متن کامل&nbsp;متن کامل متن کامل&nbsp;متن کامل متن کامل&nbsp;متن کامل متن کامل&nbsp;</p>\r\n<p>\r\n	<span style=\"color:#ff0000;\"><span style=\"font-size:22px;\"><strong>اسناد زیر</strong></span></span></p>\r\n<p>\r\n	<span style=\"color:#000000;\"><span style=\"font-size:12px;\"><strong>بفرما</strong></span></span></p>\r\n', '1495925636photo_2017-05-25_16-11-39.jpg', '2017-05-09 14:57:14', 1, 3),
(3, 'title', '  \r\nkh kh ', '<p>\n	<br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\" />\n	<strong><span style=\"color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\">MUC/IKA - MUC/IKA/MUC</span></strong><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\" />\n	<span style=\"color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\">MXP/IKA - MXP/IKA/MXP</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\" />\n	<span style=\"color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\">CPH/IKA - CPH/IKA/CPH</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\" />\n	<span style=\"color:#ff8c00;\"><span style=\"font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\">CDG/IKA - CDG/IKA/CDG</span></span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\" />\n	<span style=\"color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\">ATH/IKA - ATH/IKA/ATH</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\" />\n	<span style=\"color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\">IST/IKA - IST/IKA-IST</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\" />\n	<span style=\"color: rgb(51, 51, 51); font-family: Behdad, Tahoma, Helvetica, Arial, sans-serif;\">ESB/IKA - ESB/IKA/ESB</span></p>\n', '1498057656images.jpg', '2017-05-09 15:51:59', 1, 4),
(4, 'hi my boy', 'hello my iranian  \r\n', '<p>\r\n	hello world!</p>\r\n<p>\r\n	how are you today ?</p>\r\n', '1498057621image_large.jpg', '2017-06-02 03:57:00', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(4) NOT NULL,
  `note_name` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `note_us` int(2) NOT NULL,
  `updated_at` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `created_at` varchar(55) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `note_name`, `note_us`, `updated_at`, `created_at`) VALUES
(26, 'mustafa1390@gmail.com', 0, '2017-01-13 16:40:53', '2017-01-13 16:40:53'),
(27, 'dfsfddsfgdsgsdg', 0, '2017-01-13 16:41:16', '2017-01-13 16:41:16'),
(28, 'mustafa1390@gmail.com', 0, '2017-01-13 16:41:32', '2017-01-13 16:41:32'),
(29, 'mustafa1390@gmail.com', 0, '2017-01-13 16:54:46', '2017-01-13 16:54:46'),
(30, 'mustafa1390@gmail.com', 0, '2017-01-13 16:54:49', '2017-01-13 16:54:49'),
(31, 'mustafa1390@gmail.com', 0, '2017-01-13 16:56:19', '2017-01-13 16:56:19'),
(32, 'mustafa1390@gmail.com', 0, '2017-01-13 16:56:22', '2017-01-13 16:56:22'),
(33, 'mustafa1390@gmail.com', 0, '2017-01-13 19:27:07', '2017-01-13 19:27:07'),
(34, 'mustafa1390@gmail.com', 0, '2017-01-13 19:27:56', '2017-01-13 19:27:56'),
(35, 'mustafa1390@gmail.com', 0, '2017-01-13 19:28:52', '2017-01-13 19:28:52'),
(36, 'dddddddddddd', 0, '2017-01-19 11:13:05', '2017-01-19 11:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `ostads`
--

CREATE TABLE `ostads` (
  `ostad_id` int(6) NOT NULL,
  `ostad_email` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `ostad_password` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `ostad_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(3) NOT NULL,
  `page_header` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `page_tit` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `page_des` varchar(9999) COLLATE utf8_persian_ci NOT NULL,
  `page_img` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `page_active` int(2) NOT NULL,
  `page_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `page_lng` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `page_header`, `page_tit`, `page_des`, `page_img`, `page_active`, `page_createdatdate`, `page_lng`) VALUES
(1, 'هدر صفحه اول', 'عنوان صفحه اول', '<p>\r\n	متن صفحه اول</p>\r\n', '1494341965Penguins.jpg', 0, '2017-05-09 19:29:27', 3),
(2, 'Contact Us ', 'Contact Us ', '<div>\r\n	<h2 style=\"direction: ltr; margin: 35px 0px 25px; font-size: 24px; padding: 7px 0px; border-bottom: 1px solid rgb(204, 204, 204); line-height: 1.4; font-weight: normal; color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; text-align: left;\">\r\n		Customer service</h2>\r\n	<p style=\"margin: 15px 0px; padding: 0px; font-size: 14px; line-height: 1.5; color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; text-align: left;\">\r\n		&nbsp;</p>\r\n	<div style=\"direction: ltr;\">\r\n		Tel: Trabzon - Turkey : 22 33 444</div>\r\n	<div style=\"direction: ltr;\">\r\n		Other locations:&nbsp;(90462) 2233444</div>\r\n	<div style=\"direction: ltr;\">\r\n		Email:&nbsp;<a href=\"mailto:info@gds724.com\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\">info@gds724.com</a></div>\r\n	<h2 style=\"direction: ltr; margin: 35px 0px 25px; font-size: 24px; padding: 7px 0px; border-bottom: 1px solid rgb(204, 204, 204); line-height: 1.4; font-weight: normal; color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; text-align: left;\">\r\n		Partnership</h2>\r\n	<p style=\"margin: 15px 0px; padding: 0px; line-height: 1.5; text-align: left;\">\r\n		&nbsp;</p>\r\n	<div style=\"direction: ltr;\">\r\n		<span style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif;\">SH.IBRAHIM KaraoGlanoGlu CD. IskenderPasa Mh.</span></div>\r\n	<div style=\"direction: ltr;\">\r\n		<font color=\"#333333\" face=\"tahoma, arial, sans-serif\"><span style=\"font-size: 14px;\">Email:&nbsp;</span><a href=\"mailto:partner@gds724.com\" style=\"font-size: 14px; color: rgb(17, 85, 204);\" target=\"_blank\">partner@gds724.com</a></font></div>\r\n	<h2 style=\"direction: ltr; margin: 35px 0px 25px; font-size: 24px; padding: 7px 0px; border-bottom: 1px solid rgb(204, 204, 204); line-height: 1.4; font-weight: normal; color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; text-align: left;\">\r\n		Worldwide offices</h2>\r\n</div>\r\n<div dir=\"ltr\">\r\n	<p>\r\n		<b>Russia :</b></p>\r\n	<div dir=\"ltr\">\r\n		<span style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 14px;\">Tower C, Building 304, A10, Jiuxianqiao North Rd, Chaoyang District, Beijing</span><br style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 14px;\" />\r\n		<span style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 14px;\">TEL: (0098)&nbsp;<a href=\"tel:(212)%20263-7303\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\" value=\"+12122637303\">2122637303</a></span><br />\r\n		Email :&nbsp;<a href=\"mailto:info@gds724.com\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\">info@gds724.com</a></div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<p>\r\n		<b>Iran :&nbsp;</b><br />\r\n		<span style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 14px;\">Tower C, Building 304, A10, Jiuxianqiao North Rd, Chaoyang District, Beijing</span><br style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 14px;\" />\r\n		<span style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 14px;\">TEL: (0098)&nbsp;<a href=\"tel:(212)%20263-7303\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\" value=\"+12122637303\">2122637303</a></span><br />\r\n		Email :&nbsp;<a href=\"mailto:info@gds724.com\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\">info@gds724.com</a></p>\r\n</div>\r\n<div dir=\"ltr\">\r\n	&nbsp;</div>\r\n<div dir=\"ltr\">\r\n	<p>\r\n		<b style=\"font-family: arial, sans-serif; font-size: 12.8px;\">Germany :&nbsp;</b></p>\r\n	<div dir=\"ltr\" style=\"font-family: arial, sans-serif; font-size: 12.8px;\">\r\n		<span style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 14px;\">Tower C, Building 304, A10, Jiuxianqiao North Rd, Chaoyang District, Beijing</span><br style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 14px;\" />\r\n		<span style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, sans-serif; font-size: 14px;\">TEL: (0098)&nbsp;<a href=\"tel:(212)%20263-7303\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\" value=\"+12122637303\">2122637303</a></span><br />\r\n		Email :&nbsp;<a href=\"mailto:info@gds724.com\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\">info@gds724.com</a></div>\r\n	<div dir=\"ltr\" style=\"font-family: arial, sans-serif; font-size: 12.8px;\">\r\n		&nbsp;</div>\r\n</div>\r\n<p style=\"direction: ltr; \">\r\n	&nbsp;</p>\r\n', 'demowhite.jpg', 1, '2018-01-06 02:49:09', 44),
(3, 'About Us ', 'About Us ', '<div dir=\"rtl\" style=\"font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	About Us&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n', 'demowhite.jpg', 1, '2018-01-06 03:17:13', 44),
(4, 'Privacy Policy', 'Privacy Policy', '<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	GDS724 Privacy Policy regarding personal data protection</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	As a national carrier and SkyTeam member, GDS724&nbsp;takes all necessary measures to protect confidential information in accordance with international standards and legislation of the T&uuml;rkiye Cumhuriyet . The company&rsquo;s organizational and administrative documents cover all aspects related to the protection of confidential information provided to GDS724&nbsp;by its customers.</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	&nbsp;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	Customers provide their personal data on a voluntary basis and have the right to request that it be amended, updated, supplemented or deleted.</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	&nbsp;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	By using the official website of GDS724&nbsp;, customers agree to provide their personal data and give their full and unconditional consent to its processing and cross-border transmission under the terms of this Privacy Policy.</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	&nbsp;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	Except as otherwise provided by legislation of the T&uuml;rkiye Cumhuriyet, GDS724&nbsp;does not disclose to third parties any confidential information which contains customers&rsquo; personal data received in the course of business and uses this information solely for the benefit of its customers. GDS724&nbsp;, however, can share personal data with its partner organizations to promote aviation security, facilitate ticketing, enable payments via bank and payment cards, improve passenger service quality and the availability of air transport, and as part of the GDS724&nbsp;Bonus program, exclusively in the manner prescribed by the relevant rules and regulations.</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	&nbsp;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	GDS724 may also provide personal data to tax, law enforcement and other government agencies in accordance with the legislation of the T&uuml;rkiye Cumhuriyet&nbsp;and following procedure established in the company.</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	&nbsp;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	GDS724 may process personal data in the following ways:</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	&nbsp;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	mixed processing;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	intranet transmission;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	internet transmission;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	cross-border transmission;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	by collecting, collating, accumulating, storing, correcting, updating, amending, using, transferring, blocking, destroying such data.</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	Protection of information, along with flight safety, is among the top priorities of GDS724&nbsp;. To prevent unauthorized access or transfer of personal data to third parties, misuse of customers&rsquo; personal data and other illegal actions of third parties, GDS724&nbsp;continuously improves organizational and technical measures designed to protect customers&rsquo; personal data.</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	&nbsp;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	GDS724 reserves the right to make changes and additions to this Privacy Policy. A new version of the GDS724&nbsp;Privacy Policy regarding personal data protection shall take effect on the date it is posted on the official website of GDS724&nbsp;.</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	&nbsp;</div>\r\n<div dir=\"rtl\" style=\"direction: ltr; font-family: arial, sans-serif; font-size: 12.8px; text-align: left;\">\r\n	To have their personal data amended, supplemented or deleted, customers can use the contact information (phone, postal address) provided on the official website of GDS724&nbsp;in the &laquo;Contacts&raquo; section.</div>\r\n<div style=\"direction: ltr; \">\r\n	&nbsp;</div>\r\n', 'demowhite.jpg', 1, '2018-01-06 17:43:16', 44);

-- --------------------------------------------------------

--
-- Table structure for table `panelsms`
--

CREATE TABLE `panelsms` (
  `id` int(2) NOT NULL,
  `sms_username` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `sms_password` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `sms_fromnumber` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `sms_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `sms_panelname` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `sms_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `panelsms`
--

INSERT INTO `panelsms` (`id`, `sms_username`, `sms_password`, `sms_fromnumber`, `sms_createdatdate`, `sms_panelname`, `sms_active`) VALUES
(1, 'zaban724', 'mustafa724', '10006666601', '2017-04-08 17:06:18', 'پنل پیامکی آزمایشگاه زبان', 1);

-- --------------------------------------------------------

--
-- Table structure for table `passanger`
--

CREATE TABLE `passanger` (
  `id` int(22) NOT NULL,
  `pas_idbelit` int(11) NOT NULL,
  `pas_name` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `pas_family` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `pas_national` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `pas_birthdate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `pas_passportnumber` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `pas_passportdate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `pas_gender` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `pas_type` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `pas_bprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `pas_sprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `pas_tprice` varchar(11) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `passanger`
--

INSERT INTO `passanger` (`id`, `pas_idbelit`, `pas_name`, `pas_family`, `pas_national`, `pas_birthdate`, `pas_passportnumber`, `pas_passportdate`, `pas_gender`, `pas_type`, `pas_bprice`, `pas_sprice`, `pas_tprice`) VALUES
(80, 81, 'mostafa', 'yosefi', 'IR', '12.9.1996', '67778888', '', 'MR', 'ADT', '', '', ''),
(81, 82, 'mostafa', 'yosefi', 'IR', '10.9.1911', '6777777', '', 'MR', 'ADT', '', '', ''),
(82, 83, 'reza mehdizade', 'javadi', 'IR', '11.8.1944', '67778888', '', 'MR', 'ADT', '', '', ''),
(83, 84, 'saleh', 'ghahtani', 'LR', '16.11.1984', 'n788877777', '', 'MR', 'ADT', '', '', ''),
(84, 85, 'Ali', 'Azimov', 'TJ', '19.4.1980', '5566554455', '', 'MR', 'ADT', '', '', ''),
(85, 86, 'ali', 'azimov', 'TJ', '19.4.1980', '5566554455', '', 'MR', 'ADT', '', '', ''),
(86, 87, 'celal', 'usta', 'TR', '15.4.1980', '456123', '', 'MR', 'ADT', '', '', ''),
(87, 88, 'mahmoud', 'ghoochani', 'IQ', '7.12.1985', 'l75652015', '', 'MR', 'ADT', '', '', ''),
(88, 89, 'ozkan', 'ozer', 'AE', '2.3.1950', '2222222', '', 'MS', 'ADT', '', '', ''),
(89, 90, 'ali', 'azimov', 'TJ', '19.4.1980', '5588555855', '', 'MR', 'ADT', '', '', ''),
(90, 91, 'ozkan', 'ozer', 'AG', '3.4.1952', '2222222', '', 'MS', 'ADT', '', '', ''),
(91, 92, 'ozkan', 'ozer', 'AG', '3.4.1952', '2222222', '', 'MS', 'ADT', '', '', ''),
(92, 93, 'ozkan', 'ozer', 'AI', '4.3.1953', '2222222', '', 'MS', 'ADT', '', '', ''),
(93, 94, 'ozkan', 'ozer', 'AF', '3.3.1951', '2222222', '', 'MS', 'ADT', '', '', ''),
(94, 95, 'ozkan', 'ozer', 'AG', '3.3.1947', '2222222', '', 'MS', 'ADT', '', '', ''),
(95, 96, 'ozkan', 'ozer', 'TR', '5.3.1941', '', '', 'MS', 'ADT', '', '', ''),
(96, 97, 'ozkan', 'ozer', 'TR', '3.4.1965', '2222222', '', 'MR', 'ADT', '', '', ''),
(97, 98, 'celal', 'usta', 'TR', '12.6.1972', '555444', '', 'MR', 'ADT', '', '', ''),
(98, 99, 'celal', 'usta', 'TR', '18.2.1974', '555464', '', 'MR', 'ADT', '', '', ''),
(99, 100, 'celal', 'usta', '', '16.7.1971', '222222', '', 'MR', 'ADT', '', '', ''),
(100, 101, 'celal', 'USTA', '', '16.3.1970', '222222', '', 'MR', 'ADT', '', '', ''),
(101, 102, 'ali ', 'azimov', 'TJ', '19.4.1980', '556655899', '', 'MR', 'ADT', '', '', ''),
(102, 103, 'ali', 'azimov', 'TJ', '19.4.1980', '556665588', '', 'MR', 'ADT', '', '', ''),
(103, 104, 'elham', 'eskandari', 'IR', '16.10.1972', '988877777', '', 'MS', 'ADT', '', '', ''),
(104, 105, 'yosef', 'yosefi', 'IR', '17.9.1986', '800999888', '', 'MR', 'ADT', '', '', ''),
(105, 106, 'ozkan', 'ozer', 'AG', '4.3.1948', '222221', '', 'MS', 'ADT', '', '', ''),
(106, 107, 'ozkan', 'ozer', 'CC', '1.7.1974', '', '', 'MS', 'ADT', '', '', ''),
(107, 108, 'ozkan', 'ozer', 'CC', '1.7.1974', '222221', '', 'MS', 'ADT', '', '', ''),
(108, 109, 'ozkan', 'ozer', 'CC', '1.7.1974', '222221', '', 'MS', 'ADT', '', '', ''),
(109, 110, 'ozkan', 'ozer', 'AG', '3.2.1927', '222221', '', 'MS', 'ADT', '', '', ''),
(110, 111, 'ozkan', 'ozer', 'AG', '3.2.1999', '222221', '', 'MS', 'ADT', '', '', ''),
(111, 112, 'ozkan', 'ozer', 'AL', '2.2.1999', '222221', '', 'MS', 'ADT', '', '', ''),
(112, 113, 'ali', 'azimov', 'TJ', '19.4.1980', '556655899', '', 'MR', 'ADT', '', '', ''),
(113, 114, 'celal', 'usta', 'TR', '14.5.1971', '222222', '', 'MR', 'ADT', '', '', ''),
(114, 114, 'özlem', 'USTA', 'TR', '17.9.1974', '222221', '', 'MS', 'ADT', '', '', ''),
(115, 115, 'ozkan', 'ozer', 'AE', '2.2.1994', '222221', '', 'MS', 'ADT', '', '', ''),
(116, 115, 'ozkans', 'ozers', 'BA', '19.3.1972', '222222', '', 'MS', 'ADT', '', '', ''),
(117, 116, 'ozkan', 'ozer', 'AF', '2.2.1901', '222221', '', 'MS', 'ADT', '', '', ''),
(118, 116, 'ozkans', 'ozers', 'AG', '3.2.1984', '2222222', '', 'MS', 'ADT', '', '', ''),
(119, 117, 'ozkan', 'ozer', 'AF', '2.2.1926', '', '', 'MS', 'ADT', '', '', ''),
(120, 118, 'ozkan', 'ozer', 'AR', '6.4.1904', '', '', 'MS', 'ADT', '', '', ''),
(121, 119, 'celal', 'usta', 'TR', '6.6.1987', '222222', '', 'MR', 'ADT', '', '', ''),
(122, 119, 'özlem', 'usta', 'TR', '16.7.1991', '222221', '', 'MS', 'ADT', '', '', ''),
(123, 119, 'Özge', 'usta', 'TR', '15.3.2004', '222200', '', '', 'CHD', '', '', ''),
(124, 120, 'celal', 'usta', 'TR', '6.6.1987', '222211', '', 'MR', 'ADT', '', '', ''),
(125, 120, 'özlem', 'usta', 'TR', '16.7.1991', '222221', '', 'MS', 'ADT', '', '', ''),
(126, 120, 'Özge', 'usta', 'TR', '15.3.2004', '222200', '', 'MS', 'CHD', '', '', ''),
(127, 121, 'ozkan', 'demir', 'AF', '2.3.1937', '222221', '', 'MS', 'ADT', '', '', ''),
(128, 122, 'mostafa', 'yosefi', 'IR', '17.11.1979', 'b56667777', '', 'MR', 'ADT', '', '', ''),
(129, 122, 'ahmad', 'rointan', 'IR', '27.9.1988', 'h52225555', '', 'MR', 'ADT', '', '', ''),
(130, 123, 'ozk', 'ozer', 'AF', '4.4.1936', '222221', '', 'MS', 'ADT', '', '', ''),
(131, 123, 'ozkan', 'ozer', 'DM', '17.9.1971', '22222', '', 'MS', 'ADT', '', '', ''),
(132, 124, '', '', '', '..', '', '', '', 'ADT', '', '', ''),
(133, 124, '', '', '', '..', '', '', '', 'ADT', '', '', ''),
(134, 125, 'ozkan', 'ozer', 'AI', '3.3.1928', '222221', '', 'MS', 'ADT', '', '', ''),
(135, 126, 'ozkan', 'ozer', 'AF', '2.3.1932', '222221', '', 'MS', 'ADT', '', '', ''),
(136, 127, 'celal', 'usta', '', '16.3.1980', '222222', '', 'MR', 'ADT', '', '', ''),
(137, 128, 'CELAL', 'mahmut', 'TR', '16.8.1971', '222211', '', 'MR', 'ADT', '', '', ''),
(138, 128, 'erkan', 'usta', 'TR', '16.2.1971', '222333', '', 'MR', 'ADT', '', '', ''),
(139, 129, 'ahmet', 'eyibil', 'TR', '4.3.1975', '111111', '', 'MR', 'ADT', '', '', ''),
(140, 129, 'yücel', 'cakmak', 'TR', '16.10.1969', '123455', '', 'MR', 'ADT', '', '', ''),
(141, 129, 'gamze', 'cakmak', 'TR', '3.3.2007', '456231', '', 'MS', 'CHD', '', '', ''),
(142, 129, 'zeynep', 'cakmak', 'TR', '17.9.2016', '555456', '', 'MS', 'INF', '', '', ''),
(143, 131, 'mostafa', 'yosefi', 'IR', '16.11.1963', 'n789999999', '', 'MR', 'ADT', '', '', ''),
(144, 132, 'mostafa', 'yosefi', 'IR', '25.11.1939', '67778888', '', 'MR', 'ADT', '', '', ''),
(145, 133, 'reza mehdizade', 'rezayi', 'LA', '18.9.1985', 'nk900000099', '', 'MR', 'ADT', '', '', ''),
(146, 134, 'zahra', 'yosefi', 'FJ', '17.7.1916', '5646456', '', 'MS', 'ADT', '', '', ''),
(147, 135, 'fattah', 'rozbeh', 'CU', '16.10.1990', 'b89999999', '', 'MR', 'ADT', '', '', ''),
(148, 136, 'mahmod', 'javadi', 'IR', '18.11.1991', 'm988888888', '', 'MR', 'ADT', '', '', ''),
(149, 137, 'vahid', 'jamshidi', 'AF', '5.6.1959', '67778888', '', 'MR', 'ADT', '', '', ''),
(150, 138, 'mahan', 'shafei', 'BQ', '5.3.1967', 'n2333444444', '', 'MR', 'ADT', '', '', ''),
(151, 139, 'kazem', 'karimi', 'IR', '17.9.1986', 'n8655555555', '', 'MR', 'ADT', '', '', ''),
(152, 140, 'alireza', 'shomol', 'IT', '24.9.1974', 'n599998888', '', 'MR', 'ADT', '', '', ''),
(153, 141, 'jalal', 'ahmadi', 'IR', '24.10.1962', 'l988888888', '', 'MR', 'ADT', '', '', ''),
(154, 142, 'mahmoud', 'ghoochani', 'AQ', '6.9.1985', 'l75652015', '', 'MR', 'ADT', '', '', ''),
(155, 143, 'mmmm', 'ahmadi', 'BB', '18.11.1916', '75675675', '', 'MR', 'ADT', '', '', ''),
(156, 144, 'mostafa', 'yosefi', 'AW', '17.10.1917', '6777777', '', 'MR', 'ADT', '', '', ''),
(157, 145, 'mostafa', 'yosefi', 'BY', '12.11.1957', 'n522222222', '', 'MR', 'ADT', '', '', ''),
(158, 146, 'mostafa', 'yosefi', 'BE', '29.11.1913', 'n522222222', '', 'MR', 'ADT', '', '', ''),
(159, 149, 'ali', 'azimov', 'TH', '24.10.1990', '55556669', '', 'MR', 'ADT', '', '', ''),
(160, 150, 'mahmoud', 'ghoochani', 'IR', '7.10.1983', '5588555855', '', 'MR', 'ADT', '', '', ''),
(161, 151, 'mahmoud', 'ghoochani', 'AM', '8.7.1980', '5588555855', '', 'MR', 'ADT', '', '', ''),
(162, 153, 'Mahmut', 'Zumbul', 'TR', '15.7.1972', '465132', '', 'MR', 'ADT', '', '', ''),
(163, 154, 'ercan', 'cömert', 'TR', '6.5.1971', '456789', '', 'MR', 'ADT', '', '', ''),
(164, 154, 'esra', 'nak', 'TR', '4.7.1979', '567894', '', 'MS', 'ADT', '', '', ''),
(165, 154, 'serkan', 'nak', 'TR', '12.2.2007', '541236', '', 'MR', 'CHD', '', '', ''),
(166, 154, 'zeynep', 'nak', 'TR', '16.9.2016', '888797', '', 'MS', 'INF', '', '', ''),
(167, 155, 'ali', 'azimov', 'AE', '1.1.1980', '55555555', '', 'MR', 'ADT', '', '', ''),
(168, 155, 'veli', 'mamama', 'AE', '4.3.1981', '66666666666', '', 'MS', 'ADT', '', '', ''),
(169, 155, 'mamamam', 'lllllfffo', 'AE', '2.2.2008', '66698555555', '', 'MR', 'CHD', '', '', ''),
(170, 155, 'kakakak', 'ofofofof', 'AE', '2.2.2016', '6996696696', '', 'MR', 'INF', '', '', ''),
(171, 157, 'ali', 'azim', 'AG', '15.3.1980', '5566554455', '', 'MR', 'ADT', '', '', ''),
(172, 157, 'veli', 'mamad', 'AG', '17.5.1989', '6699888555', '', 'MR', 'ADT', '', '', ''),
(173, 157, 'mamad', 'mamad', 'AG', '11.8.2008', '88752255656', '', 'MR', 'CHD', '', '', ''),
(174, 157, 'sevara', 'mamad', 'AG', '5.8.2016', '99999522222', '', 'MS', 'INF', '', '', ''),
(175, 158, 'ali', 'azimov', 'TJ', '19.4.1980', '5566554455', '', 'MR', 'ADT', '', '', ''),
(176, 168, 'ali', 'azimov', 'TJ', '19.4.1980', '5566554455', '', 'MR', 'ADT', '', '', ''),
(177, 168, 'aras eren', 'azimov', 'TJ', '19.5.2012', '9999996669', '', 'MR', 'CHD', '', '', ''),
(178, 169, 'ali', 'azimov', 'TJ', '19.4.1980', '555555555', '', 'MR', 'ADT', '', '', ''),
(179, 169, 'ali', 'mamadeov', 'TJ', '17.8.2012', '66666666', '', 'MR', 'CHD', '', '', ''),
(180, 169, 'asya', 'azimov', 'TJ', '16.4.2016', '9999999999', '', 'MS', 'INF', '', '', ''),
(181, 171, 'ali', 'azimov', 'TJ', '17.4.1980', '9999999999', '', 'MR', 'ADT', '', '', ''),
(182, 173, 'mahmoud', 'ghoochani', 'AZ', '14.8.1982', '55556669', '', 'MR', 'ADT', '', '', ''),
(183, 173, 'mahmoud', 'fahimi', 'AE', '9.11.2016', '5588555855', '', 'MS', 'INF', '', '', ''),
(184, 174, 'ibrahim', 'kalender', 'TR', '3.8.1969', '456845', '', 'MR', 'ADT', '', '', ''),
(185, 174, 'ercan', 'comert', 'TR', '16.4.1972', '654123', '', 'MR', 'ADT', '', '', ''),
(186, 174, 'feray', 'yıldırım', 'TR', '15.7.2006', '789654', '', 'MR', 'CHD', '', '', ''),
(187, 174, 'sevde', 'comert', 'TR', '13.3.2016', '456781', '', 'MS', 'INF', '', '', ''),
(188, 175, 'ahmadreza', 'vaaali', 'AT', '18.10.1918', 'n6777777', '', 'MR', 'ADT', '', '', ''),
(189, 175, 'jojo', 'mehdipour', 'AT', '17.12.2016', 'j5646456', '', 'MS', 'INF', '', '', ''),
(190, 176, 'mostafa', 'yosefi', 'BD', '10.6.1917', '6777777', '', 'MR', 'ADT', '', '', ''),
(191, 176, 'reza mehdizade', 'rezayi', 'AW', '28.11.1992', 'n6777777', '', 'MR', 'ADT', '', '', ''),
(192, 177, 'mostafa', 'yosefi', 'CW', '18.11.1991', '67778888', '', 'MR', 'ADT', '', '', ''),
(193, 178, 'mostafa', 'yosefi', 'KP', '18.11.1991', 'h67778888', '', 'MR', 'ADT', '', '', ''),
(194, 179, 'mostafa', 'yosefi', 'AT', '10.10.1995', '6777777', '', 'MR', 'ADT', '', '', ''),
(195, 179, 'reza mehdizade', 'yosefi', 'FR', '26.10.2016', 'ndgggg', '', 'MS', 'INF', '', '', ''),
(196, 180, 'ali', 'aaimo', 'TJ', '4.4.1976', '666669888', '', 'MR', 'ADT', '', '', ''),
(197, 180, 'aras', 'azimov', 'TJ', '18.2.2016', '9999999999', '', 'MR', 'INF', '', '', ''),
(198, 181, 'alexander', 'bell', 'AM', '16.11.1918', '67778888', '', 'MR', 'ADT', '', '', ''),
(199, 182, 'mostafa', 'yosefi', 'GR', '16.8.1965', 'n788888777', '', 'MR', 'ADT', '', '', ''),
(200, 183, 'vafa', 'fotohi', 'KE', '27.9.1991', 'l67778888', '', 'MR', 'ADT', '', '', ''),
(201, 184, 'mostafa', 'yosefi', 'AO', '19.10.1954', '6777777', '', 'MR', 'ADT', '', '', ''),
(202, 184, 'yosef', 'yosefi', 'AW', '19.12.2016', 'l9888888', '', 'MR', 'INF', '', '', ''),
(203, 186, 'ali', 'azimov', 'TJ', '18.10.1984', '9999999999', '', 'MR', 'ADT', '', '', ''),
(204, 186, 'lalalal', 'lalsjkskskj', 'TJ', '18.5.2007', '99998887522', '', 'MR', 'CHD', '', '', ''),
(205, 186, 'fdlkdlf', 'sdpspfspo', 'TJ', '17.9.2016', '9998891', '', 'MR', 'INF', '', '', ''),
(206, 187, 'ali', 'azimov', 'TJ', '3.4.1980', '955959595959', '', 'MR', 'ADT', '', '', ''),
(207, 187, 'ali', 'mamamama', 'TJ', '18.12.2016', '959595995', '', 'MR', 'INF', '', '', ''),
(208, 188, 'ali', 'azimov', 'TJ', '10.8.1980', '9959595959', '', 'MR', 'ADT', '', '', ''),
(209, 188, 'valla', 'azımo', 'TJ', '18.4.2016', '959595959', '', 'MR', 'INF', '', '', ''),
(210, 190, 'ali', 'azimov', 'TJ', '6.7.1988', '66565656565', '', 'MR', 'ADT', '', '', ''),
(211, 190, 'adfsf', 'sdfsfs', 'GL', '3.4.1994', '5465465465', '', 'MR', 'ADT', '', '', ''),
(212, 190, 'asdasf', 'dfghdfhd', 'AZ', '8.8.2014', 'sdfsdfsdf', '', 'MR', 'CHD', '', '', ''),
(213, 192, 'ali', 'azimov', 'TJ', '19.4.1980', '555558888', '', 'MR', 'ADT', '', '', ''),
(214, 192, 'veli', 'azimov', 'TJ', '18.2.2009', '6666999999', '', 'MR', 'CHD', '', '', ''),
(215, 192, 'aslan', 'azimov', 'TJ', '16.8.2016', '9595995959', '', 'MR', 'INF', '', '', ''),
(216, 193, 'ali', 'azimov', 'TJ', '16.11.1987', '5564666656', '', 'MR', 'ADT', '', '', ''),
(217, 193, 'asdas', 'asfasf', 'TJ', '7.5.2011', '65656565656', '', 'MR', 'CHD', '', '', ''),
(218, 193, 'lakaka', 'emememem', 'TJ', '3.6.2017', '54655464', '', 'MR', 'INF', '', '', ''),
(219, 194, 'mostafa', 'yosefi', 'AL', '20.11.1967', 'nhh5666666', '', 'MR', 'ADT', '', '', ''),
(220, 194, 'jalal', 'rezayi', 'EC', '19.11.2010', 'b78888888', '', 'MR', 'CHD', '', '', ''),
(221, 195, 'mostafa', 'yosefi', 'AT', '26.11.1970', '67778888', '', 'MR', 'ADT', '', '', ''),
(222, 195, 'jalal', 'ahmadi', 'AT', '20.11.2012', 'n988888', '', 'MR', 'CHD', '', '', ''),
(223, 196, 'mostafa', 'fotohi', 'IR', '18.11.1977', 'n8999999', '', 'MR', 'ADT', '', '', ''),
(224, 196, 'jalal', 'rezayi', 'EG', '29.11.2016', 'b888888', '', 'MR', 'INF', '', '', ''),
(225, 197, 'ali', 'azimov', 'TJ', '19.4.1980', '666669888', '', 'MR', 'ADT', '', '', ''),
(226, 198, 'ali', 'azimov', 'TJ', '19.4.1980', '5566554455', '', 'MR', 'ADT', '', '', ''),
(227, 199, 'ali', 'azimov', 'TJ', '19.1.1980', '666669888', '', 'MR', 'ADT', '', '', ''),
(228, 199, 'aras', 'azimov', 'TJ', '19.4.2011', '9999999999', '', 'MR', 'CHD', '', '', ''),
(229, 202, 'ali', 'azimov', 'TJ', '19.1.1980', '54554995', '', 'MR', 'ADT', '', '', ''),
(230, 202, 'mamak', 'mamamk', 'TJ', '15.5.2009', '656566', '', 'MR', 'CHD', '', '', ''),
(231, 204, 'ali', 'azimov', 'TJ', '14.6.1980', '55555996655', '', 'MR', 'ADT', '', '', ''),
(232, 204, 'ali', 'mamadov', 'TJ', '15.1.2017', '55599666251', '', 'MR', 'INF', '', '', ''),
(233, 205, 'FERAY', 'YILDIRIM', 'TR', '17.4.1980', '665445', '', 'MS', 'ADT', '', '', ''),
(234, 205, 'GUL', 'SAYKAL', 'TR', '18.9.1980', '332112', '', 'MS', 'ADT', '', '', ''),
(235, 206, 'IBRAHIM', 'KALENDER', 'TR', '3.5.1980', '445665', '', 'MS', 'ADT', '', '', ''),
(236, 206, 'GUL', 'SAYKAL', 'TR', '17.2.1971', '778998', '', 'MS', 'ADT', '', '', ''),
(237, 206, 'ESRA', 'SAYKAL', 'TR', '16.8.2009', '778885', '', 'MS', 'CHD', '', '', ''),
(238, 207, 'ALI', 'SAKA', 'TR', '15.3.1965', '456854', '', 'MR', 'ADT', '', '', ''),
(239, 207, 'FUAT', 'SAKA', 'TR', '14.8.1960', '125458', '', 'MS', 'ADT', '', '', ''),
(240, 207, 'MERT', 'SAKA', 'TR', '14.8.2007', '852963', '', 'MR', 'CHD', '', '', ''),
(241, 208, 'sevde', 'arslan', 'TR', '4.3.1974', '665449', '', 'MS', 'ADT', '', '', ''),
(242, 208, 'huseyin', 'arslan', 'TR', '14.2.2007', '785445', '', 'MR', 'CHD', '', '', ''),
(243, 209, 'ERCAN', 'COMERT', 'TR', '16.9.1969', '123456', '', 'MR', 'ADT', '', '', ''),
(244, 209, 'MASUM', 'COMERT', 'TR', '15.4.2008', '456785', '', 'MR', 'CHD', '', '', ''),
(245, 210, 'Gul', 'Saykal', 'TR', '5.5.1978', '636956', '', 'MS', 'ADT', '', '', ''),
(246, 211, 'reza mehdizade', 'rezayi', 'BA', '17.11.1915', '6777777', '', 'MR', 'ADT', '', '', ''),
(247, 212, 'ali', 'azimov', 'TJ', '19.4.1980', '159357258', '', 'MR', 'ADT', '', '', ''),
(248, 212, 'veli', 'azimov', 'TJ', '17.10.2009', '852369741', '', 'MR', 'CHD', '', '', ''),
(249, 213, 'mostafa', 'yosefi', 'AW', '20.11.1914', '6777777', '', 'MR', 'ADT', '', '', ''),
(250, 214, 'ozkan', 'ozer', 'AE', '3.3.1915', '2222222', '', 'MS', 'ADT', '', '', ''),
(251, 215, 'OZCAN', 'OGAL', 'TR', '3.8.1969', '951753', '', 'MR', 'ADT', '', '', ''),
(252, 215, 'SAMET', 'OGAL', 'TR', '14.2.2008', '759153', '', 'MR', 'CHD', '', '', ''),
(253, 216, 'mmmm', 'rezayi', 'AO', '10.7.1904', '6777777', '', 'MS', 'ADT', '', '', ''),
(254, 217, 'mostafa', 'yosefi', 'AE', '7.7.1903', '6777777', '', 'MS', 'ADT', '', '', ''),
(255, 218, 'mostafa', 'yosefi', 'AX', '19.10.1916', '67778888', '', 'MS', 'ADT', '', '', ''),
(256, 219, 'mostafa', 'yosefi', 'AX', '19.10.1916', '67778888', '', 'MS', 'ADT', '', '', ''),
(257, 220, 'mostafa', 'rezayi', 'AL', '13.7.1904', '5646456', '', 'MR', 'ADT', '', '', ''),
(258, 221, 'mostafa', 'yosefi', 'AI', '16.7.1914', '6777777', '', 'MS', 'ADT', '', '', ''),
(259, 222, 'mostafa', 'yosefi', 'AZ', '19.10.1916', '67778888', '', 'MR', 'ADT', '', '', ''),
(260, 223, 'mostafa', 'yosefi', 'AZ', '19.10.1916', '67778888', '', 'MR', 'ADT', '', '', ''),
(261, 224, 'mostafa', 'yosefi', 'AZ', '19.10.1916', '67778888', '', 'MR', 'ADT', '', '', ''),
(262, 225, 'mmmm', 'yosefi', 'AZ', '18.11.1917', '6777777', '', 'MR', 'ADT', '', '', ''),
(263, 226, 'mmmm', 'rezayi', 'BA', '16.10.1917', '6777777', '', 'MR', 'ADT', '', '', ''),
(264, 227, 'mostafa', 'yosefi', 'AW', '15.5.1915', '67778888', '', 'MR', 'ADT', '', '', ''),
(265, 228, 'reza mehdizade', 'yosefi', 'BA', '18.11.1917', '67778888', '', 'MR', 'ADT', '', '', ''),
(266, 229, 'mostafa', 'yosefi', 'BB', '19.11.1918', '6777777', '', 'MR', 'ADT', '', '', ''),
(267, 230, 'mahmoud', 'azimov', 'BA', '19.9.1985', '5564666656', '', 'MR', 'ADT', '', '', ''),
(268, 231, 'ali', 'azimov', 'BA', '18.10.1980', '7585855855', '', 'MR', 'ADT', '', '', ''),
(269, 232, 'mmmm', 'yosefi', 'AF', '17.2.1916', '67778888', '', 'MR', 'ADT', '', '', ''),
(270, 233, 'mmmm', 'yosefi', 'AF', '17.2.1916', '67778888', '', 'MR', 'ADT', '', '', ''),
(271, 234, 'mostafa', 'yosefi', 'BD', '18.10.1917', '6777777', '', 'MR', 'ADT', '', '', ''),
(272, 235, 'mostafa', 'yosefi', 'AU', '3.8.1913', '5646456', '', 'MR', 'ADT', '', '', ''),
(273, 235, 'mmmm', 'yosefi', 'AU', '17.10.2016', 'n6777777', '', 'MS', 'INF', '', '', ''),
(274, 236, 'mostafa', 'yosefi', 'AU', '3.8.1913', '5646456', '', 'MR', 'ADT', '', '', ''),
(275, 236, 'mmmm', 'yosefi', 'AU', '17.10.2016', 'n6777777', '', 'MS', 'INF', '', '', ''),
(276, 237, 'mostafa', 'yosefi', 'AU', '3.8.1913', '5646456', '', 'MR', 'ADT', '', '', ''),
(277, 237, 'mmmm', 'yosefi', 'AU', '17.10.2016', 'n6777777', '', 'MS', 'INF', '', '', ''),
(278, 238, 'mmmm', 'rezayi', 'BA', '15.11.1915', '6777777', '', 'MR', 'ADT', '', '', ''),
(279, 239, 'mostafa', 'rezayi', 'AI', '15.5.1914', '5646456', '', 'MS', 'ADT', '', '', ''),
(280, 240, 'mostafa', 'rezayi', 'AI', '15.5.1914', '5646456', '', 'MS', 'ADT', '', '', ''),
(281, 241, 'mostafa', 'rezayi', 'AI', '15.5.1914', '5646456', '', 'MS', 'ADT', '', '', ''),
(282, 242, 'mmmm', 'rezayi', 'AZ', '17.10.1916', '67778888', '', 'MR', 'ADT', '', '', ''),
(283, 243, 'mmmm', 'rezayi', 'AZ', '17.10.1916', '67778888', '', 'MR', 'ADT', '', '', ''),
(284, 244, 'mmmm', 'ahmadi', 'BA', '17.9.1917', '67778888', '', 'MS', 'ADT', '', '', ''),
(285, 245, 'mostafa', 'yosefi', 'AU', '19.11.1917', '6777777', '', 'MR', 'ADT', '', '', ''),
(286, 246, 'mostafa', 'rezayi', 'BA', '19.10.1918', '6777777', '', 'MR', 'ADT', '', '', ''),
(287, 247, 'mostafa', 'rezayi', 'BA', '19.10.1918', '6777777', '', 'MR', 'ADT', '', '', ''),
(288, 248, 'mostafa', 'rezayi', 'BA', '19.10.1918', '6777777', '', 'MR', 'ADT', '', '', ''),
(289, 249, 'mmmm', 'rezayi', 'AR', '15.10.1914', '67778888', '', 'MR', 'ADT', '', '', ''),
(290, 250, 'mostafa', 'yosefi', 'AT', '17.11.1917', '6777777', '', 'MR', 'ADT', '', '', ''),
(291, 251, 'mostafa', 'yosefi', 'AU', '19.10.1915', '6777777', '', 'MR', 'ADT', '', '', ''),
(292, 252, 'mostafa', 'yosefi', 'AS', '18.9.1986', '6777777', '', 'MR', 'ADT', '', '', ''),
(293, 253, 'mmmm', 'yosefi', 'AD', '5.6.1909', '67778888', '', 'MR', 'ADT', '', '', ''),
(294, 254, 'mmmm', 'yosefi', 'AZ', '21.11.1918', '6777777', '', 'MR', 'ADT', '', '', ''),
(295, 255, 'mmmm', 'yosefi', 'BA', '15.4.1914', '67778888', '', 'MR', 'ADT', '', '', ''),
(296, 256, 'mmmm', 'rezayi', 'AF', '15.5.1914', '5646456', '', 'MR', 'ADT', '', '', ''),
(297, 257, 'mmmm', 'rezayi', 'AF', '15.5.1914', '5646456', '', 'MR', 'ADT', '', '', ''),
(298, 258, 'reza mehdizade', 'ahmadi', 'AT', '19.10.1915', '67778888', '', 'MR', 'ADT', '', '', ''),
(299, 259, 'mostafa', 'yosefi', 'AS', '5.9.1914', 'n6777777', '', 'MR', 'ADT', '', '', ''),
(300, 260, 'mostafa', 'yosefi', 'AS', '5.9.1914', 'n6777777', '', 'MR', 'ADT', '', '', ''),
(301, 261, 'mostafa', 'yosefi', 'AS', '5.9.1914', 'n6777777', '', 'MR', 'ADT', '', '', ''),
(302, 262, 'mmmm', 'ahmadi', 'BA', '18.11.1966', '67778888', '', 'MR', 'ADT', '', '', ''),
(303, 263, 'mmmm', 'yosefi', 'AL', '14.5.1915', '6777777', '', 'MS', 'ADT', '', '', ''),
(304, 264, 'mostafa', 'yosefi', 'AG', '15.7.1916', '5646456', '', 'MR', 'ADT', '', '', ''),
(305, 265, 'mmmm', 'yosefi', 'AL', '17.6.1914', '6777777', '', 'MR', 'ADT', '', '', ''),
(306, 266, 'mostafa', 'yosefi', 'AL', '13.10.1907', '67778888', '', 'MS', 'ADT', '', '', ''),
(307, 267, 'mmmm', 'nnnnn', 'AW', '16.10.1969', 'n8888888', '', 'MR', 'ADT', '', '', ''),
(308, 268, 'mmmm', 'nnnnn', 'AW', '16.10.1969', 'n8888888', '', 'MR', 'ADT', '', '', ''),
(309, 269, 'mmmm', 'nnnnn', 'AW', '16.10.1969', 'n8888888', '', 'MR', 'ADT', '', '', ''),
(310, 270, 'mmmm', 'nnnnn', 'AS', '18.10.1917', 'n8888888', '', 'MR', 'ADT', '', '', ''),
(311, 271, 'mmmm', 'nnnnn', 'NE', '15.10.2000', 'n8888888', '', 'MR', 'ADT', '', '', ''),
(312, 272, 'mmmm', 'nnnnn', 'BB', '17.5.1917', 'n8888888', '', 'MR', 'ADT', '', '', ''),
(313, 273, 'mmmm', 'nnnnn', 'BB', '17.5.1917', 'n8888888', '', 'MR', 'ADT', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `id` int(4) NOT NULL,
  `period_name` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `period_level` int(2) NOT NULL,
  `period_des` varchar(333) COLLATE utf8_persian_ci NOT NULL,
  `period_active` int(2) NOT NULL,
  `period_img` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `period_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `period_startdate` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `period_tuition` varchar(8) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `period`
--

INSERT INTO `period` (`id`, `period_name`, `period_level`, `period_des`, `period_active`, `period_img`, `period_createdatdate`, `period_startdate`, `period_tuition`) VALUES
(33, 'دوره آموزش پایه انگلیسی', 25, '   این دوره برای افرادی که به تازگی می خواهند زبان انگلیسی را فرا بگیرند بسیار کاربردی است ! قبل از ورود به سایر دوره ها ، چنانچه هیچ چیزی در مورد انگلیسی نمی دانید می بایست با این دوره شروع کنید !\r\n', 1, '1489776518united_states_of_america_640.png', '2017-03-01 18:01:12', '2017-04-19', '850000'),
(34, 'دوره مقدماتی زبان انگلیسی', 15, '   این دوره مختص افرادی است که می خواهند استارت فراگیری زبان انگلیسی را بزنند ! شاید اولین قدم برای موفقیت باشد ! اما آخرین راه نخواهد بود .دوره مقدماتی به شما به صورت پایه ای انگلیسی را خواهد آموخت .\r\n', 1, '1489776552united_states_of_america_640.png', '2017-03-01 18:29:56', '2017-03-30', '750000'),
(35, 'دوره متوسط زبان انگلیسی', 16, '	  دوره های متوسط زبان انگلیسی ، برای افرادی است که دوره مقدماتی را گذرانده اند و می خواهند به سطوح بالاتر بروند . در این دوره شما می توانید بسیاری از واژه های روزانه را معنا کرده و حتی مکالمه نیز داشته باشید . یعنی یک گام به هدف نزدیک شدن...  \r\n', 1, '1489776536united_states_of_america_640.png', '2017-03-01 18:36:03', '2017-03-20', '700000'),
(36, 'سطح مبتدی ترکی استانبولی', 19, '   برای آغاز یادگیری زبان ترکی استانبولی ، می توانید از این سطح شروع کنید .\r\n', 1, '1489776400turkey_640.png', '2017-03-07 11:25:48', '2017-04-13', '750000'),
(37, 'دوره تست ', 30, '   \r\nدوره صرفا تستی', 0, '', '2017-03-08 22:37:45', '2017-04-17', '1010'),
(38, 'سطح مقدماتی زبان عربی', 32, 'دوره مقدماتی زبان عربی ، ویژه آن دسته از افرادی است که می خواهند به صورت پایه ای فراگیری این زبان را شروع کنند . \r\nبا سپری کردن این دوره میتوانید با بسیار از قواعد زبان عربی آشنا شده و در طی مراحل مختلف نیز ثبت نام خود را برای سایر دوره های تکمیلی انجام دهید .', 1, '1489776608saudi_arabia_640.png', '2017-03-17 22:08:31', '2017-04-19', '1100000'),
(39, 'سطح A1  زبان فرانسه', 26, 'اگر قصد دارید زبان بسیار شیرین فرانسه را فرابگیرید می بایست با ثبت نام در دوره سطح A1  زبان فرانسه اولین قدم خود را برای فراگیری این زبان بردارید . \r\nسطح A1  زبان فرانسه به صورت پایه ای ، به معرفی این زبان می پردازد و شما را با بسیاری از حروف و کلمات زبان فرانسه آشنا می کند . ', 1, '1489776312france_640.png', '2017-03-17 22:12:37', '2017-05-10', '1180000');

-- --------------------------------------------------------

--
-- Table structure for table `perslesonterm`
--

CREATE TABLE `perslesonterm` (
  `id` int(6) NOT NULL,
  `plt_lesson` int(4) NOT NULL,
  `plt_term` int(4) NOT NULL,
  `plt_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `perslesonterm`
--

INSERT INTO `perslesonterm` (`id`, `plt_lesson`, `plt_term`, `plt_createdatdate`) VALUES
(1, 6, 11, '2017-02-09 20:11:05'),
(2, 7, 2, '2017-02-20 11:11:33'),
(4, 6, 4, '2017-02-20 11:17:41'),
(5, 7, 1, '2017-02-23 11:34:33'),
(6, 7, 4, '2017-02-23 12:02:01'),
(7, 8, 6, '2017-02-28 22:10:32'),
(8, 13, 6, '2017-02-28 22:10:46'),
(9, 9, 6, '2017-02-28 22:10:55'),
(10, 10, 6, '2017-02-28 22:11:07'),
(11, 11, 6, '2017-02-28 22:11:19'),
(12, 12, 6, '2017-02-28 22:11:30'),
(13, 12, 6, '2017-02-28 22:32:49'),
(14, 13, 6, '2017-02-28 22:34:38'),
(15, 8, 7, '2017-02-28 22:39:31'),
(16, 9, 8, '2017-02-28 22:46:54'),
(17, 8, 9, '2017-03-01 18:30:48'),
(18, 8, 11, '2017-03-01 18:32:29'),
(19, 8, 12, '2017-03-01 18:36:41'),
(20, 12, 13, '2017-03-08 22:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `id` int(6) NOT NULL,
  `professor_username` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `professor_password` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `professor_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `professor_loginatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `professor_active` int(2) NOT NULL,
  `professor_name` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `professor_email` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `professor_ip` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `professor_img` varchar(88) COLLATE utf8_persian_ci NOT NULL,
  `professor_tell` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `professor_adres` varchar(333) COLLATE utf8_persian_ci NOT NULL,
  `professor_emailverfy` varchar(8) COLLATE utf8_persian_ci NOT NULL,
  `professor_emailactive` int(2) NOT NULL,
  `professor_tellverfy` varchar(8) COLLATE utf8_persian_ci NOT NULL,
  `professor_tellactive` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`id`, `professor_username`, `professor_password`, `professor_createdatdate`, `professor_loginatdate`, `professor_active`, `professor_name`, `professor_email`, `professor_ip`, `professor_img`, `professor_tell`, `professor_adres`, `professor_emailverfy`, `professor_emailactive`, `professor_tellverfy`, `professor_tellactive`) VALUES
(3, 'yyyyop', 'eyJpdiI6InlzY0JcL1pNQUdMa1F3Q3BKSFFkYVpnPT0iLCJ2YWx1ZSI6IitNQ1g4aDBzaXpqUHFUczNsRDl5bHc9PSIsIm1hYyI6IjJiMDJhNmI1ODUwMzlmNzJiZmFhNzFiMTE1NDVmNmVhZWQ2MzNiZGQwMTQwNzI4NjM3YWM1ZTliNmQwNzA2ZDYifQ==', '2017-02-19 13:03:48', '', 1, 'نننننننننن', 'mustafa1390@gmail.com', '', '1487500280Iran-Europe3.jpg', '77777868', '	  	  	    عغغعغ فغ غعع غعغع \r\n  \r\n  \r\n', '', 0, '', 0),
(5, 'hadian', 'eyJpdiI6Im9ZVkdZNXVUQTliTWlPTkdIc0hlMUE9PSIsInZhbHVlIjoibGpmOERPcU9Eb0ExekJyUTA5blhXdz09IiwibWFjIjoiMzk4NWVhZTcxZjk1MmQwZGM0ZDhmOTAwYzM4MmQyMTE4YmE2Y2U4ZmE3MzY5ZWE5NTk5MjY3YTMxZDYwNTg3ZCJ9', '2017-02-19 14:12:53', '', 0, '', '', '', '', '', '', '', 0, '', 0),
(6, 'mostafa', 'eyJpdiI6IjIrR1VBRHU4MmJwbWFyckhjY2s2UXc9PSIsInZhbHVlIjoiYVZGWmtOcFhEcHRiOUV0eHRmcFFadz09IiwibWFjIjoiZjlhNjE3ZTI1NGE1MGU1MmQxNTdjNWRjY2U5YjkwYTg0Y2Q5NzUwNmJiYjhkNGFkYjk1ODFjNDhlMWZmNzc3OCJ9', '2017-02-20 15:29:00', '2017-03-07 11:17:34', 1, 'استاد مدنی', 'ellham1390@gmail.com', '217.131.237.72', '1487600281Iran-Europe3.jpg', '346543646', '	  	  	  	  	  	    \r\n  استان اصفهان\r\n  \r\n  \r\n  \r\n  \r\n', '95614', 1, '69089', 1),
(7, 'english', 'eyJpdiI6IkNxY2Q1OEpHTUU1aWV3UHAwSmZLNHc9PSIsInZhbHVlIjoiQndMd2Iwb0hja21vQzluM2hyWjJWRzBnZWZjSm16ZnpQWTFCVWpDOU51OD0iLCJtYWMiOiJmN2UyYzY4ODc1MjM0NTNjZWMzNjU1OTAyNjk3NGEwZjY2NDQ5ZWRkNGExNDk1MmQ2Mzc1ZWJlNTQxNDI3MWE2In0=', '2017-03-07 11:18:13', '2017-03-19 02:20:53', 1, 'نسرین محمدی', 'co.mashhad@gmail.com', '176.40.152.57', '', '09120000000', 'تهران خیابان اونوری نرسیده به اینوری پلاک یک	    \r\n', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(4) NOT NULL,
  `qst_pors` varchar(666) COLLATE utf8_persian_ci NOT NULL,
  `qst_pas` varchar(1999) COLLATE utf8_persian_ci NOT NULL,
  `qst_ind` int(2) NOT NULL,
  `qst_lng` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `qst_pors`, `qst_pas`, `qst_ind`, `qst_lng`) VALUES
(1, '	  سوال اول  این است؟\r\n', '<p>\r\n	پاسخ اول</p>\r\n', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sayfa1`
--

CREATE TABLE `sayfa1` (
  `id` int(6) NOT NULL,
  `countrycode` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `country` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `citycode` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `city` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `airportcode` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `airport` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `totalportinthecity` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `rankforturkey` varchar(33) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sefaresh`
--

CREATE TABLE `sefaresh` (
  `id` int(8) NOT NULL,
  `sef_link` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `sef_num` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `sef_color` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `sef_size` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `sef_des` varchar(444) COLLATE utf8_persian_ci NOT NULL,
  `sef_finical` int(12) NOT NULL,
  `sef_username` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `sef_password` varchar(555) COLLATE utf8_persian_ci NOT NULL,
  `sef_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sision`
--

CREATE TABLE `sision` (
  `id` int(4) NOT NULL,
  `sision_number` int(2) NOT NULL,
  `sision_clas` int(4) NOT NULL,
  `sision_term` int(8) NOT NULL,
  `sision_period` int(6) NOT NULL,
  `sision_level` int(4) NOT NULL,
  `sision_startdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `sision_hour` int(2) NOT NULL,
  `sision_min` int(2) NOT NULL,
  `sision_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `sision`
--

INSERT INTO `sision` (`id`, `sision_number`, `sision_clas`, `sision_term`, `sision_period`, `sision_level`, `sision_startdate`, `sision_hour`, `sision_min`, `sision_active`) VALUES
(15, 1, 9, 13, 37, 30, '2017-03-12', 7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(6) NOT NULL,
  `sli_img` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `sli_active` int(2) NOT NULL,
  `sli_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `sli_img`, `sli_active`, `sli_createdatdate`) VALUES
(7, '14983175631495957482gds5.jpg', 1, '2017-06-24 19:49:24'),
(8, '14983175811495957474gds4.jpg', 1, '2017-06-24 19:49:41'),
(9, '1498317593149592503768.jpg', 1, '2017-06-24 19:49:53'),
(12, '14983177491495957668gds6.jpg', 1, '2017-06-24 19:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `sort`
--

CREATE TABLE `sort` (
  `id` int(12) NOT NULL,
  `sort_seq` int(9) NOT NULL,
  `sort_comb` int(12) NOT NULL,
  `sort_price` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `sort_wbsid` int(12) NOT NULL,
  `sort_duritfly` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `sort_airline` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `sort_deptime` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `sort_artime` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `sort_indirect` int(2) NOT NULL,
  `sort_class` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `sort_show` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `sort`
--

INSERT INTO `sort` (`id`, `sort_seq`, `sort_comb`, `sort_price`, `sort_wbsid`, `sort_duritfly`, `sort_airline`, `sort_deptime`, `sort_artime`, `sort_indirect`, `sort_class`, `sort_show`) VALUES
(34642, 0, 0, '597.25', 472, '1420', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T17:40:00', 3, 'G', 1),
(34643, 0, 1, '597.25', 472, '1615', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T19:35:00', 3, 'G', 1),
(34644, 0, 2, '597.25', 472, '1845', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T22:05:00', 3, 'G', 1),
(34645, 0, 3, '597.25', 472, '2115', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T00:35:00', 3, 'G', 1),
(34646, 1, 0, '637.76', 472, '0750', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T11:10:00', 3, 'G', 1),
(34647, 2, 0, '705.10', 472, '1750', 'Atlasjet', '2018-01-23T06:00:00', '2018-01-23T23:20:00', 3, 'U', 1),
(34648, 3, 0, '727.78', 472, '0630', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T09:50:00', 3, 'G', 1),
(34649, 3, 1, '727.78', 472, '1015', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T13:35:00', 3, 'G', 1),
(34650, 4, 0, '833.65', 472, '1920', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T22:40:00', 4, 'G', 1),
(34651, 4, 1, '833.65', 472, '1920', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T22:40:00', 4, 'G', 1),
(34652, 4, 2, '833.65', 472, '1920', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T22:40:00', 4, 'G', 1),
(34653, 4, 3, '833.65', 472, '1920', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T22:40:00', 4, 'G', 1),
(34654, 4, 4, '833.65', 472, '1920', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T22:40:00', 4, 'G', 1),
(34655, 4, 5, '833.65', 472, '1920', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T22:40:00', 4, 'G', 1),
(34656, 4, 6, '833.65', 472, '1920', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T22:40:00', 4, 'G', 1),
(34657, 4, 7, '833.65', 472, '1920', 'Pegasus', '2018-01-23T03:50:00', '2018-01-23T22:40:00', 4, 'G', 1),
(34658, 4, 8, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34659, 4, 9, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34660, 4, 10, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34661, 4, 11, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34662, 4, 12, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34663, 4, 13, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34664, 4, 14, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34665, 4, 15, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34666, 4, 16, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34667, 4, 17, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34668, 4, 18, '833.65', 472, '3050', 'Pegasus', '2018-01-23T03:50:00', '2018-01-24T10:10:00', 4, 'G', 1),
(34669, 5, 0, '870.33', 472, '0740', 'Turkish', '2018-01-23T15:20:00', '2018-01-23T22:30:00', 3, 'V', 1),
(34670, 5, 1, '870.33', 472, '0805', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T12:40:00', 3, 'V', 1),
(34671, 5, 2, '870.33', 472, '0945', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T12:40:00', 3, 'V', 1),
(34672, 5, 3, '870.33', 472, '1005', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T15:55:00', 3, 'V', 1),
(34673, 5, 4, '870.33', 472, '1040', 'Turkish', '2018-01-23T15:20:00', '2018-01-24T01:30:00', 3, 'V', 1),
(34674, 5, 5, '870.33', 472, '1120', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T15:55:00', 3, 'V', 1),
(34675, 5, 6, '870.33', 472, '1210', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T18:00:00', 3, 'V', 1),
(34676, 5, 7, '870.33', 472, '1300', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T15:55:00', 3, 'V', 1),
(34677, 5, 8, '870.33', 472, '1325', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T18:00:00', 3, 'V', 1),
(34678, 5, 9, '870.33', 472, '1330', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T19:20:00', 3, 'V', 1),
(34679, 5, 10, '870.33', 472, '1400', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T19:50:00', 3, 'V', 1),
(34680, 5, 11, '870.33', 472, '1445', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T19:20:00', 3, 'V', 1),
(34681, 5, 12, '870.33', 472, '1505', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T18:00:00', 3, 'V', 1),
(34682, 5, 13, '870.33', 472, '1515', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T19:50:00', 3, 'V', 1),
(34683, 5, 14, '870.33', 472, '1625', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T19:20:00', 3, 'V', 1),
(34684, 5, 15, '870.33', 472, '1640', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T22:30:00', 3, 'V', 1),
(34685, 5, 16, '870.33', 472, '1655', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T19:50:00', 3, 'V', 1),
(34686, 5, 17, '870.33', 472, '1755', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T22:30:00', 3, 'V', 1),
(34687, 5, 18, '870.33', 472, '1755', 'Turkish', '2018-01-23T15:20:00', '2018-01-24T08:45:00', 3, 'V', 1),
(34688, 5, 19, '870.33', 472, '1805', 'Turkish', '2018-01-23T15:20:00', '2018-01-24T08:55:00', 3, 'V', 1),
(34689, 5, 20, '870.33', 472, '1905', 'Turkish', '2018-01-23T06:20:00', '2018-01-24T00:55:00', 3, 'V', 1),
(34690, 5, 21, '870.33', 472, '1935', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T22:30:00', 3, 'V', 1),
(34691, 5, 22, '870.33', 472, '1940', 'Turkish', '2018-01-23T06:20:00', '2018-01-24T01:30:00', 3, 'V', 1),
(34692, 5, 23, '870.33', 472, '2020', 'Turkish', '2018-01-23T05:05:00', '2018-01-24T00:55:00', 3, 'V', 1),
(34693, 5, 24, '870.33', 472, '2055', 'Turkish', '2018-01-23T05:05:00', '2018-01-24T01:30:00', 3, 'V', 1),
(34694, 5, 25, '870.33', 472, '2200', 'Turkish', '2018-01-23T03:25:00', '2018-01-24T00:55:00', 3, 'V', 1),
(34695, 5, 26, '870.33', 472, '2235', 'Turkish', '2018-01-23T03:25:00', '2018-01-24T01:30:00', 3, 'V', 1),
(34696, 6, 0, '983.67', 472, '0820', 'Turkish', '2018-01-23T15:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34697, 6, 1, '983.67', 472, '0840', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T13:15:00', 4, 'V', 1),
(34698, 6, 2, '983.67', 472, '1020', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T13:15:00', 4, 'V', 1),
(34699, 6, 3, '983.67', 472, '1020', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T13:15:00', 4, 'V', 1),
(34700, 6, 4, '983.67', 472, '1020', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T13:15:00', 4, 'V', 1),
(34701, 6, 5, '983.67', 472, '1130', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34702, 6, 6, '983.67', 472, '1245', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34703, 6, 7, '983.67', 472, '1245', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34704, 6, 8, '983.67', 472, '1245', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34705, 6, 9, '983.67', 472, '1245', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34706, 6, 10, '983.67', 472, '1245', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34707, 6, 11, '983.67', 472, '1245', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34708, 6, 12, '983.67', 472, '1245', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34709, 6, 13, '983.67', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34710, 6, 14, '983.67', 472, '1425', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34711, 6, 15, '983.67', 472, '1425', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34712, 6, 16, '983.67', 472, '1425', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34713, 6, 17, '983.67', 472, '1425', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34714, 6, 18, '983.67', 472, '1425', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34715, 6, 19, '983.67', 472, '1425', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34716, 6, 20, '983.67', 472, '1425', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34717, 6, 21, '983.67', 472, '1425', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34718, 6, 22, '983.67', 472, '1425', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T17:20:00', 4, 'V', 1),
(34719, 6, 23, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34720, 6, 24, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34721, 6, 25, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34722, 6, 26, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34723, 6, 27, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34724, 6, 28, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34725, 6, 29, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34726, 6, 30, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34727, 6, 31, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34728, 6, 32, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34729, 6, 33, '983.67', 472, '1515', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34730, 6, 34, '983.67', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34731, 6, 35, '983.67', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34732, 6, 36, '983.67', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34733, 6, 37, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34734, 6, 38, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34735, 6, 39, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34736, 6, 40, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34737, 6, 41, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34738, 6, 42, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34739, 6, 43, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34740, 6, 44, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34741, 6, 45, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34742, 6, 46, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34743, 6, 47, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34744, 6, 48, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34745, 6, 49, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34746, 6, 50, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34747, 6, 51, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34748, 6, 52, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34749, 6, 53, '983.67', 472, '1630', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T21:05:00', 4, 'V', 1),
(34750, 6, 54, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34751, 6, 55, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34752, 6, 56, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34753, 6, 57, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34754, 6, 58, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34755, 6, 59, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34756, 6, 60, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34757, 6, 61, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34758, 6, 62, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34759, 6, 63, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34760, 6, 64, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34761, 6, 65, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34762, 6, 66, '983.67', 472, '1720', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T23:10:00', 4, 'V', 1),
(34763, 7, 0, '1054.88', 472, '1045', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T18:00:00', 3, 'L', 1),
(34764, 7, 1, '1054.88', 472, '1205', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T19:20:00', 3, 'L', 1),
(34765, 7, 2, '1054.88', 472, '1235', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T19:50:00', 3, 'L', 1),
(34766, 7, 3, '1054.88', 472, '1515', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T22:30:00', 3, 'L', 1),
(34767, 7, 4, '1054.88', 472, '1740', 'Turkish', '2018-01-23T07:45:00', '2018-01-24T00:55:00', 3, 'L', 1),
(34768, 7, 5, '1054.88', 472, '1815', 'Turkish', '2018-01-23T07:45:00', '2018-01-24T01:30:00', 3, 'L', 1),
(34769, 8, 0, '1168.22', 472, '1005', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T17:20:00', 4, 'L', 1),
(34770, 8, 1, '1168.22', 472, '1005', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T17:20:00', 4, 'L', 1),
(34771, 8, 2, '1168.22', 472, '1005', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T17:20:00', 4, 'L', 1),
(34772, 8, 3, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34773, 8, 4, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34774, 8, 5, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34775, 8, 6, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34776, 8, 7, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34777, 8, 8, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34778, 8, 9, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34779, 8, 10, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34780, 8, 11, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34781, 8, 12, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34782, 8, 13, '1168.22', 472, '1350', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T21:05:00', 4, 'L', 1),
(34783, 8, 14, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34784, 8, 15, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34785, 8, 16, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34786, 8, 17, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34787, 8, 18, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34788, 8, 19, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34789, 8, 20, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34790, 8, 21, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34791, 8, 22, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34792, 8, 23, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34793, 8, 24, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34794, 8, 25, '1168.22', 472, '1555', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T23:10:00', 4, 'L', 1),
(34795, 9, 0, '5021.65', 472, '1440', 'Atlasjet', '2018-01-23T06:00:00', '2018-01-23T20:10:00', 3, 'Y', 1),
(34796, 10, 0, '5661.62', 472, '0710', 'Atlasjet', '2018-01-23T06:00:00', '2018-01-23T12:40:00', 3, 'Y', 1),
(34797, 10, 1, '5661.62', 472, '1025', 'Atlasjet', '2018-01-23T06:00:00', '2018-01-23T15:55:00', 3, 'Y', 1),
(34798, 10, 2, '5661.62', 472, '1230', 'Atlasjet', '2018-01-23T06:00:00', '2018-01-23T18:00:00', 3, 'Y', 1),
(34799, 10, 3, '5661.62', 472, '1350', 'Atlasjet', '2018-01-23T06:00:00', '2018-01-23T19:20:00', 3, 'Y', 1),
(34800, 10, 4, '5661.62', 472, '1420', 'Atlasjet', '2018-01-23T06:00:00', '2018-01-23T19:50:00', 3, 'Y', 1),
(34801, 11, 0, '5674.45', 472, '0740', 'Turkish', '2018-01-23T15:20:00', '2018-01-23T22:30:00', 3, 'Y', 1),
(34802, 11, 1, '5674.45', 472, '0805', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T12:40:00', 3, 'Y', 1),
(34803, 11, 2, '5674.45', 472, '0945', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T12:40:00', 3, 'Y', 1),
(34804, 11, 3, '5674.45', 472, '1005', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T15:55:00', 3, 'Y', 1),
(34805, 11, 4, '5674.45', 472, '1040', 'Turkish', '2018-01-23T15:20:00', '2018-01-24T01:30:00', 3, 'Y', 1),
(34806, 11, 5, '5674.45', 472, '1045', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T18:00:00', 3, 'Y', 1),
(34807, 11, 6, '5674.45', 472, '1120', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T15:55:00', 3, 'Y', 1),
(34808, 11, 7, '5674.45', 472, '1205', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T19:20:00', 3, 'Y', 1),
(34809, 11, 8, '5674.45', 472, '1210', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T18:00:00', 3, 'Y', 1),
(34810, 11, 9, '5674.45', 472, '1235', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T19:50:00', 3, 'Y', 1),
(34811, 11, 10, '5674.45', 472, '1300', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T15:55:00', 3, 'Y', 1),
(34812, 11, 11, '5674.45', 472, '1325', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T18:00:00', 3, 'Y', 1),
(34813, 11, 12, '5674.45', 472, '1330', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T19:20:00', 3, 'Y', 1),
(34814, 11, 13, '5674.45', 472, '1400', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T19:50:00', 3, 'Y', 1),
(34815, 11, 14, '5674.45', 472, '1445', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T19:20:00', 3, 'Y', 1),
(34816, 11, 15, '5674.45', 472, '1505', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T18:00:00', 3, 'Y', 1),
(34817, 11, 16, '5674.45', 472, '1515', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T19:50:00', 3, 'Y', 1),
(34818, 11, 17, '5674.45', 472, '1515', 'Turkish', '2018-01-23T07:45:00', '2018-01-23T22:30:00', 3, 'Y', 1),
(34819, 11, 18, '5674.45', 472, '1625', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T19:20:00', 3, 'Y', 1),
(34820, 11, 19, '5674.45', 472, '1640', 'Turkish', '2018-01-23T06:20:00', '2018-01-23T22:30:00', 3, 'Y', 1),
(34821, 11, 20, '5674.45', 472, '1655', 'Turkish', '2018-01-23T03:25:00', '2018-01-23T19:50:00', 3, 'Y', 1),
(34822, 11, 21, '5674.45', 472, '1740', 'Turkish', '2018-01-23T07:45:00', '2018-01-24T00:55:00', 3, 'Y', 1),
(34823, 11, 22, '5674.45', 472, '1755', 'Turkish', '2018-01-23T05:05:00', '2018-01-23T22:30:00', 3, 'Y', 1),
(34824, 11, 23, '5674.45', 472, '1815', 'Turkish', '2018-01-23T07:45:00', '2018-01-24T01:30:00', 3, 'Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sortv`
--

CREATE TABLE `sortv` (
  `id` int(8) NOT NULL,
  `sortv_wbsid` int(11) NOT NULL,
  `sortv_airline` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `sortv_price` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `sortv_class` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `sortv_indirect` int(2) NOT NULL,
  `sortv_indirectflg` int(2) NOT NULL,
  `sortv_airlineflg` int(2) NOT NULL,
  `sortv_clasflg` int(2) NOT NULL,
  `sortv_priceflg` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `sortv`
--

INSERT INTO `sortv` (`id`, `sortv_wbsid`, `sortv_airline`, `sortv_price`, `sortv_class`, `sortv_indirect`, `sortv_indirectflg`, `sortv_airlineflg`, `sortv_clasflg`, `sortv_priceflg`) VALUES
(712, 472, 'Pegasus', '597.25', 'G', 3, 1, 1, 1, 1),
(713, 472, 'Pegasus', '637.76', 'G', 3, 0, 0, 0, 1),
(714, 472, 'Atlasjet', '705.10', 'U', 3, 0, 1, 1, 1),
(715, 472, 'Pegasus', '727.78', 'G', 3, 0, 0, 0, 1),
(716, 472, 'Pegasus', '833.65', 'G', 4, 1, 0, 0, 1),
(717, 472, 'Turkish', '870.33', 'V', 3, 0, 1, 1, 1),
(718, 472, 'Turkish', '983.67', 'V', 4, 0, 0, 0, 1),
(719, 472, 'Turkish', '1054.88', 'L', 3, 0, 0, 1, 1),
(720, 472, 'Turkish', '1168.22', 'L', 4, 0, 0, 0, 1),
(721, 472, 'Atlasjet', '5021.65', 'Y', 3, 0, 0, 1, 1),
(722, 472, 'Atlasjet', '5661.62', 'Y', 3, 0, 0, 0, 1),
(723, 472, 'Turkish', '5674.45', 'Y', 3, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` int(12) NOT NULL,
  `static_ip` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `static_url` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `static_name` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `static_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `static_ip`, `static_url`, `static_name`, `static_createdatdate`) VALUES
(1, '', '', '', '2018-01-11 13:18:23'),
(2, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-11 13:25:49'),
(3, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-11 13:25:50'),
(4, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-11 13:27:16'),
(5, '::1', 'http://localhost/flight', '', '2018-01-11 13:27:28'),
(6, '::1', 'http://localhost/flight', 'Home', '2018-01-11 13:27:39'),
(7, '::1', 'http://localhost/flight', 'Home', '2018-01-11 13:37:23'),
(8, '::1', 'http://localhost/flight', 'Home', '2018-01-11 14:09:08'),
(9, '::1', 'http://localhost/flight', 'Home', '2018-01-11 16:06:05'),
(10, '::1', 'http://localhost/flight', 'Home', '2018-01-11 16:19:47'),
(11, '::1', 'http://localhost/flight', 'Home', '2018-01-11 16:35:21'),
(12, '::1', 'http://localhost/flight', 'Home', '2018-01-13 13:30:24'),
(13, '::1', 'http://localhost/flight/notfound', 'Home', '2018-01-13 13:30:33'),
(14, '::1', 'http://localhost/flight', 'Home', '2018-01-13 13:31:18'),
(15, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:19:21'),
(16, '::1', 'http://localhost/flight/notfound', 'Home', '2018-01-13 19:19:28'),
(17, '::1', 'http://localhost/flight/notfound', 'Home', '2018-01-13 19:19:35'),
(18, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:20:21'),
(19, '::1', 'http://localhost/flight/notfound', 'Home', '2018-01-13 19:20:27'),
(20, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:24:37'),
(21, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:26:15'),
(22, '::1', 'http://localhost/flight/notfound', 'Home', '2018-01-13 19:26:24'),
(23, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:29:54'),
(24, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:31:09'),
(25, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:32:32'),
(26, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:32:49'),
(27, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:34:00'),
(28, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:34:07'),
(29, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:34:09'),
(30, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:34:34'),
(31, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:34:36'),
(32, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:34:38'),
(33, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:35:38'),
(34, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:35:41'),
(35, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:35:42'),
(36, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:39'),
(37, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:43'),
(38, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:45'),
(39, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:46'),
(40, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:47'),
(41, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:48'),
(42, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:50'),
(43, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:51'),
(44, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:52'),
(45, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:54'),
(46, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:36:55'),
(47, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:37:09'),
(48, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:38:49'),
(49, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:38:50'),
(50, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:39:55'),
(51, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:39:57'),
(52, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:39:59'),
(53, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:40:00'),
(54, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:40:01'),
(55, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:40:02'),
(56, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:40:04'),
(57, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:40:56'),
(58, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:40:57'),
(59, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:40:59'),
(60, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:00'),
(61, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:01'),
(62, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:02'),
(63, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:03'),
(64, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:04'),
(65, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:05'),
(66, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:06'),
(67, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:07'),
(68, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:36'),
(69, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:41:38'),
(70, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:42:51'),
(71, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:42:53'),
(72, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:42:54'),
(73, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:42:55'),
(74, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:43:31'),
(75, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:43:33'),
(76, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:43:34'),
(77, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:43:35'),
(78, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:43:37'),
(79, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:44:47'),
(80, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:44:49'),
(81, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:44:50'),
(82, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:44:51'),
(83, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:44:52'),
(84, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:44:53'),
(85, '::1', 'http://localhost/flight', 'Home', '2018-01-13 19:54:49'),
(86, '::1', 'http://localhost/flight', 'Home', '2018-01-13 20:36:22'),
(87, '::1', 'http://localhost/flight', 'Home', '2018-01-13 20:38:20'),
(88, '::1', 'http://localhost/flight', 'Home', '2018-01-13 20:38:32'),
(89, '::1', 'http://localhost/flight', 'Home', '2018-01-13 20:48:24'),
(90, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 20:48:33'),
(91, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-13 20:48:38'),
(92, '::1', 'http://localhost/flight', '', '2018-01-13 20:48:46'),
(93, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 20:48:51'),
(94, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 20:54:05'),
(95, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 20:54:35'),
(96, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 20:57:15'),
(97, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 20:57:35'),
(98, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 20:57:47'),
(99, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 20:57:58'),
(100, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:02:18'),
(101, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:03:00'),
(102, '::1', 'http://localhost/flight', '', '2018-01-13 21:04:37'),
(103, '::1', 'http://localhost/flight', 'Home', '2018-01-13 21:05:52'),
(104, '::1', 'http://localhost/flight', '', '2018-01-13 21:08:58'),
(105, '::1', 'http://localhost/flight', 'Ба саҳифаи аввал', '2018-01-13 21:09:01'),
(106, '::1', 'http://localhost/flight', '', '2018-01-13 21:09:06'),
(107, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-13 21:09:10'),
(108, '::1', 'http://localhost/flight', 'Home', '2018-01-13 21:09:13'),
(109, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:09:16'),
(110, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:15:32'),
(111, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:15:38'),
(112, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:16:56'),
(113, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:18:14'),
(114, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:21:55'),
(115, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:25:43'),
(116, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:26:57'),
(117, '::1', 'http://localhost/flight/page/2', 'صفحه اصلی', '2018-01-13 21:27:59'),
(118, '::1', 'http://localhost/flight/page/4', 'صفحه اصلی', '2018-01-13 21:28:04'),
(119, '::1', 'http://localhost/flight/page/2', 'صفحه اصلی', '2018-01-13 21:33:45'),
(120, '::1', 'http://localhost/flight/page/2', 'صفحه اصلی', '2018-01-13 21:34:08'),
(121, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 21:58:07'),
(122, '::1', 'http://localhost/flight', 'Home', '2018-01-13 21:58:12'),
(123, '::1', 'http://localhost/flight', '', '2018-01-13 22:00:32'),
(124, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:00:36'),
(125, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:00:56'),
(126, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:03:20'),
(127, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:03:21'),
(128, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:03:22'),
(129, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:04:16'),
(130, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:04:19'),
(131, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:04:22'),
(132, '::1', 'http://localhost/flight', 'Ба саҳифаи аввал', '2018-01-13 22:06:12'),
(133, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-13 22:06:15'),
(134, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-13 22:07:07'),
(135, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:07:15'),
(136, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:07:21'),
(137, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-13 22:07:33'),
(138, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-13 22:08:29'),
(139, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:08:33'),
(140, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:09:04'),
(141, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:09:51'),
(142, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:09:53'),
(143, '::1', 'http://localhost/flight', '', '2018-01-13 22:10:37'),
(144, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 22:12:20'),
(145, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:12:49'),
(146, '::1', 'http://localhost/flight', 'Home', '2018-01-13 22:13:11'),
(147, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 22:13:16'),
(148, '::1', 'http://localhost/flight', '', '2018-01-13 22:13:19'),
(149, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-13 22:13:23'),
(150, '::1', 'http://localhost/flight', 'Home', '2018-01-14 00:49:16'),
(151, '::1', 'http://localhost/flight', 'Ба саҳифаи аввал', '2018-01-14 00:49:31'),
(152, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 00:49:34'),
(153, '::1', 'http://localhost/flight', 'Home', '2018-01-14 00:49:37'),
(154, '::1', 'http://localhost/flight', 'Home', '2018-01-14 00:50:28'),
(155, '::1', 'http://localhost/flight', 'Home', '2018-01-14 00:51:38'),
(156, '::1', 'http://localhost/flight/page/3', 'Home', '2018-01-14 00:52:19'),
(157, '::1', 'http://localhost/flight', 'Home', '2018-01-14 00:54:24'),
(158, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-14 00:54:37'),
(159, '::1', 'http://localhost/flight', 'Home', '2018-01-14 00:54:43'),
(160, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 00:54:46'),
(161, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 00:55:13'),
(162, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:04:37'),
(163, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:05:09'),
(164, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:06:48'),
(165, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:07:44'),
(166, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:07:52'),
(167, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:07:54'),
(168, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:08:22'),
(169, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:09:17'),
(170, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:09:22'),
(171, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:09:44'),
(172, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:10:15'),
(173, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:10:23'),
(174, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:10:48'),
(175, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:10:53'),
(176, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 01:11:08'),
(177, '::1', 'http://localhost/flight', 'Home', '2018-01-14 15:39:33'),
(178, '::1', 'http://localhost/flight', 'Home', '2018-01-14 15:39:50'),
(179, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 15:39:54'),
(180, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 15:44:53'),
(181, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 15:44:55'),
(182, '::1', 'http://localhost/flight', 'Home', '2018-01-14 15:44:58'),
(183, '::1', 'http://localhost/flight', 'Home', '2018-01-14 15:45:01'),
(184, '::1', 'http://localhost/flight', 'Home', '2018-01-14 15:45:02'),
(185, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 15:45:05'),
(186, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 15:47:18'),
(187, '::1', 'http://localhost/flight', 'Ба саҳифаи аввал', '2018-01-14 15:47:21'),
(188, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-14 15:47:24'),
(189, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-14 15:47:27'),
(190, '::1', 'http://localhost/flight', 'Home', '2018-01-14 15:47:32'),
(191, '::1', 'http://localhost/flight', 'Home', '2018-01-14 15:48:07'),
(192, '::1', 'http://localhost/flight', '', '2018-01-14 15:48:10'),
(193, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-14 15:48:13'),
(194, '::1', 'http://localhost/flight', 'Ana sayfa', '2018-01-14 15:48:57'),
(195, '::1', 'http://localhost/flight', 'Home', '2018-01-14 15:49:02'),
(196, '::1', 'http://localhost/flight', 'Home', '2018-01-14 18:00:02'),
(197, '::1', 'http://localhost/flight', 'Home', '2018-01-14 18:00:06'),
(198, '::1', 'http://localhost/flight', 'Ба саҳифаи аввал', '2018-01-14 18:01:57'),
(199, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 18:02:03'),
(200, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 18:09:40'),
(201, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 18:25:40'),
(202, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-14 18:34:12'),
(203, '::1', 'http://localhost/flight/trackingpnr', 'صفحه اصلی', '2018-01-14 18:34:15'),
(204, '::1', 'http://localhost/flight/trackingpnr', 'صفحه اصلی', '2018-01-14 18:35:42'),
(205, '::1', 'http://localhost/flight/trackingpnr', 'صفحه اصلی', '2018-01-14 18:39:59'),
(206, '::1', 'http://localhost/flight/trackingpnr', 'صفحه اصلی', '2018-01-14 18:45:05'),
(207, '::1', 'http://localhost/flight/trackingpnr', 'صفحه اصلی', '2018-01-14 18:46:54'),
(208, '::1', 'http://localhost/flight/trackingpnr', 'صفحه اصلی', '2018-01-14 18:48:26'),
(209, '::1', 'http://localhost/flight/trackingpnr', 'صفحه اصلی', '2018-01-14 18:49:04'),
(210, '::1', 'http://localhost/flight/trackingpnr', 'صفحه اصلی', '2018-01-14 18:50:57'),
(211, '::1', 'http://localhost/flight/trackingpnr', 'صفحه اصلی', '2018-01-14 18:53:58'),
(212, '::1', 'http://localhost/flight', 'Home', '2018-01-15 12:54:52'),
(213, '::1', 'http://localhost/flight/bysort', 'Home', '2018-01-15 13:32:58'),
(214, '::1', 'http://localhost/flight/bysort', 'Home', '2018-01-15 13:35:33'),
(215, '::1', 'http://localhost/flight/bysort', 'Home', '2018-01-15 13:37:47'),
(216, '::1', 'http://localhost/flight/bysort', 'Home', '2018-01-15 13:41:45'),
(217, '::1', 'http://localhost/flight/bysort', 'Home', '2018-01-15 13:42:15'),
(218, '::1', 'http://localhost/flight/bysort', 'Home', '2018-01-15 13:42:34'),
(219, '::1', 'http://localhost/flight', 'Home', '2018-01-15 17:42:28'),
(220, '::1', 'http://localhost/flight/bysort', 'Home', '2018-01-15 17:42:35'),
(221, '::1', 'http://localhost/flight', 'Home', '2018-01-15 23:25:15'),
(222, '::1', 'http://localhost/flight', 'Home', '2018-01-15 23:25:20'),
(223, '::1', 'http://localhost/flight', 'Home', '2018-01-19 13:07:17'),
(224, '::1', 'http://localhost/flight', 'Home', '2018-01-19 13:07:17'),
(225, '::1', 'http://localhost/flight', 'Home', '2018-01-19 16:44:03'),
(226, '::1', 'http://localhost/flight', 'Home', '2018-01-19 18:47:49'),
(227, '::1', 'http://localhost/flight', 'Home', '2018-01-19 20:12:39'),
(228, '::1', 'http://localhost/flight', 'Home', '2018-01-19 20:12:47'),
(229, '::1', 'http://localhost/flight', 'Home', '2018-01-19 20:12:51'),
(230, '::1', 'http://localhost/flight', 'Home', '2018-01-19 20:12:53'),
(231, '::1', 'http://localhost/flight', 'Home', '2018-01-19 20:12:56'),
(232, '::1', 'http://localhost/flight', 'Home', '2018-01-19 20:12:59'),
(233, '::1', 'http://localhost/flight', 'Home', '2018-01-19 20:13:02'),
(234, '::1', 'http://localhost/flight', 'Home', '2018-01-19 20:13:05'),
(235, '::1', 'http://localhost/flight', 'Home', '2018-01-20 00:13:40'),
(236, '::1', 'http://localhost/flight', 'Home', '2018-01-20 15:42:53'),
(237, '::1', 'http://localhost/flight', 'Home', '2018-01-20 15:43:01'),
(238, '::1', 'http://localhost/flight', 'Home', '2018-01-20 16:51:08'),
(239, '::1', 'http://localhost/flight', 'Home', '2018-01-20 16:51:28'),
(240, '::1', 'http://localhost/flight', 'Home', '2018-01-20 16:58:03'),
(241, '::1', 'http://localhost/flight', 'Home', '2018-01-20 17:02:57'),
(242, '::1', 'http://localhost/flight', 'Home', '2018-01-20 17:02:57'),
(243, '::1', 'http://localhost/flight', 'Home', '2018-01-20 17:23:03'),
(244, '::1', 'http://localhost/flight', 'Home', '2018-01-20 17:23:08'),
(245, '::1', 'http://localhost/flight', 'Home', '2018-01-20 17:31:59'),
(246, '::1', 'http://localhost/flight', 'Home', '2018-01-20 17:32:04'),
(247, '::1', 'http://localhost/flight', 'Home', '2018-01-20 23:58:04'),
(248, '::1', 'http://localhost/flight', 'Home', '2018-01-21 00:52:54'),
(249, '::1', 'http://localhost/flight', 'Home', '2018-01-21 00:52:55'),
(250, '::1', 'http://localhost/flight', 'Home', '2018-01-21 00:52:58'),
(251, '::1', 'http://localhost/flight', 'Home', '2018-01-21 02:19:56'),
(252, '::1', 'http://localhost/flight', 'Home', '2018-01-21 02:20:01'),
(253, '::1', 'http://localhost/flight', 'Home', '2018-01-21 02:20:05'),
(254, '::1', 'http://localhost/flight', 'Home', '2018-01-21 02:47:37'),
(255, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:37:11'),
(256, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:40:57'),
(257, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:48:51'),
(258, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:48:54'),
(259, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:48:56'),
(260, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:53:59'),
(261, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:54:02'),
(262, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:54:13'),
(263, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:54:15'),
(264, '::1', 'http://localhost/flight', 'Home', '2018-01-21 04:54:33'),
(265, '::1', 'http://localhost/flight', 'Home', '2018-01-21 18:36:37'),
(266, '::1', 'http://localhost/flight', 'Home', '2018-01-21 18:36:41'),
(267, '::1', 'http://localhost/flight', 'Home', '2018-01-21 23:15:55'),
(268, '::1', 'http://localhost/flight', 'Home', '2018-01-23 14:17:15'),
(269, '::1', 'http://localhost/flight', 'Home', '2018-01-23 18:22:30'),
(270, '::1', 'http://localhost/flight', 'Home', '2018-01-23 18:22:34'),
(271, '::1', 'http://localhost/flight', 'Home', '2018-01-23 20:15:08'),
(272, '::1', 'http://localhost/flight', 'Home', '2018-01-23 20:15:11'),
(273, '::1', 'http://localhost/flight', 'Home', '2018-01-24 01:04:54'),
(274, '::1', 'http://localhost/flight', 'Home', '2018-01-24 09:23:34'),
(275, '::1', 'http://localhost/flight', 'Home', '2018-01-24 11:29:43'),
(276, '::1', 'http://localhost/flight', 'Home', '2018-01-24 11:29:48'),
(277, '::1', 'http://localhost/flight', 'Home', '2018-01-24 14:33:42'),
(278, '::1', 'http://localhost/flight', 'Home', '2018-01-24 14:33:48'),
(279, '::1', 'http://localhost/flight', 'Home', '2018-01-24 23:13:45'),
(280, '::1', 'http://localhost/flight', 'Home', '2018-01-24 23:13:51'),
(281, '::1', 'http://localhost/flight', 'Home', '2018-01-25 00:19:32'),
(282, '::1', 'http://localhost/flight', 'Home', '2018-01-25 00:19:36'),
(283, '::1', 'http://localhost/flight', 'Home', '2018-01-25 14:25:01'),
(284, '::1', 'http://localhost/flight', 'Home', '2018-01-25 14:25:06'),
(285, '::1', 'http://localhost/flight', 'Home', '2018-01-26 00:03:57'),
(286, '::1', 'http://localhost/flight', 'Home', '2018-01-26 00:06:10'),
(287, '::1', 'http://localhost/flight', 'Home', '2018-01-26 00:06:14'),
(288, '::1', 'http://localhost/flight', 'Home', '2018-01-26 02:47:19'),
(289, '::1', 'http://localhost/flight', 'صفحه اصلی', '2018-01-26 02:47:23'),
(290, '127.0.0.1', 'http://localhost/flight', 'Home', '2018-01-27 12:01:53'),
(291, '::1', 'http://localhost/flight', 'Home', '2018-01-27 18:06:11'),
(292, '::1', 'http://localhost/flight', 'Home', '2018-01-28 02:05:47'),
(293, '::1', 'http://localhost/flight', 'Home', '2018-01-28 14:09:11'),
(294, '::1', 'http://localhost/flight', 'Home', '2018-01-28 18:36:44'),
(295, '::1', 'http://localhost/flight', 'Home', '2018-01-28 23:37:47'),
(296, '::1', 'http://localhost/flight/index', 'صفحه اصلی', '2018-01-28 23:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(6) NOT NULL,
  `student_name` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `student_username` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `student_password` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `student_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `student_loginatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `student_email` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `student_nsh` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `student_ncodmel` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `student_tell` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `student_img` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `student_adres` varchar(399) COLLATE utf8_persian_ci NOT NULL,
  `student_ip` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `student_active` int(2) NOT NULL,
  `student_numberstudent` int(8) NOT NULL,
  `student_emailverfy` varchar(8) COLLATE utf8_persian_ci NOT NULL,
  `student_emailactive` int(2) NOT NULL,
  `student_tellverfy` varchar(8) COLLATE utf8_persian_ci NOT NULL,
  `student_tellactive` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `student_username`, `student_password`, `student_createdatdate`, `student_loginatdate`, `student_email`, `student_nsh`, `student_ncodmel`, `student_tell`, `student_img`, `student_adres`, `student_ip`, `student_active`, `student_numberstudent`, `student_emailverfy`, `student_emailactive`, `student_tellverfy`, `student_tellactive`) VALUES
(3, '', 'daneshjoo', 'eyJpdiI6IjhGYmtDSGdzMkVKeG0xMGNsWXZrMkE9PSIsInZhbHVlIjoiTnpCb0JxV2FpTldjNmpIc1wvaGR2OEE9PSIsIm1hYyI6ImY4ZGE2NDc3NThjMzI3OTBkODQ0YjU1ZTY2MWZjMmJhYjdlNzJjMGIzZTBlODJhYWQyNjUwZTRjYWZiODA4NjUifQ==', '2017-02-15 12:51:29', '', '', '', '', '', '', '', '', 0, 16369629, '', 0, '', 0),
(5, 'gfhfhfh', 'student4', 'eyJpdiI6IkxqR3dkZWVrQlwvaGJ6TWJOUXpoc3JRPT0iLCJ2YWx1ZSI6ImFSNFwvbkt6N2trdllPcEVNaW1KcUFnPT0iLCJtYWMiOiIwNzI5YTA3MmM0MTZkZTg4NTcxMjljYzM5NzI4MGRmY2ExMjMyYWUyZjRhMWEyNjUzN2FjNzQzMTIzOWVmZmRiIn0=', '2017-02-19 18:28:40', '2017-02-25 19:36:18', 'mustafa1390@gmail.com', '668', '7777777777', '86865856956', '1487516869Iran-Europe3.jpg', '	  	  	    \r\n  gjhgjgh fgj fguj\r\n  \r\n', '::1', 1, 30181885, '', 0, '', 0),
(6, 'فاطمه وکیلی y', 'student', 'eyJpdiI6IkEzdStRNU12WnVzNVwvZ2FzSXQ4d3l3PT0iLCJ2YWx1ZSI6Iks2SEtUYU9EUVpqZnBXeldxdDNzOVE9PSIsIm1hYyI6IjVlMzdmYTA4NjI2OTI5OWUyMTM3MDU2Njg2NmFkZjlkYmU5YmJmMDViZWRkNGE5MmJkMTAyZjcyMzliZWUwNjkifQ==', '2017-02-22 12:56:06', '2017-03-14 01:34:47', 'mustafa1390@gmail.com', '55', '4444444444', '09384762155', '148944288901176256.jpg', '	  	  	  	  	  	  	  	   استان اصفهان u\r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n', '37.255.97.240', 1, 52612305, '23313', 1, '38046', 1),
(7, '', 'mahmoud', 'eyJpdiI6IlFneEdiWHlxd1pFMERIcWxpSjZEV3c9PSIsInZhbHVlIjoiT09CbjY3aWhUMVpxM21QaGhZc3BXQT09IiwibWFjIjoiZGRmYTQ4YjRhMzViZDcxNGM2YWViM2I1NTQ5NDg3ZmE3MDU4MDllYmRhNTM2MGFjZWNkNTMwMTQzNjhkYWM4NSJ9', '2017-02-28 22:16:05', '', '', '', '', '', '', '', '', 0, 79777375, '', 0, '', 0),
(8, 'علی اصغر قوچانی', 'aliasghar', 'eyJpdiI6IlwvQU9MQ0w3ZitaTnhIdnBTNFA5WmtRPT0iLCJ2YWx1ZSI6IjVQWVBmWXp2d0NzajZzS3dUXC85Q0xBPT0iLCJtYWMiOiI5MzMyNDIyNjg3MzA5NDZlNzlhNDNkYzdlYjA4NDQ4YTQ2ZmE4MTM4ZTJkZTA5MzhkYTZjZWEzMzc2Yzc1OGJkIn0=', '2017-02-28 22:22:48', '2017-03-12 22:50:35', 'co.mashhad@gmail.com', '1439', '1111111111', '09388002972', '1488825576benyamin.jpg', '	  	  	  	    تهران خیابون اونوری ! نرسیده به اینوری!\r\n  \r\n  \r\n  \r\n', '176.234.60.122', 1, 71118921, '93146', 1, '41948', 1),
(9, 'محمود پیش آهنگ', 'amirmahmodi55', 'eyJpdiI6IjBPclhJWUM3eFI5UW9uVk56Mk05UkE9PSIsInZhbHVlIjoiQ1wvenExZzJQSzZVZlAzcGpOZndtZlE9PSIsIm1hYyI6IjJlOTlhMDdhZDVjYmIwZjVhYWQ0ZDVjNjYyM2Q4OGVhZDNjODhlYzZmODAxNzhhNWMzMzgzY2QwMWFiZGU0NzcifQ==', '2017-03-06 21:46:37', '2017-03-07 11:16:09', 'amirmahmodi55@gmail.com', '124', '1111111111', '09149118818', '', 'آدرس خیابان کوچه محله پلاک طبقه واحد', '217.131.237.72', 1, 73888583, '', 0, '', 0),
(10, 'مصطفی کریمی', 'mkarimikol', 'eyJpdiI6Ilo2Zk4yUHZNZDNTN2xnT2x0a0hTZVE9PSIsInZhbHVlIjoiVmpjZFcraXIxdEd4ZEhCcWtSUkd1dz09IiwibWFjIjoiMzZhYWE4ODE4YTg3OGIzYzAxNDU4MWViNDUwODRmN2JhZjg5YThkZDY3ZDFkNTk0ODA2MjM1ZjUwZDg3NDRmMyJ9', '2017-03-06 21:48:53', '2017-03-07 11:15:43', 'mkarimikol@gmail.com', '124', '1111111111', '09128194192', '', ' آدرس:آدرس خیابان کوچه محله پلاک طبقه واحد\r\n', '217.131.237.72', 1, 80945204, '', 0, '', 0),
(11, 'فرانک شفیعی', 'faranakshafiee', 'eyJpdiI6IkU1M1JlZW5QTkVzM2taalZDVm1rXC9RPT0iLCJ2YWx1ZSI6InR2XC9uN2FURzNGS0ZJZ2hhWXVaZEhBPT0iLCJtYWMiOiI4YzA2MjBkNjllNmJlNzRhYmM3NTRlMjkzOTJhMWE4MDRhZjExNTZlMmEwZjBkNjgyNzU4Nzg2ZjhkZDNlNzU3In0=', '2017-03-06 21:50:33', '2017-03-07 11:15:16', 'faranakshafiee@gmail.com', '124', '1111111111', '09183733349', '', 'آدرس خیابان کوچه محله پلاک طبقه واحد', '217.131.237.72', 1, 28847483, '', 0, '', 0),
(12, 'عاطفه دهنوعلیان', 'adehnoalian', 'eyJpdiI6Ik5EUHdCT0FMYlJUbDFrU0I3RWhCZUE9PSIsInZhbHVlIjoibDBEdW5IalRrVHp6UnRXYkdhSnlVUT09IiwibWFjIjoiZjgwZTUzNmY0YTkwZjVlZmY3ODNiYzlkZjkzOGYxYmEwZWM5YzlhZDJmMDUxYzQ1NmU1MDY0MzhiOTc3ZjY4ZCJ9', '2017-03-06 21:52:00', '2017-03-07 11:14:42', 'adehnoalian@gmail.com', '124', '1111111111', '09120000000', '', '	  آدرس خیابان کوچه محله پلاک طبقه واحد  \r\n', '217.131.237.72', 1, 60175389, '', 0, '', 0),
(13, 'صمد آقایی', 'acc.aghaei', 'eyJpdiI6InJnaCtXcWxaWkRUTGZaN3JaZjBsUVE9PSIsInZhbHVlIjoieHh1eFhzWHE3RXlJOVZlcWVPVDY1QT09IiwibWFjIjoiZjM0OTVkMDI5YTAyM2ZhM2JlYTMwY2ZmNjQ0NThjOWVlYThhYmYxN2Y2YWNlNDA1NjIxYWMxYjM0NmJmNzI3NSJ9', '2017-03-06 21:53:40', '2017-03-07 11:17:01', 'acc.aghaei@gmail.com', '124', '1111111111', '09902220004', '', 'آدرس خیابان کوچه محله پلاک طبقه واحد', '217.131.237.72', 1, 91813605, '', 0, '', 0),
(14, 'بیتا توفیقی', 'parsa.b1387', 'eyJpdiI6IlwvTjNKdXc1ZlRxeUJXXC93YjM2bTBtdz09IiwidmFsdWUiOiJxZDNjSlVxNkVJcDh0VDRLUnlPdkN3PT0iLCJtYWMiOiI3YzE1NjRlNWUzOTI5YzkxOTRkYzA2ZmNhNjMyMjRjYzNhOTVlMTM4NTQ0ZWQwMDdhYjViZTc4YThlNThkYjhiIn0=', '2017-03-06 22:27:07', '2017-03-07 11:16:45', 'parsa.b1387@gmail.com', '124', '1111111111', '09196112944', '', 'خیابان محله کوچه پلاک طبقه واحد', '217.131.237.72', 1, 40564665, '', 0, '', 0),
(18, '', 'abolfazl', 'eyJpdiI6ImJvckdXNCtXQXY3RkZOdjh3dG44M3c9PSIsInZhbHVlIjoidGprNk92OGZqN1ZhMnBRcTdvTmNvdGt5UGZXWnNPbDQybEx5cFByZzBTYz0iLCJtYWMiOiIwNDBhNjNiMGQ1MTE4MDllY2UxNGZkZjZmODllMDdiYWJhZWM5ODBmODlhMzc1NDZlMmFiZTc5NTUzYjY5ZWFhIn0=', '2017-03-13 21:15:48', '2017-03-19 02:20:42', '', '', '', '', '1489877589IMG_3433.JPG', '', '176.40.152.57', 0, 27969785, '', 0, '', 0),
(19, 'jaki', 'jakijan', 'eyJpdiI6IkhCS3JzQjNFQ2hac0JHb2xwTDZra1E9PSIsInZhbHVlIjoiRnpKR0dXOUp5RENteEpia1k1NVhLQT09IiwibWFjIjoiMTkwNzY1MGE5ODBhZmYxMTJhNDAxYmFlNWI3MGIxYzM4OGRjODQzZDRmMzY1NGMxMmNiNTZmMThlZTUxMTM2ZSJ9', '2017-03-16 23:49:06', '2017-03-16 23:49:06', 'ransohrab@gmail.com', '', '', '09388002972', '', '', '176.40.152.57', 1, 98099158, '58923', 1, '97516', 1),
(20, 'تست سوم', 'testmy', 'eyJpdiI6IjB5NGViMVNQTG1INWZqZ0tQc0xxREE9PSIsInZhbHVlIjoiRlF6Zmd5YTBicVA3UHFNN0pYVThsUT09IiwibWFjIjoiZDQwZDNlMDcwZDk2ZjIzZmY2OGQzMWJlMDhiODNjN2RmMDFhNGIzN2QxYWVlYzQ2ZjQ0OTljMGJmNDMxZGRjNiJ9', '2017-03-17 00:16:54', '2017-03-17 00:16:54', 'ellham1390@gmail.com', '77', '7777777777', '09384762155', '', '	  	    eeeeeeeeeeee\r\n  \r\n', '37.255.168.59', 0, 25904039, '77703', 0, '65257', 1),
(21, 'esi', 'esi-khatar', 'eyJpdiI6IlJpZW5FaTBPWXA3RWltYjh3XC9pU3pBPT0iLCJ2YWx1ZSI6IkswQUVjeFBMWlU4bTNMbDR1czAydkE9PSIsIm1hYyI6IjVkZWFmZjlhMjNkNjYyNWFiYmVhOTMyZWE0YjFkM2U2MjE3ZjBjZmQ1Mjc0MDA2ZTBjYTIwMTgyNDYxMTQ1N2MifQ==', '2017-03-17 20:45:47', '2017-03-17 20:45:47', 'iransmspanel@gmail.com', '', '', '09195020236', '', '', '176.40.152.57', 1, 40493235, '1194', 1, '65871', 1),
(22, 'مصطفی یوسفی', 'Testfour', 'eyJpdiI6IlwvaW92R1NKakNmTWtiajNxWURWaFBnPT0iLCJ2YWx1ZSI6IlI4ZUVkNFwvOG1RaGdMNjQ0S2RIeTNBPT0iLCJtYWMiOiI3MjBjMWRlZGU1MTY5ZjU5NDNiNTBiODFlNjQ0Y2U2MDk3NWM1MzUyNTQ0MDBiYWNhNGI2N2YwMmQ3NzgzOTA3In0=', '2017-03-17 22:15:27', '2017-03-17 22:15:27', 'mustafa1390@gmail.com', '', '', '09384762155', '', '', '5.124.203.167', 1, 31159429, '82001', 1, '77970', 1);

-- --------------------------------------------------------

--
-- Table structure for table `superadmins`
--

CREATE TABLE `superadmins` (
  `id` int(2) NOT NULL,
  `superadmin_username` varchar(35) COLLATE utf8_persian_ci NOT NULL,
  `superadmin_userpassword` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `superadmin_email` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `superadmin_tell` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `superadmin_img` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `superadmin_logindate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `superadmin_ip` varchar(66) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `superadmins`
--

INSERT INTO `superadmins` (`id`, `superadmin_username`, `superadmin_userpassword`, `superadmin_email`, `superadmin_tell`, `superadmin_img`, `superadmin_logindate`, `superadmin_ip`) VALUES
(1, 'superadmin', 'eyJpdiI6IitNNVBRWWpLbE9yZ2crS1locGpFRUE9PSIsInZhbHVlIjoibHhXdkRBejlvUDVcL2pHWkZ2Z0syaGNMMWx0WThUbmRCR3RFakZQR0RMSms9IiwibWFjIjoiMzdiNTFmNTM1NjhjYTkyZWJhMGI1NzlkMjQxNzAwY2IzNjNiNTI1ZGYwNTM3YmRhNzg0NDUxNGFkYTNiNTlhNCJ9', 'info@gds724.com', '04622233444', '1486223347429715009_5640.jpg', '2018-01-28 23:37:51', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `superadminselanats`
--

CREATE TABLE `superadminselanats` (
  `id` int(2) NOT NULL,
  `supelan_emailadmin` int(2) NOT NULL,
  `supelan_emailajency` int(2) NOT NULL,
  `supelan_emailaccajency` int(2) NOT NULL,
  `supelan_emailuser` int(2) NOT NULL,
  `supelan_emailaccuser` int(2) NOT NULL,
  `supelan_emailprofessor` int(2) NOT NULL,
  `supelan_emailstudent` int(2) NOT NULL,
  `supelan_emailaccadmin` int(2) NOT NULL,
  `supelan_emailaccprofessor` int(2) NOT NULL,
  `supelan_emailaccstudent` int(2) NOT NULL,
  `supelan_smsadmin` int(2) NOT NULL,
  `supelan_smsajency` int(2) NOT NULL,
  `supelan_smsaccajency` int(2) NOT NULL,
  `supelan_smsuser` int(2) NOT NULL,
  `supelan_smsaccuser` int(2) NOT NULL,
  `supelan_smsprofessor` int(2) NOT NULL,
  `supelan_smsstudent` int(2) NOT NULL,
  `supelan_smsaccadmin` int(2) NOT NULL,
  `supelan_smsaccprofessor` int(2) NOT NULL,
  `supelan_smsaccstudent` int(2) NOT NULL,
  `supelan_smselanstudent` int(2) NOT NULL,
  `supelan_smselanprofessor` int(2) NOT NULL,
  `supelan_demolang` int(4) NOT NULL,
  `supelan_date` varchar(44) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `superadminselanats`
--

INSERT INTO `superadminselanats` (`id`, `supelan_emailadmin`, `supelan_emailajency`, `supelan_emailaccajency`, `supelan_emailuser`, `supelan_emailaccuser`, `supelan_emailprofessor`, `supelan_emailstudent`, `supelan_emailaccadmin`, `supelan_emailaccprofessor`, `supelan_emailaccstudent`, `supelan_smsadmin`, `supelan_smsajency`, `supelan_smsaccajency`, `supelan_smsuser`, `supelan_smsaccuser`, `supelan_smsprofessor`, `supelan_smsstudent`, `supelan_smsaccadmin`, `supelan_smsaccprofessor`, `supelan_smsaccstudent`, `supelan_smselanstudent`, `supelan_smselanprofessor`, `supelan_demolang`, `supelan_date`) VALUES
(1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 4, '2017-11-30 00:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(4) NOT NULL,
  `term_number` int(3) NOT NULL,
  `term_period` int(3) NOT NULL,
  `term_active` int(2) NOT NULL,
  `term_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `term_startdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `term_level` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `term_number`, `term_period`, `term_active`, `term_createdatdate`, `term_startdate`, `term_level`) VALUES
(9, 1, 33, 1, '2017-03-01 18:01:48', '2017-04-30', 25),
(10, 2, 33, 0, '2017-03-01 18:02:09', '2017-06-05', 25),
(11, 1, 34, 1, '2017-03-01 18:32:11', '2017-04-09', 15),
(12, 1, 35, 1, '2017-03-01 18:36:26', '2017-04-09', 16),
(13, 1, 37, 1, '2017-03-08 22:39:22', '2017-04-19', 30),
(14, 1, 38, 0, '2017-03-17 22:09:37', '2017-05-13', 32),
(15, 1, 39, 1, '2017-03-17 22:13:07', '2017-06-11', 26);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(12) NOT NULL,
  `test_exam` int(6) NOT NULL,
  `test_qst` varchar(333) COLLATE utf8_persian_ci NOT NULL,
  `test_repa` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `test_repb` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `test_repc` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `test_repd` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `test_key` varchar(2) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `test_exam`, `test_qst`, `test_repa`, `test_repb`, `test_repc`, `test_repd`, `test_key`) VALUES
(1, 2, '  hello how are you   \r\n', 'low', 'too', 'tanks', 'yes', 'c'),
(3, 1, 'windows xp ... very good', 'is', 'are', 'yes', 'no', 'a'),
(5, 2, '    \r\ngood afternoon night', 'drank', 'slow', 'faild', 'no', 'a'),
(6, 1, '    real madrid in \r\n', 'iran', 'spain', 'italy', 'egept', 'b'),
(7, 1, '    \r\nit is a blackbooooooord', 'yes ', 'no', 'nemidonam', 'shayad', 'c'),
(8, 1, '    \r\nit is a site hast ', 'wat', 'kilo what', 'megavat', 'pixel', 'c'),
(9, 3, '    \r\nبله درسته؟', 'نخیر ', 'اشتباهه', 'غلطه', 'عالیه', 'c'),
(10, 3, '    \r\nنخیر', 'بل', 'حتما', 'شاید', 'خیر', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(6) NOT NULL,
  `tik_tit` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `tik_fromarou` int(2) NOT NULL,
  `tik_toarou` int(2) NOT NULL,
  `tik_fromid` int(2) NOT NULL,
  `tik_toid` int(2) NOT NULL,
  `tik_fromsh` int(2) NOT NULL,
  `tik_tosh` int(2) NOT NULL,
  `tik_active` int(2) NOT NULL,
  `tik_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `tik_fromread` int(2) NOT NULL,
  `tik_toread` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `tik_tit`, `tik_fromarou`, `tik_toarou`, `tik_fromid`, `tik_toid`, `tik_fromsh`, `tik_tosh`, `tik_active`, `tik_createdatdate`, `tik_fromread`, `tik_toread`) VALUES
(14, 'تیکت اول', 4, 2, 1, 0, 1, 1, 2, '2017-04-15 13:16:22', 0, 1),
(15, 'تیکت دوم', 4, 2, 1, 0, 0, 1, 2, '2017-04-15 14:18:09', 0, 1),
(16, 'سوم و 5', 4, 2, 1, 0, 0, 0, 1, '2017-04-15 14:20:29', 1, 0),
(17, 'عنوان آژانس', 3, 2, 1, 0, 1, 1, 1, '2017-04-15 16:34:18', 1, 1),
(18, 'یبلیبلا', 3, 2, 1, 0, 0, 0, 1, '2017-04-16 13:59:49', 1, 1),
(19, 'مممنککم', 1, 3, 0, 6, 1, 1, 1, '2017-04-16 15:31:14', 1, 0),
(20, 'تیتر ', 1, 3, 0, 1, 1, 1, 1, '2017-04-16 18:04:18', 1, 0),
(22, 'rrrrrrr', 1, 3, 0, 1, 1, 1, 1, '2017-04-17 01:10:28', 1, 0),
(23, 'ااااا', 1, 3, 0, 1, 1, 1, 2, '2017-04-17 01:12:18', 1, 1),
(24, 'onvan', 1, 3, 0, 1, 1, 1, 1, '2017-04-17 01:41:57', 1, 0),
(25, 'colol', 1, 3, 0, 1, 1, 1, 1, '2017-04-17 01:42:52', 1, 0),
(26, 'عنوان ارسالی برا کاربر', 1, 4, 0, 1, 1, 1, 2, '2017-04-17 13:43:09', 1, 1),
(27, 'oncvanelanuser', 1, 4, 0, 1, 1, 1, 2, '2017-04-17 16:28:21', 1, 1),
(29, 'hhjhhj', 1, 4, 0, 1, 1, 1, 2, '2017-04-17 17:22:38', 1, 1),
(30, 'fgfgfg', 1, 4, 0, 1, 1, 1, 2, '2017-04-17 17:29:27', 1, 1),
(31, 'عنوان', 1, 3, 0, 1, 1, 1, 1, '2017-04-23 16:08:39', 1, 0),
(32, 'عنوان', 1, 4, 0, 1, 1, 1, 2, '2017-06-08 01:44:36', 1, 1),
(33, 'salam', 3, 2, 8, 0, 1, 1, 2, '2017-12-02 17:09:28', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(9) NOT NULL,
  `user_username` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `user_password` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `user_createdatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `user_loginatdate` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `user_active` int(2) NOT NULL,
  `user_name` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `user_email` varchar(55) COLLATE utf8_persian_ci NOT NULL,
  `user_ip` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `user_tell` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `user_img` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `user_adres` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `user_api` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `user_apiactive` int(2) NOT NULL,
  `user_emailverfy` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `user_emailactive` int(2) NOT NULL,
  `user_tellverfy` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `user_tellactive` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_username`, `user_password`, `user_createdatdate`, `user_loginatdate`, `user_active`, `user_name`, `user_email`, `user_ip`, `user_tell`, `user_img`, `user_adres`, `user_api`, `user_apiactive`, `user_emailverfy`, `user_emailactive`, `user_tellverfy`, `user_tellactive`) VALUES
(1, 'users', 'eyJpdiI6ImpcLzRGOUlEdzg5WXpzaEZQQWNlY1BBPT0iLCJ2YWx1ZSI6IlE1bnp4Vmd2WHNuRWNaT0tFV204emc9PSIsIm1hYyI6ImM2NzhhOTViMTg0NjI3NWYzODBiYjVmZTQzMWYzNDZiOGQ1MjhmNDQ5ZDBkZmIwYzQ1NzYwOWNjNGE1MzI0MmYifQ==', '2017-04-14 19:13:20', '2017-10-10 12:51:27', 1, 'الهام اسکندری', 'mustafa1390@gmail.com', '::1', '09103549920', '1492974692Tulips.jpg', '	  	  بیبی بی 	    \r\n  \r\n  \r\n', 'orhcyyrg2xpqwf1d98ebxdsx', 1, '', 0, '', 0),
(2, 'ffffff', 'eyJpdiI6IkNpNk5IbllqV2ozTDdaWWtcL1hEWWt3PT0iLCJ2YWx1ZSI6IlMxSEo0RUpjSGZYUUZhcHZhY1UzaEE9PSIsIm1hYyI6ImQ0ODQ1NTE1MmIzMzYwMGY0YTI5Y2IxMjkyZDdiZDExY2RlZGNmY2MxMTgwNjJmOTAzZjZlMjRiY2JjOTA5ZDcifQ==', '2017-05-04 18:48:58', '', 0, '', '', '', '', 'demowhite.jpg', '', '', 0, '', 0, '', 0),
(3, 'rrrrrr', 'eyJpdiI6IjFSREVRQUZINEZKQ2d2Q3ptN0Y4MUE9PSIsInZhbHVlIjoiNHU5Q1FxR0FWcGE0THFIU3lMNXJcL0E9PSIsIm1hYyI6IjAwNGRhZmM4MDZlZjZkZGM4ZjM3OGU3ZDFjMTI2NzBlMjYxMmFhNTIzNDI1YzNlZjg4YmQ0NzVhNDdlMTUzZjgifQ==', '2017-05-24 15:57:11', '', 0, '', '', '', '', 'demowhite.jpg', '', '', 0, '', 0, '', 0),
(4, 'hhhhhh', 'eyJpdiI6IlhPTmIxbnVzbFFVSDJ1MVgxSnArNlE9PSIsInZhbHVlIjoiUzBKQ25FMmtYcFNhQzBud2lMRjJ4UT09IiwibWFjIjoiZDU5YjRiZjIxZjEzYWMxMzliNDFhZGUxM2Y3ZWM2NzkxMWI1MWZkYmU5NDc4NWRkOTU3NGQ0MGY0M2QwNmJhMSJ9', '2017-05-24 15:58:27', '', 0, '', '', '', '', 'demowhite.jpg', '', '', 0, '', 0, '', 0),
(5, 'bmbnmnbm', 'eyJpdiI6IjZSVGZ2RDVGSW9ReDlPQkdKTzhtcFE9PSIsInZhbHVlIjoibllZSG13YVBTMmYxUXhHakVSMjhaQT09IiwibWFjIjoiYjg2MjE0YzMzNTI2NjBmYmY2NThjMmE1YWZkZGVjMjFjMjg4YWRkZDMwZjFlOWQwMGU3YzYzY2YzNjE5YmRlMCJ9', '2017-05-24 15:59:17', '', 0, '', '', '', '', 'demowhite.jpg', '', '', 0, '', 0, '', 0),
(6, 'bbbbbb', 'eyJpdiI6IndhVVJrSkpOeVZ2dEs3amhCeENWZVE9PSIsInZhbHVlIjoiNWNPdGYrS1VPMjhHMzVMejVGWDVGdz09IiwibWFjIjoiYjZjZmY0NzdmZTkwZGI0NDQzZDYzZDA2OWZiYmE5ZTM0ZTcyMmFkOTQ0MTRmN2NmMTczZDAzYTQ5ZjFiYTcxYiJ9', '2017-05-24 16:00:22', '', 0, '', '', '', '', 'demowhite.jpg', '', '', 0, '', 0, '', 0),
(7, 'ahmadreza', 'eyJpdiI6IitHS2YxVHBtejVncURueFNUYmluZlE9PSIsInZhbHVlIjoiRkk5VGpHQjYraHhjZ2x6MUVaa2thZz09IiwibWFjIjoiZTZhNjQ4NDI1MDUwNDJkMjBjYmRmMzZiZTEzZDkzOTYzYmFmOGMwMTEzNDE0NGFkN2U2ZTVlN2NjOTFmNDY5MCJ9', '2017-05-24 16:08:52', '', 0, '', '', '', '', 'demowhite.jpg', '', '', 0, '', 0, '', 0),
(8, 'fffffff', 'eyJpdiI6Im5cL1lHNTFCWlwvc05OZnl1aHNxeGR2UT09IiwidmFsdWUiOiJkajFqZXd1dkRmczU1cmJZXC93XC92TFE9PSIsIm1hYyI6ImYzMTQ1Y2M0NTAzZmFmOTEwM2IwOGNhMDk0ZDExMmMxYWM5OTM4ZmI5MGY3ZmFkNzJkOWYwMDkxODQyOTU2ZmIifQ==', '2017-05-24 16:10:07', '', 1, 'آقای فیض الله شهبازی ', 'mustafa1390@gmail.com', '', '09172345868', 'demowhite.jpg', '	  استانیییییییییییییی	    \r\n  \r\n', '', 0, '', 0, '', 0),
(9, 'oooooo', 'eyJpdiI6Im0yS0VTWmVZaEF4NVhXWDQ0S1lhTmc9PSIsInZhbHVlIjoibStcL0xQUitiR1J0RzhIQTFqcHpoUnc9PSIsIm1hYyI6ImJkZDc5N2IwN2EzNjEwMWQxYzZmNDdlMzAzMjVkNGJmODlmYzRkODQ4MjI2ZmExM2Y4ZmY0ZGM3ZTI2OTY1YmYifQ==', '2017-05-24 16:12:31', '', 0, '', '', '', '', 'demowhite.jpg', '', '', 0, '', 0, '', 0),
(10, 'ffftttfff', 'eyJpdiI6Ilg1Q3gzTmtiSFdsd0FoQ29ySk9zeUE9PSIsInZhbHVlIjoieGNMWWZcL0luQ0MwYk50NDdER2JXdHc9PSIsIm1hYyI6IjlkN2FkOTZkNDI3N2U3MzBlZGU5MzYxZTBkMDk4MTE4NjI3YmQwMTk4YTY2NWZmNjdmYThiMGI0ODc2MzdlMWIifQ==', '2017-05-24 16:13:44', '2017-05-24 16:13:44', 0, '', '', '::1', '', 'demowhite.jpg', '', '', 0, '', 0, '', 0),
(11, '1111111111', 'eyJpdiI6IitEdHZvZXNkeW0zOVpocTBpN24wWFE9PSIsInZhbHVlIjoiWmUrbDBXa0t2bm00MllcLzZudTNtUXc9PSIsIm1hYyI6IjgwZWE1NDg1MDcxOGNlYTNhYTExYTdhNTEyYjU1YzJjZjY0ZTM3MDc3OWE1NGNkNmUwYzBkYmEwZjA5MGM1ZmQifQ==', '2017-05-25 12:15:16', '2017-05-25 12:15:16', 0, '', '', '::1', '', 'demowhite.jpg', '', '', 1, '', 0, '', 0),
(12, 'rahim', 'eyJpdiI6ImhUNkZMcDc4MHk2QmFib0M3dEpaTVE9PSIsInZhbHVlIjoiWHVxS05GdkZmaTJOdUdVWjV4ODIzZz09IiwibWFjIjoiMTkzZWY4NTAzMTg1YzM5MjEyODMwNmNmMzRlMzYyODdhNWI4NTJjYzQwYTJjMjM5Mjg4ZWRhMTZkYTE0ODY5NiJ9', '2017-11-01 14:55:19', '2017-11-01 14:55:19', 0, '', '', '46.101.16.232', '', 'demowhite.jpg', '', '', 0, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `name` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `firstname` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(999) COLLATE utf8_persian_ci NOT NULL,
  `updated_at` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `created_at` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `remember_token` varchar(111) COLLATE utf8_persian_ci NOT NULL,
  `active` int(2) NOT NULL,
  `time` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `password_resets` varchar(999) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `firstname`, `email`, `password`, `updated_at`, `created_at`, `remember_token`, `active`, `time`, `password_resets`) VALUES
(47, '', '', '', 'C:\\xampp\\tmp\\php9CB0.tmp', '', '', '', 1, '', ''),
(48, '', '', '', '1484470325Tulips.jpg', '', '', '', 1, '', ''),
(49, '', '', '', '1484470325Penguins.jpg', '', '', '', 1, '', ''),
(50, '', '', '', '1484472360Penguins.jpg', '', '', '', 1, '', ''),
(51, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(52, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(53, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(54, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(55, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(56, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(57, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(58, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(59, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(60, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(61, '', '', 'taylor@example.com', '', '', '', '', 0, '', ''),
(62, 'حححححححححححححححححححححح', '', '', 'iftTqqFMKY5a5M/mBbjiTK9/gXyP4cZLOjigqhZoK/ZU/8TPIAMJL6mslQ1ckcbugl', '', '', '', 3, '', ''),
(63, 'ضضضضضضضضضضضضضض', '', '', 'vZeiI6vJ1T95ChpNsRt0PYRcnYFMWWEFDnjSNFClkqr1z4VO5At3zYCfIuntLlJbhq', '', '', '', 3, '', ''),
(64, 'ییییییییییییییییی', '', '', 'o2nVdXCcgSCy5wLxNu/cUlK7IrPtcPiTNm7r3IKtuXA=', '', '', '', 3, '', ''),
(65, 'ضضضضضضضضضضضضضض', '', '', 'vZeiI6vJ1T95ChpNsRt0PYRcnYFMWWEFDnjSNFClkqr1z4VO5At3zYCfIuntLlJbhq', '', '', '', 3, '', ''),
(66, 'pppppppppppppp', '', '', 'f0PFFGimKbQfM/5wdG+OZKkZEj1Qs6FAL6tKRHHXNX8=', '', '', '', 3, '', ''),
(67, 'sssssssssssss', '', '', 'dCjqOiD5vUTMrs61YIG+fiWRKJmohPSsM91VrkIvKhk=', '', '', '', 3, '', ''),
(68, 'yahoomk', '', '', '11xJ7Nuggd+aQdMjrR5GO7dcGLi1/7owsxZSRiew8Bk=', '', '', '', 3, '', ''),
(69, 'ddddddddddddddd', '', '', 'ySa1BJq5a6me9gY90ssrItvp08Vgpl3IG/wyG8RYr/g=', '', '', '', 3, '', ''),
(70, 'ssssssssssssssssss', '', '', 'Mi1jHbwgsyFPgVizwj7j2wAoeeBKdQmYxu6wDieZg6k=', '', '', '', 3, '', ''),
(71, 'uuuuuuuuuuuuuuu', '', '', '1lU5FSLgSj+dhLX1/211xsNcZ6Jr8StsYOQ9yVA771k=', '', '', '', 3, '', ''),
(72, 'dddddddddddddd', '', '', 'NU5oLKE7eO4jc1MTWaY/JPE18UteCoHQzDGnadDHegk=', '', '', '', 3, '', ''),
(73, 'umostafa', '', '', 'j9hye/SnDWUY2DVrSje+Hd69AdmX5KejEN1nlnendGc=', '', '', '', 3, '', ''),
(74, 'lllllllllllllllllllllll', '', '', 'IH5um4Y8Q2KwRXiBvx6XBvxHVobVKoKfiWTbWslGic8=', '', '04:01:29', '', 3, '', ''),
(75, 'ffffffffffffffffffffffffffff', '', '', 'YIUYye0YayzztC2YvN5ajv/R6ka7SHdFfuTaV+8us2o=', '', '04:01:09', '', 3, '', ''),
(76, 'tttttttttttttttttttttttttttt', '', '', 'HK7bnbneKs2qgMQRE98judr9J11Rojsh1GK6XQvyRsI=', '', '2017-01-20 04:08:29', '', 3, '', ''),
(77, 'safsdsdggdfgdf', '', '', 'CJLUwy/t9gCrXfwWFEKhRQ/I0BoPz5adelIhzgCquok=', '', '2017-01-20 07:43:10', '', 3, '', ''),
(78, 'Dayle', '', '', '', '', '', '', 1, '', ''),
(79, '', '', '', '1485250328Desert.jpg', '', '', '', 1, '', ''),
(80, '', '', '', '1485250328Chrysanthemum.jpg', '', '', '', 1, '', ''),
(81, '', '', '', '1485250328Koala.jpg', '', '', '', 1, '', ''),
(82, '', '', '', '1485258619Chrysanthemum.jpg', '', '', '', 1, '', ''),
(83, '', '', '', '1485258708Lighthouse.jpg', '', '', '', 1, '', ''),
(84, '', '', '', '1485258716Desert.jpg', '', '', '', 1, '', ''),
(85, '', '', '', '1485258821Chrysanthemum.jpg', '', '', '', 1, '', ''),
(86, '', '', '', '1485258839Lighthouse.jpg', '', '', '', 1, '', ''),
(87, '', '', '', '1485258839Penguins.jpg', '', '', '', 1, '', ''),
(88, '', '', '', '1485259523a.jpg', '', '', '', 1, '', ''),
(89, '', '', '', '1485259696Chrysanthemum.jpg', '', '', '', 1, '', ''),
(90, '', '', '', '1485342897Chrysanthemum.jpg', '', '', '', 1, '', ''),
(91, '', '', '', '1485342902Hydrangeas.jpg', '', '', '', 1, '', ''),
(92, '', '', '', '1485342939Desert.jpg', '', '', '', 1, '', ''),
(93, '', '', '', '1485342939Chrysanthemum.jpg', '', '', '', 1, '', ''),
(94, '', '', '', '1485342939Hydrangeas.jpg', '', '', '', 1, '', ''),
(95, '', '', '', '1485342939Jellyfish.jpg', '', '', '', 1, '', ''),
(96, '', '', '', '1485342942Lighthouse.jpg', '', '', '', 1, '', ''),
(97, '', '', '', '1485342942Koala.jpg', '', '', '', 1, '', ''),
(98, '', '', '', '1485342942Penguins.jpg', '', '', '', 1, '', ''),
(99, '', '', '', '1485342942Tulips.jpg', '', '', '', 1, '', ''),
(100, '', '', '', '1485346800Chrysanthemum.jpg', '', '', '', 1, '', ''),
(101, '', '', '', '1485350619a.jpg', '', '', '', 1, '', ''),
(102, '', '', '', '1485351067Chrysanthemum.jpg', '', '', '', 1, '', ''),
(103, '', '', '', '1485351067Desert.jpg', '', '', '', 1, '', ''),
(104, '', '', '', '1485351067Hydrangeas.jpg', '', '', '', 1, '', ''),
(105, '', '', '', '1485351067Jellyfish.jpg', '', '', '', 1, '', ''),
(106, '', '', '', '1485351068Koala.jpg', '', '', '', 1, '', ''),
(107, '', '', '', '1485351068Lighthouse.jpg', '', '', '', 1, '', ''),
(108, '', '', '', '1485351069Tulips.jpg', '', '', '', 1, '', ''),
(109, '', '', '', '1485351069Penguins.jpg', '', '', '', 1, '', ''),
(110, '', '', '', '1485352806Chrysanthemum.jpg', '', '', '', 1, '', ''),
(111, '', '', '', '1485352882Koala.jpg', '', '', '', 1, '', ''),
(112, '', '', '', '1485353174Koala.jpg', '', '', '', 1, '', ''),
(113, '', '', '', '1485353250Lighthouse.jpg', '', '', '', 1, '', ''),
(114, '', '', '', '1485353354Desert.jpg', '', '', '', 1, '', ''),
(115, '', '', '', '1485353459Lighthouse.jpg', '', '', '', 1, '', ''),
(116, '', '', '', '1485353602Penguins.jpg', '', '', '', 1, '', ''),
(117, '', '', '', '1485353644Chrysanthemum.jpg', '', '', '', 1, '', ''),
(118, '', '', '', '1485353723Koala.jpg', '', '', '', 1, '', ''),
(119, '', '', '', '1485353827Chrysanthemum.jpg', '', '', '', 1, '', ''),
(120, '', '', '', '1485354010Chrysanthemum.jpg', '', '', '', 1, '', ''),
(121, '', '', '', '1485354293Tulips.jpg', '', '', '', 1, '', ''),
(122, '', '', '', '1485354763Koala.jpg', '', '', '', 1, '', ''),
(123, '', '', '', '1485354945Desert.jpg', '', '', '', 1, '', ''),
(124, '', '', '', '1485355055Desert.jpg', '', '', '', 1, '', ''),
(125, '', '', '4', '1485355151Chrysanthemum.jpg', '', '', '', 1, '', ''),
(126, '', '', '4', '1485356000Chrysanthemum.jpg', '', '', '', 1, '', ''),
(127, '', '', '', '1485356217Koala.jpg', '', '', '', 1, '', ''),
(128, '', '', '', '1485356266Chrysanthemum.jpg', '', '', '', 1, '', ''),
(129, '', '', '4', '1485356430Desert.jpg', '', '', '', 1, '', ''),
(130, '', '', '4', '1485357192Lighthouse.jpg', '', '', '', 1, '', ''),
(131, 'superadmin', '', '4', '1485357354Penguins.jpg', '', '', '', 1, '', ''),
(132, '20', '', '4', '1485357389Desert.jpg', '', '', '', 1, '', ''),
(133, '26', '', '4', '1485357432Lighthouse.jpg', '', '', '', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wbs`
--

CREATE TABLE `wbs` (
  `id` int(8) NOT NULL,
  `result` mediumtext COLLATE utf8_persian_ci NOT NULL,
  `wbs_uuses` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `wbs_sesid` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `wbs_arrival` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_departure` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_adult` int(1) NOT NULL,
  `wbs_child` int(1) NOT NULL,
  `wbs_infant` int(1) NOT NULL,
  `wbs_price` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `wbs_seq` int(44) NOT NULL,
  `wbs_comb` int(44) NOT NULL,
  `wbs_hisd` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `wbs_departuredate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `wbs_departuredater` varchar(66) COLLATE utf8_persian_ci NOT NULL,
  `wbs_adtbprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_chdbprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_infbprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_adtsprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_chdsprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_infsprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_adttprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_chdtprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_inftprice` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `wbs_way` int(2) NOT NULL,
  `wbs_sort` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `wbs`
--

INSERT INTO `wbs` (`id`, `result`, `wbs_uuses`, `wbs_sesid`, `wbs_arrival`, `wbs_departure`, `wbs_adult`, `wbs_child`, `wbs_infant`, `wbs_price`, `wbs_seq`, `wbs_comb`, `wbs_hisd`, `wbs_departuredate`, `wbs_departuredater`, `wbs_adtbprice`, `wbs_chdbprice`, `wbs_infbprice`, `wbs_adtsprice`, `wbs_chdsprice`, `wbs_infsprice`, `wbs_adttprice`, `wbs_chdtprice`, `wbs_inftprice`, `wbs_way`, `wbs_sort`) VALUES
INSERT INTO `wbs` (`id`, `result`, `wbs_uuses`, `wbs_sesid`, `wbs_arrival`, `wbs_departure`, `wbs_adult`, `wbs_child`, `wbs_infant`, `wbs_price`, `wbs_seq`, `wbs_comb`, `wbs_hisd`, `wbs_departuredate`, `wbs_departuredater`, `wbs_adtbprice`, `wbs_chdbprice`, `wbs_infbprice`, `wbs_adtsprice`, `wbs_chdsprice`, `wbs_infsprice`, `wbs_adttprice`, `wbs_chdtprice`, `wbs_inftprice`, `wbs_way`, `wbs_sort`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `wbss`
--

CREATE TABLE `wbss` (
  `id` int(32) NOT NULL,
  `jairlinemark` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `jdeptime` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `jdepdate` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `jaritime` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `jaridate` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `jelptimeh` varchar(6) COLLATE utf8_persian_ci NOT NULL,
  `jelptimem` varchar(6) COLLATE utf8_persian_ci NOT NULL,
  `jlug` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `jdepairp` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `jdepairpmk` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `jariairp` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `jariairpmk` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `jindirect` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `kairlineclass` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `kairlineflightnum` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `kairlineoperator` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `kdeptime` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `kdepdate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `karitime` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `karidate` varchar(33) COLLATE utf8_persian_ci NOT NULL,
  `kdepcity` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `kdepairp` varchar(44) COLLATE utf8_persian_ci NOT NULL,
  `karicity` int(33) NOT NULL,
  `kariairp` int(44) NOT NULL,
  `klug` int(22) NOT NULL,
  `wbssearch` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `wbss`
--

INSERT INTO `wbss` (`id`, `jairlinemark`, `jdeptime`, `jdepdate`, `jaritime`, `jaridate`, `jelptimeh`, `jelptimem`, `jlug`, `jdepairp`, `jdepairpmk`, `jariairp`, `jariairpmk`, `jindirect`, `kairlineclass`, `kairlineflightnum`, `kairlineoperator`, `kdeptime`, `kdepdate`, `karitime`, `karidate`, `kdepcity`, `kdepairp`, `karicity`, `kariairp`, `klug`, `wbssearch`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(27, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(29, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(30, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(31, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(32, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(33, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(34, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(35, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(36, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(37, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(38, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(39, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(40, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(41, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(42, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(43, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(44, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(45, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(46, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(47, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(48, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(49, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(51, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(52, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(53, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(54, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(56, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(59, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(61, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(62, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(63, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(64, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(65, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(66, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(67, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(68, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(69, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(70, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(71, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(72, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(73, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(74, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(75, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(76, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(77, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(78, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(79, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(80, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(81, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(82, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(83, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(84, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(85, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(86, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(87, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(88, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(89, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(90, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(91, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(92, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(93, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(94, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(95, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(96, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(97, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(98, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(99, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(100, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(101, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(102, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(103, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(104, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(105, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(106, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(107, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(108, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(109, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(110, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(111, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(112, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(113, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(114, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(115, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(116, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(117, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(118, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(119, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(120, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(121, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(122, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(123, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(124, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(125, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(126, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(127, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(128, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(129, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(130, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(131, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(132, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(133, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(134, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(135, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(136, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(137, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(138, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(139, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(140, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(141, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(142, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(143, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(144, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(145, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(146, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(147, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(148, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(149, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(150, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(151, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(152, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(153, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(154, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(155, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(156, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(157, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(158, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(159, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(160, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(161, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(162, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(163, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(164, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(165, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(166, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(167, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(168, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(169, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(170, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(171, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(172, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(173, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(174, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(175, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(176, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(177, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(178, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(179, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(180, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(181, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(182, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(183, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(184, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(185, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(186, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(187, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(189, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(191, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(192, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(193, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(194, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(195, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(196, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(197, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(198, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(199, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(200, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(201, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(202, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(203, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(204, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(205, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(206, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(207, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(208, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(209, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(210, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(211, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(212, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(213, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(214, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(215, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(216, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(217, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(218, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(219, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(220, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(221, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(222, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(223, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(224, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(225, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(226, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(227, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(228, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(229, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(230, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(231, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(232, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(233, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(234, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(235, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(236, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(237, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(238, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(239, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(240, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(241, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(242, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(243, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(244, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(245, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(246, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(247, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(248, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(249, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(250, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(251, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(252, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(253, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(254, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(255, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(256, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(257, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(258, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(259, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(260, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(261, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(262, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(263, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(264, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(265, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(266, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(267, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(268, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(269, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(270, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(271, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(272, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(273, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(274, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(275, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(276, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(277, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(278, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(279, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(280, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(281, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(282, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(283, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(284, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(285, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(286, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(287, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(288, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(289, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(290, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(291, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(292, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(293, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(294, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(295, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(296, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(297, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(298, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(299, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(300, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(301, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(302, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(303, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(304, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(305, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(306, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(307, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(308, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(309, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(310, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(311, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(312, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(313, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(314, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(315, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(316, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(317, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(318, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(319, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(320, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(321, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(322, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(323, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(324, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(325, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(326, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(327, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(328, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(329, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(330, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(331, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(332, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(333, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(334, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(335, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(336, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(337, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(338, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(339, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(340, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(341, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(342, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(343, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(344, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(345, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(346, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(347, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(348, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(349, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(350, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(351, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(352, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(353, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(354, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(355, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(356, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(357, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(358, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(359, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(360, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(361, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(362, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(363, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(364, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(365, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 356),
(366, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(367, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(368, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(369, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(370, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(371, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(372, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(373, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(374, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(375, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(376, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(377, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(378, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(379, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(380, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(381, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(382, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(383, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(384, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(385, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(386, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(387, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(388, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(389, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(390, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(391, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(392, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(393, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(394, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(395, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(396, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(397, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(398, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(399, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(400, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(401, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(402, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(403, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(404, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(405, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(406, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(407, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(408, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(409, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(410, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(411, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(412, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(413, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(414, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(415, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(416, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(417, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(418, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(419, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(420, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(421, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(422, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(423, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(424, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(425, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(426, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(427, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(428, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(429, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(430, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(431, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(432, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(433, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(434, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(435, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(436, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(437, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(438, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(439, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(440, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(441, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(442, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(443, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(444, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(445, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(446, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(447, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(448, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(449, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(450, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(451, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(452, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(453, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(454, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(455, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(456, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(457, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(458, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(459, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(460, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(461, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(462, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(463, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(464, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357);
INSERT INTO `wbss` (`id`, `jairlinemark`, `jdeptime`, `jdepdate`, `jaritime`, `jaridate`, `jelptimeh`, `jelptimem`, `jlug`, `jdepairp`, `jdepairpmk`, `jariairp`, `jariairpmk`, `jindirect`, `kairlineclass`, `kairlineflightnum`, `kairlineoperator`, `kdeptime`, `kdepdate`, `karitime`, `karidate`, `kdepcity`, `kdepairp`, `karicity`, `kariairp`, `klug`, `wbssearch`) VALUES
(465, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(466, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(467, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(468, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(469, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(470, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(471, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(472, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(473, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(474, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(475, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(476, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357),
(477, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 357);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessadmins`
--
ALTER TABLE `accessadmins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ajency`
--
ALTER TABLE `ajency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answertest`
--
ALTER TABLE `answertest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `belit`
--
ALTER TABLE `belit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `belitrezerv`
--
ALTER TABLE `belitrezerv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `belits`
--
ALTER TABLE `belits`
  ADD PRIMARY KEY (`bel_id`);

--
-- Indexes for table `belitsearch`
--
ALTER TABLE `belitsearch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charge`
--
ALTER TABLE `charge`
  ADD PRIMARY KEY (`charge_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clas`
--
ALTER TABLE `clas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comid`
--
ALTER TABLE `comid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comodid`
--
ALTER TABLE `comodid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demoedivence`
--
ALTER TABLE `demoedivence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direction`
--
ALTER TABLE `direction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebanking_mellat`
--
ALTER TABLE `ebanking_mellat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examtest`
--
ALTER TABLE `examtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finicals`
--
ALTER TABLE `finicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `getwaypay`
--
ALTER TABLE `getwaypay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupajency`
--
ALTER TABLE `groupajency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupprofessor`
--
ALTER TABLE `groupprofessor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupstudent`
--
ALTER TABLE `groupstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupuser`
--
ALTER TABLE `groupuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`decpr`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listedivence`
--
ALTER TABLE `listedivence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listexam`
--
ALTER TABLE `listexam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listgroupajency`
--
ALTER TABLE `listgroupajency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listgroupprofessor`
--
ALTER TABLE `listgroupprofessor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listgroupstudent`
--
ALTER TABLE `listgroupstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listgroupuser`
--
ALTER TABLE `listgroupuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liststudentsision`
--
ALTER TABLE `liststudentsision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liststudentterm`
--
ALTER TABLE `liststudentterm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mngindex`
--
ALTER TABLE `mngindex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mngindexgds`
--
ALTER TABLE `mngindexgds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `ostads`
--
ALTER TABLE `ostads`
  ADD PRIMARY KEY (`ostad_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panelsms`
--
ALTER TABLE `panelsms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passanger`
--
ALTER TABLE `passanger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perslesonterm`
--
ALTER TABLE `perslesonterm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sayfa1`
--
ALTER TABLE `sayfa1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sefaresh`
--
ALTER TABLE `sefaresh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sision`
--
ALTER TABLE `sision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sort`
--
ALTER TABLE `sort`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sortv`
--
ALTER TABLE `sortv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superadmins`
--
ALTER TABLE `superadmins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `superadmin_username` (`superadmin_username`);

--
-- Indexes for table `superadminselanats`
--
ALTER TABLE `superadminselanats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wbs`
--
ALTER TABLE `wbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wbss`
--
ALTER TABLE `wbss`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessadmins`
--
ALTER TABLE `accessadmins`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ajency`
--
ALTER TABLE `ajency`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `answertest`
--
ALTER TABLE `answertest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `belit`
--
ALTER TABLE `belit`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT for table `belitrezerv`
--
ALTER TABLE `belitrezerv`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `belits`
--
ALTER TABLE `belits`
  MODIFY `bel_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT for table `belitsearch`
--
ALTER TABLE `belitsearch`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `charge`
--
ALTER TABLE `charge`
  MODIFY `charge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `clas`
--
ALTER TABLE `clas`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comid`
--
ALTER TABLE `comid`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comodid`
--
ALTER TABLE `comodid`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `demoedivence`
--
ALTER TABLE `demoedivence`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `direction`
--
ALTER TABLE `direction`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;
--
-- AUTO_INCREMENT for table `ebanking_mellat`
--
ALTER TABLE `ebanking_mellat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `examtest`
--
ALTER TABLE `examtest`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `finicals`
--
ALTER TABLE `finicals`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `getwaypay`
--
ALTER TABLE `getwaypay`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `groupajency`
--
ALTER TABLE `groupajency`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groupprofessor`
--
ALTER TABLE `groupprofessor`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groupstudent`
--
ALTER TABLE `groupstudent`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `groupuser`
--
ALTER TABLE `groupuser`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `decpr` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `listedivence`
--
ALTER TABLE `listedivence`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `listexam`
--
ALTER TABLE `listexam`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `listgroupajency`
--
ALTER TABLE `listgroupajency`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `listgroupprofessor`
--
ALTER TABLE `listgroupprofessor`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `listgroupstudent`
--
ALTER TABLE `listgroupstudent`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `listgroupuser`
--
ALTER TABLE `listgroupuser`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `liststudentsision`
--
ALTER TABLE `liststudentsision`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `liststudentterm`
--
ALTER TABLE `liststudentterm`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `mngindex`
--
ALTER TABLE `mngindex`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mngindexgds`
--
ALTER TABLE `mngindexgds`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `ostads`
--
ALTER TABLE `ostads`
  MODIFY `ostad_id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `panelsms`
--
ALTER TABLE `panelsms`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passanger`
--
ALTER TABLE `passanger`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `period`
--
ALTER TABLE `period`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `perslesonterm`
--
ALTER TABLE `perslesonterm`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `professors`
--
ALTER TABLE `professors`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sayfa1`
--
ALTER TABLE `sayfa1`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sefaresh`
--
ALTER TABLE `sefaresh`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sision`
--
ALTER TABLE `sision`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sort`
--
ALTER TABLE `sort`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34825;
--
-- AUTO_INCREMENT for table `sortv`
--
ALTER TABLE `sortv`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=724;
--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `superadmins`
--
ALTER TABLE `superadmins`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `superadminselanats`
--
ALTER TABLE `superadminselanats`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `wbs`
--
ALTER TABLE `wbs`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;
--
-- AUTO_INCREMENT for table `wbss`
--
ALTER TABLE `wbss`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;