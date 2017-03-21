-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2013 at 01:08 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yulop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `dateadd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `dateadd`, `status`) VALUES
(1, 'Test title blog 1', 'Description title blog 1 here', '2010-05-13 17:25:38', 1),
(2, 'Testing title blog 2', 'Description Testing title blog 1', '2010-05-13 17:41:18', 1),
(3, 'Test m?i tháng 5', 'Description test m?i tháng n?m', '2010-05-21 14:54:36', 1),
(4, 'Add tháng 5 2 ?? phân trang 1', 'Description Add tháng 5 2 ?? phân trang 1', '2010-05-21 15:38:50', 1),
(5, 'Add tháng 5 2 ?? phân trang 2', 'Description Add tháng 5 2 ?? phân trang 2', '2010-05-21 15:39:02', 1),
(6, 'Add tháng 5 2 ?? phân trang 3', 'Description Add tháng 5 2 ?? phân trang 3\n', '2010-05-21 15:39:15', 1),
(7, 'Add tháng 5 2 ?? phân trang 4', 'Description Add tháng 5 2 ?? phân trang 4', '2010-05-21 15:39:25', 1),
(8, 'Add tháng 5 2 ?? phân trang 5', 'Description Add tháng 5 2 ?? phân trang 5', '2010-05-21 15:39:35', 1),
(9, 'Add tháng 5 2 ?? phân trang 6', 'Description Add tháng 5 2 ?? phân trang 6', '2010-05-21 15:39:44', 1),
(10, 'Add tháng 5 2 ?? phân trang 7', 'Description Add tháng 5 2 ?? phân trang 7', '2010-05-21 15:40:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coords`
--

CREATE TABLE IF NOT EXISTS `coords` (
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coords`
--

INSERT INTO `coords` (`lat`, `lng`) VALUES
(12.844400, 77.673798),
(12.927000, 77.673798);

-- --------------------------------------------------------

--
-- Table structure for table `ctype`
--

CREATE TABLE IF NOT EXISTS `ctype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `ctype`
--

INSERT INTO `ctype` (`id`, `name`) VALUES
(2, 'Customer'),
(100, 'Enduser');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`) VALUES
(1, 'The title', 'This is the post body.', '2010-04-05 19:49:30', NULL),
(2, 'A title once again', 'And the post body follows.', '2010-04-05 19:49:30', NULL),
(3, 'Title strikes back', 'This is really exciting! Not.??', '2010-04-05 19:49:32', '2010-04-06 17:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE IF NOT EXISTS `tbl_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(20) DEFAULT NULL,
  `address` varchar(1200) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `contact_person` varchar(20) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `lng` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`id`, `comp_name`, `address`, `city`, `state`, `pincode`, `phone_number`, `contact_person`, `lat`, `lng`, `email`, `customer_id`) VALUES
