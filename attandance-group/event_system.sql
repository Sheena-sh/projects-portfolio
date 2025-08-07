-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 06:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lastLoginDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `username`, `password`, `lastLoginDate`) VALUES
('1', 'admin', 'admin', NULL),
('2', 'root', 'root', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceID` varchar(25) NOT NULL,
  `userID` varchar(25) NOT NULL,
  `eventID` varchar(25) NOT NULL,
  `attendanceDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendanceID`, `userID`, `eventID`, `attendanceDate`) VALUES
('1324', '97119c9799', '1f49b38f', '2023-12-06 13:42:36'),
('1b9e81c5-24d4-4dfe-a4d2-c', '97119c9799', 'db0b4299', '2023-12-08 13:30:00'),
('2321', '97119c9799', '1d84c8fa-6a08-4789-9fd5-d', '2023-12-08 13:41:03'),
('3121', '97119c9799', 'db0b4299', '2023-12-07 13:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventID` varchar(255) NOT NULL,
  `adminID` varchar(25) NOT NULL,
  `eventName` varchar(255) NOT NULL,
  `eventType` varchar(255) NOT NULL,
  `eventStartDate` datetime NOT NULL,
  `eventEndDate` datetime NOT NULL,
  `eventDescription` text DEFAULT NULL,
  `eventVenue` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `registrationStatus` tinyint(1) DEFAULT NULL,
  `creationDate` datetime NOT NULL,
  `parentEvent` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `adminID`, `eventName`, `eventType`, `eventStartDate`, `eventEndDate`, `eventDescription`, `eventVenue`, `status`, `registrationStatus`, `creationDate`, `parentEvent`) VALUES
('05962a66', '1', 'Tech Conference 2023', 'Conference', '2023-12-02 13:25:00', '2023-12-23 13:25:00', 'Explore the latest trends and innovations in the tech industry. Connect with experts and network with professionals.', 'Tech Hub Conference Center', NULL, NULL, '2023-12-08 13:25:27', NULL),
('0882ecab', '1', 'Summer Music Festival', 'Music Festival', '2023-12-05 13:24:00', '2023-12-23 13:24:00', 'Join us for a weekend of live music, food, and fun in the sun.', ' City Park Amphitheater', NULL, NULL, '2023-12-08 13:24:38', NULL),
('0b7dc818', '1', 'Charity Gala Dinner', 'Gala Dinner', '2023-12-11 13:25:00', '2023-12-30 13:25:00', 'An elegant evening of dining and entertainment to support local charities. Dress in your finest attire for a good cause.', 'Grand Ballroom, Riverside Hotel', 'coming soon', NULL, '2023-12-08 13:26:06', NULL),
('1d84c8fa-6a08-4789-9fd5-d', '1', 'Senior Division', 'Competition', '2023-12-15 15:52:00', '2023-12-16 15:52:00', 'Senior Division', 'D522', 'ongoing', NULL, '2023-12-07 15:53:00', 'dc7433ba-8152-42a6-a3d3-f'),
('1f49b38f', '1', 'Test Event Register', 'Test', '2023-12-07 13:00:00', '2023-12-09 13:00:00', 'This event is for testing event regstering', 'Lobby', 'ongoing', 1, '2023-12-08 13:00:36', NULL),
('7a8cc370-2e0b-4d9f-bc34-3', '1', 'Junior Division', 'Competition', '2023-12-11 15:51:00', '2023-12-13 15:51:00', 'The junior division', 'D522', NULL, NULL, '2023-12-07 15:51:46', 'dc7433ba-8152-42a6-a3d3-f'),
('a551d699-807b-447c-a95c-31e50d5a9197', '1', 'Test Event Searchng', 'taeas', '2023-12-07 12:16:00', '2023-12-09 12:16:00', 'sadasd', 'tas', 'coming soon', NULL, '2023-12-08 12:17:00', NULL),
('aae4578e', '1', 'Yoga Retreat Weekend', 'Retreat', '2023-12-02 13:26:00', '2023-12-30 13:26:00', 'Rejuvenate your mind and body with a weekend of yoga, meditation, and wellness activities.', 'Serenity Spa & Retreat Center', 'coming soon', NULL, '2023-12-08 13:26:42', NULL),
('db0b4299', '1', 'Sir Destin Lecture', 'Webinar', '2023-12-06 13:28:00', '2023-12-16 13:28:00', 'Sir Destin will lecture you about Social Involvement.', 'Online', NULL, 1, '2023-12-08 13:28:38', NULL),
('dc7433ba-8152-42a6-a3d3-f', '1', '[𝐌𝐨𝐧𝐭𝐞𝐬 𝐏𝐫𝐨𝐠𝐮𝐞 𝟐: 𝐈𝐧𝐭𝐞𝐫𝐜𝐥𝐚𝐬𝐬 𝐏𝐫𝐨𝐠𝐫𝐚𝐦𝐦𝐢𝐧𝐠 𝐂𝐨𝐦𝐩𝐞𝐭𝐢𝐭𝐢𝐨𝐧 𝟐𝟎𝟐𝟐]4', 'Competition', '2023-12-15 10:32:00', '2023-12-20 10:32:00', 'Greetings, Programmers!\r\nThe Montes Progue Two \"Interclass Programming Competition 2022\" will be an interclass programming competition among BSCS and BSIT students. Each class will be represented by a team that will compete with other classes.\r\n[Mechanics]\r\nThe competition will have two divisions, the junior and senior divisions. The junior division is composed of 1st and 2nd-year students while the senior division is composed of the 3rd and 4th-year students.\r\n[Teams]\r\nEach team will be composed of 2-3 members and they should be in the same class as well. The teams may register by scanning the QR code below. All teams should register ON or BEFORE March 09, 2022 (Wednesday)\r\nThe teams that will be formed are as follows:\r\nBSCS students enrolled in:\r\n1. CS 122 - Computer Programming 2\r\n2. CS 222 - Computer Programming 3\r\n3. CS 322 - Data Science\r\n4. CS 421 - Thesis 2\r\nBSIT students enrolled in:\r\n1. IT 122 - Computer Programming 2\r\n2. IT 222 - Integrative Programming\r\n3. IT 322 - Data Analytics\r\n4. IT 421 - Practicum', 'Open Lab D522', 'coming soon', 1, '2023-12-07 15:49:19', NULL),
('f765d481-d921-4d54-a7e8-2e7afcb7509c', '1', 'Test Event', 'Testing', '2023-12-07 16:00:00', '2023-12-07 16:00:00', 'This event is for testing purposes.', 'Lobby', 'coming soon', NULL, '2023-12-07 16:00:31', 'dc7433ba-8152-42a6-a3d3-f');

