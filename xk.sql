-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-05-21 21:10:38
-- 服务器版本： 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xk`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminNo` char(8) NOT NULL,
  `adminName` char(8) NOT NULL,
  `Pwd` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`adminNo`, `adminName`, `Pwd`) VALUES
('00000000', 'admin', '00000000');

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `ClassNo` char(8) NOT NULL,
  `DepartNo` char(2) NOT NULL,
  `ClassName` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`ClassNo`, `DepartNo`, `ClassName`) VALUES
('20000001', '01', '00电子商务'),
('20000002', '01', '00多媒体'),
('20000003', '01', '00数据库'),
('20000004', '02', '00建筑管理'),
('20000005', '02', '00建筑电气'),
('20000006', '03', '00旅游管理'),
('20010001', '01', '01电子商务'),
('20010002', '01', '01多媒体'),
('20010003', '01', '01数据库'),
('20010004', '02', '01建筑管理'),
('20010005', '02', '01建筑电气'),
('20010006', '03', '01旅游管理'),
('20020001', '01', '02电子商务'),
('20020002', '01', '02多媒体'),
('20020003', '01', '02数据库'),
('20020004', '02', '02建筑管理'),
('20020005', '02', '02建筑电气'),
('20020006', '03', '02旅游管理');

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `CouNo` char(3) NOT NULL,
  `CouName` char(30) NOT NULL,
  `Kind` char(8) NOT NULL,
  `Credit` decimal(5,0) NOT NULL,
  `Teacher` char(20) NOT NULL,
  `DepartNo` char(2) NOT NULL,
  `SchoolTime` char(10) NOT NULL,
  `LimitNum` decimal(5,0) NOT NULL,
  `WillNum` decimal(5,0) NOT NULL,
  `ChooseNum` decimal(5,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`CouNo`, `CouName`, `Kind`, `Credit`, `Teacher`, `DepartNo`, `SchoolTime`, `LimitNum`, `WillNum`, `ChooseNum`) VALUES
('001', 'SQL SERVER技术与应用', '工程技术', '3', '林睿', '01', '周二5-6节', '25', '43', '0'),
('002', 'JAVA技术与应用', '工程技术', '3', '林睿', '01', '周二5-6节', '25', '35', '0'),
('003', '网络信息检索原理与技术', '信息技术', '2', '李涛', '01', '周二晚', '10', '29', '0'),
('004', 'Linux操作系统', '信息技术', '2', '郑星', '01', '周二5-6节', '10', '33', '0'),
('005', 'Premiere6.0影视制作', '信息技术', '2', '李韵婷', '01', '周二5-6节', '20', '27', '0'),
('006', 'Director动画电影设计与制作', '信息技术', '2', '陈子仪', '01', '周二5-6节', '10', '27', '0'),
('007', 'Delphi初级程序员', '信息技术', '2', '李兰', '01', '周二5-6节', '20', '27', '0'),
('008', 'ASP.NET应用', '信息技术', '3', '曾建华', '01', '周二5-6节', '10', '45', '0'),
('009', '水资源利用管理与保护', '工程技术', '2', '叶艳茵', '02', '周二晚', '10', '31', '0'),
('010', '中级电工理论2', '工程技术', '3', '范敬丽', '02', '周二5-6节', '5', '24', '0'),
('011', '中级电工理论', '工程技术', '3', '范敬丽', 'De', '周二5-6节', '5', '27', '0'),
('012', '智能建筑', '工程技术', '2', '王娜', '02', '周二5-6节', '10', '21', '0'),
('013', '房地产漫谈', '人文', '2', '黄强', '02', '周二5-6节', '10', '36', '0'),
('014', '科技与探索', '人文', '2', '顾苑玲', '02', '周二5-6节', '10', '24', '0'),
('015', '民俗风情旅游', '管理', '2', '杨国润', '03', '周二5-6节', '20', '33', '0'),
('016', '旅行社经营管理', '管理', '2', '黄文昌', '03', '周二5-6节', '20', '36', '0'),
('017', '世界旅游', '人文', '2', '盛德文', '03', '周二5-6节', '10', '27', '0'),
('018', '中餐菜肴制作', '人文', '2', '卢萍', '03', '周二5-6节', '5', '66', '0'),
('019', '电子出版概论', '工程技术', '2', '李力', '03', '周二5-6节', '10', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `DepartNo` char(2) NOT NULL,
  `DepartName` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `department`
--

INSERT INTO `department` (`DepartNo`, `DepartName`) VALUES
('01', '自动化'),
('02', '信息工程'),
('03', '电子科学与技术'),
('00', '通信工程'),
('04', '电气工程及其自动化');

-- --------------------------------------------------------

--
-- 表的结构 `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `StuNo` char(8) CHARACTER SET utf8 NOT NULL,
  `CouNo` char(3) CHARACTER SET utf8mb4 NOT NULL,
  `score` char(5) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `score`
--

INSERT INTO `score` (`StuNo`, `CouNo`, `score`) VALUES
('12345678', '001', '92'),
('12345678', '002', '90');

-- --------------------------------------------------------

--
-- 表的结构 `stucou`
--

CREATE TABLE IF NOT EXISTS `stucou` (
  `StuNo` char(8) NOT NULL,
  `CouNo` char(3) NOT NULL,
  `WillOrder` smallint(6) NOT NULL,
  `State` char(2) NOT NULL,
  `RandomNum` char(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `stucou`
--

INSERT INTO `stucou` (`StuNo`, `CouNo`, `WillOrder`, `State`, `RandomNum`) VALUES
('12345678', '002', 2, '报名', NULL),
('12345678', '001', 1, '报名', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `StuNo` char(8) NOT NULL,
  `ClassNo` char(8) NOT NULL,
  `StuName` char(10) NOT NULL,
  `Pwd` char(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`StuNo`, `ClassNo`, `StuName`, `Pwd`) VALUES
('12345679', '2', '林睿2号', '12345679'),
('12345678', '1', '林睿', '12345678');

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `TeaNo` char(8) NOT NULL,
  `DepartNo` char(2) NOT NULL,
  `TeaName` char(10) NOT NULL,
  `Pwd` char(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`TeaNo`, `DepartNo`, `TeaName`, `Pwd`) VALUES
('80881234', '03', '林睿', '80881234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`adminNo`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`ClassNo`), ADD KEY `DepartNo` (`DepartNo`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`CouNo`), ADD FULLTEXT KEY `SchoolTime` (`SchoolTime`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`DepartNo`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
 ADD PRIMARY KEY (`StuNo`,`CouNo`);

--
-- Indexes for table `stucou`
--
ALTER TABLE `stucou`
 ADD PRIMARY KEY (`StuNo`,`CouNo`), ADD KEY `CouNo` (`CouNo`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`StuNo`), ADD KEY `ClassNo` (`ClassNo`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
 ADD PRIMARY KEY (`TeaNo`), ADD KEY `DepartNo` (`DepartNo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