(1, 'Digital Computer Sol', 'Eastern Street', 2, 1, '534001', 2147483647, 'S V R Atmanandarao', '16.7', '81.1', 'elr.dcs@gmail.com ', 2),
(2, 'NIIT', 'No.38, 4th B Cross Road, Koramangala Industrial Layout, Koramangala Bangalore, Karnataka', 2, 1, '534001', 2147483647, 'S V R Atmanandarao', '16.71', '82.1', 'elr.dcs@gmail.com ', 2),
(3, 'Systems Domain ', '#174/40, 4th floor, Lucky Paradise, 22nd cross, 8th F main, jayanagar 3rd block Bangalore, Karnataka', 2, 1, '534001', 2147483647, 'S V R Atmanandarao', '16.72', '81.2', 'elr.dcs@gmail.com ', 1),
(4, '4Digital Computer So', 'Eastern Street', 2, 1, '534001', 2147483647, 'S V R Atmanandarao', '16.73', '81.1', 'elr.dcs@gmail.com ', 3),
(5, '5Digital Computer So', 'Eastern Street', 2, 1, '534001', 2147483647, 'S V R Atmanandarao', '16.74', '81.1', 'elr.dcs@gmail.com ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankatm`
--

CREATE TABLE IF NOT EXISTS `tbl_bankatm` (
  `list_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sr_type_flg` varchar(6) DEFAULT NULL,
  `filter` varchar(100) NOT NULL,
  `list_name` varchar(50) DEFAULT NULL,
  `sr_type` varchar(30) DEFAULT NULL,
  `sr_flag` varchar(10) DEFAULT NULL,
  `sr_contact_name` varchar(30) DEFAULT NULL,
  `sr_name` varchar(50) NOT NULL,
  `list_address` varchar(1200) DEFAULT NULL,
  `sr_landmark` varchar(60) DEFAULT NULL,
  `sr_area` varchar(50) NOT NULL,
  `list_city` varchar(50) DEFAULT NULL,
  `sr_pincode` int(10) DEFAULT NULL,
  `list_state` varchar(50) NOT NULL,
  `sr_std_code` int(10) DEFAULT NULL,
  `sr_tele1` int(20) DEFAULT NULL,
  `sr_tele2` int(20) DEFAULT NULL,
  `sr_tele3` int(20) DEFAULT NULL,
  `sr_mobile1` varchar(15) DEFAULT NULL,
  `sr_mobile2` varchar(15) DEFAULT NULL,
  `sr_fax` varchar(50) DEFAULT NULL,
  `sr_email` varchar(50) DEFAULT NULL,
  `sr_website` varchar(100) DEFAULT NULL,
  `sr_opentiming` time DEFAULT NULL,
  `sr_closetiming` time DEFAULT NULL,
  `sr_halfday` varchar(20) DEFAULT NULL,
  `sr_hd_open` time DEFAULT NULL,
  `sr_hd_close` time DEFAULT NULL,
  `sr_weekly_holiday` varchar(10) DEFAULT NULL,
  `sr_ifsc` varchar(30) DEFAULT NULL,
  `sr_atm_avail` varchar(15) DEFAULT NULL,
  `sr_lock_avail` varchar(15) DEFAULT NULL,
  `sr_365_work` varchar(15) DEFAULT NULL,
  `sr_generic_info` varchar(100) DEFAULT NULL,
  `sr_srv` varchar(200) DEFAULT NULL,
  `list_lat` varchar(50) DEFAULT NULL,
  `list_long` varchar(30) DEFAULT NULL,
  `sr_LL_Accu` int(30) DEFAULT NULL,
  `sr_LL_comment` varchar(30) DEFAULT NULL,
  `sr_created_by` varchar(30) DEFAULT NULL,
  `sr_created_date` varchar(10) DEFAULT NULL,
  `sr_modified_by` varchar(30) DEFAULT NULL,
  `sr_modified_date` datetime DEFAULT NULL,
  `sr_image_id` varchar(40) DEFAULT NULL,
  `sr_new_lat` varchar(30) NOT NULL,
  `sr_new_long` varchar(30) NOT NULL,
  `sr_accuracy` varchar(30) NOT NULL,
  `list_customer_id` int(11) NOT NULL,
  `list_business_type` varchar(50) DEFAULT NULL,
  `product_category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17615 ;

--
-- Dumping data for table `tbl_bankatm`
--

INSERT INTO `tbl_bankatm` (`list_id`, `sr_type_flg`, `filter`, `list_name`, `sr_type`, `sr_flag`, `sr_contact_name`, `sr_name`, `list_address`, `sr_landmark`, `sr_area`, `list_city`, `sr_pincode`, `list_state`, `sr_std_code`, `sr_tele1`, `sr_tele2`, `sr_tele3`, `sr_mobile1`, `sr_mobile2`, `sr_fax`, `sr_email`, `sr_website`, `sr_opentiming`, `sr_closetiming`, `sr_halfday`, `sr_hd_open`, `sr_hd_close`, `sr_weekly_holiday`, `sr_ifsc`, `sr_atm_avail`, `sr_lock_avail`, `sr_365_work`, `sr_generic_info`, `sr_srv`, `list_lat`, `list_long`, `sr_LL_Accu`, `sr_LL_comment`, `sr_created_by`, `sr_created_date`, `sr_modified_by`, `sr_modified_date`, `sr_image_id`, `sr_new_lat`, `sr_new_long`, `sr_accuracy`, `list_customer_id`, `list_business_type`, `product_category`) VALUES
(2, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'Shop No: 63/64/65/66 , Ground Floor Adiitya Complex, New Bus Stand NH-14', 'Near Jalaram Mandir Deesa', 'Deesa', 'Deesa', 385535, 'Gujarat', 2744, 230358, 230359, 230360, '', '', '', '', '', '09:30:00', '03:30:00', 'Saturday', '09:30:00', '01:30:00', 'Sunday', 'KKBK0000824', 'Yes', 'No', '', '', '', '24.262896', '72.180679', 0, '', 'Sathish', '3/9/2012', '', '0000-00-00 00:00:00', ' ', '24.262878', '72.185842', '3', 0, NULL, NULL),
(3, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'City Centre, 56', '', 'Rajpur road', 'Dehradun', 248001, 'Uttarakhand', 135, 3058280, 0, 0, '', '', '', '', '', '09:30:00', '04:30:00', 'Saturday', '09:30:00', '01:30:00', 'Sunday', 'KKBK0000153', 'Yes', 'Yes', '', '', '', '30.33095', '78.023773', 0, '', 'Sathish', '3/9/2012', '', '0000-00-00 00:00:00', ' ', '30.320232', '78.035781', '3', 0, NULL, NULL),
(4, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'Ground Floor, Ward No.18', 'Ramson Arcade', 'Shastri Nagar', 'Dhanbad', 826001, 'Jharkhand', 326, 6453948, 6453949, 6453951, '6453952', '6453953', '', '', '', '09:30:00', '04:30:00', 'Saturday', '09:30:00', '02:00:00', 'Sunday', 'KKBK0000150', 'Yes', 'Yes', '', '', '', '23.798486', '86.432976', 0, '', 'Sathish', '3/9/2012', 'user1', '2012-07-17 09:49:09', ' \r', '23.875211', '86.417100', '3', 1, NULL, NULL),
(5, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'BOC Gate , Dist Dibrugarh', 'Near Jayanagar', 'Duliajan', 'Duliajan', 786602, 'Assam', 374, 2800003, 0, 0, '', '', '', '', '', '09:30:00', '04:30:00', 'Saturday', '09:30:00', '01:30:00', 'Sunday', 'KKBK0000333', 'Yes', 'Yes', '', '', '', '27.347651', '95.322037', 0, '', 'Sathish', '3/9/2012', 'user1', '2012-07-23 16:25:47', ' \r', '27.366310', '95.307502', '3', 1, NULL, NULL),
(6, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'Khammam', '', 'Edulapuram', 'bangalore', 507163, 'Karnataka', 0, 0, 0, 0, '', '', '', '', '', '09:30:00', '04:30:00', 'Saturday', '09:30:00', '02:00:00', 'Sunday', 'KKBK0007802', 'No', 'No', '', '', '', '12.5643', '77.7654', 0, '', 'Sathish', '3/9/2012', 'user2', '2012-07-11 13:02:13', ' ', '17.262589', '80.101621', '1', 2, 'WEP Authorised Service Center', 'Billing Printers'),
(7, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', '373, G.T.Road', '', 'Fatehabad', 'Fatehabad', 125050, 'Haryana', 166, 7300500, 0, 0, '', '', '', '', '', '09:30:00', '04:30:00', 'Saturday', '09:30:00', '02:00:00', 'Sunday', 'KKBK0000300', 'Yes', 'Yes', '', '', '', '29.51466', '75.46447', 0, '', 'Sathish', '3/9/2012', 'user4', '2012-07-17 10:26:27', ' \r', '29.513203', '75.451600', '3', 4, NULL, NULL),
(8, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'Ground Floor, SCO No.2, Sector 16, District Center', '', 'Faridabad', 'Faridabad', 121002, 'Haryana', 129, 4141697, 4141698, 0, '', '', '', '', '', '09:30:00', '03:30:00', 'Saturday', '09:30:00', '01:30:00', 'Sunday', 'KKBK0000286', 'Yes', 'Yes', '', '', '', '28.42119', '77.32082', 0, '', 'Sathish', '3/9/2012', 'user4', '2012-07-14 11:13:26', ' \r', '28.409933', '77.318790', '3', 4, NULL, NULL),
(9, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'Office No.1, Sindhu - I, Ground Floor, Plot No.309, Ward 12/B', '', 'Gandhidham', 'Gandhidham', 370201, 'Gujarat', 2836, 650836, 650837, 650838, '', '', '', '', '', '09:30:00', '04:30:00', 'Saturday', '09:30:00', '02:00:00', 'Sunday', 'KKBK0000822', 'Yes', 'Yes', '', '', '', '23.08832', '70.117737', 0, '', 'Sathish', '3/9/2012', 'user2', '2012-07-14 12:44:04', ' \r', '23.066369', '70.136496', '3', 2, NULL, NULL),
(10, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'Plot No.319, Sector  16', '', 'GH Road', 'Gandhinagar', 382016, 'Gujarat', 79, 66731025, 0, 0, '', '', '', '', '', '09:30:00', '04:30:00', 'Saturday', '09:30:00', '02:00:00', 'Sunday', 'KKBK0000879', 'Yes', 'Yes', '', '', '', '23.22307', '72.65611', 0, '', 'Sathish', '3/9/2012', 'user2', '2012-07-14 14:48:33', ' \r', '23.226504', '72.646853', '3', 2, NULL, NULL),
(11, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'C,77 RDC,  District Centre', '', 'Raj Nagar', 'Ghaziabad', 201001, 'Uttar Pradesh', 120, 4175100, 0, 0, '', '', '', '', '', '09:00:00', '04:00:00', 'Saturday', '09:00:00', '01:30:00', 'Sunday', 'KKBK0000677', 'Yes', 'Yes', '', '', '', '28.681925', '77.446388', 0, '', 'Sathish', '3/9/2012', 'user2', '2012-07-23 17:39:23', ' \r', '28.676567', '77.442724', '3', 2, NULL, NULL),
(12, '1', 'Kotak Mahindra Bank', 'Kotak_Mahindra_Bank', 'Branch', '', '', 'Kotak Mahindra Bank', 'Ground Floor, Hotel Park Plaza', 'Opposite Azad Maidan', 'Panjim', 'Panjim', 403001, 'Goa', 832, 2421703, 0, 0, '', '', '', '', '', '09:30:00', '03:30:00', 'Saturday', '09:30:00', '01:30:00', 'Sunday', 'KKBK0000701', 'Yes', 'Yes', '', '', '', '15.50011', '73.82608', 0, '', 'Sathish', '3/9/2012', 'user4', '2012-12-01 11:20:05', ' \r', '15.499984', '73.826221', '3', 4, NULL, NULL),
(17576, '1', 'Axis Bank-ATM', 'Axis_Bank-ATM', 'ATM', '', '', 'Axis Bank-ATM', 'The Collectorate', '', 'Collectorate Jabalpur', 'Jabalpur', 482001, 'Madhya Pradesh', 0, 0, 0, 0, '', '', '', '', '', '00:00:00', '00:00:00', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '12.96075', '77.64160', 0, '', 'Shreyas', '4/4/2012', 'user3', '2012-07-25 15:51:40', ' ', '23.165757', '79.945648', '1', 3, NULL, NULL),
(17580, '1', 'Axis Bank-ATM', 'Axis_Bank-ATM', 'ATM', '', '', 'Axis Bank-ATM', 'No.8, Ground Floor, Good Luck Apartments, Plot No.484, Jorge Disilva Ward, ( Old Howbag Ward)', '', 'Narmada Road', 'Jabalpur', 482001, 'Madhya Pradesh', 0, 0, 0, 0, '', '', '', '', '', '00:00:00', '00:00:00', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '23.150090', '79.934249', 0, '', 'Shreyas', '4/4/2012', 'user3', '2012-07-25 16:04:52', ' ', '23.150090', '79.934249', '3', 3, 'WEP Authorised Service Center', 'Billing Printers'),
(17582, '1', 'Axis Bank-ATM', 'Axis_Bank-ATM', 'ATM', '', '', 'Axis Bank-ATM', 'Shop No.S.3/8, Scheme No.11, JDA Market, Labour Chowk', '', 'Chawanpan', 'Jabalpur', 482002, 'Madhya Pradesh', 0, 0, 0, 0, '', '', '', '', '', '00:00:00', '00:00:00', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '25.12539261151203', '77.255859375', 0, '', 'Shreyas', '4/4/2012', 'user3', '2012-07-25 16:11:04', ' ', '23.167483', '79.912518', '3', 3, 'WEP Authorised Dealer', 'Billing Printers'),
(17587, '1', 'Axis Bank-ATM', 'Axis_Bank-ATM', 'ATM', '', '', 'Axis Bank-ATM', 'No.517 (1021) Niwarganj', '', 'Pandey Chowk', 'Jabalpur', 482001, 'Madhya Pradesh', 0, 0, 0, 0, '', '', '', '', '', '00:00:00', '00:00:00', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '23.157984', '79.948701', 0, '', 'Shreyas', '4/4/2012', 'user3', '2012-07-25 16:24:37', ' ', '23.157984', '79.948701', '1', 3, 'WEP Authorised Dealer', 'Billing Printers'),
(17593, '1', 'Axis Bank-ATM', 'Axis_Bank-ATM', 'ATM', '', '', 'Axis Bank-ATM', 'Smt. Maya Yadav, Shop No.1 Jackson Petrol Pump Road, Civil Line', 'Near Railway Station', 'Jabalpur', 'Jabalpur', 482001, 'Madhya Pradesh', 0, 0, 0, 0, '', '', '', '', '', '00:00:00', '00:00:00', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '23.16369', '79.951576', 0, '', 'Shreyas', '4/4/2012', 'user3', '2012-07-25 16:38:23', ' ', '23.16369', '79.951576', '1', 3, 'WEP Authorised Dealer', 'Billing Printers'),
(17595, '1', 'Axis Bank-ATM', 'Axis_Bank-ATM', 'ATM', '', '', 'Axis Bank-ATM', 'Shop No.7 & 8, JDA Shopping Complex, Zonal Office', 'Opposite State Bank Of India', 'Vijay Nagar', 'Jabalpur', 482002, 'Madhya Pradesh', 0, 0, 0, 0, '', '', '', '', '', '00:00:00', '00:00:00', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '23.189458', '79.903945', 0, '', 'Shreyas', '4/4/2012', 'user3', '2012-07-25 16:44:40', ' ', '23.189458', '79.903945', '1', 3, 'WEP Authorised Dealer', 'Billing Printers'),
(17597, '1', 'Axis Bank-ATM', 'Axis_Bank-ATM', 'ATM', '', '', 'Axis Bank-ATM', 'Collectorate Office,Bangalore', '', 'Jhinjiri', 'bangalore', 483504, 'karnataka', 0, 0, 0, 0, '', '', '', '', '', '00:00:00', '00:00:00', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '12.91083 ', '77.64883', 0, '', 'Shreyas', '4/4/2012', 'user2', '2012-11-07 15:36:33', ' ', '23.838241', '80.394964', '1', 2, 'WEP Authorised Dealer', 'Billing Printers'),
(17608, '1', 'Axis Bank-ATM', 'Axis_Bank-ATM', 'ATM', '', '', 'Axis Bank-ATM', 'IPCA Laboratories Ltd, P.O. Village - Sejavta', '', 'Mhow-Neemuch Road', 'bangalore', 457002, 'karnataka', 0, 0, 0, 0, '', '', '', '', '', '00:00:00', '00:00:00', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '12.91397', '77.67234', 0, '', 'Shreyas', '4/4/2012', 'user2', '2012-11-26 12:47:46', ' ', '23.331213', '75.041052', '1', 2, 'WEP Authorised Dealer', 'Billing Printers'),
(17614, '1', 'Axis Bank-ATM', 'Axis_Bank-ATM', 'ATM', '', '', 'Axis Bank-ATM', 'Katra Bazar', 'Opposite Jama Masjid', 'bangalore', 'bangalore', 470002, 'karnataka', 0, 0, 0, 0, '', '', '', '', '', '00:00:00', '00:00:00', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '12.9877', '77.6598', 0, '', 'Shreyas', '4/4/2012', 'user2', '2012-11-27 10:10:37', ' ', '23.840319', '78.739966', '3', 2, 'WEP Authorised Service Center', 'Billing Printers');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_broadcast`
--

CREATE TABLE IF NOT EXISTS `tbl_broadcast` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_content` varchar(1200) DEFAULT NULL,
  `message_subject` varchar(100) DEFAULT NULL,
  `message_from` varchar(1200) DEFAULT NULL,
  `message_to` varchar(1500) DEFAULT NULL,
  `message_messagedate` datetime DEFAULT NULL,
  `message_type` varchar(15) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `count` int(5) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `tbl_broadcast`
--

INSERT INTO `tbl_broadcast` (`message_id`, `message_content`, `message_subject`, `message_from`, `message_to`, `message_messagedate`, `message_type`, `status`, `count`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 'bnghngj', NULL, '0', NULL, '2013-01-29 11:15:06', 'SMS', NULL, NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(2, 'bnghngj', NULL, '0', NULL, '2013-01-29 11:17:46', 'SMS', NULL, NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(3, NULL, NULL, '0', NULL, '2013-01-29 11:52:19', 'Email', NULL, NULL, 0, '2013-01-29 11:52:19', NULL, NULL),
(4, NULL, NULL, '0', NULL, '2013-01-29 11:52:19', 'Email', NULL, NULL, 0, '2013-01-29 11:52:19', NULL, NULL),
(5, NULL, NULL, '0', NULL, '2013-01-29 11:53:40', 'Email', NULL, NULL, 0, '2013-01-29 11:53:40', NULL, NULL),
(6, NULL, NULL, '0', NULL, '2013-01-29 11:53:40', 'Email', NULL, NULL, 0, '2013-01-29 11:53:40', NULL, NULL),
(7, NULL, NULL, '0', NULL, '2013-01-29 11:55:46', 'Email', NULL, NULL, 0, '2013-01-29 11:55:46', NULL, NULL),
(8, NULL, NULL, '0', NULL, '2013-01-29 11:55:46', 'Email', NULL, NULL, 0, '2013-01-29 11:55:46', NULL, NULL),
(9, NULL, NULL, '0', NULL, '2013-01-29 11:55:46', 'Email', NULL, NULL, 0, '2013-01-29 11:55:46', NULL, NULL),
(10, NULL, NULL, '0', 'abcd@gmail.com', '2013-01-29 11:57:20', 'Email', NULL, NULL, 0, '2013-01-29 11:57:20', NULL, NULL),
(11, NULL, NULL, '0', 'defr@gmail.com', '2013-01-29 11:57:20', 'Email', NULL, NULL, 0, '2013-01-29 11:57:20', NULL, NULL),
(12, NULL, NULL, '0', 'vhdydt@gmail.com', '2013-01-29 11:57:20', 'Email', NULL, NULL, 0, '2013-01-29 11:57:20', NULL, NULL),
(13, NULL, NULL, '0', 'abcd@gmail.com', '2013-01-29 12:31:59', 'Email', NULL, NULL, 0, '2013-01-29 12:31:59', NULL, NULL),
(14, NULL, NULL, '0', 'defr@gmail.com', '2013-01-29 12:31:59', 'Email', NULL, NULL, 0, '2013-01-29 12:31:59', NULL, NULL),
(15, NULL, NULL, '0', 'vhdydt@gmail.com', '2013-01-29 12:31:59', 'Email', NULL, NULL, 0, '2013-01-29 12:31:59', NULL, NULL),
(16, NULL, NULL, '0', 'fghgfh@gmail.com', '2013-01-29 12:31:59', 'Email', NULL, NULL, 0, '2013-01-29 12:31:59', NULL, NULL),
(17, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 12:37:02', 'Email', NULL, NULL, 0, '2013-01-29 12:37:02', NULL, NULL),
(18, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 12:37:34', 'Email', NULL, NULL, 0, '2013-01-29 12:37:34', NULL, NULL),
(19, NULL, NULL, '0', 'nithy@gmail.com', '2013-01-29 12:37:34', 'Email', NULL, NULL, 0, '2013-01-29 12:37:34', NULL, NULL),
(20, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 12:38:16', 'Email', NULL, NULL, 0, '2013-01-29 12:38:16', NULL, NULL),
(21, NULL, NULL, '0', 'nithy@gmail.com', '2013-01-29 12:38:16', 'Email', NULL, NULL, 0, '2013-01-29 12:38:16', NULL, NULL),
(22, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 12:39:48', 'Email', NULL, NULL, 0, '2013-01-29 12:39:48', NULL, NULL),
(23, NULL, NULL, '0', 'abc@gmail.com', '2013-01-29 12:40:08', 'Email', NULL, NULL, 0, '2013-01-29 12:40:08', NULL, NULL),
(24, NULL, NULL, '0', 'abc@gmail.com', '2013-01-29 12:40:13', 'Email', NULL, NULL, 0, '2013-01-29 12:40:13', NULL, NULL),
(25, NULL, NULL, '0', 'def@gmail.com', '2013-01-29 12:40:26', 'Email', NULL, NULL, 0, '2013-01-29 12:40:26', NULL, NULL),
(26, NULL, NULL, '0', 'abc@gmail.com', '2013-01-29 12:47:47', 'Email', NULL, NULL, 0, '2013-01-29 12:47:47', NULL, NULL),
(27, NULL, NULL, '0', 'def@gmail.com', '2013-01-29 12:47:47', 'Email', NULL, NULL, 0, '2013-01-29 12:47:47', NULL, NULL),
(28, NULL, NULL, '0', 'retg@gmail.com', '2013-01-29 12:47:47', 'Email', NULL, NULL, 0, '2013-01-29 12:47:47', NULL, NULL),
(29, NULL, NULL, '0', 'abc@gmail.com,def@gmail.com,retg@gmail.com', '2013-01-29 12:47:47', 'Email', NULL, NULL, 0, '2013-01-29 12:47:47', NULL, NULL),
(30, NULL, NULL, '0', 'abc@gmail.com', '2013-01-29 12:48:16', 'Email', NULL, NULL, 0, '2013-01-29 12:48:16', NULL, NULL),
(31, NULL, NULL, '0', 'def@gmail.com', '2013-01-29 12:48:16', 'Email', NULL, NULL, 0, '2013-01-29 12:48:16', NULL, NULL),
(32, NULL, NULL, '0', 'retg@gmail.com', '2013-01-29 12:48:16', 'Email', NULL, NULL, 0, '2013-01-29 12:48:16', NULL, NULL),
(33, NULL, NULL, '0', 'abc@gmail.com,def@gmail.com,retg@gmail.com', '2013-01-29 12:48:16', 'Email', NULL, NULL, 0, '2013-01-29 12:48:16', NULL, NULL),
(34, NULL, NULL, '0', 'abc@gmail.com', '2013-01-29 12:48:21', 'Email', NULL, NULL, 0, '2013-01-29 12:48:21', NULL, NULL),
(35, NULL, NULL, '0', 'def@gmail.com', '2013-01-29 12:48:21', 'Email', NULL, NULL, 0, '2013-01-29 12:48:21', NULL, NULL),
(36, NULL, NULL, '0', 'retg@gmail.com', '2013-01-29 12:48:21', 'Email', NULL, NULL, 0, '2013-01-29 12:48:21', NULL, NULL),
(37, NULL, NULL, '0', 'abc@gmail.com,def@gmail.com,retg@gmail.com', '2013-01-29 12:48:21', 'Email', NULL, NULL, 0, '2013-01-29 12:48:21', NULL, NULL),
(38, NULL, NULL, '0', 'abc@gmail.com', '2013-01-29 12:48:27', 'Email', NULL, NULL, 0, '2013-01-29 12:48:27', NULL, NULL),
(39, NULL, NULL, '0', 'def@gmail.com', '2013-01-29 12:48:28', 'Email', NULL, NULL, 0, '2013-01-29 12:48:28', NULL, NULL),
(40, NULL, NULL, '0', 'retg@gmail.com', '2013-01-29 12:48:28', 'Email', NULL, NULL, 0, '2013-01-29 12:48:28', NULL, NULL),
(41, NULL, NULL, '0', 'abc@gmail.com,def@gmail.com,retg@gmail.com', '2013-01-29 12:48:28', 'Email', NULL, NULL, 0, '2013-01-29 12:48:28', NULL, NULL),
(42, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 12:49:49', 'Email', NULL, NULL, 0, '2013-01-29 12:49:49', NULL, NULL),
(43, NULL, NULL, '0', 'nithy@gmail.com', '2013-01-29 12:49:49', 'Email', NULL, NULL, 0, '2013-01-29 12:49:49', NULL, NULL),
(44, NULL, NULL, '0', 'nithya@gmail.com,nithy@gmail.com', '2013-01-29 12:49:49', 'Email', NULL, NULL, 0, '2013-01-29 12:49:49', NULL, NULL),
(45, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 12:55:05', 'Email', NULL, NULL, 0, '2013-01-29 12:55:05', NULL, NULL),
(46, NULL, NULL, '0', 'nithy@gmail.com', '2013-01-29 12:55:05', 'Email', NULL, NULL, 0, '2013-01-29 12:55:05', NULL, NULL),
(47, NULL, NULL, '0', 'nithya@gmail.com,nithy@gmail.com', '2013-01-29 12:55:05', 'Email', NULL, NULL, 0, '2013-01-29 12:55:05', NULL, NULL),
(48, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 12:55:38', 'Email', NULL, NULL, 0, '2013-01-29 12:55:38', NULL, NULL),
(49, NULL, NULL, '0', 'nithy@gmail.com', '2013-01-29 12:55:38', 'Email', NULL, NULL, 0, '2013-01-29 12:55:38', NULL, NULL),
(50, NULL, NULL, '0', 'nithya@gmail.com, nithy@gmail.com', '2013-01-29 12:55:38', 'Email', NULL, NULL, 0, '2013-01-29 12:55:38', NULL, NULL),
(51, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 12:55:58', 'Email', NULL, NULL, 0, '2013-01-29 12:55:58', NULL, NULL),
(52, NULL, NULL, '0', 'nithy@gmail.com', '2013-01-29 12:55:58', 'Email', NULL, NULL, 0, '2013-01-29 12:55:58', NULL, NULL),
(53, NULL, NULL, '0', 'nithya@gmail.com,nithy@gmail.com', '2013-01-29 12:55:58', 'Email', NULL, NULL, 0, '2013-01-29 12:55:58', NULL, NULL),
(54, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 12:56:35', 'Email', NULL, NULL, 0, '2013-01-29 12:56:35', NULL, NULL),
(55, NULL, NULL, '0', 'nithy@gmail.com', '2013-01-29 12:56:35', 'Email', NULL, NULL, 0, '2013-01-29 12:56:35', NULL, NULL),
(56, NULL, NULL, '0', 'nithya@gmail.com,nithy@gmail.com', '2013-01-29 12:56:35', 'Email', NULL, NULL, 0, '2013-01-29 12:56:35', NULL, NULL),
(57, 'rtyhtrutuj', NULL, '0', '999994354,489678954,9578689467,479604896456', '2013-01-29 13:02:01', 'SMS', NULL, NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(58, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 13:10:05', 'Email', NULL, NULL, 0, '2013-01-29 13:10:05', NULL, NULL),
(59, NULL, NULL, '0', 'sdfsd@gmail.com', '2013-01-29 13:10:05', 'Email', NULL, NULL, 0, '2013-01-29 13:10:05', NULL, NULL),
(60, NULL, NULL, '0', 'nithya@gmail.com,sdfsd@gmail.com', '2013-01-29 13:10:05', 'Email', NULL, NULL, 0, '2013-01-29 13:10:05', NULL, NULL),
(61, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 13:11:09', 'Email', NULL, NULL, 0, '2013-01-29 13:11:09', NULL, NULL),
(62, NULL, NULL, '0', 'sdfsd@gmail.com', '2013-01-29 13:11:10', 'Email', NULL, NULL, 0, '2013-01-29 13:11:10', NULL, NULL),
(63, NULL, NULL, '0', 'nithya@gmail.com,sdfsd@gmail.com', '2013-01-29 13:11:10', 'Email', NULL, NULL, 0, '2013-01-29 13:11:10', NULL, NULL),
(64, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 13:24:33', 'Email', NULL, NULL, 0, '2013-01-29 13:24:33', NULL, NULL),
(65, NULL, NULL, '0', 'sdfsd@gmail.com', '2013-01-29 13:24:33', 'Email', NULL, NULL, 0, '2013-01-29 13:24:33', NULL, NULL),
(66, NULL, NULL, '0', 'nithya@gmail.com,sdfsd@gmail.com', '2013-01-29 13:24:34', 'Email', NULL, NULL, 0, '2013-01-29 13:24:34', NULL, NULL),
(67, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 13:34:09', 'Email', NULL, NULL, 0, '2013-01-29 13:34:09', NULL, NULL),
(68, NULL, NULL, '0', 'nithya@gmail.com', '2013-01-29 13:34:09', 'Email', NULL, NULL, 0, '2013-01-29 13:34:09', NULL, NULL),
(69, 'fghgnghj', NULL, '0', '987854156152,654647897489,564954654', '2013-01-29 13:43:40', 'SMS', NULL, NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(70, 'sdfgm,', NULL, '0', '765876988890', '2013-02-05 14:41:00', 'SMS', NULL, NULL, 0, '2013-02-05 00:00:00', NULL, NULL),
(71, NULL, NULL, '0', 'nithya@gmail.com', '2013-02-05 14:41:25', 'Email', NULL, NULL, 0, '2013-02-05 14:41:25', NULL, NULL),
(72, NULL, NULL, '0', 'nithya@gmail.com', '2013-02-05 14:41:25', 'Email', NULL, NULL, 0, '2013-02-05 14:41:25', NULL, NULL),
(73, NULL, NULL, '0', 'nithya@gmail.com', '2013-02-05 14:41:34', 'Email', NULL, NULL, 0, '2013-02-05 14:41:34', NULL, NULL),
(74, NULL, NULL, '0', 'nithya@gmail.com', '2013-02-05 14:41:34', 'Email', NULL, NULL, 0, '2013-02-05 14:41:34', NULL, NULL),
(75, NULL, NULL, '0', 'nithya@gmail.com', '2013-02-05 14:42:00', 'Email', NULL, NULL, 0, '2013-02-05 14:42:00', NULL, NULL),
(76, NULL, NULL, '0', 'nithya@gmail.com', '2013-02-05 14:42:00', 'Email', NULL, NULL, 0, '2013-02-05 14:42:00', NULL, NULL),
(77, 'sdf', NULL, '0', '765876988890', '2013-02-05 14:47:07', 'SMS', NULL, NULL, 0, '2013-02-05 00:00:00', NULL, NULL),
(78, 'cfvcvbcb', NULL, '0', '765876988890', '2013-02-05 14:48:37', 'SMS', NULL, NULL, 0, '2013-02-05 00:00:00', NULL, NULL),
(79, 'cfvcvbcb', NULL, '0', '765876988890', '2013-02-05 14:50:14', 'SMS', NULL, NULL, 0, '2013-02-05 00:00:00', NULL, NULL),
(80, 'cfvcvbcb', NULL, '0', '765876988890', '2013-02-05 14:50:46', 'SMS', NULL, NULL, 0, '2013-02-05 00:00:00', NULL, NULL),
(81, 'dfgbdfgbfbh', NULL, '0', '56786897', '2013-02-06 06:26:59', 'SMS', NULL, NULL, 0, '2013-02-06 00:00:00', NULL, NULL),
(82, NULL, NULL, '0', 'nithya@gmail.com', '2013-02-06 06:27:29', 'Email', NULL, NULL, 0, '2013-02-06 06:27:29', NULL, NULL),
(83, NULL, NULL, '0', 'nithy@gmail.com', '2013-02-06 06:27:29', 'Email', NULL, NULL, 0, '2013-02-06 06:27:29', NULL, NULL),
(84, NULL, NULL, '0', 'nithya@gmail.com,nithy@gmail.com', '2013-02-06 06:27:29', 'Email', NULL, NULL, 0, '2013-02-06 06:27:29', NULL, NULL),
(85, 'hello', NULL, '0', '7697976867,435464564564', '2013-02-06 06:35:18', 'SMS', NULL, NULL, 0, '2013-02-06 00:00:00', NULL, NULL),
(86, 'fsdfsdfsd', NULL, '0', 'dsfsd', '2013-02-06 07:25:01', 'SMS', NULL, NULL, 0, '2013-02-06 00:00:00', NULL, NULL),
(87, NULL, NULL, '0', 'nithya@gmail.com', '2013-02-10 08:00:18', 'Email', NULL, NULL, 0, '2013-02-10 08:00:18', NULL, NULL),
(88, NULL, NULL, '0', 'nithya@gmail.com', '2013-02-10 08:00:18', 'Email', NULL, NULL, 0, '2013-02-10 08:00:18', NULL, NULL),
(89, 'hgjhkhjk', NULL, '0', '2343565476567', '2013-02-10 08:00:28', 'SMS', NULL, NULL, 0, '2013-02-10 00:00:00', NULL, NULL),
(90, NULL, NULL, '0', 'sunny@testmail.com', '2013-02-11 11:46:59', 'Email', NULL, NULL, 0, '2013-02-11 11:46:59', NULL, NULL),
(91, NULL, NULL, '0', 'sunny@testmail.com', '2013-02-11 11:46:59', 'Email', NULL, NULL, 0, '2013-02-11 11:46:59', NULL, NULL),
(92, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:48:18', 'Email', NULL, NULL, 0, '2013-02-11 11:48:18', NULL, NULL),
(93, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:48:18', 'Email', NULL, NULL, 0, '2013-02-11 11:48:18', NULL, NULL),
(94, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:51:16', 'Email', NULL, NULL, 0, '2013-02-11 11:51:16', NULL, NULL),
(95, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:51:16', 'Email', NULL, NULL, 0, '2013-02-11 11:51:16', NULL, NULL),
(96, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:52:04', 'Email', NULL, NULL, 0, '2013-02-11 11:52:04', NULL, NULL),
(97, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:52:04', 'Email', NULL, NULL, 0, '2013-02-11 11:52:04', NULL, NULL),
(98, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:52:53', 'Email', NULL, NULL, 0, '2013-02-11 11:52:53', NULL, NULL),
(99, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:52:53', 'Email', NULL, NULL, 0, '2013-02-11 11:52:53', NULL, NULL),
(100, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:54:04', 'Email', NULL, NULL, 0, '2013-02-11 11:54:04', NULL, NULL),
(101, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:54:04', 'Email', NULL, NULL, 0, '2013-02-11 11:54:04', NULL, NULL),
(102, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:54:40', 'Email', NULL, NULL, 0, '2013-02-11 11:54:40', NULL, NULL),
(103, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:54:40', 'Email', NULL, NULL, 0, '2013-02-11 11:54:40', NULL, NULL),
(104, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:56:25', 'Email', NULL, NULL, 0, '2013-02-11 11:56:25', NULL, NULL),
(105, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:56:25', 'Email', NULL, NULL, 0, '2013-02-11 11:56:25', NULL, NULL),
(106, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:56:44', 'Email', NULL, NULL, 0, '2013-02-11 11:56:44', NULL, NULL),
(107, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:56:44', 'Email', NULL, NULL, 0, '2013-02-11 11:56:44', NULL, NULL),
(108, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:56:56', 'Email', NULL, NULL, 0, '2013-02-11 11:56:56', NULL, NULL),
(109, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:56:56', 'Email', NULL, NULL, 0, '2013-02-11 11:56:56', NULL, NULL),
(110, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:57:23', 'Email', NULL, NULL, 0, '2013-02-11 11:57:23', NULL, NULL),
(111, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:57:24', 'Email', NULL, NULL, 0, '2013-02-11 11:57:24', NULL, NULL),
(112, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:58:21', 'Email', NULL, NULL, 0, '2013-02-11 11:58:21', NULL, NULL),
(113, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:58:21', 'Email', NULL, NULL, 0, '2013-02-11 11:58:21', NULL, NULL),
(114, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:58:27', 'Email', NULL, NULL, 0, '2013-02-11 11:58:27', NULL, NULL),
(115, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:58:27', 'Email', NULL, NULL, 0, '2013-02-11 11:58:27', NULL, NULL),
(116, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:59:02', 'Email', NULL, NULL, 0, '2013-02-11 11:59:02', NULL, NULL),
(117, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:59:02', 'Email', NULL, NULL, 0, '2013-02-11 11:59:02', NULL, NULL),
(118, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:59:19', 'Email', NULL, NULL, 0, '2013-02-11 11:59:19', NULL, NULL),
(119, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 11:59:19', 'Email', NULL, NULL, 0, '2013-02-11 11:59:19', NULL, NULL),
(120, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:00:01', 'Email', NULL, NULL, 0, '2013-02-11 12:00:01', NULL, NULL),
(121, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:04:32', 'Email', NULL, NULL, 0, '2013-02-11 12:04:32', NULL, NULL),
(122, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:04:32', 'Email', NULL, NULL, 0, '2013-02-11 12:04:32', NULL, NULL),
(123, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:06:54', 'Email', NULL, NULL, 0, '2013-02-11 12:06:54', NULL, NULL),
(124, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:06:54', 'Email', NULL, NULL, 0, '2013-02-11 12:06:54', NULL, NULL),
(125, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:07:43', 'Email', NULL, NULL, 0, '2013-02-11 12:07:43', NULL, NULL),
(126, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:08:28', 'Email', NULL, NULL, 0, '2013-02-11 12:08:28', NULL, NULL),
(127, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:08:28', 'Email', NULL, NULL, 0, '2013-02-11 12:08:28', NULL, NULL),
(128, 'This is a test message', NULL, '0', '8892498363', '2013-02-11 12:09:37', 'SMS', NULL, NULL, 0, '2013-02-11 00:00:00', NULL, NULL),
(129, 'sasasas', NULL, '0', 'sasasas', '2013-02-11 12:11:55', 'SMS', NULL, NULL, 0, '2013-02-11 00:00:00', NULL, NULL),
(130, 'sasasas', NULL, '0', 'sasasas', '2013-02-11 12:12:38', 'SMS', NULL, NULL, 0, '2013-02-11 00:00:00', NULL, NULL),
(131, 'asdsdsds', NULL, '0', '8892498363', '2013-02-11 12:14:09', 'SMS', NULL, NULL, 0, '2013-02-11 00:00:00', NULL, NULL),
(132, 'fdfdfdf', NULL, '0', '8892498363', '2013-02-11 12:14:37', 'SMS', NULL, NULL, 0, '2013-02-11 00:00:00', NULL, NULL),
(133, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:19:08', 'Email', NULL, NULL, 0, '2013-02-11 12:19:08', NULL, NULL),
(134, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:19:08', 'Email', NULL, NULL, 0, '2013-02-11 12:19:08', NULL, NULL),
(135, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:22:12', 'Email', NULL, NULL, 0, '2013-02-11 12:22:12', NULL, NULL),
(136, NULL, NULL, '0', 'sun123@gmail.com', '2013-02-11 12:22:12', 'Email', NULL, NULL, 0, '2013-02-11 12:22:12', NULL, NULL),
(137, NULL, NULL, '0', 'nijgkh@gmail.com', '2013-02-11 12:24:45', 'Email', NULL, NULL, 0, '2013-02-11 12:24:45', NULL, NULL),
(138, NULL, NULL, '0', 'nijgkh@gmail.com', '2013-02-11 12:24:45', 'Email', NULL, NULL, 0, '2013-02-11 12:24:45', NULL, NULL),
(139, 'jhnghkj', NULL, '0', '76768789', '2013-02-11 12:39:58', 'SMS', NULL, NULL, 0, '2013-02-11 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_businesstype`
--

CREATE TABLE IF NOT EXISTS `tbl_businesstype` (
  `businesstype_id` int(11) NOT NULL AUTO_INCREMENT,
  `businesstype_name` varchar(25) DEFAULT NULL,
  `businesstype_customer_id` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`businesstype_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_businesstype`
--

INSERT INTO `tbl_businesstype` (`businesstype_id`, `businesstype_name`, `businesstype_customer_id`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 'WEP Authorised Dealer', 1021, 'ACTIVE', NULL, NULL, NULL, NULL),
(2, 'WEP Authorised Service Ce', 1021, 'ACTIVE', NULL, NULL, NULL, NULL),
(3, 'WEP Officer', 1021, 'ACTIVE', NULL, NULL, NULL, NULL),
(16, 'Banking', 1021, 'ACTIVE', 16, '2013-02-11 10:25:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`state_id`, `city_id`, `city_name`) VALUES
(1, 1, 'Anantapur'),
(1, 2, 'Eluru'),
(1, 3, 'Guntur'),
(1, 4, 'Hyderabad'),
(1, 5, 'kadapa'),
(1, 6, 'Kakinda'),
(1, 7, 'Khammam'),
(1, 8, 'Kurnool'),
(1, 9, 'Nellore'),
(1, 10, 'Nizamabad'),
(1, 11, 'Ongole'),
(1, 12, 'Rajahmundry'),
(1, 13, 'Secunderabad'),
(1, 14, 'Srikakulam'),
(1, 15, 'Tirupati'),
(1, 16, 'Visakhapatnam'),
(2, 17, 'Dibrugarh'),
(2, 18, 'Guwahati'),
(2, 19, 'Jorhat'),
(2, 20, 'Silchar'),
(2, 21, 'Tezpur'),
(13, 22, 'Bangalore'),
(21, 23, 'chennai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` varchar(10) NOT NULL DEFAULT '',
  `country_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
('1', 'India'),
('2', 'Australia'),
('3', 'Belgium'),
('4', 'Bangladesh'),
('5', 'Afghanistan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_fname` varchar(25) DEFAULT NULL,
  `customer_lname` varchar(25) DEFAULT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_logo` varchar(200) DEFAULT NULL,
  `customer_contactname` varchar(25) DEFAULT NULL,
  `customer_address` varchar(25) DEFAULT NULL,
  `customer_area` varchar(25) DEFAULT NULL,
  `customer_state` varchar(25) DEFAULT NULL,
  `customer_landmark` varchar(255) DEFAULT NULL,
  `customer_pincode` varchar(10) DEFAULT NULL,
  `customer_city` varchar(25) DEFAULT NULL,
  `customer_phone` varchar(15) DEFAULT NULL,
  `customer_phone2` varchar(15) DEFAULT NULL,
  `customer_mob` varchar(15) DEFAULT NULL,
  `customer_mob2` varchar(15) DEFAULT NULL,
  `customer_country` varchar(25) DEFAULT NULL,
  `customer_authkey` varchar(100) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  `customer_description` varchar(1200) DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `customer_subscription_date` date DEFAULT NULL,
  `customer_subscription_start_date` date DEFAULT NULL COMMENT 'Subscription Date Start',
  `customer_subscription_end_date` date DEFAULT NULL COMMENT 'Subscription Date End',
  PRIMARY KEY (`customer_id`),
  KEY `customer_subscription_start_date` (`customer_subscription_start_date`,`customer_subscription_end_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1037 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_fname`, `customer_lname`, `customer_email`, `customer_logo`, `customer_contactname`, `customer_address`, `customer_area`, `customer_state`, `customer_landmark`, `customer_pincode`, `customer_city`, `customer_phone`, `customer_phone2`, `customer_mob`, `customer_mob2`, `customer_country`, `customer_authkey`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`, `customer_description`, `customer_package_id`, `customer_subscription_date`, `customer_subscription_start_date`, `customer_subscription_end_date`) VALUES
(1, 'Yulop ', 'Websense', 'webmaster@locateus.in', '', 'Sunil  Kumarr', 'This is an address2', 'myarea1', '0', 'landmark1, 123451', '560037', '0', '918040942001', '918040942001', '918040942001', '918892498363', '0', '', 'ACTIVE', NULL, NULL, NULL, NULL, 'Hello this is my descriptionw', NULL, NULL, NULL, NULL),
(1021, 'abb india2', 'india2', '0', 'uploads/abb india2/logo/plc.jpg', 'sunny2', 'jhyuyjiuykiui', 'jukiuouio', '0', 'dfhgfhg', '560037', '0', '918040942001', '918040942002', '918040942001', '918040942002', '0', 'IKEXN2M3A60KGVPWTDM4310104CL09L213XWGCT1', 'ACTIVE', NULL, NULL, NULL, NULL, 'fghfgh', 1, '2013-02-06', '2013-02-06', '2013-03-08'),
(1034, 'WIPRO', 'LIMITED', 'sunil123@gmail.com', NULL, 'sunil', 'dgfhjkk', 'thisisanarea', '1', 'blah blah', '560037', '1', '918040942001', '918040942002', '918040942001', '918040942002', '1', '3OKYON6QT78S10QNG00CXMHXP8KWY8BA8RO6I3IU', 'VERIFIED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1035, 'nithu', 'xzxzxzxzXzX', 'nithya2@gmail.com', NULL, 'abc', 'xzxzxzxzxz', 'fgjhgjmhjmk', '1', 'ghjmkmjh', '457657', '1', '080263657868', '0841634564987', '080263657868', '0841634564987', '1', '44VF9NYZ0H9BTKKS4EE9T4987BPF9L8YRBKS3YR9', 'PENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1036, 'Super Bazaar', 'nithya1726@gmail.com', 'nithya1726@gmail.com', NULL, 'Nithya', 'This is an address', 'bangalore', '1', 'BSNL', '560039', '1', '1122334455', '2211334455', '1122334455', '2211334455', '1', '3MGO569LHWAEHU3N53Q2QJE12T2GKZB535RII0QY', 'PENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customerdetails`
--

CREATE TABLE IF NOT EXISTS `tbl_customerdetails` (
  `customerdetails_id` int(11) NOT NULL,
  `customerdetails_customer_id` int(11) DEFAULT NULL,
  `customerdetails_role_id` int(11) DEFAULT NULL,
  `customerdetails_lastloggedin` datetime DEFAULT NULL,
  `customerdetails_lastloggedout` datetime DEFAULT NULL,
  `customerdetails_emaillimit` int(11) DEFAULT NULL,
  `customerdetails_emailcount` int(11) DEFAULT NULL,
  `customerdetails_emailbalance` int(11) DEFAULT NULL,
  `customerdetails_emailmessages_id` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`customerdetails_id`),
  KEY `customerdetails_customer_id` (`customerdetails_customer_id`),
  KEY `customerdetails_role_id` (`customerdetails_role_id`),
  KEY `customerdetails_emailmessages_id` (`customerdetails_emailmessages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customerdetails`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_editlist`
--

CREATE TABLE IF NOT EXISTS `tbl_editlist` (
  `editlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `editlist_list_id` int(11) NOT NULL DEFAULT '0',
  `editlist_name` varchar(25) DEFAULT NULL,
  `editlist_contactperson` varchar(25) DEFAULT NULL,
  `editlist_address` varchar(255) DEFAULT NULL,
  `editlist_area` varchar(25) DEFAULT NULL,
  `editlist_city` varchar(25) DEFAULT NULL,
  `editlist_phone1` varchar(25) DEFAULT NULL,
  `editlist_phone2` varchar(25) DEFAULT NULL,
  `editlist_mobile1` varchar(25) DEFAULT NULL,
  `editlist_mobile2` varchar(25) DEFAULT NULL,
  `editlist_email1` varchar(50) DEFAULT NULL,
  `editlist_email2` varchar(50) DEFAULT NULL,
  `editlist_state` varchar(25) DEFAULT NULL,
  `editlist_pincode` varchar(15) DEFAULT NULL,
  `editlist_landmark` varchar(25) DEFAULT NULL,
  `editlist_lat` varchar(50) DEFAULT NULL,
  `editlist_long` varchar(50) DEFAULT NULL,
  `editlist_businesstype` int(11) DEFAULT NULL,
  `editlist_customer_id` int(11) DEFAULT NULL,
  `editlist_provider` varchar(30) DEFAULT NULL,
  `editlist_offers` varchar(30) DEFAULT NULL,
  `editlist_cardsaccepted` varchar(25) DEFAULT NULL,
  `editlist_opentime` varchar(25) DEFAULT NULL,
  `editlist_offtime` varchar(25) DEFAULT NULL,
  `editlist_weeklyoff` varchar(25) DEFAULT NULL,
  `editlist_carparking` varchar(25) DEFAULT NULL,
  `editlist_services` varchar(25) DEFAULT NULL,
  `editlist_closetime` varchar(25) DEFAULT NULL,
  `editlist_businessurl` varchar(255) DEFAULT NULL,
  `editlist_images` varchar(255) DEFAULT NULL,
  `editlist_videourl` varchar(255) DEFAULT NULL,
  `editlist_social_link_fb` varchar(255) DEFAULT NULL,
  `editlist_social_link_twitter` varchar(255) DEFAULT NULL,
  `editlist_social_link_linkedin` varchar(255) DEFAULT NULL,
  `editlist_social_link_blogspot` varchar(255) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`editlist_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2716 ;

--
-- Dumping data for table `tbl_editlist`
--

INSERT INTO `tbl_editlist` (`editlist_id`, `editlist_list_id`, `editlist_name`, `editlist_contactperson`, `editlist_address`, `editlist_area`, `editlist_city`, `editlist_phone1`, `editlist_phone2`, `editlist_mobile1`, `editlist_mobile2`, `editlist_email1`, `editlist_email2`, `editlist_state`, `editlist_pincode`, `editlist_landmark`, `editlist_lat`, `editlist_long`, `editlist_businesstype`, `editlist_customer_id`, `editlist_provider`, `editlist_offers`, `editlist_cardsaccepted`, `editlist_opentime`, `editlist_offtime`, `editlist_weeklyoff`, `editlist_carparking`, `editlist_services`, `editlist_closetime`, `editlist_businessurl`, `editlist_images`, `editlist_videourl`, `editlist_social_link_fb`, `editlist_social_link_twitter`, `editlist_social_link_linkedin`, `editlist_social_link_blogspot`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 10, 'C M Computers1', 'Kandtilal Kumdar', NULL, '', 'Chennai', '080 23456767', '04442809177', '+919380999391', '+919380999392', 'nkjain2@rediffmail.com', 'nkjain2@gmail.com', 'Tamil Nadu', '600002', '', '11.802834233547687', '77.783203125', NULL, NULL, '', '', '', '', '', '', '', 'Billing Printers', NULL, '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(5, 0, 'V-Grow Associates234', 'P Yuganthan', NULL, '', 'Hyderabad ', '087443322345', '', '9502591969', '9502591960', 'vgrowassociates.hyd@gmail.com', 'vgrowassociates.hydrr@gmail.com', 'Andhra Pradesh', '500018', '', '17.3667', '78.4667', NULL, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, 'www.abx.com', 'inner-logo.jpg', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(2707, 0, 'ABC Computers1', 'M Babu', NULL, 'Road', 'Dindigul', '2440180', '', '9842117950', '9842117917', 'pcd1.dgl@gmail.com', 'mypcd2005@gmail.com', 'Tamil Nadu', '624001', 'Opposite Soham Tower, Nea', '10.365391', '77.972146', NULL, NULL, 'Free Home Delivery, Discounts ', 'No', NULL, NULL, 'Sunday', NULL, NULL, NULL, NULL, '-', 'yulop.jpg', NULL, '-', '-', '-', 'WEP Authorised Service Center', NULL, NULL, NULL, NULL, NULL),
(2712, 0, 'Admirer Technologies P Lt', 'Manoj Menon', NULL, 'Road', 'Malappuram', '2742061', '2747564', '9846104646', '9825083404', 'admirertechno@gmail.com', 'mypcd2005@gmail.com', 'Kerala', '676503', 'Near Almas Hospital', '10.998938', '75.991101', NULL, NULL, 'Free Home Delivery, Discounts ', 'No', NULL, NULL, 'Sunday', NULL, NULL, NULL, NULL, '-', 'inner-logo.jpg', NULL, '-', '-', '-', 'WEP Authorised Dealer', NULL, NULL, NULL, NULL, NULL),
(2713, 2707, 'ABC Computers1725', 'M Babu', NULL, 'Road', 'Dindigul', '2440180', '', '9842117950', '9842117917', 'pcd1.dgl@gmail.com', 'mypcd2005@gmail.com', 'Tamil Nadu', '624001', 'Opposite Soham Tower, Nea', '13.966054081318314', '78.3984375', NULL, NULL, 'Free Home Delivery, Discounts ', 'No', NULL, NULL, 'Sunday', NULL, NULL, NULL, NULL, '-', 'yulop.jpg', NULL, '-', '-', '-', 'WEP Authorised Service Center', NULL, NULL, NULL, NULL, NULL),
(2714, 2707, 'ABC Computers25', 'M Babu', NULL, 'Road', 'Dindigul', '2440180', '', '9842117950', '9842117917', 'pcd1.dgl@gmail.com', 'mypcd2005@gmail.com', 'Tamil Nadu', '624001', 'Opposite Soham Tower, Nea', '10.365391', '77.972146', NULL, NULL, 'Free Home Delivery, Discounts ', 'No', NULL, NULL, 'Sunday', NULL, NULL, NULL, NULL, '-', 'inner-logo.jpg', NULL, '-', '-', '-', 'WEP Authorised Service Center', NULL, NULL, NULL, NULL, NULL),
(2715, 2707, 'ABC Computers25', 'M Babu', NULL, 'Road', 'Dindigul', '2440180', '', '9842117950', '9842117917', 'pcd1.dgl@gmail.com', 'mypcd2005@gmail.com', 'Tamil Nadu', '624001', 'Opposite Soham Tower, Nea', '10.365391', '77.972146', NULL, NULL, 'Free Home Delivery, Discounts ', 'No', NULL, NULL, 'Sunday', NULL, NULL, NULL, NULL, '-', 'inner-logo.jpg', NULL, '-', '-', '-', 'WEP Authorised Service Center', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE IF NOT EXISTS `tbl_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_user_id` int(11) DEFAULT NULL,
  `feedback_title` varchar(55) DEFAULT NULL,
  `feedback_feedback_date` datetime DEFAULT NULL,
  `feedback_customer_id` int(11) DEFAULT NULL,
  `feedback_list_id` int(11) DEFAULT NULL,
  `feedback_rating` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  `comment` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `feedback_customer_id` (`feedback_customer_id`),
  KEY `feedback_list_id` (`feedback_list_id`),
  KEY `feedback_user_id` (`feedback_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feedback_id`, `feedback_user_id`, `feedback_title`, `feedback_feedback_date`, `feedback_customer_id`, `feedback_list_id`, `feedback_rating`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`, `comment`) VALUES
(1, 152, NULL, '2013-01-07 00:00:00', 1021, 32, 4, 'ACTIVE', 0, '2013-01-07 00:00:00', NULL, '2013-01-07 00:00:00', '0'),
(26, 152, NULL, '2013-01-07 00:00:00', 1021, 17608, 4, NULL, 0, '2013-01-07 00:00:00', NULL, '2013-01-07 00:00:00', '0'),
(74, 0, NULL, '2013-02-11 00:00:00', 1021, 1, 3, NULL, 0, '2013-02-11 00:00:00', NULL, '2013-02-11 00:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE IF NOT EXISTS `tbl_images` (
  `images_id` int(11) NOT NULL AUTO_INCREMENT,
  `images_customer_id` int(11) DEFAULT NULL,
  `images_path` varchar(255) DEFAULT NULL,
  `images_list_id` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`images_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`images_id`, `images_customer_id`, `images_path`, `images_list_id`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, NULL, 'plc.jpg', NULL, NULL, NULL, '2012-12-21 07:58:20', NULL, NULL),
(2, NULL, 'plc.jpg', NULL, NULL, NULL, '2012-12-21 07:58:45', NULL, NULL),
(3, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 07:58:54', NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, '2012-12-21 08:06:20', NULL, NULL),
(5, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 08:07:22', NULL, NULL),
(6, NULL, 'arch.jpg', NULL, NULL, NULL, '2012-12-21 08:22:46', NULL, NULL),
(7, NULL, 'plc.jpg', NULL, NULL, NULL, '2012-12-21 08:23:24', NULL, NULL),
(8, NULL, 'plc.jpg', NULL, NULL, NULL, '2012-12-21 08:45:24', NULL, NULL),
(9, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 08:45:32', NULL, NULL),
(10, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 08:46:59', NULL, NULL),
(11, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 08:47:06', NULL, NULL),
(12, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 08:47:37', NULL, NULL),
(13, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 08:48:11', NULL, NULL),
(14, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 08:48:25', NULL, NULL),
(15, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 08:52:12', NULL, NULL),
(16, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 08:53:03', NULL, NULL),
(17, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 08:54:22', NULL, NULL),
(18, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 08:54:31', NULL, NULL),
(19, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 08:55:34', NULL, NULL),
(20, NULL, 'arch.jpg', NULL, NULL, NULL, '2012-12-21 08:55:46', NULL, NULL),
(21, NULL, 'arch.jpg', NULL, NULL, NULL, '2012-12-21 08:56:47', NULL, NULL),
(22, NULL, 'arch.jpg', NULL, NULL, NULL, '2012-12-21 08:57:20', NULL, NULL),
(23, NULL, 'arch.jpg', NULL, NULL, NULL, '2012-12-21 08:57:38', NULL, NULL),
(24, NULL, 'arch.jpg', NULL, NULL, NULL, '2012-12-21 08:58:20', NULL, NULL),
(25, NULL, 'arch.jpg', NULL, NULL, NULL, '2012-12-21 10:08:09', NULL, NULL),
(26, NULL, 'arch.jpg', NULL, NULL, NULL, '2012-12-21 10:08:14', NULL, NULL),
(27, NULL, 'arch.jpg', NULL, NULL, NULL, '2012-12-21 10:09:33', NULL, NULL),
(28, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 10:09:38', NULL, NULL),
(29, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 10:12:28', NULL, NULL),
(30, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 10:12:39', NULL, NULL),
(31, NULL, 'plc.jpg', NULL, NULL, NULL, '2012-12-21 10:14:00', NULL, NULL),
(32, NULL, 'plc.jpg', NULL, NULL, NULL, '2012-12-21 10:20:23', NULL, NULL),
(33, NULL, 'ui-bg_glass_75_e6e6e6_1x400.png', NULL, NULL, NULL, '2012-12-21 10:20:29', NULL, NULL),
(34, NULL, 'ui-bg_glass_75_e6e6e6_1x400.png', NULL, NULL, NULL, '2012-12-21 10:33:07', NULL, NULL),
(35, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 10:50:02', NULL, NULL),
(36, NULL, 'inkbluecurve.jpg', NULL, NULL, NULL, '2012-12-21 10:54:23', NULL, NULL),
(37, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 11:00:58', NULL, NULL),
(38, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 11:01:26', NULL, NULL),
(39, NULL, 'skybluecurve.jpg', NULL, NULL, NULL, '2012-12-21 11:02:07', NULL, NULL),
(40, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 11:02:43', NULL, NULL),
(41, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 11:13:31', NULL, NULL),
(42, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 11:14:27', NULL, NULL),
(43, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 11:14:48', NULL, NULL),
(44, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 11:16:36', NULL, NULL),
(45, NULL, 'plc.jpg', NULL, NULL, NULL, '2012-12-21 11:17:12', NULL, NULL),
(46, NULL, 'warning_icon.gif', NULL, NULL, NULL, '2012-12-21 13:27:49', NULL, NULL),
(47, NULL, 'ui-bg_glass_75_e6e6e6_1x400.png', NULL, NULL, NULL, '2012-12-22 05:19:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list`
--

CREATE TABLE IF NOT EXISTS `tbl_list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_name` varchar(25) DEFAULT NULL,
  `list_contactperson` varchar(25) DEFAULT NULL,
  `list_address` varchar(255) DEFAULT NULL,
  `list_area` varchar(25) DEFAULT NULL,
  `list_city` varchar(25) DEFAULT NULL,
  `list_phone1` varchar(25) DEFAULT NULL,
  `list_phone2` varchar(25) DEFAULT NULL,
  `list_mobile1` varchar(25) DEFAULT NULL,
  `list_mobile2` varchar(25) DEFAULT NULL,
  `list_email1` varchar(50) DEFAULT NULL,
  `list_email2` varchar(50) DEFAULT NULL,
  `list_state` varchar(25) DEFAULT NULL,
  `list_pincode` varchar(15) DEFAULT NULL,
  `list_landmark` varchar(25) DEFAULT NULL,
  `list_lat` varchar(50) DEFAULT NULL,
  `list_long` varchar(50) DEFAULT NULL,
  `list_businesstype_id` varchar(30) DEFAULT NULL,
  `list_customer_id` int(11) DEFAULT NULL,
  `list_provider` varchar(30) DEFAULT NULL,
  `list_offers` varchar(30) DEFAULT NULL,
  `list_cardsaccepted` varchar(25) DEFAULT NULL,
  `list_opentime` varchar(25) DEFAULT NULL,
  `list_offtime` varchar(25) DEFAULT NULL,
  `list_weeklyoff` varchar(25) DEFAULT NULL,
  `list_carparking` varchar(25) DEFAULT NULL,
  `list_services_id` varchar(25) DEFAULT NULL,
  `list_closetime` varchar(25) DEFAULT NULL,
  `list_businessurl` varchar(255) DEFAULT NULL,
  `list_images` varchar(255) DEFAULT NULL,
  `list_videourl` varchar(255) DEFAULT NULL,
  `list_social_link_fb` varchar(255) DEFAULT NULL,
  `list_social_link_twitter` varchar(255) DEFAULT NULL,
  `list_social_link_linkedin` varchar(255) DEFAULT NULL,
  `list_social_link_blogspot` varchar(255) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  `business_type` varchar(50) DEFAULT NULL,
  `list_businesstype` varchar(50) DEFAULT NULL,
  `list_services` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`list_id`),
  KEY `list_customer_id` (`list_customer_id`),
  KEY `list_businesstype_id` (`list_businesstype_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_list`
--

INSERT INTO `tbl_list` (`list_id`, `list_name`, `list_contactperson`, `list_address`, `list_area`, `list_city`, `list_phone1`, `list_phone2`, `list_mobile1`, `list_mobile2`, `list_email1`, `list_email2`, `list_state`, `list_pincode`, `list_landmark`, `list_lat`, `list_long`, `list_businesstype_id`, `list_customer_id`, `list_provider`, `list_offers`, `list_cardsaccepted`, `list_opentime`, `list_offtime`, `list_weeklyoff`, `list_carparking`, `list_services_id`, `list_closetime`, `list_businessurl`, `list_images`, `list_videourl`, `list_social_link_fb`, `list_social_link_twitter`, `list_social_link_linkedin`, `list_social_link_blogspot`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`, `business_type`, `list_businesstype`, `list_services`) VALUES
(1, 'system domain', 'kavya', '#174/40, 4th floor, Lucky Paradise, 22nd cross, 8th F main, jayanagar 3rd block', 'jayanagar', 'Bangalore', '08023456767', '', '9987644323', '8876343242', 'kavaya@gmail.com', 'kavya12@gmail.com', 'karnataka', '534001', 'near petrol bunk', '12.91083', '77.59062', NULL, 1021, NULL, NULL, 'no', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Authorised Dealer', 'ATM Center'),
(2, 'V-Grow Associates', 'Prabu Kumar', '28, 3rd Cross, West End, Thantai Periyar Nagar, Ellaipillaichavdy, Pondicherry Chennai ', 'T.Nagar', 'Chennai', '04132204952', '04132204953', '9842232222', '9842232223', 'vgrowassociates@gmail.com ', 'vgrowassociates@yahoo.com', 'Tamil Nadu', '605005', '', '13.0', '80.0', NULL, 1021, NULL, NULL, 'No', '9:00', '5:30', 'sunday', 'yes', NULL, NULL, 'www.abx.com', 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:41:15', NULL, NULL, 'WEP Authorised Service Center', 'WEP Authorised Service Center', 'ATM Center'),
(3, 'Info tech', 'Prabu Kumar', '28, 3rd Cross, West End, Thantai Periyar Nagar, Ellaipillaichavdy, Pondicherry Chennai ', 'T.Nagar', 'Chennai', '04132204952', '04132204953', '9842232222', '9842232223', 'vgrowassociates@gmail.com ', 'vgrowassociates@yahoo.com', 'Tamil Nadu', '605005', '', '13.0', '80.0', NULL, 1021, NULL, NULL, 'No', '9:00', '5:30', 'sunday', 'yes', NULL, NULL, 'www.abx.com', 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:41:15', NULL, NULL, 'WEP Authorised Service Center', 'WEP Authorised Service Center', 'ATM Center'),
(4, 'C M Computers', 'Kandtilal Kumdar', 'No:15, Meeran Sahib Street, Mallika Complex, Mount Road, Mylapore Chennai', '', 'Chennai', '04425893366', '04442809177', '19380999391', '9380999392', 'nkjain2@rediffmail.com', 'nkjain2@gmail.com', 'Tamil Nadu', '600002', '', '13.0813', '80.2741', NULL, 1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Authorised Service Center', 'ATM Center'),
(5, 'V-Grow Associates', 'P Yuganthan', 'H No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet', '', 'Hyderabad ', '087443322345', '', '9502591969', '9502591960', 'vgrowassociates.hyd@gmail.com', 'vgrowassociates.hydrr@gmail.com', 'Andhra Pradesh', '500018', '', '17.3667', '78.4667', NULL, 1021, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, 'www.abx.com', 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:41:15', NULL, NULL, 'WEP Authorised Service Center', 'WEP Officer', 'ATM Center'),
(6, 'Vasanthaa Enterprises', 'B Kiran Kumar', '764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad ', '', 'Hyderabad', '065433234546', '08054362782', '9885441178', '9885441179', 'vasanthaa.enterprises@yahoo.com ', 'vasanthaa.enterprises@gmail.com', 'Andhra Pradesh', '534001', 'near petrol bunk', '17.2435', '78.5643', NULL, 1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Officer', 'ATM Center'),
(8, 'NECX Pvt Ltd', 'Seshu', '47-11-3/9-10, 1st Floor, Eswar Homes, Dwaraka Nagar, 1st Lane', '', 'Visakhapatnam', ' 08916673222', '', '9866777366', '9293194266', 'leelapavani.endra@necx.in', 'seshu.kandregula@necx.in', 'Andhra Pradesh', '530016', '', '17.3678', '78.44566', NULL, 1021, NULL, NULL, 'No', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Authorised Dealer', 'ATM Center'),
(9, 'V-Grow Associates', 'Prabu Kumar', '28, 3rd Cross, West End, Thantai Periyar Nagar, Ellaipillaichavdy, Pondicherry Chennai ', 'T.Nagar', 'Chennai', '04132204952', '04132204953', '9842232222', '9842232223', 'vgrowassociates@gmail.com ', 'vgrowassociates@yahoo.com', 'Tamil Nadu', '605005', '', '13.0811', '80.2740', NULL, 1021, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, 'www.abx.com', 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:41:15', NULL, NULL, 'WEP Authorised Service Center', 'WEP Officer', 'ATM Center'),
(10, 'C M Computers', 'Kandtilal Kumdar', 'No:15, Meeran Sahib Street, Mallika Complex, Mount Road, Mylapore Chennai', '', 'Chennai', '08023456767', '04442809177', '9380999391', '9380999392', 'nkjain2@rediffmail.com', 'nkjain2@gmail.com', 'Tamil Nadu', '600002', '', '13.0814', '80.1002', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Authorised Service Center', 'ATM Center'),
(12, 'Bens Computers', 'K Philip', 'Ravula Arcade, Room No 8, Ground Floor', '', 'Nellore ', '08612328793', '', '9866554440', '9866554456', 'wepnellore@hotmail.com ', '', 'Andhra Pradesh', '524003', '', '14.4167', '79.9667', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Authorised Service Center', 'ATM Center'),
(13, 'Giri Brothers', 'Namachivayam', '51, Rajaji Salai Chennai - 600001 Tamil Nadu', '', 'Chennai', '04425225401', '', '9841446789', '9841446776', 'giribrothers@vsnl.com ', '', 'Tamil Nadu', '600001', '', '13.0815', '80.0121', '', 1, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, 'www.abx.com', 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:41:15', NULL, NULL, 'WEP Authorised Service Center', 'WEP Authorised Service Center', 'ATM Center'),
(14, 'Cebyte Computer Services', 'G Elumalai', '5/11, 1st Main Road, Kasturibai Nagar, Adyar', '', 'Chennai', ' 04439127375', '', '9841042284', '9841042285', 'ce_byte@yahoo.com ', '', 'Tamil Nadu', '600020', 'near petrol bunk', '13.0834', '80.2743', NULL, 2, NULL, NULL, 'no', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Authorised Dealer', 'ATM'),
(15, 'Alpha Business Automation', 'Serina Simon', '240/2, Newno 184, Thambu Chetty Street, Parrys', 'T.Nagar', 'Chennai ', '04132204934', '', '9841405252', '', 'alpha.bradma@vsnl.net ', '', 'Tamil Nadu', '600001', '', '13.0812', '80.0112', NULL, 1, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, 'www.abx.com', 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:41:15', NULL, NULL, 'WEP Authorised Service Center', 'WEP Authorised Dealer', 'ATM'),
(16, 'C-Vel Technologies', ' Mogal Rahim Baig', 'D No: 3-14-89, J R R Complex, Pattabhipuram', '', 'Guntur', '08632251880', '', '9949555548', '', 'mogalrb@yahoo.com ', '', 'Andhra Pradesh', '522006', '', '16.3000', '80.4500', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Authorised Dealer', 'ATM'),
(18, 'Sigma Technologies', 'Ravi Kumar K', '7/1, Sita Devi Complex, Arundalpet', '', 'Guntur', '065433234546', '080 54362782', '9246472168', '9885125168', 'customercare@sigmatechnologies.info ', '', 'Andhra Pradesh', ' 520010', '', '16.3567', '80.4576', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Authorised Dealer', 'ATM'),
(19, ' IKON Computer Systems1', 'Iranna A Madawal', '#10, 5th Main Road, Palace Guttahalli, Malleswaram', 'kormangala', 'Bangalore ', '0802698523', '', '9880594499', '9880594476', 'ikon_compsys@yahoo.co.in ', '', 'karnataka', '534001', '', '12.983333', ' 77.583333', NULL, 1, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, 'www.abx.com', 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:41:15', NULL, NULL, 'WEP Authorised Service Center', 'WEP Authorised Dealer', 'ATM Center'),
(20, 'Logon Systems', ' Anil', '91/127 , 1st Floor, Balaji Complex , S P Road', '', 'Bangalore', '08041475890', '', '9844088207', '', 'logonsystem@vsnl.net ', '', 'karnataka', '534001', '', '12.983444', '77.59063', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'list-def-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-20 11:46:49', NULL, NULL, 'WEP Authorised Dealer', 'WEP Authorised Dealer', 'ATM Center');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE IF NOT EXISTS `tbl_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_content` varchar(1200) DEFAULT NULL,
  `message_subject` varchar(100) DEFAULT NULL,
  `message_from` varchar(1200) DEFAULT NULL,
  `message_to` varchar(1500) DEFAULT NULL,
  `countmsg` int(11) NOT NULL COMMENT 'Count of the messages sent',
  `message_customer_id` int(11) DEFAULT NULL,
  `message_list_id` int(11) DEFAULT NULL,
  `message_messagedate` datetime DEFAULT NULL,
  `message_type` varchar(15) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `message_customer_id` (`message_customer_id`),
  KEY `message_list_id` (`message_list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=260 ;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`message_id`, `message_content`, `message_subject`, `message_from`, `message_to`, `countmsg`, `message_customer_id`, `message_list_id`, `message_messagedate`, `message_type`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(162, 'name_80No.38, 4th B Cross Road, Koramangala Industrial Layout80,', NULL, '0', '54765768', 0, NULL, 0, '2013-01-18 12:35:06', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(163, 'name_99No.38, 4th B Cross Road, Koramangala Industrial Layout99,', NULL, '0', '5465467', 0, NULL, 0, '2013-01-18 12:56:13', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(164, '0', 'ghjgju', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 12:56:32', 'Email', NULL, 0, '2013-01-18 12:56:32', NULL, NULL),
(165, '', '1234', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:00:58', 'Email', NULL, 0, '2013-01-18 13:00:58', NULL, NULL),
(166, '', '1223434325', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:03:34', 'Email', NULL, 0, '2013-01-18 13:03:34', NULL, NULL),
(167, '', '1223434325', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:04:44', 'Email', NULL, 0, '2013-01-18 13:04:44', NULL, NULL),
(168, '', '5675475', '0', 'ghjghjhj@gmail.com', 0, 0, 0, '2013-01-18 13:06:48', 'Email', NULL, 0, '2013-01-18 13:06:48', NULL, NULL),
(169, '', 'ni', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:09:40', 'Email', NULL, 0, '2013-01-18 13:09:40', NULL, NULL),
(170, '', 'niy', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:11:01', 'Email', NULL, 0, '2013-01-18 13:11:01', NULL, NULL),
(171, '', 'iuuu', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:15:56', 'Email', NULL, 0, '2013-01-18 13:15:56', NULL, NULL),
(172, 'name_99No.38, 4th B Cross Road, Koramangala Industrial Layout99,', '5676788', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:17:47', 'Email', NULL, 0, '2013-01-18 13:17:47', NULL, NULL),
(173, 'name_80No.38, 4th B Cross Road, Koramangala Industrial Layout80,', 'hello11', '0', 'raj@gmail.com', 0, 0, 0, '2013-01-18 13:19:46', 'Email', NULL, 0, '2013-01-18 13:19:46', NULL, NULL),
(174, 'name_80No.38, 4th B Cross Road, Koramangala Industrial Layout80,', NULL, '0', '9987654366', 0, NULL, 0, '2013-01-18 13:23:16', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(175, 'name_77No.38, 4th B Cross Road, Koramangala Industrial Layout77,', 'hi', '0', 'jay@gmaul.com', 0, 0, 0, '2013-01-18 13:26:50', 'Email', NULL, 0, '2013-01-18 13:26:50', NULL, NULL),
(176, 'name_10No.38, 4th B Cross Road, Koramangala Industrial Layout10,', 'ffff', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:36:06', 'Email', NULL, 0, '2013-01-18 13:36:06', NULL, NULL),
(177, 'name_10No.38, 4th B Cross Road, Koramangala Industrial Layout10,', 'ffff', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:37:26', 'Email', NULL, 0, '2013-01-18 13:37:26', NULL, NULL),
(178, 'name_45No.38, 4th B Cross Road, Koramangala Industrial Layout45,', '77777', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 13:38:05', 'Email', NULL, 0, '2013-01-18 13:38:05', NULL, NULL),
(179, 'name_99No.38, 4th B Cross Road, Koramangala Industrial Layout99,  ', 'hiiii', '0', 'ami@gmail.com', 0, 1, 0, '2013-01-18 13:59:17', 'Email', NULL, 0, '2013-01-18 13:59:17', NULL, NULL),
(180, 'name_80No.38, 4th B Cross Road, Koramangala Industrial Layout80,  ', 'gfhfgh', '0', 'nithya@gmail.com', 0, 1, 0, '2013-01-18 14:01:06', 'Email', NULL, 0, '2013-01-18 14:01:06', NULL, NULL),
(181, 'name_80No.38, 4th B Cross Road, Koramangala Industrial Layout80,  ', 'gfhfgh', '0', 'nithya@gmail.com', 0, 1, 0, '2013-01-18 14:01:32', 'Email', NULL, 0, '2013-01-18 14:01:32', NULL, NULL),
(182, 'name_12No.38, 4th B Cross Road, Koramangala Industrial Layout12,  ', 'dhfdh', '0', 'ani@gmail.com', 0, 1, 112, '2013-01-18 14:03:54', 'Email', NULL, 0, '2013-01-18 14:03:54', NULL, NULL),
(183, 'name_10No.38, 4th B Cross Road, Koramangala Industrial Layout10,  ', NULL, '0', '3546357658', 0, 0, 0, '2013-01-18 14:10:08', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(184, 'name_99No.38, 4th B Cross Road, Koramangala Industrial Layout99,  ', NULL, '0', '56768', 0, 199, 0, '2013-01-18 14:21:26', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(185, 'name_99No.38, 4th B Cross Road, Koramangala Industrial Layout99,  ', NULL, '0', '56768', 0, 199, 0, '2013-01-18 14:23:59', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(186, 'name_99No.38, 4th B Cross Road, Koramangala Industrial Layout99,  ', NULL, '0', '9876543219', 0, 199, 1, '2013-01-18 14:24:24', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(187, '', NULL, '0', '', 0, 0, 0, '2013-01-18 14:31:20', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(188, 'name_99No.38, 4th B Cross Road, Koramangala Industrial Layout99,  ', NULL, '0', '', 0, 199, 1, '2013-01-18 14:35:44', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(189, 'name_99No.38, 4th B Cross Road, Koramangala Industrial Layout99,  ', NULL, '0', '', 0, 199, 1, '2013-01-18 14:37:06', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(190, 'name_99No.38, 4th B Cross Road, Koramangala Industrial Layout99,  ', NULL, '0', '', 0, 199, 1, '2013-01-18 14:44:38', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(191, '', NULL, '0', '2', 0, 0, 0, '2013-01-18 14:48:47', 'SMS', NULL, 0, '2013-01-18 00:00:00', NULL, NULL),
(192, 'name_10No.38, 4th B Cross Road, Koramangala Industrial Layout10,', 'ffff', '0', 'nithya@gmail.com', 0, 0, 0, '2013-01-18 15:08:56', 'Email', NULL, 0, '2013-01-18 15:08:56', NULL, NULL),
(193, 'name_42No.38, 4th B Cross Road, Koramangala Industrial Layout42,  ', NULL, '0', '56756876879', 0, 142, 1, '2013-01-19 08:06:57', 'SMS', NULL, 0, '2013-01-19 00:00:00', NULL, NULL),
(194, 'Cybernetic SystemsR S Towers , 1st Floor, Bangalore Road  ', NULL, '0', '987678656557', 0, 6, 1, '2013-01-23 10:58:27', 'SMS', NULL, 0, '2013-01-23 00:00:00', NULL, NULL),
(195, 'V-Grow Associates28, 3rd Cross, West End, Thantai Periyar Nagar, Ellaipillaichavdy, Pondicherry Chennai   ', NULL, '0', '54634534563456', 0, 2, 1, '2013-01-25 08:43:29', 'SMS', NULL, 0, '2013-01-25 00:00:00', NULL, NULL),
(196, 'V-Grow Associates28, 3rd Cross, West End, Thantai Periyar Nagar, Ellaipillaichavdy, Pondicherry Chennai   ', NULL, '0', '54634534563456', 0, 2, 1, '2013-01-25 08:46:22', 'SMS', NULL, 0, '2013-01-25 00:00:00', NULL, NULL),
(197, NULL, NULL, '0', NULL, 0, NULL, NULL, '2013-01-25 15:05:11', 'Email', NULL, 0, '2013-01-25 15:05:11', NULL, NULL),
(198, 'V-Grow Associates28, 3rd Cross, West End, Thantai Periyar Nagar, Ellaipillaichavdy, Pondicherry Chennai   ', NULL, '0', '', 0, 2, 2147483647, '2013-01-29 08:22:02', 'SMS', NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(199, 'V-Grow Associates28, 3rd Cross, West End, Thantai Periyar Nagar, Ellaipillaichavdy, Pondicherry Chennai   ', NULL, '0', '', 0, 2, 2147483647, '2013-01-29 08:22:04', 'SMS', NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(200, NULL, NULL, '0', NULL, 0, NULL, NULL, '2013-01-29 08:28:35', 'Email', NULL, 0, '2013-01-29 08:28:35', NULL, NULL),
(201, NULL, NULL, '0', NULL, 0, NULL, NULL, '2013-01-29 08:32:55', 'Email', NULL, 0, '2013-01-29 08:32:55', NULL, NULL),
(202, NULL, NULL, '0', NULL, 0, NULL, NULL, '2013-01-29 08:40:55', 'Email', NULL, 0, '2013-01-29 08:40:55', NULL, NULL),
(203, '0', NULL, '0', '0', 0, NULL, NULL, '2013-01-29 09:47:16', 'SMS', NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(204, 'gjhgjgh', NULL, '0', 'dfhbfghf', 0, NULL, NULL, '2013-01-29 09:52:54', 'SMS', NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(205, 'dfgbfhfgfgh', NULL, '0', '765876988890', 0, NULL, NULL, '2013-01-29 09:53:23', 'SMS', NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(206, 'dfgbfhfgfgh', NULL, '0', '765876988890', 0, NULL, NULL, '2013-01-29 10:03:32', 'SMS', NULL, 0, '2013-01-29 00:00:00', NULL, NULL),
(207, 'system domain', NULL, '0', '78984639416', 0, 0, 0, '2013-01-30 14:02:32', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(208, 'system domain', NULL, '0', '2321313123', 0, 0, 0, '2013-01-30 14:05:19', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(209, 'system domain', NULL, '0', '2321313123', 0, 0, 0, '2013-01-30 14:14:00', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(210, 'system domain', NULL, '0', '2321313123', 0, 0, 0, '2013-01-30 14:14:02', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(211, 'system domain', NULL, '0', '2321313123', 0, 0, 0, '2013-01-30 14:14:03', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(212, 'system domain', NULL, '0', '2321313123', 0, 0, 0, '2013-01-30 14:14:03', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(213, 'NIITNo.38, 4th B Cross Road, Koramangala Industrial Layout,  ', NULL, '0', '112345678', 0, 0, 1, '2013-01-30 14:15:07', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(214, 'NIITNo.38, 4th B Cross Road, Koramangala Industrial Layout,  ', NULL, '0', '1235467893', 0, 0, 1, '2013-01-30 14:16:40', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(215, 'NIITNo.38, 4th B Cross Road, Koramangala Industrial Layout,  ', NULL, '0', '1235467893', 0, 0, 1, '2013-01-30 14:17:17', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(216, 'NIITNo.38, 4th B Cross Road, Koramangala Industrial Layout,  ', NULL, '0', '123123123', 0, 0, 1, '2013-01-30 14:19:31', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(217, 'NIITNo.38, 4th B Cross Road, Koramangala Industrial Layout,  ', NULL, '0', '1234569870', 0, 0, 1, '2013-01-30 14:20:27', 'SMS', NULL, 0, '2013-01-30 00:00:00', NULL, NULL),
(218, NULL, NULL, '0', NULL, 0, NULL, NULL, '2013-02-02 13:32:30', 'Email', NULL, 0, '2013-02-02 13:32:30', NULL, NULL),
(219, NULL, NULL, '0', NULL, 0, NULL, NULL, '2013-02-02 13:35:18', 'Email', NULL, 0, '2013-02-02 13:35:18', NULL, NULL),
(220, NULL, NULL, '0', NULL, 0, NULL, NULL, '2013-02-02 13:36:45', 'Email', NULL, 0, '2013-02-02 13:36:45', NULL, NULL),
(221, NULL, NULL, '0', NULL, 0, NULL, NULL, '2013-02-02 13:36:50', 'Email', NULL, 0, '2013-02-02 13:36:50', NULL, NULL),
(222, NULL, NULL, '0', NULL, 0, NULL, NULL, '2013-02-02 13:36:58', 'Email', NULL, 0, '2013-02-02 13:36:58', NULL, NULL),
(223, '0', 'hello', '0', 'nithya1725@gmail.com', 0, NULL, 0, '2013-02-02 13:47:15', 'Email', NULL, 0, '2013-02-02 13:47:15', NULL, NULL),
(224, NULL, 'hello', '0', 'nithya1725@gmail.com', 0, 0, 0, '2013-02-02 13:48:22', 'Email', NULL, 0, '2013-02-02 13:48:22', NULL, NULL),
(225, NULL, 'hello', '0', 'nithya1725@gmail.com', 0, 0, 0, '2013-02-02 13:48:33', 'Email', NULL, 0, '2013-02-02 13:48:33', NULL, NULL),
(226, NULL, 'hello', '0', 'nithya1725@gmail.com', 0, 0, 0, '2013-02-02 13:48:54', 'Email', NULL, 0, '2013-02-02 13:48:54', NULL, NULL),
(227, NULL, 'hello', '0', 'nithya1725@gmail.com', 0, 0, 0, '2013-02-02 13:48:56', 'Email', NULL, 0, '2013-02-02 13:48:56', NULL, NULL),
(228, 'system domain', 'hello', '0', 'nithya1725@gmail.com', 0, 0, 0, '2013-02-02 13:49:23', 'Email', NULL, 0, '2013-02-02 13:49:23', NULL, NULL),
(229, 'system domain', 'hi', '0', 'nithy1725@gmail.com', 0, 0, 0, '2013-02-04 10:13:00', 'Email', NULL, 0, '2013-02-04 10:13:00', NULL, NULL),
(230, 'system domain', 'hi', '0', 'nithyashkr@gmail.com', 0, 0, 0, '2013-02-04 10:13:02', 'Email', NULL, 0, '2013-02-04 10:13:02', NULL, NULL),
(231, 'system domain', 'hi', '0', 'nithy1725@gmail.com', 0, 0, 0, '2013-02-04 10:13:41', 'Email', NULL, 0, '2013-02-04 10:13:41', NULL, NULL),
(232, 'system domain', 'hi', '0', 'nithyashkr@gmail.com', 0, 0, 0, '2013-02-04 10:13:42', 'Email', NULL, 0, '2013-02-04 10:13:42', NULL, NULL),
(233, 'system domain', 'hi', '0', 'nithyashkr@gmail.com', 0, 0, 0, '2013-02-04 10:13:44', 'Email', NULL, 0, '2013-02-04 10:13:44', NULL, NULL),
(234, 'system domain', 'hi', '0', 'nithy1725@gmail.com', 0, 0, 0, '2013-02-04 10:14:36', 'Email', NULL, 0, '2013-02-04 10:14:36', NULL, NULL),
(235, 'system domain', 'hi', '0', 'nithyashkr@gmail.com', 0, 0, 0, '2013-02-04 10:14:38', 'Email', NULL, 0, '2013-02-04 10:14:38', NULL, NULL),
(236, 'system domain', 'hi', '0', 'nithy1725@gmail.com', 0, 0, 0, '2013-02-04 10:15:18', 'Email', NULL, 0, '2013-02-04 10:15:18', NULL, NULL),
(237, 'V-Grow Associates28, 3rd Cross, West End, Thantai Periyar Nagar, Ellaipillaichavdy, Pondicherry Chennai   ', NULL, '0', '436546575', 0, 0, 1, '2013-02-11 05:53:03', 'SMS', NULL, 0, '2013-02-11 00:00:00', NULL, NULL),
(238, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', NULL, '0', '435465467567678', 0, 6, 1021, '2013-02-15 11:13:18', 'SMS', NULL, 0, '2013-02-15 00:00:00', NULL, NULL),
(239, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', 'hello', '0', 'nithyashkr@gmail.com', 0, 6, 1021, '2013-02-15 11:14:11', 'Email', NULL, 0, '2013-02-15 11:14:11', NULL, NULL),
(240, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', 'nisdf', 'nithya', 'nithya1725@gmail.com', 0, 5, 1021, '2013-02-16 11:12:00', 'Email', NULL, 2, '2013-02-16 11:12:00', NULL, NULL),
(241, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', 'nisdf', 'nithya', 'nithya1725@gmail.com,nithyashkr@gmail.com', 0, 5, 1021, '2013-02-16 11:37:47', 'Email', NULL, 2, '2013-02-16 11:37:47', NULL, NULL),
(242, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', 'nisdf', 'nithya', 'nithya1725@gmail.com,nithyashkr@gmail.com,nithyashkr@gmail.com,nithyashkr@gmail.com', 0, 5, 1021, '2013-02-16 11:38:31', 'Email', NULL, 2, '2013-02-16 11:38:31', NULL, NULL),
(243, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', 'nisdf', 'nithya', 'nithya1725@gmail.com,nithyashkr@gmail.com,nithyashkr@gmail.com,nithyashkr@gmail.com', 4, 5, 1021, '2013-02-16 11:43:00', 'Email', NULL, 2, '2013-02-16 11:43:00', NULL, NULL),
(245, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', 'Notification', 'nithya', '438756437,837457634,43895643785', 3, 1021, 5, '2013-02-16 11:53:19', 'SMS', NULL, 2, '2013-02-16 11:53:19', NULL, NULL),
(246, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', 'Notification', 'nithya', '438756437,837457634,43895643785', 3, 1021, 5, '2013-02-16 11:53:50', 'SMS', NULL, 2, '2013-02-16 11:53:50', NULL, NULL),
(247, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', 'Notification', 'nithya', '89684968596,346874897,567489789', 3, 1021, 6, '2013-02-16 11:56:57', 'SMS', NULL, 2, '2013-02-16 11:56:57', NULL, NULL),
(248, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', 'Notification', 'nithya', '456345635,78967896,5464565665', 3, 1021, 6, '2013-02-16 11:59:15', 'SMS', NULL, 2, '2013-02-16 11:59:15', NULL, NULL),
(249, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', 'helloe', 'nithya', 'nithya1725@gmail.com,nithyashkr@gmail.com', 2, 6, 1021, '2013-02-16 12:01:59', 'email', NULL, 2, '2013-02-16 12:01:59', NULL, NULL),
(250, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', 'helloe', 'nithya', 'nithya1725@gmail.com,nithyashkr@gmail.com', 2, 6, 1021, '2013-02-16 12:08:26', 'email', NULL, 2, '2013-02-16 12:08:26', NULL, NULL),
(251, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', 'eretetgrtg', 'nithya', 'nithya@gmail.com', 1, 6, 1021, '2013-02-16 12:10:10', 'email', NULL, 2, '2013-02-16 12:10:10', NULL, NULL),
(252, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', 'fgghtfhnghj', 'nithya', 'nithya@gmail.com', 1, 6, 1021, '2013-02-16 12:12:19', 'email', NULL, 2, '2013-02-16 12:12:19', NULL, NULL),
(253, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', 'Notification', 'nithya', '567567568789', 1, 1021, 6, '2013-02-16 12:14:16', 'SMS', NULL, 2, '2013-02-16 12:14:16', NULL, NULL),
(254, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', '', 'nithya', 'nithya@gmail.com', 1, 6, 1021, '2013-02-16 12:53:32', 'email', NULL, 2, '2013-02-16 12:53:32', NULL, NULL),
(255, 'Vasanthaa Enterprises764/B, Ist Phase, Allwyn Colony, Kukatpally, Hyderabad   ', 'ggtryrty', 'nithya', 'fdgfhghjgh@gmail.com', 1, 6, 1021, '2013-02-16 13:03:28', 'email', NULL, 2, '2013-02-16 13:03:28', NULL, NULL),
(256, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', 'Notification', 'nithya', '438756437,837457634,43895643785', 3, 1021, 5, '2013-02-16 13:28:15', 'SMS', NULL, 2, '2013-02-16 13:28:15', NULL, NULL),
(257, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', '', 'nithya', 'dfghfgh@gmail.com', 1, 5, 1021, '2013-02-16 13:42:49', 'email', NULL, 2, '2013-02-16 13:42:49', NULL, NULL),
(258, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', '', 'nithya', 'dfghfgh@gmail.com', 1, 5, 1021, '2013-02-16 13:43:55', 'email', NULL, 2, '2013-02-16 13:43:55', NULL, NULL),
(259, 'V-Grow AssociatesH No 7-45/1/511, 2nd Floor, Plot No 28, Maheshwari Nagar, Bharath Nagar Colony, Moosapet  ', '', 'nithya', 'dfghfgh@gmail.com', 1, 5, 1021, '2013-02-16 13:44:03', 'email', NULL, 2, '2013-02-16 13:44:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE IF NOT EXISTS `tbl_package` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(25) DEFAULT NULL,
  `package_price` varchar(25) DEFAULT NULL,
  `package_description` varchar(255) DEFAULT NULL,
  `package_emaillimit` int(11) DEFAULT NULL,
  `package_smslimit` int(11) DEFAULT NULL,
  `package_list_limit` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `package_duration` int(11) DEFAULT NULL COMMENT 'Duration in days',
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`package_id`, `package_name`, `package_price`, `package_description`, `package_emaillimit`, `package_smslimit`, `package_list_limit`, `status`, `package_duration`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 'Trial Pack', '0/-', 'Free Trial Pack for a period of  20 days', 20, 15, 5, 'ACTIVE', 30, 1, '2013-01-03 00:00:00', NULL, NULL),
(2, '30 Days Subscription Pack', 'Rs. 30/-', '30 day subscription packfgjhngjhgj', 435435, 4354354, 10, 'ACTIVE', 30, 1, '2013-01-03 00:00:00', NULL, NULL),
(3, '60 Days Subscription Pack', 'Rs. 60/-', '60 day subscription pack', 60, 60, 60, 'ACTIVE', 23, 1, '2013-01-03 00:00:00', NULL, NULL),
(4, '90 Days Subscription Pack', 'Rs. 90/-', '90 day subscription pack', 100, 100, 100, 'ACTIVE', 100, 1, '2013-01-03 00:00:00', NULL, NULL),
(5, '120 Days Subscription Pac', 'Rs. 120/-', '120 day subscription pack', 24, 13, 12, 'ACTIVE', 32, 1, '2013-01-03 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE IF NOT EXISTS `tbl_permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(25) DEFAULT NULL,
  `permurl` varchar(1200) NOT NULL COMMENT 'URL For the Menu',
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`permission_id`, `permission_name`, `permurl`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 'FeedBack', 'admin/ccustomer/getAllFeedback', 'ACTIVE', 1, '2012-12-19 14:41:41', NULL, NULL),
(2, 'Send Mail ', 'admin/csendmail/', 'ACTIVE', 1, '2012-12-19 14:42:59', NULL, NULL),
(3, 'List', 'admin/ccustomer/getCustomerList', 'ACTIVE', 1, '2012-12-19 14:43:18', NULL, NULL),
(4, 'Send Sms', 'admin/csendsms/', 'ACTIVE', 1, '2012-12-19 14:44:04', NULL, NULL),
(5, 'Import / Download', 'admin/ccreate/dataTab', 'ACTIVE', 1000, '2013-02-08 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_preferredlist`
--

CREATE TABLE IF NOT EXISTS `tbl_preferredlist` (
  `preferred_id` int(11) NOT NULL AUTO_INCREMENT,
  `preferred_user_id` int(11) DEFAULT NULL,
  `preferred_list_id` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`preferred_id`),
  KEY `preferred_list_id` (`preferred_list_id`),
  KEY `preferred_user_id` (`preferred_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_preferredlist`
--

INSERT INTO `tbl_preferredlist` (`preferred_id`, `preferred_user_id`, `preferred_list_id`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE IF NOT EXISTS `tbl_register` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `Address` varchar(25) DEFAULT NULL,
  `phoneno` varchar(25) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `ctype_id` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `username`, `password`, `email`, `Address`, `phoneno`, `gender`, `State`, `country`, `status`, `ctype_id`, `city`) VALUES
(1, 'nithya', '81dc9bdb52d04dc20036dbd8313ed055', 'nithya@gmail.com', 'electronic city', '9887654321', 'Female', '13', '1', NULL, NULL, NULL),
(3, 'kavitha', '73a248fdd7959b0e9c1e5748d91c9587', 'kavitha@gmail.com', 'dfhfghfghf', '45236547645', 'Female', '15', '5', NULL, NULL, NULL),
(4, 'vijay', '81dc9bdb52d04dc20036dbd8313ed055', 'vijay@gmail.com', 'dfgdhgfh', '4546575678', 'Male', '19', '2', NULL, NULL, NULL),
(5, 'nvbnhg', '81dc9bdb52d04dc20036dbd8313ed055', 'fgdfdfg@gmail.com', 'fgdfgdf', '5464563654', 'Female', '15', '5', NULL, NULL, NULL),
(6, 'dfgdfg', '81dc9bdb52d04dc20036dbd8313ed055', 'dfgdfg@gmail.com', 'djhgjgh', '567487', 'Female', '12', '5', NULL, NULL, NULL),
(7, 'anitha', '81dc9bdb52d04dc20036dbd8313ed055', 'anitha@gmail.com', 'dfgfhgf', '43564637', 'Female', '29', '2', '0', NULL, NULL),
(8, 'anjali', '81dc9bdb52d04dc20036dbd8313ed055', 'anjali@gmail.com', 'banashankari', '245465476', 'Female', '13', '1', '80EFHL6J7GVP5R8', NULL, NULL),
(9, 'sdgdfgfh', '81dc9bdb52d04dc20036dbd8313ed055', 'fgdfdfg@gmail.com', 'gdhgjhgkjh', '7654768768', 'Female', '', '2', 'AWQX1E0PU9QMJ7L', NULL, NULL),
(10, 'ghfgjhgjg', '81dc9bdb52d04dc20036dbd8313ed055', 'vbnghj@gmail.com', 'ghfjhg', '5675678979', 'Female', '29', '2', 'AQ8QCKOVG6W9WZF', NULL, NULL),
(11, 'Nithya', '179ad45c6ce2cb97cf1029e212046e81', 'ewrew@gmail.com', 'fuyikuol', '4564565476', 'Female', '1', '1', 'ACTIVE', 2, NULL),
(12, 'dhtyhty', '81dc9bdb52d04dc20036dbd8313ed055', 'ytuuyik@gmail.com', 'fghjgjgj', '43657468', 'Female', '10', '1', '5C7EX7SJCHF6LVF', NULL, NULL),
(13, 'gfhfgh', '81dc9bdb52d04dc20036dbd8313ed055', 'dfhfghf@gmail.com', 'ewrterwtret', '643576576', 'Female', '1', '1', 'X1FM9J1OXA9MGKE', NULL, NULL),
(14, 'dfgfhfghgf', '81dc9bdb52d04dc20036dbd8313ed055', 'fghfg@gmail.com', 'dfgdfhfg', '6785786978', 'Female', '28', '2', 'OOJZIVU3YSGHC0N', NULL, NULL),
(15, 'kavitha', '179ad45c6ce2cb97cf1029e212046e81', 'kavitha@gmail.com', 'hfghngf', '4677658', 'Female', '26', '2', 'ACTIVE', 100, NULL),
(16, 'hjgfjghjfgj', '81dc9bdb52d04dc20036dbd8313ed055', 'ewrew@gmail.com', 'gfhgjgjg', '3454566', 'Female', '28', '2', 'OMLZW9NG9MSV24F', NULL, NULL),
(17, 'ghdghjgj', '81dc9bdb52d04dc20036dbd8313ed055', 'ewrew@gmail.com', 'dfsghdfh', '56768567', 'Female', '28', '2', '46D9TY0VW6WZX02', NULL, NULL),
(18, 'gfhfghgh', '81dc9bdb52d04dc20036dbd8313ed055', 'dfghfhf@gmail.com', 'tgrytrut', '346557567', 'Female', '28', '2', 'Y1ID9CHLTDUPRJE', 2, NULL),
(19, 'gfhfghgh', '81dc9bdb52d04dc20036dbd8313ed055', 'dfghfhf@gmail.com', 'tgrytrut', '346557567', 'Female', '5', '2', '5LJG4X52625Z7JV', 100, NULL),
(20, 'sasasas', '81dc9bdb52d04dc20036dbd8313ed055', 'asasasa@123.com', 'qweweqweqweqw', '1234567890', 'Male', '3', '1', 'WLQXEOH8WYK2NVT', 2, NULL),
(21, 'sasasas', '81dc9bdb52d04dc20036dbd8313ed055', 'asasasa@123.com', 'qweweqweqweqw', '1234567890', 'Male', '3', '1', 'H8P26RD5GMFN4AR', 2, NULL),
(22, 'sasasas', '81dc9bdb52d04dc20036dbd8313ed055', 'asasasasa@123.com', 'qweweqweqweqw', '1234567890', 'Male', '3', '1', '1AAUBNYGYICZU3Z', 2, NULL),
(23, 'sowmya', '81dc9bdb52d04dc20036dbd8313ed055', 'sowmya@gmail.com', 'fghfghd', '6574676', 'Female', '1', '1', 'ACTIVE', 100, NULL),
(24, 'fghfghgh', '81dc9bdb52d04dc20036dbd8313ed055', 'fghfgh@gmail.com', 'dghfgjhg', '5464768', 'Female', '1', '1', 'HBC8F1TTOTWJUEZ', 100, NULL),
(25, 'fghfghgd', '81dc9bdb52d04dc20036dbd8313ed055', 'gfhgdf@gmail.com', 'detergytrh', '2343564', 'Female', '1', '1', 'DEGJQ6XX7X15BCL', 2, NULL),
(26, 'gdgdfg', '81dc9bdb52d04dc20036dbd8313ed055', 'gfddfh@gmail.com', 'sdfgsdfyht', '234234546', 'Female', '1', '1', 'UZRSVJ8UR6ZIJQ2', 100, NULL),
(27, 'sdfsdfsd', '81dc9bdb52d04dc20036dbd8313ed055', 'sdfasd@gmail.com', 'qwewterte', '1234', 'Female', '27', '2', 'LEU05C1SWYK9FZH', 2, NULL),
(28, 'smitha', '3437d2dc21a86d3cf1bcc024f3c6dbf8', 'smitha@gmail.com', 'bommanahalli', '8986654335', 'Female', '1', '1', 'ACTIVE', 2, NULL),
(29, 'kavan', '49c5093c0d73512e0eb67cd62589a36c', 'kavan@gmail.com', 'kormangala', '8976543212', 'Female', '8', '1', 'ACTIVE', 100, NULL),
(30, 'asdfsdfgdg', '81dc9bdb52d04dc20036dbd8313ed055', 'dfgdf@gmail.com', 'dfhfgh', '5675765', 'Male', '1', '1', 'D02LZS9REGJ3K63', 100, 'Eluru');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE IF NOT EXISTS `tbl_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(25) DEFAULT NULL,
  `role_permission` varchar(100) DEFAULT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_name`, `role_permission`, `role_description`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 'Role1', 'Y,Y,Y,Y,N', 'DataEntry', 'ACTIVE', 1000, '2012-12-19 16:47:25', NULL, NULL),
(2, 'Role2', 'N,N,Y,N,Y', 'DataEntry,Check Reports', 'ACTIVE', 1000, '2012-12-19 16:48:32', NULL, NULL),
(3, 'Admin', 'Y,Y,N,Y,Y', 'Super Admin for the site', 'ACTIVE', 1000, '2012-12-19 17:58:31', NULL, NULL),
(4, 'Role3', 'Y,Y,Y,Y,Y', NULL, 'ACTIVE', 1000, '2013-02-10 15:37:55', NULL, NULL),
(5, 'Role4', 'Y,N,Y,Y,Y', NULL, 'ACTIVE', 1000, '2013-02-10 15:38:10', NULL, NULL),
(6, 'Role5', 'N,N,N,N,N', NULL, 'ACTIVE', 1000, '0000-00-00 00:00:00', 2013, NULL),
(7, 'Role6', 'N,N,N,N,N', NULL, 'ACTIVE', 1000, '0000-00-00 00:00:00', 2013, NULL),
(1000, 'SuperAdmin', 'Y,Y,Y,Y,Y', 'Super User', 'ACTIVE', 1000, '2012-12-14 17:10:07', 1000, '2013-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE IF NOT EXISTS `tbl_services` (
  `services_id` int(11) NOT NULL AUTO_INCREMENT,
  `services_name` varchar(25) DEFAULT NULL,
  `services_customer_id` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`services_id`),
  KEY `services_customer_id` (`services_customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`services_id`, `services_name`, `services_customer_id`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 'ATM Center', 1021, 'ACTIVE', 16, '2013-02-06 12:40:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE IF NOT EXISTS `tbl_state` (
  `state_id` int(10) NOT NULL DEFAULT '0',
  `state_name` varchar(50) DEFAULT NULL,
  `country_id` int(30) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`, `country_id`) VALUES
(1, 'Andhra Pradesh', 1),
(2, 'Assam', 1),
(3, 'Bihar', 1),
(4, 'Chandigarh', 1),
(5, 'Chhattisgarh', 1),
(6, 'Delhi', 1),
(7, 'Goa', 1),
(8, 'Gujarat', 1),
(9, 'Haryana', 1),
(10, 'Himachal Pradesh', 1),
(11, 'Jammu & Kashmir', 1),
(12, 'Jharkhand', 1),
(13, 'Karnataka', 1),
(14, 'Kerala', 1),
(15, 'Madhya Pradesh', 1),
(16, 'Maharashtra', 1),
(17, 'Orissa', 1),
(18, 'Pondicherry', 1),
(19, 'Punjab', 1),
(20, 'Rajasthan', 1),
(21, 'Tamil Nadu', 1),
(22, 'Tripura', 1),
(23, 'Uttar Pradesh', 1),
(24, 'Uttaranchal', 1),
(25, 'West Bengal', 1),
(26, 'New South Wales', 2),
(27, 'Victoria', 2),
(28, 'Queensland', 2),
(29, 'Tasmania ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscription`
--

CREATE TABLE IF NOT EXISTS `tbl_subscription` (
  `subscription_id` int(11) NOT NULL,
  `subscription_customer_id` int(11) DEFAULT NULL,
  `subscription_subscriptiondate` datetime DEFAULT NULL,
  `subscription_activationdate` datetime DEFAULT NULL,
  `subscription_activation_expiry` datetime DEFAULT NULL,
  `subscription_package_id` int(11) DEFAULT NULL,
  `subscription_payment_id` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `subscription_customer_id` (`subscription_customer_id`),
  KEY `subscription_package_id` (`subscription_package_id`),
  KEY `subscription_payment_id` (`subscription_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscription`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) DEFAULT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_state` varchar(25) DEFAULT NULL,
  `user_city` varchar(25) DEFAULT NULL,
  `user_country` varchar(25) DEFAULT NULL,
  `user_pincode` varchar(10) DEFAULT NULL,
  `user_mobile` varchar(10) DEFAULT NULL,
  `user_phone` varchar(10) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  `ctype_id` int(11) DEFAULT NULL,
  `user_authkey` varchar(1200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_state`, `user_city`, `user_country`, `user_pincode`, `user_mobile`, `user_phone`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`, `ctype_id`, `user_authkey`) VALUES
(1, 'nithya', 'nithya@gmail.com', '179ad45c6ce2cb97cf1029e212046e81', '0', '0', NULL, NULL, NULL, '11223344', 'PENDING', 0, '2013-02-16 06:15:25', NULL, NULL, NULL, 'M1MU0K1190Q29D1D4YE7990UYO112BQUFR909BUZ'),
(3, 'nithya', 'kumar.sunnyil@gmail.com', '179ad45c6ce2cb97cf1029e212046e81', '0', '0', NULL, NULL, NULL, '11223344', 'PENDING', 0, '2013-02-16 06:16:15', NULL, NULL, NULL, '1N89U5NMO5C778IY6CQCYCS54THJ70P23XD65065'),
(7, 'vijay', 'vijay@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0', '0', NULL, NULL, '9742568999', '2356899', 'PENDING', 0, '2013-02-21 06:09:45', NULL, NULL, NULL, '0K5UL1021IIZA7QVLXRN66HREYQC7EI6ET38K7U0'),
(8, 'surya', 'surya@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Karnataka', '0', NULL, NULL, '9742569888', '27871236', 'PENDING', 0, '2013-02-21 06:13:19', NULL, NULL, NULL, '8NV9L1LG11FFMUD881U834I08DT8J1J18V8RQ1FE'),
(9, 'fdgdfgh', '', 'd41d8cd98f00b204e9800998ecf8427e', '0', '0', NULL, NULL, '', '', 'PENDING', 0, '2013-02-21 06:14:59', NULL, NULL, NULL, 'GU1E96ZVJHOL1EUGXKL6L2R19UJ1A1LHSO11RTIU'),
(10, 'nithya', 'nithya1725@gmail.com', '179ad45c6ce2cb97cf1029e212046e81', 'Karnataka', 'Bangalore', NULL, NULL, '9742872650', '25869314', 'ACTIVE', 0, '2013-02-21 13:01:39', NULL, NULL, NULL, 'QJ110LZ4KH1CM1JFAJ1DH368H9W11L1JQOF5E0QF');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userroles`
--

CREATE TABLE IF NOT EXISTS `tbl_userroles` (
  `userroles_id` int(11) NOT NULL AUTO_INCREMENT,
  `userroles_email` varchar(55) DEFAULT NULL,
  `userroles_name` varchar(25) DEFAULT NULL,
  `userroles_password` varchar(100) DEFAULT NULL,
  `userroles_role_id` int(11) DEFAULT NULL,
  `userroles_customer_id` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `modifiedon` datetime DEFAULT NULL,
  PRIMARY KEY (`userroles_id`),
  KEY `userroles_customer_id` (`userroles_customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tbl_userroles`
--

INSERT INTO `tbl_userroles` (`userroles_id`, `userroles_email`, `userroles_name`, `userroles_password`, `userroles_role_id`, `userroles_customer_id`, `status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 'ssk@gmail.com', 'Super User', '179ad45c6ce2cb97cf1029e212046e81', 1000, 1, 'ACTIVE', 1, '2012-12-25 00:00:00', 1, '2013-02-06 06:41:54'),
(16, 'sunny@gmail.com', 'Admin', '179ad45c6ce2cb97cf1029e212046e81', 3, 1021, 'ACTIVE', 1, '2013-01-03 11:31:31', NULL, '2013-02-10 10:14:36'),
(18, 'sun123@gmail.com', 'sunny', '179ad45c6ce2cb97cf1029e212046e81', 1, 1021, 'ACTIVE', 16, '2013-02-05 14:59:10', 18, '2013-02-11 11:45:10'),
(19, 'fhjgjgh@gmail.com', 'nfghfghg', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1021, 'ACTIVE', 16, '2013-02-07 11:10:07', NULL, '2013-02-10 10:14:43');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_customerdetails`
--
ALTER TABLE `tbl_customerdetails`
  ADD CONSTRAINT `tbl_customerdetails_ibfk_1` FOREIGN KEY (`customerdetails_customer_id`) REFERENCES `tbl_services` (`services_id`),
  ADD CONSTRAINT `tbl_customerdetails_ibfk_2` FOREIGN KEY (`customerdetails_role_id`) REFERENCES `tbl_role` (`role_id`),
  ADD CONSTRAINT `tbl_customerdetails_ibfk_3` FOREIGN KEY (`customerdetails_emailmessages_id`) REFERENCES `tbl_message` (`message_id`);
