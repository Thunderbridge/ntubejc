-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- 主機: localhost
-- 建立日期: 2018 年 09 月 23 日 05:27
-- 伺服器版本: 5.5.60-MariaDB
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `ntubejc`
--

-- --------------------------------------------------------

--
-- 資料表結構 `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `classNo` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `className` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schoolYear` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `classroom`
--

CREATE TABLE IF NOT EXISTS `classroom` (
  `classroomNo` int(11) NOT NULL,
  `classroom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `courseStandard`
--

CREATE TABLE IF NOT EXISTS `courseStandard` (
  `courseNo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '課程編號',
  `courseName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '課程名稱',
  `departmentNo` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '科系編號',
  `schoolYear` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '學年',
  `credit` tinyint(4) NOT NULL COMMENT '學分',
  `faceHour` tinyint(4) NOT NULL,
  `InternshipHours` tinyint(4) NOT NULL,
  `workTimes` tinyint(4) NOT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '科目類別',
  `cooperative` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '建教_可能會刪除',
  PRIMARY KEY (`courseNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `courseStandard`
--

INSERT INTO `courseStandard` (`courseNo`, `courseName`, `departmentNo`, `schoolYear`, `credit`, `faceHour`, `InternshipHours`, `workTimes`, `subject`, `cooperative`) VALUES
('2016', '民俗與文化', '1', '102', 2, 2, 0, 0, '生活科學學群(至少2學分)', '建教'),
('2048', '倫理與禮類', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2049', '英文商業書報?讀()', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2080', '餐飲美學賞析', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2081', '資料庫管理', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2082', '智慧旅遊概論', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2083', '觀光休閒與運動概論', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2084', '餐旅管理', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2085', '計算機概論', '1', '102', 2, 0, 0, 0, '選修科目(至少16學分)', '建教'),
('2086', '資訊應用', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2087', '經營管理實務專題', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2088', '民法', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2103', '生命自我成長與生命關懷', '1', '102', 2, 2, 0, 0, '人文社會學群(至少2學分)', '建教'),
('2104', '人生哲學', '1', '102', 2, 2, 0, 0, '人文社會學群(至少2學分)', '建教'),
('2105', '生活禮', '1', '102', 2, 2, 0, 0, '人文社會學群(至少2學分)', '建教'),
('2415', '商用英語會話', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2810', '貿易行銷', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2811', '生涯規劃與發展', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2812', '中國大陸區域經濟', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2813', '文化創意?業經營管理', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2814', '資訊概論()', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2815', '資訊概論(二)', '1', '102', 2, 0, 0, 0, '選修科目(至少12學分)', '建教'),
('2816', '資料結構', '1', '102', 3, 3, 0, 0, '選修科目(至少12學分)', '建教'),
('2817', '程式設計()', '1', '102', 3, 3, 0, 0, '選修科目(至少12學分)', '建教'),
('2818', '電腦繪圖基礎', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2819', '電腦繪圖進階', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2820', '設計方法與創意思考', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2821', '語與文化', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2822', '商業攝影', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2823', '3D繪圖基礎', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2824', '3D繪圖進階', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2825', '模型製作與3D列印', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2826', '金融市場', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2827', '多媒體導論', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2828', '攝影棚實務1', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2829', '網際網路概論', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2830', '資訊科技實務', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2831', '民法概要', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2832', '統計學(上)', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2833', '經營個案研究', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2834', '統計學(下)', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2835', '服務業管理', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2836', '商業禮', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2837', '市場調?', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2838', '連鎖加盟實務', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2839', '民法與商務契約', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2840', '統計學', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2841', '門市服務管理()', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2842', '程式設計', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2843', '資料庫管理概論', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2844', '情緒管理', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2845', '財經基本素養', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2846', '?務法規()', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2847', '民俗與文化', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2850', '?務法規(二)', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2851', '英文商業書報?讀(二)', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2852', '投資概論', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2853', '會計相關法規', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2854', '基礎程式設計', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2855', '國際企業管理', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2856', '財務報表判讀', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2857', '資訊與電腦實務', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2858', '資訊概論', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2859', '職涯探索', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教'),
('2860', '商業實作經營', '1', '102', 2, 2, 0, 0, '選修科目(至少12學分)', '建教');

-- --------------------------------------------------------

--
-- 資料表結構 `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `departmentNo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departmentName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `schoollYearCourse`
--

CREATE TABLE IF NOT EXISTS `schoollYearCourse` (
  `yearsCourseNo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schoolYear` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacherNo` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseNo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentNo` varchar(10) NOT NULL,
  `studentName` varchar(25) NOT NULL,
  `courseNo` varchar(5) NOT NULL,
  `classNo` varchar(4) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `teacherNo` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseNo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacherName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseName` int(11) NOT NULL,
  `departments` int(11) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `timetable`
--

CREATE TABLE IF NOT EXISTS `timetable` (
  `timetableNo` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schoolYear` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `week` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classNo` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classroomNo` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearsCourseNo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
