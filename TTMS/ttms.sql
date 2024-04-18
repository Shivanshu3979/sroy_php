SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `ttms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `name` varchar(30) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`name`, `status`) VALUES
('MCA201', 4),
('MCA202', 2),
('MCA203', 3);

-- --------------------------------------------------------

--
-- Table structure for table `semester2`
--

CREATE TABLE `semester2` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester2`
--

INSERT INTO `semester2` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', '-<br>-, -, -'),
('tuesday', 'MCA201', 'MCA202', 'MCA203', 'MCA204', '-<br>-', 'MCA201'),
('wednesday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', 'MCA204'),
('thursday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', 'MCA204'),
('friday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', '-<br>-, -, -'),
('saturday', 'MCA201', 'MCA202', 'MCA203', 'MCA204', '-<br>-', 'MCA205');

-- --------------------------------------------------------

--
-- Table structure for table `semester5`
--

CREATE TABLE `semester3` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester5`
--

INSERT INTO `semester3` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', '-<br>-, -, -'),
('tuesday', 'MCA201', 'MCA202', 'MCA203', 'MCA204', '-<br>-', 'MCA201'),
('wednesday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', 'MCA204'),
('thursday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', 'MCA204'),
('friday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', '-<br>-, -, -'),
('saturday', 'MCA201', 'MCA202', 'MCA203', 'MCA204', '-<br>-', 'MCA205');

-- --------------------------------------------------------

--
-- Table structure for table `semester7`
--

CREATE TABLE `semester4` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester7`
--

INSERT INTO `semester4` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', '-<br>-, -, -'),
('tuesday', 'MCA201', 'MCA202', 'MCA203', 'MCA204', '-<br>-', 'MCA201'),
('wednesday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', 'MCA204'),
('thursday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', 'MCA204'),
('friday', 'MCA201', 'MCA202', 'MCA203', '-<br>-', '-<br>-', '-<br>-, -, -'),
('saturday', 'MCA201', 'MCA202', 'MCA203', 'MCA204', '-<br>-', 'MCA205');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_type` varchar(15) NOT NULL,
  `semester` int(1) NOT NULL,
  `department` varchar(50) NOT NULL,
  `isAlloted` int(1) NOT NULL,
  `allotedto` text NOT NULL,
  `allotedto2` text NOT NULL,
  `allotedto3` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_name`, `course_type`, `semester`, `department`, `isAlloted`, `allotedto`, `allotedto2`, `allotedto3`) VALUES
('MCA201', 'AIT', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T001', '', ''),
('MCA202', 'OT', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T001', '', ''),
('MCA203', 'Block Chain', 'LAB', 7, 'Computer Engg. Dept.', 1, 'T001', '', ''),
('MCA204', 'Python', 'LAB', 7, 'Computer Engg. Dept.', 1, 'T002', '', ''),
('MCA205', 'SPM', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T002', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t001`
--

CREATE TABLE `t001` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t001`
--

INSERT INTO `t001` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'OT'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'AIT'),
('thursday', 'Block Chain', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t002`
--

CREATE TABLE `t002` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t002`
--

INSERT INTO `t002` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', 'Python', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'Python'),
('wednesday', 'Python', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'Python'),
('friday', 'DBMS', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', 'Python', '-<br>-', '-');

-- --------------------------------------------------------

CREATE TABLE `t003` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t002`
--

INSERT INTO `t003` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', 'Python', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'Python'),
('wednesday', 'Python', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'Python'),
('friday', 'DBMS', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', 'Python', '-<br>-', '-');
-- --------------------------------------------------------
--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `faculty_number` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `emailid` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`faculty_number`, `name`, `alias`, `designation`, `contact_number`, `emailid`) VALUES
('T016', 'Prof. Arpana Kulkarni', 'SH', 'Professor', '12345678', 'arpana@gmail.com'),
('T015', 'Prof. Gauri Kulkarni', 'FT', 'Professor', '12345678', 'gauri@gmail.com'),
('T001', 'Prof. Yogesh', 'MSU', 'Professor', '12345678', 'yogesh@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `semester3`
--
ALTER TABLE `semester3`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester5`
--

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `t001`
--
ALTER TABLE `t001`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t002`
--
ALTER TABLE `t002`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t003`
--
ALTER TABLE `t003`
  ADD PRIMARY KEY (`day`);


-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`faculty_number`);
COMMIT;
