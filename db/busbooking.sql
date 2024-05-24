

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');



CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `passenger_name` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `boarding_place` varchar(255) NOT NULL,
  `Your_destination` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `booking` (`id`, `passenger_name`, `telephone`, `email`, `boarding_place`, `Your_destination`) VALUES
(1, 'chathuranga', '0765906262', 'chathurangapriyadarshana29@gmail.com', 'eheliyagoda', 'Udumaththa'),
(2, 'chathurangapriyadarshana29@gmail.com', '0765906262', 'chathurangapriyadarshana29@gmail.com', 'eheliyagoda', 'Udumaththa'),
(3, 'chathurangapriyadarshana29@gmail.com', '0765906262', 'chathurangapriyadarshana29@gmail.com', 'eheliyagoda', 'Udumaththa'),
(4, 'chathurangapriyadarshana29@gmail.com', '0765906262', 'chathurangapriyadarshana29@gmail.com', 'eheliyagoda', 'Udumaththa'),
(5, 'chathurangapriyadarshana29@gmail.com', '0765906262', 'chathurangapriyadarshana29@gmail.com', 'eheliyagoda', 'Udumaththa'),
(6, 'chathurangapriyadarshana29@gmail.com', '0765906262', 'chathurangapriyadarshana29@gmail.com', 'eheliyagoda', 'Udumaththa'),
(7, 'kamal', '071-333090', 'kamal@gmail.com', 'negombo', 'kegalla');



CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `Bus_Name` varchar(255) NOT NULL,
  `Tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `bus` (`id`, `Bus_Name`, `Tel`) VALUES
(2, 'llv0912', '44444'),
(3, 'llv0912', '78787878'),
(6, '5656', '5656');



CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `level` varchar(150) NOT NULL,
  `total_amount` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `courses` (`id`, `course`, `description`, `level`, `total_amount`, `date_created`) VALUES
(1, 'Course 2', 'Sample', '1', 4500, '2020-10-31 11:01:15');



CREATE TABLE `fees` (
  `id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `fees` (`id`, `course_id`, `description`, `amount`) VALUES
(1, 1, 'Tuition', 3000),
(3, 1, 'sample', 1500);



CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` int(6) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `exp_month` varchar(20) NOT NULL,
  `exp_year` varchar(20) NOT NULL,
  `cvv` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `payment` (`id`, `amount`, `name`, `email`, `address`, `city`, `state`, `zip_code`, `card_name`, `card_number`, `exp_month`, `exp_year`, `cvv`) VALUES
(1, 300, 'Ranasinghe Pedige Chathuranga Priyadarshana Ranasinghe', 'chathurangapriyadarshana29@gmail.com', 'No24,Udumaththa,Eheliyagoda', 'Eheliyagoda', 'india', 70600, 'indigooo', '2222333366665555', 'januray', '2022', 630),
(2, 900, 'kamal', 'chathurangapriyadarshana29@gmail.com', 'ranasinha', 'Eheliyagoda', '', 0, '', '', '', '', 0),
(3, 0, 'chathuranga priyadarshana', 'chathurangapriyadarshana29@gmail.com', 'No24,Udumaththa,Eheliyagoda', 'Eheliyagoda', 'india', 70600, 'werr', '1111222233334444', 'gs', '2022', 1234),
(4, 0, 'chathuranga priyadarshana', 'chathurangapriyadarshana29@gmail.com', 'No24,Udumaththa,Eheliyagoda', 'Eheliyagoda', 'india', 70600, 'ffvfvf', '1111222233334444', 'janurgb', '26', 123),
(5, 200, 'chathuranga priyadarshana', 'chathurangapriyadarshana29@gmail.com', 'No24,Udumaththa,Eheliyagoda', 'Eheliyagoda', 'india', 70600, 'jorn', '1111222233334444', 'gfggg', '2022', 1234),
(6, 200, 'chathuranga priyadarshana', 'chathurangapriyadarshana29@gmail.com', 'No24,Udumaththa,Eheliyagoda', 'Eheliyagoda', 'india', 70600, 'jorn', '1111222233334444', 'janray', '2022', 1234),
(7, 200, 'Ranasinghe Pedige Chathuranga Priyadarshana Ranasinghe', 'chathurangapriyadarshana29@gmail.com', 'No24,Udumaththa,Eheliyagoda', 'Eheliyagoda', 'india', 70600, 'cm', '1111222233334444', 'janu', '2021', 134);



CREATE TABLE `payments` (
  `id` int(30) NOT NULL,
  `ef_id` int(30) NOT NULL,
  `amount` float NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `payments` (`id`, `ef_id`, `amount`, `remarks`, `date_created`) VALUES
(1, 1, 1000, 'sample', '2020-10-31 14:25:35'),
(2, 1, 500, 'sample 2', '2020-10-31 14:47:15');



CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `via_city` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `departure_date` date NOT NULL,
  `departure_time` time(6) NOT NULL,
  `cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `route` (`id`, `via_city`, `destination`, `bus_name`, `departure_date`, `departure_time`, `cost`) VALUES
(1, 'via Eheliyagoda', 'Avissawella', 'Ez', '2022-05-04', '04:00:00', '200.00'),
(2, 'Badulla', 'Jaffna', 'llv0912erer', '0000-00-00', '18:30:00', '300.00'),
(4, 'Rathnapura', 'Jaffna', 'llv0912', '2022-05-05', '00:09:00', '250.00');


CREATE TABLE `student` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `student` (`id`, `id_no`, `name`, `contact`, `address`, `email`, `date_created`) VALUES
(1, '06232014', 'John Smith', '+18456-5455-55', 'Sample Address', 'jsmith@sample.com', '2020-10-31 11:24:42'),
(2, '1415', 'George Wilson', '+18456-5455-55', 'Sample Address', 'gwilson@sample.com', '2020-10-31 11:29:38');



CREATE TABLE `student_ef_list` (
  `id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `ef_no` varchar(200) NOT NULL,
  `course_id` int(30) NOT NULL,
  `total_fee` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `student_ef_list` (`id`, `student_id`, `ef_no`, `course_id`, `total_fee`, `date_created`) VALUES
(1, 2, '2020-654278', 1, 4500, '2020-10-31 12:04:18'),
(2, 1, '2020-65427823', 1, 4500, '2020-10-31 13:12:13');



CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'School Fees Payment System', '', '', '', '');



CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` bigint(25) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `user_id`, `First_Name`, `Last_Name`, `username`, `email`, `password`) VALUES
(2, 65858844865684, 'andrew', 'Ranasinghe', 'andrew', 'andrew@gmail.com', '1234@'),
(4, 89258032, 'anju', 'rasanjali', 'anju', 'rasanjali@gmail.com', '12345@'),
(5, 252154, 'chathuranga', 'priyadarshana', 'kamal', 'chathurangapriyadarshana29@gmail.com', '1234');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;



ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;


