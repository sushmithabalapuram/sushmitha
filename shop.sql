-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jul 14, 2011 at 02:45 AM
-- Server version: 5.0.41
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `shop`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `category`
-- 

CREATE TABLE `category` (
  `cat_id` varchar(30) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `category`
-- 

INSERT INTO `category` (`cat_id`, `category`) VALUES 
('1', 'bob'),
('2', 'retailer');


-- --------------------------------------------------------

-- 
-- Table structure for table `details`
-- 

CREATE TABLE `details` (
  `name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `details`
-- 

INSERT INTO `details` (`name`, `pass`) VALUES 
('admin', 'priya123');

-- --------------------------------------------------------

-- 
-- Table structure for table `fdbk`
-- 

CREATE TABLE `fdbk` (
  `name` varchar(30) NOT NULL,
  `phone no` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subj` varchar(30) NOT NULL,
  `mesg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `fdbk`
-- 

INSERT INTO `fdbk` (`name`, `phone no`, `email`, `subj`, `mesg`) VALUES 
('priya', '33333333333', 'priya@gmail.com', 'service', 'try to improve ur service'),
('priya', '33333333333', 'priya@gmail.com', 'service', 'try to improve ur service'),
('priya', '33333333333', 'priya@gmail.com', 'service', 'try to improve ur service');

-- --------------------------------------------------------

-- 
-- Table structure for table `items`
-- 

CREATE TABLE `items` (
  `catg` varchar(40) NOT NULL,
  `subcatg` varchar(40) NOT NULL,
  `img` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `items`
-- 

INSERT INTO `items` (`catg`, `subcatg`, `img`,  `price`) VALUES 
('retailer', 'banana', 'c:/wamp/tmpphp1EC.tmp', 'd4', ' '),
('retailer', 'orange', 'c:/wamp/tmpphp1EE.tmp', 'd2', ' '),
('retailer', 'apple', 'c:/wamp/tmpphp1EF.tmp', 'd6', ' '),
('retailer', 'watermelon', 'c:/wamp/tmpphp1F0.tmp', 'd7', ' '),
('retailer', 'papaya', 'c:/wamp/tmpphp20F.tmp', 'cs2', ' '),
('retailer', 'mango', 'c:/wamp/tmpphp210.tmp', 'cs3', ' '),
('retailer', 'pineapple', 'c:/wamp/tmpphp211.tmp', 'cs4', ' '),
('retailer', 'promegranate', 'c:/wamp/tmpphp212.tmp', 'cs5', ' ' ),
('retailer', 'guava', 'c:/wamp/tmpphp213.tmp', 'cs6', ' ' ),
('bob', 'banana', 'c:/wamp/tmpphpAC30.tmp', 'ts5', '0.5$ '),
('bob', 'orange', 'c:/wamp/tmpphp4870.tmp', 'ts4', '1$'),
('bob', 'apple', 'c:/wamp/tmpphpBCF4.tmp', 'ts1', '5$'),
('bob', 'watermelon', 'c:/wamp/tmpphp71C3.tmp', 'ts3', '10$'),
('bob', 'papaya', 'c:/wamp/tmpphpEC50.tmp', 'ts6', '8$'),
('bob', 'mango', 'c:/wamp/tmpphp643E.tmp', 'ts2', '15$'),
('bob', 'pineapple', 'c:/wamp/tmpphp46B1.tmp', 'jeans1', '20$'),
('bob', 'promegranate', 'c:/wamp/tmpphp99A1.tmp', 'jeans4', '12$'),
('bob', 'guava', 'c:/wamp/tmpphp1D23.tmp', 'jeans5', '2$'),

-- --------------------------------------------------------

-- 
-- Table structure for table `orders`
-- 

CREATE TABLE `orders` (
  `pname` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `ac_no` varchar(30) NOT NULL,
  `mob_no` varchar(30) NOT NULL,
  `add` varchar(300) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `orders`
-- 

INSERT INTO `orders` (`pname`,  `price`,  `uname`, `ac_no`, `mob_no`, `add`, `bank`, `city`) VALUES 
('apple',  '5$',  'Priya Gupta', 'ac234', '987654987', 'Tilak Nagar,Shanti path', 'ICICI', 'Jaipur'),
('banana ', '0.5$', 'Priya Gupta', 'ac345', '36536356353', 'jaewahar Nagar', 'SBI', 'Delhi');

-- --------------------------------------------------------

-- 
-- Table structure for table `register`
-- 

CREATE TABLE `register` (
  `title` varchar(6) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gen` varchar(30) NOT NULL,
  `id` varchar(50) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `add` varchar(300) NOT NULL,
  `city` varchar(30) NOT NULL,
  `coun` varchar(30) NOT NULL,
  `pannum` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `register`
-- 

INSERT INTO `register` (`title`, `fname`, `lname`, `gen`, `id`, `pass`, `phone`, `add`, `city`, `coun`,`pannum`, `dob`) VALUES 
('Mr.', 'Ankur', 'gupta', 'male', 'ankur@gmail.com', 'ankur123', '9414279845', 'Shanti Path Tilak Nagar', 'Jaipur', 'India','578543212' , '13-11-89'),
('Ms.', 'Priya', 'gupta', 'female', 'priya@gmail.com', 'priya123', '9460380893', 'Patrakar Colany Jawahar Nagar', 'Delhi', 'India','512584525', '30-03-91');

-- --------------------------------------------------------

-- 
-- Table structure for table `subcategory`
-- 

CREATE TABLE `subcategory` (
  `cat_id` varchar(30) NOT NULL,
  `subcategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `subcategory`
-- 

INSERT INTO `subcategory` (`cat_id`, `subcategory`) VALUES 
('1', 'banana'),
('1', 'orange'),
('1', 'apple'),
('1', 'watermelon'),
('1', 'papaya'),
('1', 'mango'),
('1', 'pineapple'),
('1', 'pomegranate'),
('1', 'guava'),
('2', 'banana'),
('2', 'orange'),
('2', 'apple'),
('2', 'watermelon'),
('2', 'papaya'),
('2', 'mango'),
('2', 'pineapple'),
('2', 'pomegranate'),
('2', 'guava'),
-- --------------------------------------------------------

-- 
-- Table structure for table `trash`
-- 

CREATE TABLE `trash` (
  `catg` varchar(50) NOT NULL,
  `subcatg` varchar(50) NOT NULL,
  `img` varchar(60) NOT NULL,
  `price` int(30) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `trash`
-- 

INSERT INTO `trash` (`catg`, `subcatg`, `img`, `price`) VALUES 
('bob', 'guava', 'd:/wamp/tmpphp13A.tmp', '2$'),
('', '', '', '', '12$'),
('bob', 'pineapple', 'd:/wamp/tmpphp15A.tmp', '20$'),
('', '', '', '', 0, '', '28-06-11 04-57-18'),
('retailer', '', '', ''),
('', 'pineaple', '', ''),
('retailer', '', '', '', ),
('', '', '', '20$'),
('bob', 'pomegranate', 'c:/wamp/tmpphp166.tmp', '12$'),
('retailer', '',  '', '');
