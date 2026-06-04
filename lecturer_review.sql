-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2026 at 11:05 AM
-- Server version: 12.2.2-MariaDB
-- PHP Version: 8.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lecturer_review`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 3,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password_hash`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@hu.edu.et', '$2y$12$r5yy5ipqa.OQA3tcL31.TONcSylpqeHeypY42Ym2WHPJWFdEHoaAu', 3, '2026-05-30 08:35:34', '2026-05-30 08:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `department_id`) VALUES
(1, 'Object Oriented Programming', 1),
(2, 'Data Communication and Computer Networks', 1),
(3, 'Advanced Database Systems', 1),
(4, 'Discrete Mathematics and Combinatorics', 1),
(5, 'Data Structures and Algorithms', 1),
(6, 'Computer Organization and Architecture', 1),
(7, 'Fundamentals of Database Systems', 2),
(8, 'History of Ethiopia and the Horn', 2),
(9, 'Object Oriented System Analysis and Design', 2),
(10, 'Information Storage and Retrieval', 3),
(11, 'Operating Systems', 3),
(12, 'Introduction to Economics', 3),
(13, 'Fundamentals of Internet Programming', 3),
(14, 'Wireless Communication and Mobile Computing', 1),
(15, 'Web Programming', 1),
(16, 'Introduction to Artificial Intelligence', 1),
(17, 'Automata and Complexity Theory', 1),
(18, 'Real Time and Embedded Systems', 1),
(19, 'Research Methods in Computer Science', 1),
(20, 'Introduction to Data Science and Business Intelligence', 2),
(21, 'Advanced Internet Programming', 2),
(22, 'Information Systems Project Management', 2),
(23, 'Systems and Network Administration', 2),
(24, 'Event-Driven Programming', 3),
(25, 'Advanced Programming', 3),
(26, 'Introduction to Distributed System', 3),
(27, 'Wireless Networking and Telecom Technologies', 3),
(28, 'Mobile Application Development', 3),
(29, 'Computer Vision and Image Processing', 1),
(30, 'Selected Topics in Computer Science', 1),
(31, 'Introduction to Machine Learning', 1),
(32, 'Entrepreneurship & Business Development', 1),
(33, 'Management of Information Systems and Services', 2),
(34, 'Expert Systems', 2),
(35, 'Organizational Behavior', 2),
(36, 'Seminar in Information System', 2),
(37, 'Information Technology Project Management', 3),
(38, 'Network Design', 3),
(39, 'Social and Professional Ethics in IT', 3),
(40, 'Introduction to Datamining and Warehousing', 3),
(41, 'Entrepreneurship', 3);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`) VALUES
(1, 'Computer Science'),
(2, 'Information Systems'),
(3, 'Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `valid_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`id`, `name`, `valid_id`, `department_id`) VALUES
(1, 'Abebayew S.', 1, 1),
(2, 'Abebe F.', 2, 1),
(3, 'Aregawi T.', 3, 1),
(4, 'Ayele S.', 4, 1),
(5, 'Birhane B.', 5, 1),
(6, 'Biruk W.', 6, 1),
(7, 'Daniel S.', 7, 1),
(8, 'Daniel T.', 8, 1),
(9, 'Degu B.', 9, 1),
(10, 'Dr. Andargachew', 10, 1),
(11, 'Elias J.', 11, 2),
(12, 'Elsabeth T.', 12, 2),
(13, 'Endalkachew M.', 13, 2),
(14, 'Ephrem A.', 14, 2),
(15, 'Gezehegn G.', 15, 2),
(16, 'Girmay T.', 16, 2),
(17, 'Gizaw M.', 17, 2),
(18, 'Jelalu N.', 18, 2),
(19, 'Kitaw A.', 19, 2),
(20, 'Mekonnen K.', 20, 2),
(21, 'Merodak K.', 21, 2),
(22, 'Mulat S.', 22, 3),
(23, 'Muluwork A.', 23, 3),
(24, 'Muzeyn K.', 24, 3),
(25, 'Nafiyad T.', 25, 3),
(26, 'Solomon Ts.', 26, 3),
(27, 'Tegegn G.', 27, 3),
(28, 'Tewoderos T.', 28, 3),
(29, 'Tewodros A.', 29, 3),
(30, 'Umer K.', 30, 3),
(31, 'Umer N.', 31, 3),
(32, 'Yirgalem M.', 32, 1),
(33, 'Zemenu H.', 33, 1),
(34, 'Kalikidan A.', 34, 1),
(35, 'Abinet T.', 35, 1),
(36, 'Mebrhit G.', 36, 2),
(37, 'Melat A.', 37, 2),
(38, 'Firehiwet Z.', 38, 2),
(39, 'Dr. Degif T.', 39, 2),
(40, 'Mr. Kassa', 40, 2),
(41, 'Hiwot D.', 41, 3),
(42, 'Mr. Tesfaye G.', 42, 3),
(43, 'Dr Alemu Ashagrie', 43, 3),
(44, 'Mr. Tesfaye Masebo', 44, 3),
(45, 'Mr. Teshale S.', 45, 3),
(46, 'Dr. Ashenafi K.', 46, 1),
(47, 'Dr. Abayineh', 47, 1),
(48, 'Mr. Zewudu D.', 48, 1),
(51, 'test lecturer', 56, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_accounts`
--

CREATE TABLE `lecturer_accounts` (
  `id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `lecturer_accounts`
--

INSERT INTO `lecturer_accounts` (`id`, `lecturer_id`, `username`, `email`, `password_hash`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 2, 'abebe', 'abebef@gmail.com', '$2y$12$7KvDGPx6S46X3vWt8TC8NeUUIH7xi6B97YmUY/TVZErdL1hJWdICS', 2, '2026-05-30 07:22:38', '2026-05-30 08:18:59'),
(4, 35, 'abinet', 'abinet@gmail.com', '$2y$12$9fuB7ZjDPbFZ3M0u7PtZ.OvoWhXBkweoLALvwO.1JFRvw608yM.5O', 2, '2026-05-31 10:37:55', '2026-05-31 10:37:55'),
(5, 6, 'biruk', 'biruk@gmail.com', '$2y$12$d.06NlX3sU.nUsCkjqTH4.05NhFXlHBhOMEkTcMbZ5jQGB1BeXlcu', 2, '2026-05-31 10:50:10', '2026-05-31 10:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_courses`
--

CREATE TABLE `lecturer_courses` (
  `lecturer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `lecturer_courses`
--

INSERT INTO `lecturer_courses` (`lecturer_id`, `course_id`) VALUES
(1, 1),
(26, 1),
(2, 2),
(35, 2),
(3, 3),
(34, 3),
(4, 4),
(32, 4),
(5, 5),
(32, 5),
(33, 5),
(6, 6),
(3, 7),
(34, 7),
(12, 8),
(41, 8),
(18, 9),
(21, 10),
(45, 10),
(22, 11),
(40, 11),
(23, 12),
(14, 13),
(24, 13),
(9, 14),
(28, 14),
(35, 14),
(1, 15),
(13, 15),
(14, 15),
(17, 15),
(39, 15),
(7, 16),
(10, 16),
(19, 16),
(43, 16),
(8, 17),
(33, 17),
(6, 18),
(40, 18),
(47, 19),
(11, 20),
(36, 20),
(13, 21),
(17, 21),
(24, 21),
(39, 21),
(15, 22),
(30, 22),
(44, 22),
(16, 23),
(22, 23),
(29, 23),
(42, 23),
(5, 24),
(25, 24),
(27, 24),
(33, 24),
(26, 25),
(4, 26),
(8, 26),
(27, 26),
(2, 27),
(9, 27),
(28, 27),
(17, 28),
(25, 28),
(39, 28),
(10, 30),
(43, 30),
(46, 30),
(7, 31),
(10, 31),
(43, 31),
(46, 31),
(20, 32),
(23, 32),
(31, 32),
(38, 32),
(48, 32),
(18, 33),
(37, 33),
(11, 34),
(19, 34),
(12, 35),
(37, 35),
(41, 35),
(20, 36),
(38, 36),
(47, 36),
(15, 37),
(31, 37),
(44, 37),
(16, 38),
(29, 38),
(42, 38),
(30, 39),
(48, 39),
(3, 40),
(21, 40),
(36, 40),
(45, 40);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `rating`, `lecturer_id`, `course_id`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'Student Department: Computer Science\nTeaching Effectiveness: 4/5\nCommunication Skills: 2/5\nPunctuality and Attendance: 1/5\n\nComments:\nthis is a test review to check if the backend and database works as intended.', 4, 2, 2, 3, '2026-05-30 07:20:46', '2026-05-31 10:46:42'),
(2, 'Teaching Effectiveness: 4/5\nCommunication Skills: 1/5\nPunctuality and Attendance: 5/5\n\nComments:\nsomething something something something something something something something something something something something something something something something', 5, 10, 16, 3, '2026-05-30 07:36:37', '2026-05-30 07:36:37'),
(3, 'Student Department: Computer Science\nTeaching Effectiveness: 5/5\nCommunication Skills: 5/5\nPunctuality and Attendance: 5/5\n\nComments:\nthis is a placeholder review to showcase the functionality of these website. here goes written reviews for lecturers', 5, 35, 14, 3, '2026-05-31 10:36:36', '2026-05-31 10:36:36'),
(4, 'Teaching Effectiveness: 4/5\nCommunication Skills: 4/5\nPunctuality and Attendance: 5/5\n\nComments:\nthis is a placeholder review to showcase the workings of this website', 5, 6, 6, 3, '2026-05-31 10:49:10', '2026-05-31 10:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `displayname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `displayname`) VALUES
(1, 'student', 'Student'),
(2, 'lecturer', 'Lecturer'),
(3, 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `valid_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `username`, `email`, `password_hash`, `valid_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 'dagim', 'dagimsisay2005@gmail.com', '$2y$12$nf8JY1zryMOWsRCNb8/8quKxm5AyTMrjMs9FZ7yL4mNpe.VyOuL4q', 49, 1, '2026-05-29 16:50:27', '2026-05-29 17:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `valid_ids`
--

CREATE TABLE `valid_ids` (
  `id` int(11) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `valid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `valid_ids`
--

INSERT INTO `valid_ids` (`id`, `usertype`, `valid_id`) VALUES
(1, 'lecturer', 10001),
(2, 'lecturer', 10002),
(3, 'lecturer', 10003),
(4, 'lecturer', 10004),
(5, 'lecturer', 10005),
(6, 'lecturer', 10006),
(7, 'lecturer', 10007),
(8, 'lecturer', 10008),
(9, 'lecturer', 10009),
(10, 'lecturer', 10010),
(11, 'lecturer', 10011),
(12, 'lecturer', 10012),
(13, 'lecturer', 10013),
(14, 'lecturer', 10014),
(15, 'lecturer', 10015),
(16, 'lecturer', 10016),
(17, 'lecturer', 10017),
(18, 'lecturer', 10018),
(19, 'lecturer', 10019),
(20, 'lecturer', 10020),
(21, 'lecturer', 10021),
(22, 'lecturer', 10022),
(23, 'lecturer', 10023),
(24, 'lecturer', 10024),
(25, 'lecturer', 10025),
(26, 'lecturer', 10026),
(27, 'lecturer', 10027),
(28, 'lecturer', 10028),
(29, 'lecturer', 10029),
(30, 'lecturer', 10030),
(31, 'lecturer', 10031),
(32, 'lecturer', 10032),
(33, 'lecturer', 10033),
(34, 'lecturer', 10034),
(35, 'lecturer', 10035),
(36, 'lecturer', 10036),
(37, 'lecturer', 10037),
(38, 'lecturer', 10038),
(39, 'lecturer', 10039),
(40, 'lecturer', 10040),
(41, 'lecturer', 10041),
(42, 'lecturer', 10042),
(43, 'lecturer', 10043),
(44, 'lecturer', 10044),
(45, 'lecturer', 10045),
(46, 'lecturer', 10046),
(47, 'lecturer', 10047),
(48, 'lecturer', 10048),
(49, 'student', 20001),
(50, 'student', 20002),
(51, 'student', 20003),
(52, 'student', 20004),
(53, 'student', 20005),
(54, 'lecturer', 12312),
(55, 'lecturer', 9809),
(56, 'lecturer', 12121);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_admins_role` (`role_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course` (`course`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department` (`department`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `valid_id` (`valid_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `lecturer_accounts`
--
ALTER TABLE `lecturer_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lecturer_id` (`lecturer_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `lecturer_courses`
--
ALTER TABLE `lecturer_courses`
  ADD PRIMARY KEY (`lecturer_id`,`course_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lecturer_id` (`lecturer_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `fk_reviews_course` (`course_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `displayname` (`displayname`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `valid_id` (`valid_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `valid_ids`
--
ALTER TABLE `valid_ids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `valid_id` (`valid_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `lecturer_accounts`
--
ALTER TABLE `lecturer_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `valid_ids`
--
ALTER TABLE `valid_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `fk_admins_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD CONSTRAINT `1` FOREIGN KEY (`valid_id`) REFERENCES `valid_ids` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `lecturer_accounts`
--
ALTER TABLE `lecturer_accounts`
  ADD CONSTRAINT `1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `lecturer_courses`
--
ALTER TABLE `lecturer_courses`
  ADD CONSTRAINT `1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reviews_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `1` FOREIGN KEY (`valid_id`) REFERENCES `valid_ids` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
