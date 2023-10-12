
-- For User
CREATE TABLE `user` (
  `ID` int(11) PRIMARY KEY AUTO_INCREMENT,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
   `Gender` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL
);


INSERT INTO `user` (`ID`, `Firstname`, `Lastname`, `Gender`, `Address`, `Email`, `Password`, `Role`, `Status`) VALUES
(1, 'Clark', 'Anore', 'LLC', 'Male', 'clark@gmail.com', 'cl@rk', 'admin', 'Active'),
(2, 'Paul', 'Elizalde ', 'Talamban', 'Male', 'paul@gmail.com', 'paul', 'user', 'Active');



-- FOR Activity user
CREATE TABLE `activity_user` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `activityName` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `dateOfActivity` date DEFAULT NULL,
  `timeOfActivity` time DEFAULT NULL,
  `image` blob DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
);