-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	6.0.7-alpha-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `online exam`
--

CREATE DATABASE IF NOT EXISTS `online exam`;
USE `online exam`;

--
-- Definition of table `course_master`
--

DROP TABLE IF EXISTS `course_master`;
CREATE TABLE `course_master` (
  `course` varchar(60) NOT NULL,
  `course_description` varchar(145) NOT NULL,
  PRIMARY KEY (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_master`
--

/*!40000 ALTER TABLE `course_master` DISABLE KEYS */;
INSERT INTO `course_master` (`course`,`course_description`) VALUES 
 ('Basic C','C Programming'),
 ('DS','Data Structure');
/*!40000 ALTER TABLE `course_master` ENABLE KEYS */;


--
-- Definition of table `login_master`
--

DROP TABLE IF EXISTS `login_master`;
CREATE TABLE `login_master` (
  `userid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_master`
--

/*!40000 ALTER TABLE `login_master` DISABLE KEYS */;
INSERT INTO `login_master` (`userid`,`password`,`type`) VALUES 
 ('','',''),
 ('andy','pass','user'),
 ('daz','pass','user'),
 ('dk','pass','user'),
 ('gs','pass','user'),
 ('smd','pass','user'),
 ('ukt','pass','admin');
/*!40000 ALTER TABLE `login_master` ENABLE KEYS */;


--
-- Definition of table `question_master`
--

DROP TABLE IF EXISTS `question_master`;
CREATE TABLE `question_master` (
  `course` varchar(60) NOT NULL,
  `question` varchar(500) NOT NULL,
  `op1` varchar(145) NOT NULL,
  `op2` varchar(145) NOT NULL,
  `op3` varchar(145) NOT NULL,
  `op4` varchar(145) NOT NULL,
  `ans` varchar(145) NOT NULL,
  PRIMARY KEY (`course`,`question`),
  CONSTRAINT `FK_question_master_1` FOREIGN KEY (`course`) REFERENCES `course_master` (`course`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_master`
--

/*!40000 ALTER TABLE `question_master` DISABLE KEYS */;
INSERT INTO `question_master` (`course`,`question`,`op1`,`op2`,`op3`,`op4`,`ans`) VALUES 
 ('Basic C','	\r\nIf the two strings are identical, then strcmp() function returns','-1','1','0','yes','0'),
 ('Basic C','\r\nC programs are converted into machine language with the help of','An Editor','A compiler','An operating system','None of these.','A compiler'),
 ('Basic C',' First operating system designed using C programming language','Doc','Unix','Windows','Mac','Unix'),
 ('Basic C','A Variable name in C includes which special symbols?','* (asterisk)','# (Hash)','+ (Addition)','_ (underscore)','_ (underscore)'),
 ('Basic C','Can you combine the following two statements into one?\r\nchar *p;\r\np = (char*) malloc(100);','char p = *malloc(100);','char *p = (char) malloc(100);','char *p = (char*)malloc(100);','char *p = (char *)(malloc*)(100);','char *p = (char*)malloc(100);'),
 ('Basic C','How many bytes are occupied by near, far and huge pointers (DOS)?','near=2 far=4 huge=4','near=4 far=8 huge=8','near=2 far=4 huge=8','near=4 far=4 huge=8','near=2 far=4 huge=4'),
 ('Basic C','How many times below for loop will be executed ?\r\n#include<stdio.h>\r\nint main()\r\n{\r\n    int i=0;\r\n    for(;;)\r\n        printf(\"%d\",i);\r\n    return 0;\r\n}','0','infinite','1','10','infinite'),
 ('Basic C','If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?','->','.','&','*','->'),
 ('Basic C','In which header file is the NULL macro defined?','stdio.h','stddef.h','stdio.h and stddef.h','math.h','stdio.h and stddef.h'),
 ('Basic C','The maximum combined length of the command-line arguments including the spaces between adjacent arguments is','128','67','256','It may vary from one operating system to another','It may vary from one operating system to another'),
 ('Basic C','What is (void*)0?','Representation of NULL pointer','Representation of void pointer','Error','None of above','Representation of NULL pointer'),
 ('Basic C','Which of the following function is used to find the first occurrence of a given string in another string?','strchr()','strch()','strstr()','strnset()','strstr()'),
 ('Basic C','Which of the following function sets first n characters of a string to a given character?','strinit()','strnset()','strset()','strcset()','strnset()'),
 ('Basic C','Which of the following functions disconnects the stream from the file pointer.','fremove()','fclose()',' remove()','file pointer to be set to NULL','fclose()'),
 ('Basic C','Who is father of C Language?','Bjarne Stroustrup','James A. Gosling','Dennis Ritchie','Dr. E.F. Codd','Dennis Ritchie'),
 ('DS',' A balance factor in AVL tree is used to check','what rotation to make.','if all child nodes are at same level.','when the last rotation occured.',' if the tree is unbalanced.',' if the tree is unbalanced.'),
 ('DS',' Each data item in a record may be a group item composed of sub-items; those items which are indecomposable are called','elementary items','atoms','scalars','all of above','all of above'),
 ('DS','A data structure where elements can be added or removed at either end but not in the middle','Deque','Queues',' Stacks','Linked lists','Deque'),
 ('DS','A queue data-structure can be used for &#8722;','expression parsing','recursion',' resource allocation','all of the above',' resource allocation'),
 ('DS','Apriori analysis of an algorithm assumes that &#8722;','the algorithm has been tested before in real environment.','all other factors like CPU speed are constant and have no effect on implementation.','the algorithm needs not to be practical.','none of the above.','all other factors like CPU speed are constant and have no effect on implementation.'),
 ('DS','Binary search tree has best case run-time complexity of &#927;(log n). What could the worst case?','&#927;(n)','&#927;(n2)','&#927;(n3)','None of the above','&#927;(n)'),
 ('DS','The difference between linear array and a record is',' An array is suitable for homogeneous data but hte data items in a record may have different data type',' In a record, there may not be a natural ordering in opposed to linear array.','A record form a hierarchical structure but a lienear array does not','All of above','All of above'),
 ('DS','The following formula is of \" left_subtree (keys)  &#8804;  node (key)  &#8804;  right_subtree (keys)\"','Bianry Tree','Complete Binary Tree','Binary Search Tree','All of the above','Binary Search Tree'),
 ('DS','The term \"push\" and \"pop\" is related to the','array',' lists','stacks','all of above','stacks'),
 ('DS','Time complexity of Depth First Traversal of is ','&#920;(|V|+|E|)','&#920;(|V|)','&#920;(|E|)','&#920;(|V|*|E|)','&#920;(|V|+|E|)'),
 ('DS','What is the worst case run-time complexity of binary search algorithm?','-&#927;(n2)','&#927;(nlog n)','&#927;(n3)','&#927;(n)','&#927;(n)'),
 ('DS','When inorder traversing a tree resulted E A C K F H D B G; the preorder traversal would return','FAEKCDBHG','FAEKCDHGB',' EAFKHDCBG',' FEAKDCHBG','FAEKCDHGB'),
 ('DS','Which of the below mentioned sorting algorithms are not stable?','Selection Sort',' Bubble Sort',' Merge Sort',' Insertion Sort','Selection Sort'),
 ('DS','Which of the following data structures are indexed structures?','linear arrays',' linked lists','both of above',' none of above','linear arrays');
/*!40000 ALTER TABLE `question_master` ENABLE KEYS */;


--
-- Definition of table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `sr.no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) NOT NULL,
  `course` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `marks` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sr.no`),
  KEY `FK_result_1` (`course`),
  KEY `FK_result_2` (`userid`),
  CONSTRAINT `FK_result_1` FOREIGN KEY (`course`) REFERENCES `course_master` (`course`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_result_2` FOREIGN KEY (`userid`) REFERENCES `login_master` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` (`sr.no`,`userid`,`course`,`date`,`marks`) VALUES 
 (1,'dk','DS','2004-07-17 08:18:54',80),
 (2,'smd','DS','2004-07-17 08:21:57',90),
 (3,'andy','DS','2004-07-17 08:24:04',40),
 (4,'dk','DS','2004-07-17 10:29:27',50),
 (5,'daz','Basic C','2005-07-17 02:29:33',90),
 (6,'gs','Basic C','2005-07-17 02:40:52',70),
 (7,'daz','DS','2005-07-17 09:10:02',60);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;


--
-- Definition of table `user_cou_map`
--

DROP TABLE IF EXISTS `user_cou_map`;
CREATE TABLE `user_cou_map` (
  `userid` varchar(45) NOT NULL,
  `course` varchar(60) NOT NULL,
  `examstatus` varchar(45) NOT NULL,
  `approvalstatus` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`,`course`) USING BTREE,
  KEY `FK_user_cou_map_2` (`course`),
  CONSTRAINT `FK_user_cou_map_1` FOREIGN KEY (`userid`) REFERENCES `login_master` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_cou_map_2` FOREIGN KEY (`course`) REFERENCES `course_master` (`course`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cou_map`
--

/*!40000 ALTER TABLE `user_cou_map` DISABLE KEYS */;
INSERT INTO `user_cou_map` (`userid`,`course`,`examstatus`,`approvalstatus`) VALUES 
 ('andy','Basic C','not Attempted','Applied'),
 ('andy','DS','Attempted','true'),
 ('daz','Basic C','Attempted','true'),
 ('daz','DS','Attempted','true'),
 ('dk','Basic C','not Attempted','true'),
 ('dk','DS','Attempted','true'),
 ('gs','Basic C','Attempted','Applied'),
 ('gs','DS','not Attempted','true'),
 ('smd','Basic C','not Attempted','true'),
 ('smd','DS','not Attempted','Applied');
/*!40000 ALTER TABLE `user_cou_map` ENABLE KEYS */;


--
-- Definition of table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
  `userid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` varchar(5) NOT NULL,
  `address` varchar(70) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`),
  CONSTRAINT `FK_user_details_1` FOREIGN KEY (`userid`) REFERENCES `login_master` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`userid`,`name`,`age`,`address`,`email`,`contact`) VALUES 
 ('andy','addy','20','kolkata','ad@ujsjd.com','789645'),
 ('daz','sayan','20','kolkata','say@gmail.com','786543920'),
 ('dk','deepa','18','kolkata','dk@gmail.com','2345676543'),
 ('gs','gauri','20','kolkata','gs@gmail.com','78754243'),
 ('smd','mouli','20','kolkata','smd@gmail.com','8765456701'),
 ('ukt','ujjwal','20','kolkata','uk@testu.com','9087654321');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
