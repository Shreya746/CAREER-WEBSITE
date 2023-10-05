-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Oct 04, 2023 at 07:36 PM
-- Server version: 5.7.43
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `pass`) VALUES
('admin@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
('Shreya', 'S@123');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`, `created_at`) VALUES
('978-0-321-94786-1', 'Ultimate career guide', 'Samuel Latham and Amebelle Ra', 'th (1).jpeg', 'Foreword by Sanjeev Bikhchandani, Founder, N Looking for the career of your choice and don’t want to take the beaten path? Then pick up this book and get ready for your dream career! The Ultimate Guide to 21st Century Careers is designed to provide you with all the information you need about new careers in a range of fields. Specially designed for the modern Indian student, it is the first book in years to give detailed overviews of job profiles under each field it covers, as well as offer a roadmap to students on how to get these jobs. In its pages you will find: Detailed information about the roles you can pursue in every field. Exercises that will help you assess your skill sets and interests, and correlate them to specific career paths. A comprehensive list of colleges, both in India and abroad, that offer courses in each field. Estimates of the salaries you could expect to earn in every profession and role. Testimonies from experts in different areas, providing a peek into their daily work lives. The fields covered in the book include: Data science and analytics, advertising, film-making, entrepreneurship, art, writing, photography, acting and modelling, music, dance, sales and marketing, human resources, psychology, education and teaching, social work, graphic design, fashion, industrial design, web design, interior design, journalism, social sciences, law, architecture, information technology, finance, analytics, bioinformatics, engineering, scientific research, biotechnology, medicine, hospitality, chef, Indian armed forces, sports, genetics, and many more! Whether you are interested in problem-solving or ideating, creating something new or working with people, this book is your one-stop compendium to finding your niche and excelling in it.', 420.00, 6, '2023-07-01 16:44:25'),
('978-0-321-94786-2', 'Career killers', 'John M.Crossman', 'th (2).jpeg', 'John Crossman\'s Career Killers/ Career Builders is based off his most requested speech, which is The Top 5 Ways to Get Fired and The Top 5 Ways to Keep From Being Fired.\r\nJohn\'s passion is helping college students and young professionals reach their potential by avoiding the most dangerous life choices that can cause them to ruin their careers. This book has a wide audience, anyone from the ages 18-31, and the people that employ them. The book is not meant for just people in business, it is meant for any professional. What John has seen, on a national level, is a need for additional training resources for the millennial group on core aspects of being a professional. This book helps them lead a healthy and successful life.', 784.00, 8, '2023-07-01 16:44:25'),
('978-0-321-94786-3', 'Work-Life Balance in Asia', 'Luo Lu and Cary L Cooper', 'th (3).jpeg', 'In Asian societies, work and family issues are only recently beginning to gain attention. The pressure of rapid social change and increasing global competition is compounded by the long hours work culture, especially in the Pan-Confucian societies', 4500.00, 2, '2023-07-01 18:00:25'),
('978-0-321-94786-4', 'Health Career Today', 'Judith Gerdin', 'th (5).jpeg', 'Find the healthcare career that’s right for you! Health Careers Today, 7th Edition provides a complete overview of the most popular careers in health care, helping you make an informed decision in choosing a profession. Not only does this book discuss the roles and responsibilities of different occupations, it provides a solid foundation in the skills and competencies that each health career requires. Clear explanations of anatomy and physiology, disease processes, and treatments provide essential knowledge of the human body and show how health concepts apply to the work of various professionals. From experienced educator Judith Gerdin, this edition adds new coverage of skills and the changing healthcare environment; an Evolve website includes anatomy animations, videos of skills and careers, and more.', 7000.00, 6, '2023-07-01 19:25:25'),
('978-0-321-94786-6', 'how to develop your career in dentistry', 'Wiley', 'th (6).jpeg', 'This innovative new book offers a user-friendly guide to securing a successful, varied, and fulfilling career in dentistry.\r\n\r\nIncludes case studies of career trajectories across the full range of dental professions in the UK\r\nAdvocates a portfolio approach to career development, illustrating the benefits of working in a matrix as opposed to climbing a ladder\r\nShowcases the opportunities inherent in specific areas of dentistry, what they can offer and what is required to successfully take advantage of them\r\nWritten by one of the UK’s leading dental experts who has over 30 years in the profession, working on the local and national scale', 2800.00, 1, '2023-07-02 16:44:25'),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', 1400.00, 2, '2023-06-21 16:44:25'),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', 240.00, 1, '2023-07-02 00:00:00'),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', 20.00, 3, '2023-07-02 00:00:00'),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', 20.00, 3, '2023-07-02 00:00:00'),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', 20.00, 1, '2023-07-02 18:57:48'),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', 20.00, 4, '2023-07-02 18:58:03'),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', '	Mikael Olsson', 'c_14_quick.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference.\r\n\r\nYou won\'t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', 420.00, 6, '2023-07-02 18:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `college_id` varchar(20) NOT NULL,
  `college_name` varchar(40) NOT NULL,
  `college_image` varchar(100) NOT NULL,
  `college_descr` text NOT NULL,
  `placements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`college_id`, `college_name`, `college_image`, `college_descr`, `placements`) VALUES