-- --------------------------------------------------------

--
-- Table structure for table `eventpost`
--

CREATE TABLE `eventpost` (
  `eventID` varchar(25) NOT NULL,
  `postID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventpost`
--

INSERT INTO `eventpost` (`eventID`, `postID`) VALUES
('1d84c8fa-6a08-4789-9fd5-d', 'e7dcd1bf-4451-4e59-a2c2-d'),
('db0b4299', 'c626a5da-1b96-46ca-bd05-a'),
('dc7433ba-8152-42a6-a3d3-f', '1fb1b577-f0e4-4219-9903-8');

-- --------------------------------------------------------

--
-- Table structure for table `mediaresource`
--

CREATE TABLE `mediaresource` (
  `resourceID` varchar(255) NOT NULL,
  `postID` varchar(25) NOT NULL,
  `mediaType` varchar(50) DEFAULT NULL,
  `mediaLink` varchar(255) NOT NULL,
  `fileExtension` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mediaresource`
--

INSERT INTO `mediaresource` (`resourceID`, `postID`, `mediaType`, `mediaLink`, `fileExtension`) VALUES
('1da05e50-2902-442e-88f9-a385ec90e3f6', '1fb1b577-f0e4-4219-9903-8', 'image/jpeg', '/post/resources/1da05e50-2902-442e-88f9-a385ec90e3f6..jpg', '.jpg'),
('e21abb80-053d-4ca6-87cf-100224a7b4b4', 'c626a5da-1b96-46ca-bd05-a', 'video/mp4', '/post/resources/e21abb80-053d-4ca6-87cf-100224a7b4b4..mp4', '.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postID` varchar(25) NOT NULL,
  `postDate` datetime DEFAULT NULL,
  `textContent` text DEFAULT NULL,
  `posterID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postID`, `postDate`, `textContent`, `posterID`) VALUES
('1fb1b577-f0e4-4219-9903-8', '2023-12-07 15:51:00', 'Prize Pool', '1'),
('c626a5da-1b96-46ca-bd05-a', '2023-12-08 13:28:56', 'Last Lecture Recorded Video', '1'),
('e7dcd1bf-4451-4e59-a2c2-d', '2023-12-08 13:27:18', 'For the ones interested in the senior division go to sir. kial in room 352', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('0f28AMc26sGC0sasbQl7eomdBuLrPZdd', 1702022830, '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-08T07:47:27.822Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{\"error\":[\"Invalid username or password\"]},\"user_id\":\"1\"}'),
('DYWF6x2LZRkucv0Y53fubbKT9YgQLZHr', 1702100248, '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-09T04:05:40.940Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"user_id\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registrationDate` datetime DEFAULT current_timestamp(),
  `lastLoginDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `firstName`, `lastName`, `password`, `email`, `registrationDate`, `lastLoginDate`) VALUES
('23b27050-649b-40a3-82f0-0', 'bonnie', 'Jocel', 'Austria', 'test', 'jocel@gmail.com', '2023-12-08 13:22:44', NULL),
('4beffb9d-4ce2-49f6-bd43-3', 'sheena', 'Sheena', 'Emocling', 'sheena', 'sheena@gmail.com', '2023-12-08 13:22:27', NULL),
('76712d8a-90a8-4376-b140-0', 'ron', 'Ron', 'Vanzuela', 'ron', 'ron@gmail.com', '2023-12-08 13:23:02', NULL),
('7c017f77-4345-44b3-be9c-8', 'test', 'test', 'tas', 'test', 'test@gmail.com', '2023-12-08 12:14:03', NULL),
('97119c9799', 'luwie', 'Lawrence', 'Miguel', 'test', 'lawrencemiguel17@gmail.com', '2023-12-08 11:01:03', NULL),
('bdc00763-ed46-4f0c-a3c0-7', 'elisha', 'Elisha', 'Ordona', 'elisha', 'elisha@gmail.com', '2023-12-08 13:23:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userevent`
--

CREATE TABLE `userevent` (
  `userID` varchar(25) NOT NULL,
  `eventID` varchar(25) NOT NULL,
  `registrationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userevent`
--

INSERT INTO `userevent` (`userID`, `eventID`, `registrationDate`) VALUES
('97119c9799', '1d84c8fa-6a08-4789-9fd5-d', '2023-12-08 13:14:28'),
('97119c9799', '1f49b38f', '2023-12-08 13:00:52'),
('97119c9799', 'db0b4299', '2023-12-08 13:29:21'),
('97119c9799', 'dc7433ba-8152-42a6-a3d3-f', '2023-12-08 13:10:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceID`),
  ADD KEY `userID` (`userID`,`eventID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`),
  ADD KEY `adminID` (`adminID`),
  ADD KEY `event_ibf_2` (`parentEvent`);

--
-- Indexes for table `eventpost`
--
ALTER TABLE `eventpost`
  ADD PRIMARY KEY (`eventID`,`postID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `mediaresource`
--
ALTER TABLE `mediaresource`
  ADD PRIMARY KEY (`resourceID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `posterID` (`posterID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `userevent`
--
ALTER TABLE `userevent`
  ADD PRIMARY KEY (`userID`,`eventID`),
  ADD KEY `eventID` (`eventID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`userID`,`eventID`) REFERENCES `userevent` (`userID`, `eventID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibf_2` FOREIGN KEY (`parentEvent`) REFERENCES `event` (`eventID`),
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventpost`
--
ALTER TABLE `eventpost`
  ADD CONSTRAINT `eventpost_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `event` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventpost_ibfk_2` FOREIGN KEY (`postID`) REFERENCES `post` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mediaresource`
--
ALTER TABLE `mediaresource`
  ADD CONSTRAINT `mediaresource_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `post` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`posterID`) REFERENCES `admin` (`adminID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userevent`
--
ALTER TABLE `userevent`
  ADD CONSTRAINT `userevent_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userevent_ibfk_2` FOREIGN KEY (`eventID`) REFERENCES `event` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
