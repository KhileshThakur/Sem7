-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 03:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `created_at`) VALUES
(6, 1, 'This dashboard has been incredibly useful for staying updated on COVID-19 statistics. The inclusion of both global and country-specific data makes it easy to monitor cases and vaccination rates. I particularly appreciate the layout, which is both visually appealing and functional. Great job on the design and choice of colors—they make the information accessible and engaging!', '2023-11-01 05:15:00'),
(7, 2, 'As someone who checks this dashboard frequently, I’d like to thank the team for keeping it updated. The feature that allows switching between countries is very convenient. However, it would be helpful to include historical data trends or graphs to visualize how cases and vaccinations have evolved over time. This would add great value for users interested in tracking the progression of COVID-19.', '2023-11-02 07:00:10'),
(8, 1, 'The addition of a dropdown for country selection is a fantastic idea, and it works smoothly. However, could we possibly add more countries? For instance, I have friends in smaller countries that aren’t represented here, and it would be helpful for them to be able to track their local statistics. This could make the dashboard even more inclusive and comprehensive for global users.', '2023-11-03 03:45:00'),
(9, 1, 'Thank you for creating such an easy-to-navigate dashboard! The design is clean and intuitive, which makes it very user-friendly. The way each statistic is displayed in its own card format is helpful, as it allows for quick identification of specific data points. I especially like the use of different colors for each section, which makes the dashboard visually pleasing and easy to scan.', '2023-11-04 09:20:20'),
(10, 2, 'While I find this dashboard to be a valuable resource, I believe it could benefit from regional statistics for larger countries. For instance, displaying data for specific states or provinces in countries like the USA, India, or Brazil could provide a more granular view. This might be useful for users who want to understand the pandemic’s impact in their local area.', '2023-11-05 11:30:00'),
(11, 1, 'This dashboard is amazing! I really appreciate how the layout is simple yet effective in conveying all the necessary information at a glance. The addition of a vaccination statistics section is also fantastic. However, I think including a brief description of what each data point represents could be helpful for less tech-savvy users who may not understand terms like “active cases” or “total recoveries.”', '2023-11-06 04:35:45'),
(12, 2, 'I was wondering if there could be an option to download the data shown on the dashboard. This would be useful for users like me who work in research or data analysis. Having access to the raw numbers would allow us to perform deeper analyses and draw insights that could be useful for both public health efforts and academic studies.', '2023-11-07 06:55:35'),
(13, 1, 'Fantastic work on putting together this dashboard! It’s one of the best resources for COVID-19 information that I’ve come across. The card design for each statistic looks great and is highly readable. The interactivity of the country selection is also well-executed. Overall, a well-thought-out and much-needed tool in these times.', '2023-11-08 10:20:00'),
(14, 2, 'One question I have is about the frequency of data updates. I notice some data points don’t seem to change as frequently as others. It would be helpful if there was a timestamp indicating when the data was last updated. This would ensure that users are aware of how recent the information is, which is especially important for critical updates like case counts and vaccination numbers.', '2023-11-09 02:45:30'),
(15, 2, 'I absolutely love the square card design used for the stats on this dashboard! The structured layout makes it easy to focus on each statistic individually without feeling overwhelmed. It’s clear that a lot of thought has gone into making the dashboard both aesthetically pleasing and functional. Thank you for such a fantastic resource!', '2023-11-10 08:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Khilesh25', 'khilesh@gmail.com', '$2y$10$Hdg.rf4ioz8iF7ji/N0HDufa.KX0DEHBPHvMeVjesIPSDTq.ASSKS'),
(2, 'Dhruv958', 'dhruv@gmail.com', '$2y$10$1aaon9R6QUSm9bBG.NunqeSWdbULYcSLxoG6JaVEuzsofhPmlRD7i');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