('en001', 'BMS College of Engineering', 'bmsce(1).jpeg', 'BMS College of Engineering [BMSCE], Bangalore Karnataka was established in the year 1946 as a Private(Autonomous)\r\nEducational institute to provide higher education to build a career in the field of Engineering. BMSCE is approved by the reputed AICTE and COA, accredited by NBA and NAAC and is affiliated to VTU, Belgaum.  ', 'In the year 2022 Students of BMS College of Engineering got direct campus placements in top companies like infosys,Wipro,TCS,Accenture,Amazon and more.'),
('en002', 'R.V. College of Engineering', 'rvce (1).png', 'R.V. College of Engineering [RVCE], Bangalore Karnataka was established in the year 1963 as Private (Autonomous) Educational Institute to provide higher education to build a career in the field of Engineering and Computer Applications. RVCE is approved by the reputed AICTE, accredited by NAAC and NBA, and is affiliated to VTU, Belgaum.  ', 'In the year 2022 Students of R.V. College of Engineering got direct campus placements in top companies like infosys, Wipro, Tech Mahindra, Accenture, Genpact and more.   '),
('en003', 'PES University', 'PES .png', 'PES University [PESU], Bangalore Karnataka was established in the year 1972 as Private University Educational Institute to provide higher education to build a career in the field of Engineering, \r\nManagement and Humanities. PESU is approved by the reputed UGC, and is accredited by NAAC.', 'In the year 2022 Students of PES University, Bangalore\r\ngot direct campus placements in top companies like Infosys, IBM, HDFC Bank, Accenture, ICICI Bank and more.'),
('la001', 'BMS College of Law', 'law_image.jpg', 'BMS College of Law [BMSCL], Bangalore Karnataka was established in the year 1963 as Private Educational Institute to\r\nprovide higher education to build a career in the field of Law. BMSCL is approved by the reputed BCI, and is affiliated with KSLU, Hubli.\r\nIn Bangalore, this institution occupies a prominent location in VV Puram. BMS Educational Trust currently works in\r\nalliance with some well-known institutions which provide knowledge to approximately 12000 aspirants in areas like Science, Law, Engineering, Commerce, Law Science, Architecture and Information Technology.', ''),
('la002', 'Ramaiah College of Law', 'law-image-2.png', 'Ramaiah College of Law [MSRCL], Bangalore Karnataka was established in the year 1995 as Private Educational Institute to\r\nprovide higher education to build a career in the field of Engineering and Law. MSRCL is approved by the reputed BCI,and is affiliated with KSLU, Hubli.\r\nBachelor of Arts + Bachelor of Laws [B.A.LL.B] - Full Time Bachelor of Business Administration + Bachelor of Laws [BBA.LL.B] - Full Time Bachelor of Commerce + Bachelor of Laws [B.Com.LL.B] - Full Time Other Courses Certification - Full Time Post Graduate Diploma in Cyber Law and Information Technology -Full Time', 'Ramaiah College of Law Placements & Average Package 2022, Bangalore In the year 2022 Students of Ramaiah College of Law, Bangalore got direct campus placements in top companies like Infosys, Wipro Technologies, Thomson Reuters, Quislex , Dua and Associates and more.'),
('la003', 'University of Law College Bangalore', 'law_image-3.jpg', 'University of Law College, Bangalore Karnataka was established in the year 1948 to provide higher education to build a\r\ncareer in the field of Law. University of Law College is approved by the reputed BCI, and is affiliated with BU,Bangalore.', 'University of Law College Placements & Average Package 2022, Bangalore In the year 2022 Students of University of Law\r\nCollege, Bangalore got direct campus placements in top companies like Dua and Associates, Spectrum Legal, Just Law and\r\nmore.'),
('me001', ' Bangalore Medical College And Research ', 'bmc.webp', 'Bangalore Medical College and Research Institute (BMCRI) was set up in 1955 by the Mysore Education Society. Originally part of the Mysore   University and Bangalore University, the institute later got affiliated to the Rajiv Gandhi University of Health Sciences. The institute has got recognition from the Medical Council of India for undergraduate, postgraduate, and diploma courses.\r\nThe courses offered by BMCRI are MBBS, MD, MS, B.Sc. Nursing, M.Sc. Nursing, DM and M.Ch. Aside from this, it also offers various diploma programs.       \r\nAdmissions to the courses will be based on respective entrance examinations. The institute has facilities like hostels, library, and research center. ', ''),
('me002', ' Rajarajeshwari Medical College And Hosp', 'raj2.webp', 'The Rajarajeswari Medical College and Hospital (RRMCH) was set up by the Moogambigai Charitable and Educational Trust and is situated on Mysore Road Bangalore. The Moogambigai Charitable and Educational Trust serves to develop as a renowned educational institution in the fields of Engineering, Medicine, Dental, Paramedical, Management and other sciences with a special infrastructure for health related issues. The Rajarajeswari Medical College and Hospital[1] (RRMCH) firmly commits itself to establish medical and paramedical excellence all over the state of Karnataka.', ''),
('me003', 'Vydehi Institute Of Medical Sciences and', 'vydhehi.jpg', 'Vydehi Institute of Medical Science and Research Center has prepared students for lives of expanding opportunity, service, and achievement. An independent, comprehensive college, we offer students of many ages and backgrounds purposeful learning for the whole of life.\r\nThe Vydehi Institute of Medical Sciences and Research Center binds itself in the realms of a pleasant and peaceful atmosphere of greenery that is enclosed within the boundaries of sector of Information Technology. The 65 acres campus enjoys a dual benefit of its location by any easy access to the essential facilities from the city as well as avoiding the polluted and rushed areas of the busy city simultaneously. ', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'Mark Cooper', 'Sample Street', 'Here', '2306', 'Sampple'),
(5, 'Mark Cooper', 'Sample Street', 'Sample City', '2306', 'Philippines'),
(6, 'Mark Cooper', 'Here City There Province, 2306', 'Here', '2306', 'Philippines'),
(7, 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'Philippines'),
(8, 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple'),
(9, 'R Shreya', 'D NO 5/5/5/B', 'HINDUPUR', '515201', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, 60.00, '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, 60.00, '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, 20.00, '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, 20.00, '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, 80.00, '2022-06-21 00:09:36', 'Mark Cooper', 'Sample Street', 'Here', '2306', 'Sampple'),
(6, 5, 220.00, '2022-06-21 01:35:16', 'Mark Cooper', 'Sample Street', 'Sample City', '2306', 'Philippines'),
(7, 6, 20.00, '2022-06-21 01:38:20', 'Mark Cooper', 'Here City There Province, 2306', 'Here', '2306', 'Philippines'),
(8, 7, 20.00, '2022-06-21 01:40:28', 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'Philippines'),
(9, 8, 80.00, '2022-06-21 01:42:56', 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple'),
(10, 9, 40.00, '2023-07-02 01:15:48', 'R Shreya', 'D NO 5/5/5/B', 'HINDUPUR', '515201', 'India'),
(11, 9, 2420.00, '2023-07-02 03:08:59', 'R Shreya', 'D NO 5/5/5/B', 'HINDUPUR', '515201', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', 20.00, 1),
(1, '978-1-44937-019-0', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(2, '978-1-118-94924-5', 20.00, 1),
(2, '978-1-44937-019-0', 20.00, 1),
(2, '978-1-49192-706-9', 20.00, 1),
(3, '978-0-321-94786-4', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(5, '978-1-4571-0402-2', 20.00, 2),
(5, '978-1-44937-075-6', 20.00, 1),
(5, '978-0-321-94786-4', 20.00, 1),
(6, '978-1-4571-0402-2', 20.00, 10),
(6, '978-1-44937-075-6', 20.00, 1),
(7, '978-0-7303-1484-4', 20.00, 1),
(8, '978-1-1180-2669-4', 20.00, 1),
(9, '978-1-44937-019-0', 20.00, 4),
(10, '978-0-7303-1484-4', 20.00, 2),
(10, '64568', 1200.00, 2),
(10, '978-0-321-94786-4', 20.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Publisher 1'),
(2, 'Publisher 2'),
(3, 'Publisher 3'),
(4, 'Publisher 4'),
(5, 'Publisher 5'),
(6, 'Publisher 6');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Confirmpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`name`, `email`, `password`, `user_type`) VALUES
('R Shreya', 'shreya.cs21@bmsce.ac.in', 'a7507df96aec8e354fea5da1fd5e2ccf', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
