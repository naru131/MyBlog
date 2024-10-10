-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 03:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Web Development', '2024-10-07 14:44:01'),
(2, 'AI', '2024-10-07 14:44:01'),
(3, 'Start Java ', '2024-10-09 05:36:00'),
(4, 'Free HTML', '2024-10-09 05:36:00'),
(5, 'Apply Bootstrap & Javascript', '2024-10-09 05:36:58'),
(6, 'Wordpress Creation', '2024-10-09 05:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `description`, `category_id`, `user_id`, `created_at`) VALUES
(1, 'Hi Super Sunday,\r\n\r\n', 'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg', 'Sunday is sunday, Monday is monday. \nSea is sea, Sun is sun. \nBird is bird.\nDog is dog.  It means that the person being talked about is positive, likeable, friendly, a welcome presence. We like that person just as we like sunshine.', 0, 0, '2024-10-09 05:51:20'),
(2, 'Colorful Places !!', 'https://i0.wp.com/wallpapers.com/images/hd/aesthetic-cute-profile-pictures-1080-x-1349-4oi3hpzus3p9fvff.jpg?ssl=1', 'A sea is a large body of salt water. There are particular seas and the sea. The sea commonly refers to the World Ocean, the wider body of seawater. International Colour Day is an annual event held on March 21 to celebrate colour. The day was established by the International Colour Association.', 0, 0, '2024-10-09 05:51:20'),
(3, 'Happy Studying and Relax !!', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi7yCZ2XEw9y3jo1_CJpNeZCw0khxgVxh7z7fsEyK2FwrZz8gBF28sqsAdwKY1PInz4z4&usqp=CAU', 'RELAX (\'REducing Levels of AnXiety\') is investigating whether a new web-based training can reduce anxiety in pregnant women and new mothers.\ninally took a break from studying after all this time....rest in peace to a year of such a great era. Glad to hear you\'re back! International Colour Day is an annual event held on March 21 to celebrate colour. The day was established by the International Colour Association.', 0, 0, '2024-10-09 05:54:21'),
(4, 'Apply Study WorkHard', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTII1NyHhL9ZwjcQrm3nUd0HSTaU41QXzuFL1K_xBYKryRPr8OkyfXHwfd_1J_uR5Texw&usqp=CAU', ' Try The Pomodoro Method. The Pomodoro Method is a study technique where you study for 25 minutes, take a 5 minute break, and repeat.\n\nYou\'re studying for your own sake, don\'t care about what others say. At the end of the day your hard work will pay off and it\'ll all be worth it .International Colour Day is an annual event held on March 21 to celebrate colour. The day was established by the International Colour Association.', 0, 0, '2024-10-09 05:54:21'),
(5, 'New Learning to Start !!', 'https://wallpapers.com/images/hd/instagram-profile-pictures-kx8z30go1u5u0q31.jpg', 'An evolving body of research and thinking in the fields of semiotics, literacy, pedagogy, and educational technologies by Mary Kalantzis and Bill Cope.International Colour Day is an annual event held on March 21 to celebrate colour. The day was established by the International Colour Association.International Colour Day is an annual event held on March 21 to celebrate colour. The day was established by the International Colour Association.', 0, 0, '2024-10-09 05:57:29'),
(6, 'Never Give UP !!! ', 'https://i.pinimg.com/564x/9f/bf/d8/9fbfd8efc0f9c2fbddf740e00b3ad6d7.jpg', 'A young lady who has a secret double life; there is a Bai Mashuai who is richer than you but works harder than you, and just loves to work.International Colour Day is an annual event held on March 21 to celebrate colour. The day was established by the International Colour Association.International Colour Day is an annual event held on March 21 to celebrate colour. The day was established by the International Colour Association.', 0, 0, '2024-10-09 05:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(11) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `profile`, `created_at`) VALUES
(1, 'Nwe Nwe Oo', 'nwenweoo@gamil.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Flookaside.instagram.com%2Fseo%2Fgoogle_widget%2Fcrawler%2F%3Fmedia_id%3D3125376307358471638&imgrefurl=https%3A%2F%2Fwww.instagram.com%2Festherutami_%2Fp%2FCtfkTKrBOLA%2F&docid=ntO6zfMmJ', '2024-10-09 05:39:57'),
(2, 'Wai Wai', 'waiwai@gmail.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fthechainsaw.com%2Fwp-content%2Fuploads%2F2023%2F06%2Fimg-3534.jpg%3Fw%3D675&imgrefurl=https%3A%2F%2Fthechainsaw.com%2Fartificial-intelligence%2Fheres-how-to-get-the-viral-k-pop-idol-kor', '2024-10-09 05:39:57'),
(3, 'Hnin Oo ', 'hninoo@gamil.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F01%2F61%2F6b%2F01616b7daa1d2ef8846022bffc253d68.png&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2Fnetizens-talk-about-female-celebrities-profile-pictorial', '2024-10-09 05:41:41'),
(4, 'Yae Yint ', 'yaeyint123@gmail.com', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fkprofiles.com%2Fwp-content%2Fuploads%2F2021%2F07%2F19-24-19-203019076_499145401361957_4941736459507930989_n.jpg&imgrefurl=https%3A%2F%2Fkprofiles.com%2Flee-jaehyeok-profile-facts%2F&doc', '', '', '2024-10-09 05:41:41'),
(5, 'Htoo San', 'htoosan234@gmail.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fimage.kpopmap.com%2F2021%2F05%2FShin-HyunSeung_profile_s_0217-1.jpg&imgrefurl=https%3A%2F%2Fwww.kpopmap.com%2Fcelebrity-profile%2Fshin-hyunseung%2F&docid=uOWPCpZVAj2ihM&tbnid=6XuSUyWfo_', '2024-10-09 05:43:27'),
(6, 'Yati Thant ', 'yatithant3345@gmail.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fwww.allkpop.com%2Fupload%2F2023%2F06%2Fcontent%2F221751%2F1687470705-untitled-1.jpg&imgrefurl=https%3A%2F%2Fwww.allkpop.com%2Farticle%2F2023%2F06%2Fmore-people-in-korea-are-using-ai-edi', '2024-10-09 05:43:27'),
(7, 'Saw Linn Htet', 'sawlinnhtet789@gamil.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fcdn.i-scmp.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F1020x680%2Fpublic%2Fd8%2Fimages%2Fcanvas%2F2023%2F12%2F15%2Fe6f42558-1845-4abb-bb39-7af00aef4dc6_91923f1c.jpg%3Fitok%3DcdZXaimg%26v%3', '2024-10-09 05:45:22'),
(8, 'Emily Htet ', 'emilyemilyhtet123@gmai.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fpxdar.com%2Fwp-content%2Fuploads%2F2024%2F05%2Fkorean-girl-profile-picture-1024x1024.jpg&imgrefurl=https%3A%2F%2Fpxdar.com%2Fkorean-girl%2F&docid=f0DakkmcCUXkCM&tbnid=uHFGzi0_IWrz6M&vet', '2024-10-09 05:45:22'),
(9, 'Saung Sun Hyun', 'saungsaung123@gmail.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fassets-metrostyle.abs-cbn.com%2Fprod%2Fmetrostyle%2Fattachments%2F3e46cbf7-4e87-45a2-a210-fe046ca91ba6_one%2520ordinary%2520day_kim%2520soo-hyun.jpg&imgrefurl=https%3A%2F%2Fmetro.style%', '2024-10-09 05:46:54'),
(10, 'Eun Ji Hae ', 'eunjieunji@gmail.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Flh3.googleusercontent.com%2FPZbOi24JE7YO5lvWrlmOpKSB_uVKir1LU-a5cTlVgGSaovM3dlqfo3sFfxOKPbo-YtmACeaNPBdvyrHZ3WxMNCroc1Gn6BWyAX5TLHTVIht_c0U%3Dnu-e365-rj-q80-w925&imgrefurl=https%3A%2F%2', '2024-10-09 05:46:54'),
(11, 'Winnt War', 'winntwarwinntwar@gamil.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fwww.nicepng.com%2Fpng%2Fdetail%2F906-9068843_korean-teachers-diane-profile-girl.png&imgrefurl=https%3A%2F%2Fwww.nicepng.com%2Fourpic%2Fu2t4o0e6y3u2a9y3_korean-teachers-diane-profile-gir', '2024-10-09 05:48:21'),
(12, 'U Aung Win', 'uaungaungwin11@gamil.com', '123456', '', 'https://www.google.com/imgres?q=korean%20profile&imgurl=https%3A%2F%2Fthumbs.dreamstime.com%2Fb%2Fasia-businessman-side-profile-isolated-white-40657771.jpg&imgrefurl=https%3A%2F%2Fwww.dreamstime.com%2Fphotos-images%2Fprofile-korean.html&docid=reMuVLfAEAsl', '2024-10-09 05:48:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
