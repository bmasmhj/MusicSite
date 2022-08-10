-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2022 at 03:03 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'Aniruddha', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`, `img_url`) VALUES
(1, 'The Beatles', 'https://e-cdns-images.dzcdn.net/images/artist/895c65537c74c2014b459f73e84bccb0/500x500-000000-80-0-0.jpg'),
(2, 'The Clash', 'https://e-cdns-images.dzcdn.net/images/artist/82a5fe6ba783cf618d5394ae0b8129b9/500x500-000000-80-0-0.jpg'),
(3, 'Snoop Dogg', 'https://e-cdns-images.dzcdn.net/images/artist/a423dd42b7394eeacc882be8ac633eee/500x500-000000-80-0-0.jpg'),
(4, 'America', 'https://e-cdns-images.dzcdn.net/images/artist/a9d8e78a410b48587618e0b5309defb1/500x500-000000-80-0-0.jpg'),
(5, 'Amadou & Mariam', 'https://e-cdns-images.dzcdn.net/images/artist/1101a2ab052a735623d65d09319f739f/500x500-000000-80-0-0.jpg'),
(6, 'Manu Chao', 'https://e-cdns-images.dzcdn.net/images/artist/eb6d0f673f6e84e87ec0bd325b8bf421/500x500-000000-80-0-0.jpg'),
(7, 'Jamiroquai', 'https://e-cdns-images.dzcdn.net/images/artist/992b71648c7333f433cb7f13d6e93799/500x500-000000-80-0-0.jpg'),
(8, 'Placebo', 'https://e-cdns-images.dzcdn.net/images/artist/06aef320e68a0367f252d5f7f66050bc/500x500-000000-80-0-0.jpg'),
(9, 'Outkast', 'https://e-cdns-images.dzcdn.net/images/artist/32b909447841adfe4fd4770b1c1530ed/500x500-000000-80-0-0.jpg'),
(10, 'Faithless', 'https://e-cdns-images.dzcdn.net/images/artist/21295960345b70930b9088ecdac2f96f/500x500-000000-80-0-0.jpg'),
(11, 'The Rolling Stones', 'https://e-cdns-images.dzcdn.net/images/artist/2ceac184bc846327f60c5b0d4247cc7a/500x500-000000-80-0-0.jpg'),
(13, 'Eminem', 'https://e-cdns-images.dzcdn.net/images/artist/19cc38f9d69b352f718782e7a22f9c32/500x500-000000-80-0-0.jpg'),
(14, 'Gorillaz', 'https://e-cdns-images.dzcdn.net/images/artist/f110b9fb86a108096f9d7e78d1ffef18/500x500-000000-80-0-0.jpg'),
(15, 'Phoenix', 'https://e-cdns-images.dzcdn.net/images/artist/0effc4b1ba18651245054b48397d04a4/500x500-000000-80-0-0.jpg'),
(16, 'Gwen Stefani', 'https://e-cdns-images.dzcdn.net/images/artist/ade3fef9cea984f26d9c893d31f9c469/500x500-000000-80-0-0.jpg'),
(17, 'Usher', 'https://e-cdns-images.dzcdn.net/images/artist/b1df32ef291e7a09cedcb7aa394c60fe/500x500-000000-80-0-0.jpg'),
(18, 'K-Maro', 'https://e-cdns-images.dzcdn.net/images/artist/3eabdd149e96dbc6450487102f0ebb00/500x500-000000-80-0-0.jpg'),
(19, 'Right Said Fred', 'https://e-cdns-images.dzcdn.net/images/artist/71a34fe2d219c82df0338f1534f94af5/500x500-000000-80-0-0.jpg'),
(20, 'Rhapsody', 'https://e-cdns-images.dzcdn.net/images/artist//500x500-000000-80-0-0.jpg'),
(21, 'Renaud', 'https://e-cdns-images.dzcdn.net/images/artist/7fb8883264e8b6f598a55e3d88aacc04/500x500-000000-80-0-0.jpg'),
(22, 'O-Zone', 'https://e-cdns-images.dzcdn.net/images/artist/aea22d8003d2994d0f143a17a0587eec/500x500-000000-80-0-0.jpg'),
(24, 'David & Jonathan', 'https://e-cdns-images.dzcdn.net/images/artist/067623bb9226d2b9821dde2e6c3ce3e9/500x500-000000-80-0-0.jpg'),
(25, 'Darude', 'https://e-cdns-images.dzcdn.net/images/artist/d6164228b39bb4a5469f2e8373bcb096/500x500-000000-80-0-0.jpg'),
(26, 'Daniel Balavoine', 'https://e-cdns-images.dzcdn.net/images/artist/3314615600cff5bd4037ff606a53b707/500x500-000000-80-0-0.jpg'),
(27, 'Daft Punk', 'https://e-cdns-images.dzcdn.net/images/artist/f2bc007e9133c946ac3c3907ddc5d2ea/500x500-000000-80-0-0.jpg'),
(28, 'Crazy Frog', 'https://e-cdns-images.dzcdn.net/images/artist/68f1b025d3f2f412e09d3a3a27f904db/500x500-000000-80-0-0.jpg'),
(29, 'Calogero', 'https://e-cdns-images.dzcdn.net/images/artist/74621221bb26745a6fe8ceefbbface05/500x500-000000-80-0-0.jpg'),
(30, 'Eric Prydz', 'https://e-cdns-images.dzcdn.net/images/artist/a5155d0d598721e59460aafc199972fb/500x500-000000-80-0-0.jpg'),
(31, 'Jean Dujardin', 'https://e-cdns-images.dzcdn.net/images/artist//500x500-000000-80-0-0.jpg'),
(32, 'Benny Benassi presents The Biz', 'https://e-cdns-images.dzcdn.net/images/artist/5c93889158f693c47acc252d86d963da/500x500-000000-80-0-0.jpg'),
(33, 'Benassi Bros.', 'https://e-cdns-images.dzcdn.net/images/artist/fb0106f5751ae8dd8c0b9a6797536590/500x500-000000-80-0-0.jpg'),
(34, 'Barry White', 'https://e-cdns-images.dzcdn.net/images/artist/bfc8079e112cc263889459c4e21d6bfb/500x500-000000-80-0-0.jpg'),
(35, 'Avril Lavigne', 'https://e-cdns-images.dzcdn.net/images/artist/d023a1ee7ed842b304f36aef210c5aba/500x500-000000-80-0-0.jpg'),
(36, 'Aqua', 'https://e-cdns-images.dzcdn.net/images/artist/b5f107f743ad534c3842906ef9c86943/500x500-000000-80-0-0.jpg'),
(37, 't.A.T.u.', 'https://e-cdns-images.dzcdn.net/images/artist/d171084c2ea560d936836f8801b14841/500x500-000000-80-0-0.jpg'),
(38, 'Akon', 'https://e-cdns-images.dzcdn.net/images/artist/dafed3b722037eba7b0c015d47f62e7c/500x500-000000-80-0-0.jpg'),
(39, 'Survivor', 'https://e-cdns-images.dzcdn.net/images/artist/8a7233b8e3dd70d7418ebeb4588d4b00/500x500-000000-80-0-0.jpg'),
(40, 'Corona', 'https://e-cdns-images.dzcdn.net/images/artist/e340aa2508b1b6ac1e0f295ca279e60e/500x500-000000-80-0-0.jpg'),
(41, '666', 'https://e-cdns-images.dzcdn.net/images/artist/7b0ad328b7d2f1b539952e35532219ad/500x500-000000-80-0-0.jpg'),
(42, 'Papi Sanchez', 'https://e-cdns-images.dzcdn.net/images/artist/5a22f790bafc5257f4f22272cddc400a/500x500-000000-80-0-0.jpg'),
(43, 'Le Grand Orchestre du Splendid', 'https://e-cdns-images.dzcdn.net/images/artist/644650d76a0caf5f4159cc8a5dd37c73/500x500-000000-80-0-0.jpg'),
(44, 'Kyo', 'https://e-cdns-images.dzcdn.net/images/artist/90e2c38882209dc9efe530b3c135ea62/500x500-000000-80-0-0.jpg'),
(45, 'Jennifer Lopez', 'https://e-cdns-images.dzcdn.net/images/artist/2fa1c95948cf111e38aed58b64b49556/500x500-000000-80-0-0.jpg'),
(46, 'Christine Milton', 'https://e-cdns-images.dzcdn.net/images/artist/09bc4d01320143e6dd3ecc3026106c87/500x500-000000-80-0-0.jpg'),
(47, 'Indochine', 'https://e-cdns-images.dzcdn.net/images/artist/dea4cf49672255ce58596150c51a155e/500x500-000000-80-0-0.jpg'),
(48, 'IAM', 'https://e-cdns-images.dzcdn.net/images/artist/6d0704e774131e6ab7367726fbf0cc59/500x500-000000-80-0-0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `musiccode` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL,
  `musicid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `email`, `musiccode`, `comment`, `time`, `userid`, `musicid`) VALUES
(2, 'popot@popot.com', 'angie_the_rolling_stones8', 'ok this is next', '2022-08-09 17:44:43', 21, 8);

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `musiccode` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `artistid` int(11) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `contributor` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-featured',
  `releasedate` year(4) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `ratingcount` int(11) NOT NULL,
  `comments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `musiccode`, `title`, `version`, `album`, `img`, `duration`, `artist`, `artistid`, `preview`, `contributor`, `status`, `releasedate`, `genre`, `rating`, `ratingcount`, `comments`) VALUES
(1, 'insomnia_faithless4', 'Insomnia', '(Radio Edit)', 'Essential - The 90s', 'https://e-cdns-images.dzcdn.net/images/cover/fa2aaac3c9182ce203abc4319107d143/500x500-000000-80-0-0.jpg', '213', 'Faithless', 10, 'https://cdns-preview-8.dzcdn.net/stream/c-8a7302b9a090873bb60955a7ef8e9198-8.mp3', 'Faithless, ', 1, 1998, ' Hardcore punk, Jungle music, Pop music, Electronic dance music', 0, 0, 0),
(2, 'god_is_a_dj_faithless1', 'God is A DJ', '', 'God Is a DJ', 'https://e-cdns-images.dzcdn.net/images/cover/bc5288f2099a3b77b41a257113bb0334/500x500-000000-80-0-0.jpg', '155', 'Faithless', 10, 'https://cdns-preview-1.dzcdn.net/stream/c-14577d2108a4fe91d762882a3bc487ec-3.mp3', 'Faithless, David Guetta, ', 0, 1997, ' New-age music, Electronic music, Blues', 0, 0, 0),
(3, 'god_is_a_dj_faithless8', 'God Is a DJ', '', 'Forever Faithless - The Greatest Hits', 'https://e-cdns-images.dzcdn.net/images/cover/09150c41390667202b0e0d9e7ca10105/500x500-000000-80-0-0.jpg', '208', 'Faithless', 10, 'https://cdns-preview-7.dzcdn.net/stream/c-70ea4b499332a00fbfa7ab8dc2216f99-5.mp3', 'Faithless, ', 0, 2010, ' Psychedelic rock, Jungle music, New wave, Musical theatre, Pop rock', 0, 0, 0),
(4, 'insomnia_2021_maceo_plex3', 'Insomnia 2021', '(Epic Edit)', 'Insomnia 2021', 'https://e-cdns-images.dzcdn.net/images/cover/5b6623600a9ffbd6b7ab39d56f0df668/500x500-000000-80-0-0.jpg', '288', 'Maceo Plex', 24, 'https://cdns-preview-6.dzcdn.net/stream/c-6cba34b8149008e66ad59667f7457c4c-3.mp3', 'Maceo Plex, Faithless, ', 0, 1973, ' Music of Latin America, Soundtrack, Heavy metal', 0, 0, 0),
(5, 'we_come_1_faithless5', 'We Come 1', '(Radio Edit)', 'Forever Faithless - The Greatest Hits', 'https://e-cdns-images.dzcdn.net/images/cover/09150c41390667202b0e0d9e7ca10105/500x500-000000-80-0-0.jpg', '224', 'Faithless', 10, 'https://cdns-preview-1.dzcdn.net/stream/c-103c17b839bcf8e0c57b985b1e030841-9.mp3', 'Faithless, ', 0, 2022, ' Musical theatre, Rhythm and blues, Jazz, Dance music, Folk music', 0, 0, 0),
(6, 'start_me_up_the_rolling_stones9', 'Start Me Up', '', 'Tattoo You (2009 Re-Mastered)', 'https://e-cdns-images.dzcdn.net/images/cover/b30759c8c8163d3f25aa10e27d873607/500x500-000000-80-0-0.jpg', '213', 'The Rolling Stones', 11, 'https://cdns-preview-4.dzcdn.net/stream/c-4500c7414c5f3570ec492e7a9e8be921-5.mp3', 'The Rolling Stones, ', 0, 1999, ' Psychedelic rock, Hardcore punk, Dubstep, Soul music, New-age music', 0, 0, 0),
(7, 'paint_itblack_the_rolling_stones2', 'Paint ItBlack', '', 'Big Hits (High Tide and Green Grass)', 'https://e-cdns-images.dzcdn.net/images/cover/3aed94e2a791cd0f1a3ec5c306f65e9e/500x500-000000-80-0-0.jpg', '202', 'The Rolling Stones', 11, 'https://cdns-preview-5.dzcdn.net/stream/c-53f85fa7f1f17d8bca2b4cab502abb06-5.mp3', 'The Rolling Stones, ', 0, 1976, ' Music of the United States, Soul music, Classical music', 0, 0, 0),
(8, 'angie_the_rolling_stones8', 'Angie', '', 'Made In The Shade (2005 Digital Remaster)', 'https://e-cdns-images.dzcdn.net/images/cover/8ec39c97a5fd77144962bc6a8c2451d3/500x500-000000-80-0-0.jpg', '271', 'The Rolling Stones', 11, 'https://cdns-preview-2.dzcdn.net/stream/c-266b808da25fbc280d1fd50440988cd9-5.mp3', 'The Rolling Stones, ', 1, 2018, ' Experimental music, Jazz fusion, Alternative rock, Jungle music, Latin music', 2.5, 1, 1),
(9, 'sympathy_for_the_devil_the_rolling_stones5', 'Sympathy For The Devil', '', 'Beggars Banquet', 'https://e-cdns-images.dzcdn.net/images/cover/007ca308040f3efeff845f2fb4e87a2a/500x500-000000-80-0-0.jpg', '377', 'The Rolling Stones', 11, 'https://cdns-preview-f.dzcdn.net/stream/c-f267745b76dc6540021ca3647b69e77d-8.mp3', 'The Rolling Stones, ', 0, 2023, ' Classical music, American folk music, Trance music', 0, 0, 0),
(10, 'gimme_shelter_the_rolling_stones7', 'Gimme Shelter', '', 'Let It Bleed', 'https://e-cdns-images.dzcdn.net/images/cover/966fa939bd79e15d413abf0764f8a3b5/500x500-000000-80-0-0.jpg', '270', 'The Rolling Stones', 11, 'https://cdns-preview-d.dzcdn.net/stream/c-debe09adb05b7e628c7ad2efea3d74cd-8.mp3', 'The Rolling Stones, ', 0, 1977, ' Country music, Musical theatre, Alternative rock, House music', 0, 0, 0),
(11, 'miss_you_the_rolling_stones6', 'Miss You', '', 'Some Girls (Deluxe Version)', 'https://e-cdns-images.dzcdn.net/images/cover/4daeaee9a15329dc861f62976d0cbb7c/500x500-000000-80-0-0.jpg', '288', 'The Rolling Stones', 11, 'https://cdns-preview-e.dzcdn.net/stream/c-e1ecd90cc4927a9d519daf489851cf46-8.mp3', 'The Rolling Stones, ', 0, 1983, ' Singing, Rock, Electronic music, Blues, Disco', 0, 0, 0),
(12, 'brown_sugar_the_rolling_stones4', 'Brown Sugar', '(2009 Remaster)', 'Sticky Fingers (Remastered)', 'https://e-cdns-images.dzcdn.net/images/cover/cf61e42ee4036325e8d151489e6f38f7/500x500-000000-80-0-0.jpg', '228', 'The Rolling Stones', 11, 'https://cdns-preview-3.dzcdn.net/stream/c-35b06ee68075da7efc49fc22fa2ab1db-5.mp3', 'The Rolling Stones, ', 0, 1979, ' Dance music, Psychedelic rock, Reggae, New-age music', 0, 0, 0),
(13, 'beast_of_burden_the_rolling_stones1', 'Beast Of Burden', '', 'Some Girls (Deluxe Version)', 'https://e-cdns-images.dzcdn.net/images/cover/4daeaee9a15329dc861f62976d0cbb7c/500x500-000000-80-0-0.jpg', '265', 'The Rolling Stones', 11, 'https://cdns-preview-7.dzcdn.net/stream/c-7c96bc495139a61440f60e1c2ab66b05-8.mp3', 'The Rolling Stones, ', 0, 1976, ' Electronic music, Easy listening, New wave, Heavy metal, Electronic dance music', 0, 0, 0),
(14, 'under_my_thumb_the_rolling_stones9', 'Under My Thumb', '', 'Hot Rocks 1964-1971 (Remastered)', 'https://e-cdns-images.dzcdn.net/images/cover/da22f091bc548654a1ce911ec9c0c947/500x500-000000-80-0-0.jpg', '222', 'The Rolling Stones', 11, 'https://cdns-preview-5.dzcdn.net/stream/c-554104cad7e2fe7f66be29b4d38fcd6f-10.mp3', 'The Rolling Stones, ', 0, 2011, ' UK garage, Reggae, Pop music', 0, 0, 0),
(15, 'wild_horses_the_rolling_stones1', 'Wild Horses', '', 'Sticky Fingers (Super Deluxe)', 'https://e-cdns-images.dzcdn.net/images/cover/963a30f74c05a9fe130b3ba0b6765c43/500x500-000000-80-0-0.jpg', '341', 'The Rolling Stones', 11, 'https://cdns-preview-d.dzcdn.net/stream/c-d520bdaed1aa10717841787db0bddb9f-3.mp3', 'The Rolling Stones, ', 0, 1985, ' World music, Music of the United States, Techno, Electronic music, Hardcore punk', 0, 0, 0),
(16, 'paint_itblack_the_rolling_stones3', 'Paint It,Black', '', 'Singles 1965-1967', 'https://e-cdns-images.dzcdn.net/images/cover/0d3be6936cd5a5e81db72f04ed75e4fb/500x500-000000-80-0-0.jpg', '224', 'The Rolling Stones', 11, 'https://cdns-preview-a.dzcdn.net/stream/c-a89e9efd417f89371a92363d8a35286b-8.mp3', 'The Rolling Stones, ', 0, 2009, ' Rhythm and blues, Ambient music, American folk music', 0, 0, 0),
(17, 'living_in_a_ghost_town_the_rolling_stones5', 'Living In A Ghost Town', '', 'Living In A Ghost Town', 'https://e-cdns-images.dzcdn.net/images/cover/c9475f668f1d512d4fc988df2e97b8f0/500x500-000000-80-0-0.jpg', '247', 'The Rolling Stones', 11, 'https://cdns-preview-b.dzcdn.net/stream/c-b75c4914bce39d6ec509bee651df191b-6.mp3', 'The Rolling Stones, ', 1, 2011, ' Experimental music, Instrumental, Trance music, Classical music', 0, 0, 0),
(18, 'doom_and_gloom_the_rolling_stones9', 'Doom And Gloom', '', 'Honk (Deluxe)', 'https://e-cdns-images.dzcdn.net/images/cover/397ec2085a4944e3a93bb6e8c9eaf6de/500x500-000000-80-0-0.jpg', '238', 'The Rolling Stones', 11, 'https://cdns-preview-1.dzcdn.net/stream/c-1eb879b234c6d0dcdc8e2fd21d3d6e4b-6.mp3', 'The Rolling Stones, ', 0, 1982, ' Hardcore punk, Rock, UK garage', 0, 0, 0),
(19, 'emotional_rescue_the_rolling_stones6', 'Emotional Rescue', '', 'Emotional Rescue (2009 Re-Mastered)', 'https://e-cdns-images.dzcdn.net/images/cover/36b8168a6f0d5e6b8198598bbecac293/500x500-000000-80-0-0.jpg', '339', 'The Rolling Stones', 11, 'https://cdns-preview-8.dzcdn.net/stream/c-88ca5fdfe15d3195f49169443b0f2dc3-5.mp3', 'The Rolling Stones, ', 0, 2002, ' Pop music, Hardcore punk, Instrumental, Popular music, New-age music', 0, 0, 0),
(20, 'angie_the_rolling_stones6', 'Angie', '(2020)', 'Goats Head Soup (Deluxe)', 'https://e-cdns-images.dzcdn.net/images/cover/8beebf844fc00cf73c49764e29a0a46c/500x500-000000-80-0-0.jpg', '272', 'The Rolling Stones', 11, 'https://cdns-preview-b.dzcdn.net/stream/c-ba732211d699c016655fd059a4609395-5.mp3', 'The Rolling Stones, ', 0, 1979, ' Trance music, Country music, Pop rock, Pop music', 0, 0, 0),
(21, 'hoo_doo_blues_the_rolling_stones0', 'Hoo Doo Blues', '', 'Blue & Lonesome', 'https://e-cdns-images.dzcdn.net/images/cover/5691be0453d3b0a3733a7b59503b1399/500x500-000000-80-0-0.jpg', '156', 'The Rolling Stones', 11, 'https://cdns-preview-9.dzcdn.net/stream/c-9e45b48445ca4e5f1c25344ec6812e15-6.mp3', 'The Rolling Stones, ', 0, 2009, ' Classical music, Hip hop music, Jungle music, Hardcore punk, Music of Asia', 0, 0, 0),
(22, 'i_am_waiting_the_rolling_stones2', 'I Am Waiting', '', 'Aftermath', 'https://e-cdns-images.dzcdn.net/images/cover/8d88273e39d8806c6041b413a8c4cf74/500x500-000000-80-0-0.jpg', '190', 'The Rolling Stones', 11, 'https://cdns-preview-7.dzcdn.net/stream/c-79b4b9f4371c32e6d1be62bb15d2c057-7.mp3', 'The Rolling Stones, ', 0, 2003, ' Dance music, Techno, Music of Asia, New wave', 0, 0, 0),
(23, 'route_66_the_rolling_stones8', 'Route 66', '', 'The Rolling Stones', 'https://e-cdns-images.dzcdn.net/images/cover/4f48f44c9601f140c65ecf3519478c69/500x500-000000-80-0-0.jpg', '140', 'The Rolling Stones', 11, 'https://cdns-preview-8.dzcdn.net/stream/c-8a581d906fece2faf842277f7456cfec-8.mp3', 'The Rolling Stones, ', 0, 2005, ' Reggae, Hardcore punk, Musical theatre', 0, 0, 0),
(24, 'play_with_fire_the_rolling_stones0', 'Play With Fire', '(Mono Version / Remastered 2002)', 'Hot Rocks 1964-1971 (Remastered)', 'https://e-cdns-images.dzcdn.net/images/cover/da22f091bc548654a1ce911ec9c0c947/500x500-000000-80-0-0.jpg', '133', 'The Rolling Stones', 11, 'https://cdns-preview-0.dzcdn.net/stream/c-0379fb76ffd5bf95d6fddd36108941be-10.mp3', 'The Rolling Stones, ', 1, 1997, ' Disco, Jazz fusion, Dance music, Instrumental', 0, 0, 0),
(25, 'fool_to_cry_the_rolling_stones3', 'Fool To Cry', '', 'Sucking In The Seventies (Digitally Remastered 2005)', 'https://e-cdns-images.dzcdn.net/images/cover/ef410409be5a5bc4f58a4c8bc5b368a4/500x500-000000-80-0-0.jpg', '246', 'The Rolling Stones', 11, 'https://cdns-preview-4.dzcdn.net/stream/c-4d7e8479722e77acc8cb7eaa6f9eb46c-6.mp3', 'The Rolling Stones, ', 0, 1988, ' Techno, New-age music, Popular music', 0, 0, 0),
(26, 'dead_flowers_the_rolling_stones4', 'Dead Flowers', '(2009 Mix)', 'Sticky Fingers (Remastered)', 'https://e-cdns-images.dzcdn.net/images/cover/cf61e42ee4036325e8d151489e6f38f7/500x500-000000-80-0-0.jpg', '244', 'The Rolling Stones', 11, 'https://cdns-preview-b.dzcdn.net/stream/c-bf140a1ca416050fa4371f590872016c-5.mp3', 'The Rolling Stones, ', 0, 2023, ' World music, Funk, Jazz fusion', 0, 0, 0),
(27, 'you_got_the_silver_the_rolling_stones1', 'You Got The Silver', '', 'Let It Bleed', 'https://e-cdns-images.dzcdn.net/images/cover/966fa939bd79e15d413abf0764f8a3b5/500x500-000000-80-0-0.jpg', '170', 'The Rolling Stones', 11, 'https://cdns-preview-d.dzcdn.net/stream/c-d1a482ce176ce8fc880c269fbcc1c890-9.mp3', 'The Rolling Stones, ', 0, 1995, ' Techno, Classical music, Electro, Blues', 0, 0, 0),
(28, 'sympathy_for_the_devil_the_rolling_stones2', 'Sympathy For The Devil', '(50th Anniversary Edition)', 'Beggars Banquet (50th Anniversary Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/5dc9b9ccd120fe4870840a018d45510f/500x500-000000-80-0-0.jpg', '378', 'The Rolling Stones', 11, 'https://cdns-preview-f.dzcdn.net/stream/c-f1bf7855a6be04bbbab63a326246f72b-8.mp3', 'The Rolling Stones, ', 0, 2021, ' House music, World music, Heavy metal, Soul music, Reggae', 0, 0, 0),
(29, 'tumbling_dice_the_rolling_stones7', 'Tumbling Dice', '', 'Exile On Main Street', 'https://e-cdns-images.dzcdn.net/images/cover/28e5ea6c9e305a2cb85a589b1260a88a/500x500-000000-80-0-0.jpg', '226', 'The Rolling Stones', 11, 'https://cdns-preview-f.dzcdn.net/stream/c-f4a08ffdd9f19b33c832082fe4e6e92f-6.mp3', 'The Rolling Stones, ', 0, 1999, ' Jungle music, Industrial music, Ambient music, World music', 0, 0, 0),
(30, 'sweet_virginia_the_rolling_stones2', 'Sweet Virginia', '', 'Exile On Main Street', 'https://e-cdns-images.dzcdn.net/images/cover/28e5ea6c9e305a2cb85a589b1260a88a/500x500-000000-80-0-0.jpg', '266', 'The Rolling Stones', 11, 'https://cdns-preview-0.dzcdn.net/stream/c-01ee3b9dc3d8abf9d6c72ccb77a848da-7.mp3', 'The Rolling Stones, ', 0, 2014, ' House music, Musical theatre, World music, Experimental music', 0, 0, 0),
(31, 'commit_a_crime_the_rolling_stones6', 'Commit A Crime', '', 'Blue & Lonesome', 'https://e-cdns-images.dzcdn.net/images/cover/5691be0453d3b0a3733a7b59503b1399/500x500-000000-80-0-0.jpg', '218', 'The Rolling Stones', 11, 'https://cdns-preview-5.dzcdn.net/stream/c-52ff9d9ae4e3cb6bc001642ce0a6dea3-8.mp3', 'The Rolling Stones, ', 0, 1985, ' Jungle music, Electronic music, Pop rock, Dubstep, UK garage', 0, 0, 0),
(32, 'street_fighting_man_the_rolling_stones9', 'Street Fighting Man', '', 'Beggars Banquet', 'https://e-cdns-images.dzcdn.net/images/cover/007ca308040f3efeff845f2fb4e87a2a/500x500-000000-80-0-0.jpg', '194', 'The Rolling Stones', 11, 'https://cdns-preview-9.dzcdn.net/stream/c-991d69f564b053fe797f5cac9e365e6b-6.mp3', 'The Rolling Stones, ', 0, 2004, ' Easy listening, Funk, Jazz, Hardcore punk', 0, 0, 0),
(33, 'love_in_vain_the_rolling_stones6', 'Love In Vain', '', 'Let It Bleed', 'https://e-cdns-images.dzcdn.net/images/cover/966fa939bd79e15d413abf0764f8a3b5/500x500-000000-80-0-0.jpg', '259', 'The Rolling Stones', 11, 'https://cdns-preview-c.dzcdn.net/stream/c-ca146c1c4e7935347459289e205b3290-8.mp3', 'The Rolling Stones, ', 0, 1987, ' Jazz, Dance music, Singing, Industrial music', 0, 0, 0),
(34, 'criss_cross_the_rolling_stones9', 'Criss Cross', '', 'Criss Cross', 'https://e-cdns-images.dzcdn.net/images/cover/05903e3c0dded8be199eca2ced1f9bca/500x500-000000-80-0-0.jpg', '272', 'The Rolling Stones', 11, 'https://cdns-preview-5.dzcdn.net/stream/c-587cd68f1271724248c77f65be08f8e2-4.mp3', 'The Rolling Stones, ', 1, 1992, ' Psychedelic rock, Country music, UK garage, World music', 0, 0, 0),
(35, 'sister_morphine_the_rolling_stones5', 'Sister Morphine', '(2009 Mix)', 'Sticky Fingers (Remastered)', 'https://e-cdns-images.dzcdn.net/images/cover/cf61e42ee4036325e8d151489e6f38f7/500x500-000000-80-0-0.jpg', '331', 'The Rolling Stones', 11, 'https://cdns-preview-b.dzcdn.net/stream/c-bdfe6385bf0ede731f95030ba90aca62-5.mp3', 'The Rolling Stones, ', 0, 2005, ' Country music, Rock, Ambient music, American folk music', 0, 0, 0),
(36, 'rocks_off_the_rolling_stones6', 'Rocks Off', '', 'Exile On Main Street (Deluxe Version)', 'https://e-cdns-images.dzcdn.net/images/cover/aa0f3b3819b356238dc46589e168e7bd/500x500-000000-80-0-0.jpg', '271', 'The Rolling Stones', 11, 'https://cdns-preview-8.dzcdn.net/stream/c-88ea2656fb82e2a63b1133f8525ffc64-6.mp3', 'The Rolling Stones, ', 0, 1984, ' New wave, Experimental music, Soundtrack, Rock, Psychedelic rock', 0, 0, 0),
(37, 'the_last_time_the_rolling_stones1', 'The Last Time', '(Mono Version)', 'Out Of Our Heads', 'https://e-cdns-images.dzcdn.net/images/cover/ed314d96e4c7888856922b388b69e4e3/500x500-000000-80-0-0.jpg', '221', 'The Rolling Stones', 11, 'https://cdns-preview-5.dzcdn.net/stream/c-57354b240ee5e33607f3cea3ca4ce48f-10.mp3', 'The Rolling Stones, ', 0, 1989, ' New wave, Heavy metal, Pop rock', 0, 0, 0),
(38, 'out_of_tears_the_rolling_stones6', 'Out Of Tears', '', 'Voodoo Lounge (Remastered 2009)', 'https://e-cdns-images.dzcdn.net/images/cover/35d233ebb91450f37e2f77fb72fb9aaf/500x500-000000-80-0-0.jpg', '327', 'The Rolling Stones', 11, 'https://cdns-preview-0.dzcdn.net/stream/c-03912eb87668724d6487308a0eb97954-5.mp3', 'The Rolling Stones, ', 0, 1978, ' Disco, Soundtrack, Techno', 0, 0, 0),
(39, 'sway_the_rolling_stones7', 'Sway', '(2009 Mix)', 'Sticky Fingers (Remastered)', 'https://e-cdns-images.dzcdn.net/images/cover/cf61e42ee4036325e8d151489e6f38f7/500x500-000000-80-0-0.jpg', '232', 'The Rolling Stones', 11, 'https://cdns-preview-7.dzcdn.net/stream/c-728a01ba59f26806c5900f3045ca8620-6.mp3', 'The Rolling Stones, ', 0, 2009, ' Heavy metal, Music of Latin America, Rhythm and blues, Electronic dance music, Ambient music', 0, 0, 0),
(40, 'winter_the_rolling_stones0', 'Winter', '(Remastered)', 'Goats Head Soup (Remastered 2009)', 'https://e-cdns-images.dzcdn.net/images/cover/1e1fcf33bfd1c33b94511a040fa9b5b1/500x500-000000-80-0-0.jpg', '329', 'The Rolling Stones', 11, 'https://cdns-preview-4.dzcdn.net/stream/c-4ecaf1e930c82414ae9f68ff129d45bf-6.mp3', 'The Rolling Stones, ', 0, 1987, ' Rhythm and blues, Reggae, Hip hop music, Industrial music, Experimental music', 0, 0, 0),
(41, 'live_with_me_the_rolling_stones3', 'Live With Me', '', 'Let It Bleed', 'https://e-cdns-images.dzcdn.net/images/cover/966fa939bd79e15d413abf0764f8a3b5/500x500-000000-80-0-0.jpg', '213', 'The Rolling Stones', 11, 'https://cdns-preview-7.dzcdn.net/stream/c-7029aa836ed07b939cd9e1f932e1ee7d-8.mp3', 'The Rolling Stones, ', 0, 2011, ' World music, Easy listening, Musical theatre, Disco, Pop music', 0, 0, 0),
(42, 'laugh_i_nearly_died_the_rolling_stones3', 'Laugh, I Nearly Died', '(Remastered)', 'A Bigger Bang (2009 Re-Mastered)', 'https://e-cdns-images.dzcdn.net/images/cover/4137de2cdc9a58cea6c23619c93f2caf/500x500-000000-80-0-0.jpg', '294', 'The Rolling Stones', 11, 'https://cdns-preview-d.dzcdn.net/stream/c-d0a81421ee58f9e66701e67355c41c18-6.mp3', 'The Rolling Stones, ', 0, 1983, ' Disco, Pop rock, Music of the United States', 0, 0, 0),
(43, 'lose_yourself_eminem2', 'Lose Yourself', '(From \"8 Mile\" Soundtrack)', 'Curtain Call: The Hits', 'https://e-cdns-images.dzcdn.net/images/cover/e2b36a9fda865cb2e9ed1476b6291a7d/500x500-000000-80-0-0.jpg', '326', 'Eminem', 13, 'https://cdns-preview-1.dzcdn.net/stream/c-13039fed16a173733f227b0bec631034-12.mp3', 'Eminem, ', 0, 2018, ' New wave, Dance music, Music of Asia, Rock, House music', 0, 0, 0),
(44, 'without_me_eminem5', 'Without Me', '', 'The Eminem Show', 'https://e-cdns-images.dzcdn.net/images/cover/ec3c8ed67427064c70f67e5815b74cef/500x500-000000-80-0-0.jpg', '290', 'Eminem', 13, 'https://cdns-preview-c.dzcdn.net/stream/c-cca63b2c92773d54e61c5b4d17695bd2-8.mp3', 'Eminem, ', 0, 1991, ' World music, Techno, Dubstep', 0, 0, 0),
(45, 'the_real_slim_shady_eminem1', 'The Real Slim Shady', '', 'Curtain Call: The Hits', 'https://e-cdns-images.dzcdn.net/images/cover/e2b36a9fda865cb2e9ed1476b6291a7d/500x500-000000-80-0-0.jpg', '284', 'Eminem', 13, 'https://cdns-preview-d.dzcdn.net/stream/c-d28ee67c24d60e740866c7709d772f55-12.mp3', 'Eminem, ', 0, 1994, ' Electro, Classical music, Reggae, Funk, Trance music', 0, 0, 0),
(46, 'stan_eminem5', 'Stan', '', 'Curtain Call: The Hits', 'https://e-cdns-images.dzcdn.net/images/cover/e2b36a9fda865cb2e9ed1476b6291a7d/500x500-000000-80-0-0.jpg', '404', 'Eminem', 13, 'https://cdns-preview-d.dzcdn.net/stream/c-dbbd5055e0b4b64397e939f75ca0662b-13.mp3', 'Eminem, Dido, ', 0, 2021, ' Blues, Experimental music, Electronic dance music', 0, 0, 0),
(47, 'love_the_way_you_lie_eminem7', 'Love The Way You Lie', '', 'Recovery', 'https://e-cdns-images.dzcdn.net/images/cover/be682506145061814eddee648edb7c59/500x500-000000-80-0-0.jpg', '263', 'Eminem', 13, 'https://cdns-preview-1.dzcdn.net/stream/c-1ed50e5b3118c99be858fc305609e62a-15.mp3', 'Eminem, Rihanna, ', 1, 1976, ' New wave, Latin music, Music of Latin America, Funk', 0, 0, 0),
(48, 'godzilla_eminem4', 'Godzilla', '', 'Music To Be Murdered By - Side B (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/55d424a53904d145b17869ba133843d7/500x500-000000-80-0-0.jpg', '210', 'Eminem', 13, 'https://cdns-preview-d.dzcdn.net/stream/c-d5a91f3cf9c2b399c9734223623a3c67-6.mp3', 'Eminem, Juice WRLD, ', 0, 1995, ' Rock, Trance music, Punk rock', 0, 0, 0),
(49, 'not_afraid_eminem3', 'Not Afraid', '', 'Recovery', 'https://e-cdns-images.dzcdn.net/images/cover/be682506145061814eddee648edb7c59/500x500-000000-80-0-0.jpg', '248', 'Eminem', 13, 'https://cdns-preview-0.dzcdn.net/stream/c-04c2c479846725eec24a3f40e837d35e-16.mp3', 'Eminem, ', 0, 2016, ' Rock, Music of the United States, Music of Asia, Jazz fusion, Popular music', 0, 0, 0),
(50, 'the_monster_eminem6', 'The Monster', '', 'The Marshall Mathers LP2 (Deluxe)', 'https://e-cdns-images.dzcdn.net/images/cover/7c71224818ac99b16570357b2f98e041/500x500-000000-80-0-0.jpg', '250', 'Eminem', 13, 'https://cdns-preview-1.dzcdn.net/stream/c-19bb8452c0c5709dde021b7f92c98ab7-6.mp3', 'Eminem, Rihanna, ', 0, 1995, ' Jungle music, Punk rock, Electro', 0, 0, 0),
(51, 'gospel_dr._dre9', 'Gospel', '', 'Gospel', 'https://e-cdns-images.dzcdn.net/images/cover/41638914227d14417f309713a904e741/500x500-000000-80-0-0.jpg', '210', 'Dr. Dre', 24, 'https://cdns-preview-d.dzcdn.net/stream/c-dc80bf988534fa35ff4b25b8f616ea51-6.mp3', 'Dr. Dre, Eminem, ', 0, 2017, ' Jazz fusion, House music, Jungle music', 0, 0, 0),
(52, 'venom_eminem6', 'Venom', '(Music From The Motion Picture)', 'Kamikaze', 'https://e-cdns-images.dzcdn.net/images/cover/bf74fc764097630ba58782ae79cfbee6/500x500-000000-80-0-0.jpg', '269', 'Eminem', 13, 'https://cdns-preview-8.dzcdn.net/stream/c-8ad574e54c315bd9f89ba34deb2c7650-6.mp3', 'Eminem, ', 0, 2001, ' Experimental music, Psychedelic rock, Punk rock, Jungle music', 0, 0, 0),
(53, 'mockingbird_eminem4', 'Mockingbird', '', 'Curtain Call: The Hits', 'https://e-cdns-images.dzcdn.net/images/cover/e2b36a9fda865cb2e9ed1476b6291a7d/500x500-000000-80-0-0.jpg', '251', 'Eminem', 13, 'https://cdns-preview-6.dzcdn.net/stream/c-655dfb802c35579d26a32136e3d0e7b3-12.mp3', 'Eminem, ', 0, 2004, ' Latin music, Punk rock, Hardcore punk, Heavy metal', 0, 0, 0),
(54, 'rap_god_eminem9', 'Rap God', '', 'The Marshall Mathers LP2 (Deluxe)', 'https://e-cdns-images.dzcdn.net/images/cover/7c71224818ac99b16570357b2f98e041/500x500-000000-80-0-0.jpg', '363', 'Eminem', 13, 'https://cdns-preview-2.dzcdn.net/stream/c-2a2a808c0966c0952aa4f6bae6fa98de-6.mp3', 'Eminem, ', 0, 2019, ' Industrial music, Dance music, New-age music', 0, 0, 0),
(55, 'my_name_is_eminem5', 'My Name Is', '', 'The Slim Shady LP', 'https://e-cdns-images.dzcdn.net/images/cover/83c5dc5ab4d1781ed3bb01c43956d71e/500x500-000000-80-0-0.jpg', '268', 'Eminem', 13, 'https://cdns-preview-9.dzcdn.net/stream/c-9cbbaa2dbdc560d22e165b36584c67dd-3.mp3', 'Eminem, ', 0, 1984, ' Soul music, Funk, Classical music, Electronic dance music', 0, 0, 0),
(56, 'superman_eminem7', 'Superman', '', 'The Eminem Show', 'https://e-cdns-images.dzcdn.net/images/cover/ec3c8ed67427064c70f67e5815b74cef/500x500-000000-80-0-0.jpg', '350', 'Eminem', 13, 'https://cdns-preview-d.dzcdn.net/stream/c-d56c95b55d8555bd7bb816d9518609d5-9.mp3', 'Eminem, Dina Rae, ', 0, 2016, ' Instrumental, Latin music, Pop music, American folk music', 0, 0, 0),
(57, 'sing_for_the_moment_eminem9', 'Sing For The Moment', '', 'Curtain Call: The Hits (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/2d160b4c0d72272b4f5d7f55037d4864/500x500-000000-80-0-0.jpg', '340', 'Eminem', 13, 'https://cdns-preview-8.dzcdn.net/stream/c-8899853679010431c89c4428cf5f0850-12.mp3', 'Eminem, ', 0, 2017, ' American folk music, Rock, Electronic music', 0, 0, 0),
(58, 'shake_that_eminem7', 'Shake That', '', 'Curtain Call: The Hits (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/2d160b4c0d72272b4f5d7f55037d4864/500x500-000000-80-0-0.jpg', '274', 'Eminem', 13, 'https://cdns-preview-8.dzcdn.net/stream/c-89e46d70a4a0f8d8e95fe1ae82382418-13.mp3', 'Eminem, Nate Dogg, ', 0, 1999, ' Country music, Hip hop music, Blues, UK garage, Soul music', 0, 0, 0),
(59, 'lucky_you_eminem9', 'Lucky You', '', 'Kamikaze', 'https://e-cdns-images.dzcdn.net/images/cover/bf74fc764097630ba58782ae79cfbee6/500x500-000000-80-0-0.jpg', '244', 'Eminem', 13, 'https://cdns-preview-c.dzcdn.net/stream/c-ce814e88e289e9c11353ab0a976fa742-6.mp3', 'Eminem, Joyner Lucas, ', 0, 2021, ' Hardcore punk, Trance music, Classical music', 0, 0, 0),
(60, 'the_way_i_am_eminem4', 'The Way I Am', '', 'Curtain Call: The Hits (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/2d160b4c0d72272b4f5d7f55037d4864/500x500-000000-80-0-0.jpg', '291', 'Eminem', 13, 'https://cdns-preview-f.dzcdn.net/stream/c-fb4fe7318d39ed7ca63d0854b1651e18-12.mp3', 'Eminem, ', 0, 2018, ' New wave, UK garage, Ambient music, Rock, American folk music', 0, 0, 0),
(61, 'killer_eminem7', 'Killer', '(Remix)', 'Killer (Remix)', 'https://e-cdns-images.dzcdn.net/images/cover/9e8c9f5d7f6724ca34cf612e23a161e8/500x500-000000-80-0-0.jpg', '236', 'Eminem', 13, 'https://cdns-preview-e.dzcdn.net/stream/c-e5bba767afb5dd7e763cf064e6b947df-4.mp3', 'Eminem, Jack Harlow, Cordae, ', 0, 2020, ' Disco, Jazz, Techno', 0, 0, 0),
(62, 'killshot_eminem0', 'Killshot', '', 'Killshot', 'https://e-cdns-images.dzcdn.net/images/cover/d7478a964354c578fd78149000885921/500x500-000000-80-0-0.jpg', '253', 'Eminem', 13, 'https://cdns-preview-3.dzcdn.net/stream/c-3be8a7e6ae1b8c6ba30a81bd3525a4b2-6.mp3', 'Eminem, ', 0, 1973, ' Singing, Classical music, Experimental music, Indie rock', 0, 0, 0),
(63, 'beautiful_eminem3', 'Beautiful', '', 'Relapse [Deluxe]', 'https://e-cdns-images.dzcdn.net/images/cover/61748c3c81d9ca57dbc926d84487aed2/500x500-000000-80-0-0.jpg', '392', 'Eminem', 13, 'https://cdns-preview-4.dzcdn.net/stream/c-49108a9f0a899b4b16a8f1a770c321a1-4.mp3', 'Eminem, ', 0, 2017, ' Electronic music, Disco, Easy listening, Reggae, Pop music', 0, 0, 0),
(64, 'under_the_influence_eminem0', 'Under The Influence', '', 'The Marshall Mathers LP', 'https://e-cdns-images.dzcdn.net/images/cover/941c2d3c366affdc662956559e078a4e/500x500-000000-80-0-0.jpg', '321', 'Eminem', 13, 'https://cdns-preview-0.dzcdn.net/stream/c-0c4f867487e0d55aaa10e550084b3ffd-4.mp3', 'Eminem, D12, ', 0, 2001, ' Jungle music, Industrial music, Singing', 0, 0, 0),
(65, 'bitch_please_ii_eminem7', 'Bitch Please II', '', 'The Marshall Mathers LP', 'https://e-cdns-images.dzcdn.net/images/cover/941c2d3c366affdc662956559e078a4e/500x500-000000-80-0-0.jpg', '288', 'Eminem', 13, 'https://cdns-preview-3.dzcdn.net/stream/c-3af5c561fbb31eb595e4b4039443bc18-3.mp3', 'Eminem, Dr. Dre, Snoop Dogg, Xzibit, Nate Dogg, ', 0, 2015, ' Classical music, Disco, Dance music', 0, 0, 0),
(66, 'fall_eminem4', 'Fall', '', 'Kamikaze', 'https://e-cdns-images.dzcdn.net/images/cover/bf74fc764097630ba58782ae79cfbee6/500x500-000000-80-0-0.jpg', '262', 'Eminem', 13, 'https://cdns-preview-6.dzcdn.net/stream/c-651d9d92840db585ff2ec2651dc464d8-6.mp3', 'Eminem, ', 0, 2007, ' Soundtrack, American folk music, Experimental music', 0, 0, 0),
(67, 'last_one_standing_skylar_grey2', 'Last One Standing', '(From Venom: Let There Be Carnage)', 'Last One Standing (From Venom: Let There Be Carnage)', 'https://e-cdns-images.dzcdn.net/images/cover/efd824f69f5e7b17f4432dd3596d7c06/500x500-000000-80-0-0.jpg', '258', 'Skylar Grey', 24, 'https://cdns-preview-4.dzcdn.net/stream/c-424ac4e17f1b64c85e0aee62dd0bead8-4.mp3', 'Skylar Grey, Polo G, Mozzy, Eminem, ', 0, 1986, ' Reggae, Indie rock, Music of Asia', 0, 0, 0),
(68, 'just_lose_it_eminem5', 'Just Lose It', '', 'Curtain Call: The Hits (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/2d160b4c0d72272b4f5d7f55037d4864/500x500-000000-80-0-0.jpg', '248', 'Eminem', 13, 'https://cdns-preview-5.dzcdn.net/stream/c-5f5df7f2e65049c27e2f217d739c250b-14.mp3', 'Eminem, ', 1, 1983, ' New-age music, Musical theatre, Rock, Singing', 0, 0, 0),
(69, 'darkness_eminem9', 'Darkness', '', 'Music To Be Murdered By - Side B (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/55d424a53904d145b17869ba133843d7/500x500-000000-80-0-0.jpg', '337', 'Eminem', 13, 'https://cdns-preview-2.dzcdn.net/stream/c-243c0a920bc2c41b18bcd8a20ca5ee41-6.mp3', 'Eminem, ', 0, 1989, ' Music of Asia, New-age music, Dubstep', 0, 0, 0),
(70, 'forever_drake4', 'Forever', '', 'Relapse: Refill', 'https://e-cdns-images.dzcdn.net/images/cover/bd571081cf7d4ee6fe9e5904423b76cb/500x500-000000-80-0-0.jpg', '357', 'Drake', 24, 'https://cdns-preview-4.dzcdn.net/stream/c-486da296a48002098b0b5448894d8f72-7.mp3', 'Drake, Kanye West, Lil Wayne, Eminem, ', 0, 2020, ' Popular music, Pop music, Hip hop music', 0, 0, 0),
(71, 'white_america_eminem0', 'White America', '', 'The Eminem Show', 'https://e-cdns-images.dzcdn.net/images/cover/ec3c8ed67427064c70f67e5815b74cef/500x500-000000-80-0-0.jpg', '324', 'Eminem', 13, 'https://cdns-preview-0.dzcdn.net/stream/c-0bc690060eb5139aa62e27a4cd0f3aa9-9.mp3', 'Eminem, ', 0, 2020, ' Soundtrack, Country music, Rock, American folk music, Jungle music', 0, 0, 0),
(72, '8_mile_eminem0', '8 Mile', '(Soundtrack Version Edit)', '8 Mile', 'https://e-cdns-images.dzcdn.net/images/cover/6fa1402225904c274083a73f6618cdcf/500x500-000000-80-0-0.jpg', '359', 'Eminem', 13, 'https://cdns-preview-9.dzcdn.net/stream/c-917cd35c728bd3550437db7788fb4b54-7.mp3', 'Eminem, ', 0, 2005, ' Classical music, Jazz fusion, Electronic music', 0, 0, 0),
(73, 'berzerk_eminem9', 'Berzerk', '', 'The Marshall Mathers LP2 (Deluxe)', 'https://e-cdns-images.dzcdn.net/images/cover/7c71224818ac99b16570357b2f98e041/500x500-000000-80-0-0.jpg', '238', 'Eminem', 13, 'https://cdns-preview-d.dzcdn.net/stream/c-dff067bd0d45ccf376840638c10ee38b-6.mp3', 'Eminem, ', 0, 1979, ' Funk, Psychedelic rock, Blues, Electro', 0, 0, 0),
(74, 'no_love_eminem4', 'No Love', '', 'Recovery (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/7c2641a8f3d5d453581549d55ef501a7/500x500-000000-80-0-0.jpg', '299', 'Eminem', 13, 'https://cdns-preview-b.dzcdn.net/stream/c-b635e66dd8bc695e5a0d0519e0cccfe0-5.mp3', 'Eminem, Lil Wayne, ', 0, 2021, ' Music of Asia, Musical theatre, House music', 0, 0, 0),
(75, 'like_toy_soldiers_eminem2', 'Like Toy Soldiers', '', 'Curtain Call: The Hits (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/2d160b4c0d72272b4f5d7f55037d4864/500x500-000000-80-0-0.jpg', '295', 'Eminem', 13, 'https://cdns-preview-0.dzcdn.net/stream/c-055087e1cc78aa4b85a65004837906f3-12.mp3', 'Eminem, ', 0, 2009, ' Instrumental, Psychedelic rock, American folk music, World music, Electronic music', 0, 0, 0),
(76, 'the_ringer_eminem9', 'The Ringer', '', 'Kamikaze', 'https://e-cdns-images.dzcdn.net/images/cover/bf74fc764097630ba58782ae79cfbee6/500x500-000000-80-0-0.jpg', '337', 'Eminem', 13, 'https://cdns-preview-8.dzcdn.net/stream/c-825009c6222c3c827f0d1da6dd8a2ae0-6.mp3', 'Eminem, ', 0, 2010, ' Electronic dance music, Hip hop music, Dance music, Easy listening, Popular music', 0, 0, 0),
(77, 'ass_like_that_eminem2', 'Ass Like That', '', 'Encore (Deluxe Version)', 'https://e-cdns-images.dzcdn.net/images/cover/c70c68f2f8aa376093774b931e04d018/500x500-000000-80-0-0.jpg', '265', 'Eminem', 13, 'https://cdns-preview-b.dzcdn.net/stream/c-b155680058b28c4388073948696108dc-6.mp3', 'Eminem, ', 0, 2018, ' Electro, Dance music, Classical music, Heavy metal, Electronic music', 0, 0, 0),
(78, 'business_eminem0', 'Business', '', 'The Eminem Show', 'https://e-cdns-images.dzcdn.net/images/cover/ec3c8ed67427064c70f67e5815b74cef/500x500-000000-80-0-0.jpg', '251', 'Eminem', 13, 'https://cdns-preview-c.dzcdn.net/stream/c-c1fce481b4f88f273a26ee6fa1d68285-9.mp3', 'Eminem, ', 0, 2000, ' Music of Latin America, Alternative rock, Jungle music', 0, 0, 0),
(79, 'kill_you_eminem0', 'Kill You', '', 'Curtain Call: The Hits (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/2d160b4c0d72272b4f5d7f55037d4864/500x500-000000-80-0-0.jpg', '264', 'Eminem', 13, 'https://cdns-preview-c.dzcdn.net/stream/c-cde66b65a84d049426a62815261a1e9e-13.mp3', 'Eminem, ', 0, 2016, ' Instrumental, Music of the United States, House music, Rock', 0, 0, 0),
(80, 'survival_eminem6', 'Survival', '', 'The Marshall Mathers LP2 (Deluxe)', 'https://e-cdns-images.dzcdn.net/images/cover/7c71224818ac99b16570357b2f98e041/500x500-000000-80-0-0.jpg', '272', 'Eminem', 13, 'https://cdns-preview-9.dzcdn.net/stream/c-9fc24bd24f0fa731c53caa6ef1f4c422-6.mp3', 'Eminem, ', 0, 1997, ' Reggae, Folk music, Funk, American folk music, Industrial music', 0, 0, 0),
(81, 'space_bound_eminem0', 'Space Bound', '', 'Recovery (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/7c2641a8f3d5d453581549d55ef501a7/500x500-000000-80-0-0.jpg', '278', 'Eminem', 13, 'https://cdns-preview-4.dzcdn.net/stream/c-4fcd27e04c41ae482f24dcc5d2f29a8c-5.mp3', 'Eminem, ', 0, 2021, ' World music, Latin music, Soundtrack', 0, 0, 0),
(82, 'no_regrets_eminem7', 'No Regrets', '', 'Music To Be Murdered By - Side B (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/55d424a53904d145b17869ba133843d7/500x500-000000-80-0-0.jpg', '200', 'Eminem', 13, 'https://cdns-preview-2.dzcdn.net/stream/c-2a2b09015ed76453ad40b45db40eacbe-6.mp3', 'Eminem, Don Toliver, ', 0, 1974, ' Hardcore punk, Country music, New wave, Funk', 0, 0, 0),
(83, 'fack_eminem5', 'FACK', '', 'Curtain Call: The Hits', 'https://e-cdns-images.dzcdn.net/images/cover/e2b36a9fda865cb2e9ed1476b6291a7d/500x500-000000-80-0-0.jpg', '205', 'Eminem', 13, 'https://cdns-preview-0.dzcdn.net/stream/c-0737fa0f968b2189becda3deea2b5f87-12.mp3', 'Eminem, ', 0, 1974, ' Dance music, Musical theatre, Easy listening, Dubstep', 0, 0, 0),
(84, 'marshall_mathers_eminem2', 'Marshall Mathers', '', 'The Marshall Mathers LP', 'https://e-cdns-images.dzcdn.net/images/cover/941c2d3c366affdc662956559e078a4e/500x500-000000-80-0-0.jpg', '320', 'Eminem', 13, 'https://cdns-preview-9.dzcdn.net/stream/c-9ff8e7aa0aa629bbe22ff9d897bd1bc5-3.mp3', 'Eminem, ', 0, 2011, ' Hardcore punk, Disco, Rock, Classical music, Music of Latin America', 0, 0, 0),
(85, 'crack_a_bottle_eminem3', 'Crack A Bottle', '', 'Relapse', 'https://e-cdns-images.dzcdn.net/images/cover/64148d1a543348370dd295e9177258d3/500x500-000000-80-0-0.jpg', '297', 'Eminem', 13, 'https://cdns-preview-2.dzcdn.net/stream/c-2faa333590ee97ea129f4add2975748b-11.mp3', 'Eminem, Dr. Dre, 50 Cent, ', 0, 2005, ' Singing, Soul music, Music of Asia, Psychedelic rock', 0, 0, 0),
(86, 'soldier_eminem6', 'Soldier', '', 'The Eminem Show', 'https://e-cdns-images.dzcdn.net/images/cover/cb0ce44e68a08568d837518c7ae7d1e3/500x500-000000-80-0-0.jpg', '226', 'Eminem', 13, 'https://cdns-preview-c.dzcdn.net/stream/c-c524cf32fc7a168bae2ff56ead7324d6-3.mp3', 'Eminem, ', 0, 1975, ' New-age music, Industrial music, Latin music, Instrumental, Techno', 0, 0, 0),
(87, 'feel_good_inc_gorillaz9', 'Feel Good Inc', '', 'Self Isolation', 'https://e-cdns-images.dzcdn.net/images/cover/5cbd4c3f8e0d378ccb2d9b111929c47a/500x500-000000-80-0-0.jpg', '222', 'Gorillaz', 14, 'https://cdns-preview-8.dzcdn.net/stream/c-88e048997f12d2e0ee67589307270507-8.mp3', 'Gorillaz, ', 0, 2012, ' Jungle music, Reggae, Rhythm and blues, Pop music', 0, 0, 0),
(88, 'on_melancholy_hill_gorillaz9', 'On Melancholy Hill', '', 'Inner Light - Retrowave Sounds', 'https://e-cdns-images.dzcdn.net/images/cover/1c1eec72d7bfcd1eaf63fccc4b7495cc/500x500-000000-80-0-0.jpg', '233', 'Gorillaz', 14, 'https://cdns-preview-9.dzcdn.net/stream/c-9caf6f67bcb94f36a646a4d11b58dcac-5.mp3', 'Gorillaz, ', 0, 1994, ' Blues, Country music, Popular music, Soundtrack, Music of Asia', 0, 0, 0),
(89, 'dirty_harry_gorillaz1', 'Dirty Harry', '', 'Headphone & HiFi Test', 'https://e-cdns-images.dzcdn.net/images/cover/65b3893c89624afaac6e49b4f67aaede/500x500-000000-80-0-0.jpg', '230', 'Gorillaz', 14, 'https://cdns-preview-c.dzcdn.net/stream/c-cdfa46bfde909295b3e8e7e5a5ff436c-8.mp3', 'Gorillaz, ', 1, 1975, ' Easy listening, House music, New-age music, New wave', 0, 0, 0),
(90, 'the_pink_phantom_gorillaz9', 'The Pink Phantom', '', 'The Lockdown Sessions', 'https://e-cdns-images.dzcdn.net/images/cover/9f8cb9a379688dad509143cb916cb550/500x500-000000-80-0-0.jpg', '253', 'Gorillaz', 14, 'https://cdns-preview-5.dzcdn.net/stream/c-596f899b7e02aa35e314798ecca8229e-4.mp3', 'Gorillaz, Elton John, 6LACK, ', 0, 1980, ' Pop music, House music, Heavy metal, Electronic dance music, Jazz fusion', 0, 0, 0),
(91, 'hollaback_girl_gwen_stefani3', 'Hollaback Girl', '', 'Love Angel Music Baby (Deluxe Version)', 'https://e-cdns-images.dzcdn.net/images/cover/c133e6ca154037e1de95fb82475d206b/500x500-000000-80-0-0.jpg', '199', 'Gwen Stefani', 16, 'https://cdns-preview-6.dzcdn.net/stream/c-63623342a6013c9a90bde5ff31a04d68-10.mp3', 'Gwen Stefani, ', 0, 1978, ' Soul music, Singing, Music of Asia, Ambient music, House music', 0, 0, 0),
(92, 'rich_girl_gwen_stefani7', 'Rich Girl', '', 'Love Angel Music Baby (Deluxe Version)', 'https://e-cdns-images.dzcdn.net/images/cover/c133e6ca154037e1de95fb82475d206b/500x500-000000-80-0-0.jpg', '236', 'Gwen Stefani', 16, 'https://cdns-preview-7.dzcdn.net/stream/c-7251148d199ff6f5bacfe5c101a34081-10.mp3', 'Gwen Stefani, Eve, ', 0, 1989, ' Alternative rock, Industrial music, Heavy metal, Reggae', 0, 0, 0),
(93, 'the_sweet_escape_gwen_stefani1', 'The Sweet Escape', '', 'The Sweet Escape', 'https://e-cdns-images.dzcdn.net/images/cover/4c017b094ca59f87b0215fdc3dd706b9/500x500-000000-80-0-0.jpg', '246', 'Gwen Stefani', 16, 'https://cdns-preview-6.dzcdn.net/stream/c-6f4ab9889bbb33329f7a7d361fb94189-6.mp3', 'Gwen Stefani, Akon, ', 0, 2001, ' Dance music, Psychedelic rock, Electronic music, Rhythm and blues, Electronic dance music', 0, 0, 0),
(94, 'bubble_pop_electric_gwen_stefani2', 'Bubble Pop Electric', '', 'Love Angel Music Baby', 'https://e-cdns-images.dzcdn.net/images/cover/0dbe967d19dcf74cf7e2ad7e5c350bc4/500x500-000000-80-0-0.jpg', '222', 'Gwen Stefani', 16, 'https://cdns-preview-8.dzcdn.net/stream/c-87d4c67c83ea89eceab13e49d32f758e-9.mp3', 'Gwen Stefani, Johnny Vulture, ', 0, 2001, ' World music, Ambient music, Instrumental, Classical music', 0, 0, 0),
(95, 'cool_gwen_stefani9', 'Cool', '', 'Love Angel Music Baby', 'https://e-cdns-images.dzcdn.net/images/cover/0dbe967d19dcf74cf7e2ad7e5c350bc4/500x500-000000-80-0-0.jpg', '189', 'Gwen Stefani', 16, 'https://cdns-preview-0.dzcdn.net/stream/c-011e8a102fe6c647ab40b1d21481e5f1-9.mp3', 'Gwen Stefani, ', 0, 1999, ' Rhythm and blues, Hardcore punk, Reggae', 0, 0, 0),
(96, 'let_me_reintroduce_myself_gwen_stefani3', 'Let Me Reintroduce Myself', '', 'Let Me Reintroduce Myself', 'https://e-cdns-images.dzcdn.net/images/cover/445b48d50966851df8115d73af8ea11d/500x500-000000-80-0-0.jpg', '191', 'Gwen Stefani', 16, 'https://cdns-preview-c.dzcdn.net/stream/c-c07ed1b1b884ada087da7d8e31942289-4.mp3', 'Gwen Stefani, ', 0, 2009, ' World music, Hardcore punk, Funk, Easy listening, Jazz', 0, 0, 0),
(97, 'luxurious_gwen_stefani5', 'Luxurious', '', 'Love Angel Music Baby', 'https://e-cdns-images.dzcdn.net/images/cover/0dbe967d19dcf74cf7e2ad7e5c350bc4/500x500-000000-80-0-0.jpg', '264', 'Gwen Stefani', 16, 'https://cdns-preview-5.dzcdn.net/stream/c-592df62add14a0cce0f592dd41addd0d-11.mp3', 'Gwen Stefani, ', 0, 1995, ' Latin music, Soundtrack, Pop rock', 0, 0, 0),
(98, 'can_i_have_it_like_that_pharrell_williams2', 'Can I Have It Like That', '(Album Version Edited)', 'In My Mind', 'https://e-cdns-images.dzcdn.net/images/cover/117a5d81dabd7074b2f880627cb4130a/500x500-000000-80-0-0.jpg', '235', 'Pharrell Williams', 24, 'https://cdns-preview-2.dzcdn.net/stream/c-21596a29ab7f62f77aca6580db82b28d-4.mp3', 'Pharrell Williams, Gwen Stefani, ', 0, 2017, ' Music of Latin America, Musical theatre, Rock, Country music, Easy listening', 0, 0, 0),
(99, 'slow_clap_gwen_stefani3', 'Slow Clap', '', 'Slow Clap', 'https://e-cdns-images.dzcdn.net/images/cover/900cb4e536101b0eb77fe1e7b816dbd8/500x500-000000-80-0-0.jpg', '191', 'Gwen Stefani', 16, 'https://cdns-preview-f.dzcdn.net/stream/c-f3007f4be73a60f0d6e3aaac6937bc84-4.mp3', 'Gwen Stefani, Saweetie, ', 0, 2008, ' Industrial music, Hip hop music, Musical theatre, Music of Latin America', 0, 0, 0),
(100, 'yeah!_feat._lil_jon_&_ludacris_usher0', 'Yeah! (feat. Lil Jon & Ludacris)', '', 'Confessions (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/b89c20012cccb051c8a4e04d98386f95/500x500-000000-80-0-0.jpg', '250', 'Usher', 17, 'https://cdns-preview-0.dzcdn.net/stream/c-0b5b115091f6e29c35a6929609115b2f-9.mp3', 'Usher, Lil Jon, Ludacris, ', 0, 1973, ' Classical music, UK garage, Popular music, American folk music', 0, 0, 0),
(101, 'jingle_bells_gwen_stefani0', 'Jingle Bells', '', 'You Make It Feel Like Christmas', 'https://e-cdns-images.dzcdn.net/images/cover/e0599726036620ac8af62815201608ba/500x500-000000-80-0-0.jpg', '177', 'Gwen Stefani', 16, 'https://cdns-preview-4.dzcdn.net/stream/c-4a246742a07ccc0713baee569dbda697-7.mp3', 'Gwen Stefani, ', 0, 1981, ' Music of Latin America, Electro, Industrial music', 0, 0, 0),
(102, 'my_boo_usher3', 'My Boo', '', 'My Boo', 'https://e-cdns-images.dzcdn.net/images/cover/4c81883cd6884abb66cee03c49d8bbba/500x500-000000-80-0-0.jpg', '223', 'Usher', 17, 'https://cdns-preview-c.dzcdn.net/stream/c-c291c14c754829bdc290ddb7b37e55be-5.mp3', 'Usher, Alicia Keys, ', 0, 2002, ' Punk rock, World music, Disco, Electronic dance music, Electro', 0, 0, 0),
(103, 'u_remind_me_usher0', 'U Remind Me', '', '8701', 'https://e-cdns-images.dzcdn.net/images/cover/b1243a7f89bec5d034b82fec489f7221/500x500-000000-80-0-0.jpg', '266', 'Usher', 17, 'https://cdns-preview-f.dzcdn.net/stream/c-f3658cc6c8445c7510eda8ef231dc3c9-8.mp3', 'Usher, ', 0, 1973, ' Electro, American folk music, Music of the United States, Jungle music, Psychedelic rock', 0, 0, 0),
(104, 'omg_feat._will.i.am_usher3', 'OMG (feat. will.i.am)', '', 'Raymond v Raymond (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/f1aa5306342e4098b0cc8328bff78b75/500x500-000000-80-0-0.jpg', '269', 'Usher', 17, 'https://cdns-preview-4.dzcdn.net/stream/c-4a7c5422713988354ad08ba65c48cc20-6.mp3', 'Usher, will.i.am, ', 0, 2016, ' Musical theatre, Electronic music, Music of the United States, Blues', 0, 0, 0),
(105, 'you_make_me_wanna..._usher3', 'You Make Me Wanna...', '', 'My Way', 'https://e-cdns-images.dzcdn.net/images/cover/b74f9d26cdd371a826dbde0b488f6b79/500x500-000000-80-0-0.jpg', '219', 'Usher', 17, 'https://cdns-preview-0.dzcdn.net/stream/c-0a7bedeb1da75ebc87c7e9244287443b-6.mp3', 'Usher, ', 0, 2022, ' Country music, Heavy metal, Punk rock, Popular music, Blues', 0, 0, 0),
(106, 'too_much_feat._usher_marshmello7', 'Too Much (feat. Usher)', '', 'Too Much (feat. Usher)', 'https://e-cdns-images.dzcdn.net/images/cover/724257ab148d697ad53bc47897365cdf/500x500-000000-80-0-0.jpg', '165', 'Marshmello', 24, 'https://cdns-preview-f.dzcdn.net/stream/c-f7991ca6a8844da8fd42f17c1cc4aedb-3.mp3', 'Marshmello, Imanbek, Usher, ', 0, 1977, ' Country music, Latin music, New wave, Industrial music', 0, 0, 0),
(107, 'love_in_this_club_feat._young_jeezy_usher0', 'Love in This Club (feat. Young Jeezy)', '', 'Here I Stand', 'https://e-cdns-images.dzcdn.net/images/cover/4e12ebffaef7555770c0fc35f92be3b4/500x500-000000-80-0-0.jpg', '259', 'Usher', 17, 'https://cdns-preview-8.dzcdn.net/stream/c-8c8bae6730e2a5d12d2c507e05d63e28-6.mp3', 'Usher, Young Jeezy, ', 0, 2003, ' Psychedelic rock, Classical music, Disco', 0, 0, 0),
(108, 'u_got_it_bad_usher9', 'U Got It Bad', '', '8701', 'https://e-cdns-images.dzcdn.net/images/cover/b1243a7f89bec5d034b82fec489f7221/500x500-000000-80-0-0.jpg', '247', 'Usher', 17, 'https://cdns-preview-c.dzcdn.net/stream/c-c311d17327ded900adfec17b50a741e7-9.mp3', 'Usher, ', 0, 1973, ' Experimental music, Instrumental, Punk rock, Indie rock', 0, 0, 0),
(109, 'confessions_part_ii_usher4', 'Confessions Part II', '', 'Confessions', 'https://e-cdns-images.dzcdn.net/images/cover/1a727988b4762a5bd8f05e064753d381/500x500-000000-80-0-0.jpg', '229', 'Usher', 17, 'https://cdns-preview-2.dzcdn.net/stream/c-22d8736517bb7384b40ef450026e8d17-5.mp3', 'Usher, ', 0, 2004, ' Dubstep, Musical theatre, Pop rock, Jazz fusion, House music', 0, 0, 0),
(110, 'scream_usher4', 'Scream', '', 'Looking 4 Myself (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/adcd78c01e7cff0dcdc64dfcaaeb7b2a/500x500-000000-80-0-0.jpg', '234', 'Usher', 17, 'https://cdns-preview-c.dzcdn.net/stream/c-cb70ca70f6cbdd731835377c8be489d5-5.mp3', 'Usher, ', 0, 2017, ' Electro, Classical music, Indie rock, Dance music, Hardcore punk', 0, 0, 0),
(111, 'burn_usher7', 'Burn', '', 'Confessions (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/b89c20012cccb051c8a4e04d98386f95/500x500-000000-80-0-0.jpg', '231', 'Usher', 17, 'https://cdns-preview-f.dzcdn.net/stream/c-f7f85e7e120d1b5e74ac8d245012f961-9.mp3', 'Usher, ', 0, 2011, ' Musical theatre, Popular music, Indie rock, Instrumental, Soundtrack', 0, 0, 0),
(112, 'bad_girl_usher0', 'Bad Girl', '', 'Confessions (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/b89c20012cccb051c8a4e04d98386f95/500x500-000000-80-0-0.jpg', '261', 'Usher', 17, 'https://cdns-preview-5.dzcdn.net/stream/c-5f0cdf72ed36002ce7ba750d274bf424-10.mp3', 'Usher, ', 0, 2001, ' Music of Latin America, Ambient music, House music, Electronic music, American folk music', 0, 0, 0),
(113, 'climax_usher6', 'Climax', '', 'Looking 4 Myself (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/adcd78c01e7cff0dcdc64dfcaaeb7b2a/500x500-000000-80-0-0.jpg', '232', 'Usher', 17, 'https://cdns-preview-7.dzcdn.net/stream/c-7b1960833c417807605e928de8e8ea7a-5.mp3', 'Usher, ', 0, 1985, ' New-age music, American folk music, Electronic dance music', 0, 0, 0),
(114, 'confessions_part_ii_usher1', 'Confessions Part II', '', 'Confessions (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/b89c20012cccb051c8a4e04d98386f95/500x500-000000-80-0-0.jpg', '211', 'Usher', 17, 'https://cdns-preview-8.dzcdn.net/stream/c-88a4322f8b83e0798409146566e708d8-10.mp3', 'Usher, ', 0, 1990, ' Ambient music, Music of Latin America, Music of Asia', 0, 0, 0),
(115, 'nice_&_slow_usher4', 'Nice & Slow', '(Radio Version)', 'My Way', 'https://e-cdns-images.dzcdn.net/images/cover/b74f9d26cdd371a826dbde0b488f6b79/500x500-000000-80-0-0.jpg', '227', 'Usher', 17, 'https://cdns-preview-a.dzcdn.net/stream/c-a12a25df987efc9e721319ca8baff4e1-6.mp3', 'Usher, ', 0, 2003, ' Pop music, Electronic music, Punk rock, Reggae, American folk music', 0, 0, 0),
(116, 'no_limit_feat._young_thug_usher4', 'No Limit (feat. Young Thug)', '', 'Hard II Love', 'https://e-cdns-images.dzcdn.net/images/cover/bbcd049e7cb1e0955707a6e51b0790d4/500x500-000000-80-0-0.jpg', '228', 'Usher', 17, 'https://cdns-preview-5.dzcdn.net/stream/c-5e5190203f515159c6cc1d40c0643f0a-7.mp3', 'Usher, Young Thug, ', 0, 1983, ' Heavy metal, World music, UK garage, Folk music, Soundtrack', 0, 0, 0),
(117, 'there_goes_my_baby_usher7', 'There Goes My Baby', '', 'Raymond v Raymond (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/f1aa5306342e4098b0cc8328bff78b75/500x500-000000-80-0-0.jpg', '281', 'Usher', 17, 'https://cdns-preview-3.dzcdn.net/stream/c-39c3483b71dad6c97cad9ac352d77303-7.mp3', 'Usher, ', 0, 1994, ' Easy listening, Electro, Indie rock, Blues, Rock', 0, 0, 0),
(118, 'burn_usher6', 'Burn', '', 'Burn', 'https://e-cdns-images.dzcdn.net/images/cover/793eee583171589439d74d446ba1c6c9/500x500-000000-80-0-0.jpg', '256', 'Usher', 17, 'https://cdns-preview-4.dzcdn.net/stream/c-468a7bb96fc1cefd731c8231db1328dd-7.mp3', 'Usher, ', 0, 2002, ' Alternative rock, Classical music, Reggae, Country music, Instrumental', 0, 0, 0),
(119, 'making_love_into_the_night_usher8', 'Making Love (Into the Night)', '', 'Raymond v Raymond (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/f1aa5306342e4098b0cc8328bff78b75/500x500-000000-80-0-0.jpg', '216', 'Usher', 17, 'https://cdns-preview-2.dzcdn.net/stream/c-2d2e85d49b67a39521d422f8ef92339a-10.mp3', 'Usher, ', 0, 1994, ' Funk, Musical theatre, Reggae', 0, 0, 0),
(120, 'california_from_songland_feat._tyga_usher3', 'California (from Songland) (feat. Tyga)', '', 'California (from Songland) (feat. Tyga)', 'https://e-cdns-images.dzcdn.net/images/cover/b022a6ee12169d1a943ddddc589232ef/500x500-000000-80-0-0.jpg', '175', 'Usher', 17, 'https://cdns-preview-9.dzcdn.net/stream/c-952a5151ac47176657b3961569c979cf-3.mp3', 'Usher, Tyga, ', 0, 2012, ' Psychedelic rock, Classical music, UK garage, Techno', 0, 0, 0),
(121, 'morgane_de_toi_renaud8', 'Morgane de toi', '', '50 + belles chansons', 'https://e-cdns-images.dzcdn.net/images/cover/03f5e9b65faa1af03c1056af4b91a7e1/500x500-000000-80-0-0.jpg', '373', 'Renaud', 21, 'https://cdns-preview-c.dzcdn.net/stream/c-cd3883d8f4d131f0b1f3ba241d873f10-7.mp3', 'Renaud, ', 0, 2011, ' Electronic dance music, Industrial music, Easy listening, Classical music', 0, 0, 0),
(122, 'dÃ¨s_que_le_vent_soufflera_renaud8', 'DÃ¨s que le vent soufflera', '', '50 + belles chansons', 'https://e-cdns-images.dzcdn.net/images/cover/03f5e9b65faa1af03c1056af4b91a7e1/500x500-000000-80-0-0.jpg', '265', 'Renaud', 21, 'https://cdns-preview-f.dzcdn.net/stream/c-fd409087488a3488223fac892b2dc6c9-6.mp3', 'Renaud, ', 0, 1977, ' Soul music, Easy listening, Soundtrack, Dance music, Funk', 0, 0, 0),
(123, 'manu_renaud3', 'Manu', '', '50 + belles chansons', 'https://e-cdns-images.dzcdn.net/images/cover/03f5e9b65faa1af03c1056af4b91a7e1/500x500-000000-80-0-0.jpg', '161', 'Renaud', 21, 'https://cdns-preview-9.dzcdn.net/stream/c-986075d61434d9a810d1d212c1932999-7.mp3', 'Renaud, ', 0, 1980, ' Jungle music, Jazz fusion, New-age music, Dance music', 0, 0, 0),
(124, 'dans_mon_h.l.m._renaud2', 'Dans mon H.L.M.', '', '50 + belles chansons', 'https://e-cdns-images.dzcdn.net/images/cover/03f5e9b65faa1af03c1056af4b91a7e1/500x500-000000-80-0-0.jpg', '364', 'Renaud', 21, 'https://cdns-preview-0.dzcdn.net/stream/c-08bda252f36622f4ef61b94cc84a2ca1-6.mp3', 'Renaud, ', 0, 1995, ' Funk, Jazz, Soundtrack', 0, 0, 0),
(125, 'hexagone_renaud2', 'Hexagone', '', '50 + belles chansons', 'https://e-cdns-images.dzcdn.net/images/cover/03f5e9b65faa1af03c1056af4b91a7e1/500x500-000000-80-0-0.jpg', '330', 'Renaud', 21, 'https://cdns-preview-9.dzcdn.net/stream/c-93c768b47b54c1d295f92f59990f732a-6.mp3', 'Renaud, ', 0, 1982, ' Musical theatre, House music, Folk music', 0, 0, 0);
INSERT INTO `music` (`id`, `musiccode`, `title`, `version`, `album`, `img`, `duration`, `artist`, `artistid`, `preview`, `contributor`, `status`, `releasedate`, `genre`, `rating`, `ratingcount`, `comments`) VALUES
(126, 'lose_yourself_to_dance_feat._pharrell_williams_daft_punk2', 'Lose Yourself to Dance (feat. Pharrell Williams)', '', 'Random Access Memories', 'https://e-cdns-images.dzcdn.net/images/cover/b298094528702627877720d0be4448b5/500x500-000000-80-0-0.jpg', '353', 'Daft Punk', 27, 'https://cdns-preview-9.dzcdn.net/stream/c-9ecd0689abbd6a439e4693f15d6ae37d-9.mp3', 'Daft Punk, Pharrell Williams, ', 0, 1987, ' Easy listening, Blues, Music of Latin America, Dubstep, Electro', 0, 0, 0),
(127, 'dragostea_din_tei_o-zone4', 'Dragostea din tei', '', 'DiscO-Zone', 'https://e-cdns-images.dzcdn.net/images/cover/75a7a0c9d2afaad5aaa4d67249eaea29/500x500-000000-80-0-0.jpg', '215', 'O-Zone', 22, 'https://cdns-preview-9.dzcdn.net/stream/c-9672e6701dd828d21cba6d58418f846e-4.mp3', 'O-Zone, ', 0, 1986, ' Hardcore punk, Psychedelic rock, Classical music', 0, 0, 0),
(128, 'sandstorm_darude2', 'Sandstorm', '', 'Before the Storm', 'https://e-cdns-images.dzcdn.net/images/cover/4813de733c6fb05c90187ab5cf3e13c7/500x500-000000-80-0-0.jpg', '225', 'Darude', 25, 'https://cdns-preview-3.dzcdn.net/stream/c-39b64a9bd49210d41efe8fe5e42c062a-6.mp3', 'Darude, ', 0, 2013, ' UK garage, New wave, Folk music', 0, 0, 0),
(129, 'get_lucky_feat._pharrell_williams_&_nile_rodgers_daft_punk5', 'Get Lucky (feat. Pharrell Williams & Nile Rodgers)', '(Radio Edit)', 'Get Lucky (feat. Pharrell Williams & Nile Rodgers) (Radio Edit)', 'https://e-cdns-images.dzcdn.net/images/cover/bc49adb87758e0c8c4e508a9c5cce85d/500x500-000000-80-0-0.jpg', '248', 'Daft Punk', 27, 'https://cdns-preview-b.dzcdn.net/stream/c-bdab5f5d846a91f14a01b75731dbc22a-7.mp3', 'Daft Punk, Pharrell Williams, Nile Rodgers, ', 0, 2003, ' Rhythm and blues, Popular music, Easy listening, Pop rock', 0, 0, 0),
(130, 'instant_crush_feat._julian_casablancas_daft_punk8', 'Instant Crush (feat. Julian Casablancas)', '', 'Random Access Memories', 'https://e-cdns-images.dzcdn.net/images/cover/b298094528702627877720d0be4448b5/500x500-000000-80-0-0.jpg', '337', 'Daft Punk', 27, 'https://cdns-preview-7.dzcdn.net/stream/c-7d29f91f6875494c4104a0c436581293-9.mp3', 'Daft Punk, Julian Casablancas, ', 0, 1974, ' Dance music, Rhythm and blues, Instrumental', 0, 0, 0),
(131, 'get_lucky_feat._pharrell_williams_&_nile_rodgers_daft_punk4', 'Get Lucky (feat. Pharrell Williams & Nile Rodgers)', '', 'Random Access Memories', 'https://e-cdns-images.dzcdn.net/images/cover/b298094528702627877720d0be4448b5/500x500-000000-80-0-0.jpg', '369', 'Daft Punk', 27, 'https://cdns-preview-8.dzcdn.net/stream/c-853d19a12a694ccc74b2501acd802500-6.mp3', 'Daft Punk, Pharrell Williams, Nile Rodgers, ', 0, 2016, ' World music, Easy listening, Music of Asia, Singing, UK garage', 0, 0, 0),
(132, 'within_daft_punk5', 'Within', '', 'Random Access Memories', 'https://e-cdns-images.dzcdn.net/images/cover/b298094528702627877720d0be4448b5/500x500-000000-80-0-0.jpg', '228', 'Daft Punk', 27, 'https://cdns-preview-e.dzcdn.net/stream/c-e99ecb378f49c5201daa93bfbc58d1c1-9.mp3', 'Daft Punk, ', 0, 2007, ' UK garage, Electro, Indie rock, Experimental music', 0, 0, 0),
(133, 'give_life_back_to_music_daft_punk7', 'Give Life Back to Music', '', 'Random Access Memories', 'https://e-cdns-images.dzcdn.net/images/cover/b298094528702627877720d0be4448b5/500x500-000000-80-0-0.jpg', '275', 'Daft Punk', 27, 'https://cdns-preview-f.dzcdn.net/stream/c-f91f04f9a14b6589f4493458cc951f2a-9.mp3', 'Daft Punk, ', 0, 1986, ' Easy listening, Techno, Latin music, Punk rock', 0, 0, 0),
(134, 'touch_feat._paul_williams_daft_punk7', 'Touch (feat. Paul Williams)', '', 'Random Access Memories', 'https://e-cdns-images.dzcdn.net/images/cover/b298094528702627877720d0be4448b5/500x500-000000-80-0-0.jpg', '498', 'Daft Punk', 27, 'https://cdns-preview-2.dzcdn.net/stream/c-2500784207f376183212c7f64c74cc4c-5.mp3', 'Daft Punk, Paul Williams, ', 0, 1989, ' Heavy metal, Experimental music, Jazz, Funk, Rock', 0, 0, 0),
(135, 'motherboard_daft_punk9', 'Motherboard', '', 'Random Access Memories', 'https://e-cdns-images.dzcdn.net/images/cover/b298094528702627877720d0be4448b5/500x500-000000-80-0-0.jpg', '341', 'Daft Punk', 27, 'https://cdns-preview-1.dzcdn.net/stream/c-1346b0c10d198bff2757506b2f183d1d-9.mp3', 'Daft Punk, ', 0, 2017, ' Soundtrack, Electro, Techno, Trance music, Jungle music', 0, 0, 0),
(136, 'outlands_daft_punk1', 'Outlands', '', 'TRON: Legacy - The Complete Edition (Original Motion Picture Soundtrack)', 'https://e-cdns-images.dzcdn.net/images/cover/313e8a988614445ab1ad508da2805187/500x500-000000-80-0-0.jpg', '162', 'Daft Punk', 27, 'https://cdns-preview-f.dzcdn.net/stream/c-f250a19785167b090448713ee15509fc-7.mp3', 'Daft Punk, ', 0, 2021, ' Industrial music, Experimental music, Easy listening', 0, 0, 0),
(137, 'around_the_world_daft_punk3', 'Around The World', '(RADIO EDIT)', 'Virgin Records: 40 Years Of Disruptions', 'https://e-cdns-images.dzcdn.net/images/cover/710b86802f6969b3f0f81a48cc000fcd/500x500-000000-80-0-0.jpg', '239', 'Daft Punk', 27, 'https://cdns-preview-4.dzcdn.net/stream/c-4218a7a9987f13d7fd6940a66a27a5d8-10.mp3', 'Daft Punk, ', 0, 1985, ' Pop music, Instrumental, Easy listening, Trance music', 0, 0, 0),
(138, 'get_lucky_daft_punk4', 'Get Lucky', '(Daft Punk Remix)', 'Get Lucky', 'https://e-cdns-images.dzcdn.net/images/cover/b1b2ac88710b0c721a680b9f9df947d7/500x500-000000-80-0-0.jpg', '632', 'Daft Punk', 27, 'https://cdns-preview-b.dzcdn.net/stream/c-bb3b25a1cff0e9a70666e67b5ac10c9f-5.mp3', 'Daft Punk, Pharrell Williams, Nile Rodgers, ', 0, 2004, ' Soul music, Musical theatre, Rhythm and blues', 0, 0, 0),
(139, 'axel_f_crazy_frog2', 'Axel F', '(Radio Edit)', 'Axel F', 'https://e-cdns-images.dzcdn.net/images/cover/e393adcff4e78056f9265eeaf00346dc/500x500-000000-80-0-0.jpg', '174', 'Crazy Frog', 28, 'https://cdns-preview-b.dzcdn.net/stream/c-b1c646ae704a0a3761de960151837196-6.mp3', 'Crazy Frog, ', 0, 2006, ' Electro, House music, Soundtrack, Experimental music', 0, 0, 0),
(140, 'face_Ã _la_mer_calogero9', 'Face Ã  la mer', '', 'Calog3ro', 'https://e-cdns-images.dzcdn.net/images/cover/fbecebeb55edda6227dc099e2d1648c2/500x500-000000-80-0-0.jpg', '223', 'Calogero', 29, 'https://cdns-preview-b.dzcdn.net/stream/c-bcf7661514ed36cd98501162f4c7ca76-6.mp3', 'Calogero, Passi, ', 0, 2015, ' Funk, Soul music, Musical theatre', 0, 0, 0),
(141, 'en_apesanteur_calogero7', 'En Apesanteur', '(Single Version)', 'Calogero', 'https://e-cdns-images.dzcdn.net/images/cover/91de997e6603ab936f999414be5412c2/500x500-000000-80-0-0.jpg', '203', 'Calogero', 29, 'https://cdns-preview-7.dzcdn.net/stream/c-7e48aa4adce657123dd6c91efb4515a3-6.mp3', 'Calogero, ', 0, 1986, ' Punk rock, Dubstep, Electronic dance music', 0, 0, 0),
(142, 'le_temps_calogero1', 'Le temps', '(Bonus)', 'Centre ville', 'https://e-cdns-images.dzcdn.net/images/cover/4a6d67795566d477f811fe4f02a46d21/500x500-000000-80-0-0.jpg', '197', 'Calogero', 29, 'https://cdns-preview-a.dzcdn.net/stream/c-a5325b06aec3ce2309a585e49e1f311f-5.mp3', 'Calogero, Rufus Wainwright, ', 0, 2007, ' Dance music, Music of the United States, Indie rock', 0, 0, 0),
(143, 'double_papa_aldebert3', 'Double papa', '', 'Double papa', 'https://e-cdns-images.dzcdn.net/images/cover/db01eee2dfb373f19882f63b6dc2250c/500x500-000000-80-0-0.jpg', '208', 'Aldebert', 24, 'https://cdns-preview-5.dzcdn.net/stream/c-5cc732ac13e1c6889d9cf92418dacb45-3.mp3', 'Aldebert, Calogero, ', 0, 1991, ' Disco, Electro, New-age music, Singing', 0, 0, 0),
(144, 'opus_eric_prydz8', 'Opus', '', 'Opus', 'https://e-cdns-images.dzcdn.net/images/cover/a4a341dbd560eb950280d18db51dac12/500x500-000000-80-0-0.jpg', '543', 'Eric Prydz', 30, 'https://cdns-preview-6.dzcdn.net/stream/c-62797afa34026a4d65231e8969a72dc4-6.mp3', 'Eric Prydz, ', 0, 1990, ' Trance music, Experimental music, Dance music, Hardcore punk, Techno', 0, 0, 0),
(145, 'pjanoo_eric_prydz9', 'Pjanoo', '(Radio Edit)', 'Pjanoo', 'https://e-cdns-images.dzcdn.net/images/cover/69793a6778914a05537620708a6dfd52/500x500-000000-80-0-0.jpg', '157', 'Eric Prydz', 30, 'https://cdns-preview-d.dzcdn.net/stream/c-d2f4714f7228ebe0d9b06e7a97ad0fdf-6.mp3', 'Eric Prydz, ', 0, 1975, ' Easy listening, Hardcore punk, Jazz fusion, Dance music, World music', 0, 0, 0),
(146, 'complicated_avril_lavigne3', 'Complicated', '', 'Let Go', 'https://e-cdns-images.dzcdn.net/images/cover/1130d6301d5e87976279ea2f706fcc26/500x500-000000-80-0-0.jpg', '244', 'Avril Lavigne', 35, 'https://cdns-preview-4.dzcdn.net/stream/c-49955decd1496e8ffbe8505d933b879b-6.mp3', 'Avril Lavigne, ', 0, 1990, ' UK garage, American folk music, Electronic music, Funk', 0, 0, 0),
(147, 'sk8er_boi_avril_lavigne7', 'Sk8er Boi', '', 'Let Go', 'https://e-cdns-images.dzcdn.net/images/cover/1130d6301d5e87976279ea2f706fcc26/500x500-000000-80-0-0.jpg', '204', 'Avril Lavigne', 35, 'https://cdns-preview-8.dzcdn.net/stream/c-8140a262a11eebba8ee69ad2f3d00b70-6.mp3', 'Avril Lavigne, ', 0, 2011, ' Music of the United States, Pop rock, Blues, Hip hop music, Musical theatre', 0, 0, 0),
(148, 'girlfriend_avril_lavigne6', 'Girlfriend', '', 'Girlfriend EP', 'https://e-cdns-images.dzcdn.net/images/cover/00a46b9642435935f18df29c937eb0e2/500x500-000000-80-0-0.jpg', '217', 'Avril Lavigne', 35, 'https://cdns-preview-6.dzcdn.net/stream/c-6143283949a3f7b54db737b6f245dbf5-7.mp3', 'Avril Lavigne, ', 0, 1982, ' Soundtrack, Psychedelic rock, Soul music', 0, 0, 0),
(149, 'what_the_hell_avril_lavigne2', 'What the Hell', '', 'Goodbye Lullaby (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/4d966d12d78edb57e435a9b811150b5c/500x500-000000-80-0-0.jpg', '220', 'Avril Lavigne', 35, 'https://cdns-preview-0.dzcdn.net/stream/c-019d558ef53261b09f92cabeda4fa3f9-6.mp3', 'Avril Lavigne, ', 0, 2004, ' New wave, Hip hop music, Pop rock', 0, 0, 0),
(150, 'wish_you_were_here_avril_lavigne6', 'Wish You Were Here', '', 'Goodbye Lullaby (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/4d966d12d78edb57e435a9b811150b5c/500x500-000000-80-0-0.jpg', '225', 'Avril Lavigne', 35, 'https://cdns-preview-1.dzcdn.net/stream/c-179df20e4947dac4cfdc801dabea5492-6.mp3', 'Avril Lavigne, ', 0, 1983, ' Folk music, New wave, Alternative rock, Trance music, Psychedelic rock', 0, 0, 0),
(151, 'let_me_go_feat._chad_kroeger_avril_lavigne9', 'Let Me Go (feat. Chad Kroeger)', '', 'Avril Lavigne (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/fbf7db070409e881a1580ee7dcd37a79/500x500-000000-80-0-0.jpg', '267', 'Avril Lavigne', 35, 'https://cdns-preview-a.dzcdn.net/stream/c-ac901aaf79eff8d1f3196b0e7d178276-5.mp3', 'Avril Lavigne, Chad Kroeger, ', 0, 2002, ' Electro, Classical music, Industrial music', 0, 0, 0),
(152, 'losing_grip_avril_lavigne2', 'Losing Grip', '', 'Let Go', 'https://e-cdns-images.dzcdn.net/images/cover/1130d6301d5e87976279ea2f706fcc26/500x500-000000-80-0-0.jpg', '233', 'Avril Lavigne', 35, 'https://cdns-preview-7.dzcdn.net/stream/c-7ff598b4c8cbeeb848040176185fcbee-6.mp3', 'Avril Lavigne, ', 0, 2004, ' Psychedelic rock, Jungle music, Easy listening', 0, 0, 0),
(153, 'flames_feat._avril_lavigne_mod_sun4', 'Flames (feat. Avril Lavigne)', '', 'Internet Killed The Rockstar', 'https://e-cdns-images.dzcdn.net/images/cover/04f6f44e17401fb9ebeebc347997dae8/500x500-000000-80-0-0.jpg', '151', 'Mod Sun', 24, 'https://cdns-preview-1.dzcdn.net/stream/c-1c5df61553b2efc4fca94e9220a60a76-4.mp3', 'Mod Sun, Avril Lavigne, ', 0, 2018, ' Trance music, Singing, Music of the United States, Music of Asia', 0, 0, 0),
(154, 'g_r_o_w_willow2', 'G R O W', '', 'lately I feel EVERYTHING', 'https://e-cdns-images.dzcdn.net/images/cover/86a1ffce555d3d19df084ebb88982f2a/500x500-000000-80-0-0.jpg', '129', 'WILLOW', 24, 'https://cdns-preview-0.dzcdn.net/stream/c-079a3900c2f6b66923a732b49339e6c6-4.mp3', 'WILLOW, Avril Lavigne, Travis Barker, ', 0, 2010, ' Soul music, Reggae, Experimental music, Rhythm and blues', 0, 0, 0),
(155, 'rock_n_roll_avril_lavigne7', 'Rock N Roll', '', 'Avril Lavigne (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/fbf7db070409e881a1580ee7dcd37a79/500x500-000000-80-0-0.jpg', '206', 'Avril Lavigne', 35, 'https://cdns-preview-7.dzcdn.net/stream/c-7d73350aa9f4fead6f5329757f88c2dd-5.mp3', 'Avril Lavigne, ', 0, 1974, ' Soul music, Rhythm and blues, New-age music', 0, 0, 0),
(156, 'bad_girl_feat._marilyn_manson_avril_lavigne9', 'Bad Girl (feat. Marilyn Manson)', '', 'Avril Lavigne (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/fbf7db070409e881a1580ee7dcd37a79/500x500-000000-80-0-0.jpg', '174', 'Avril Lavigne', 35, 'https://cdns-preview-7.dzcdn.net/stream/c-73d8d67d9ed6fab3e1e38dfec1f93649-5.mp3', 'Avril Lavigne, Marilyn Manson, ', 0, 1998, ' Instrumental, Experimental music, Dance music', 0, 0, 0),
(157, 'my_happy_ending_avril_lavigne1', 'My Happy Ending', '', 'Under My Skin', 'https://e-cdns-images.dzcdn.net/images/cover/438e2e737a239379ee4a52e4fb0cf675/500x500-000000-80-0-0.jpg', '242', 'Avril Lavigne', 35, 'https://cdns-preview-c.dzcdn.net/stream/c-c91f8c946cc44590d0818d5450629f51-6.mp3', 'Avril Lavigne, ', 0, 1994, ' Hardcore punk, Hip hop music, Instrumental, House music', 0, 0, 0),
(158, 'give_you_what_you_like_avril_lavigne5', 'Give You What You Like', '', 'Avril Lavigne (Expanded Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/fbf7db070409e881a1580ee7dcd37a79/500x500-000000-80-0-0.jpg', '225', 'Avril Lavigne', 35, 'https://cdns-preview-f.dzcdn.net/stream/c-f970538e157cb20a58c187041a5a7174-5.mp3', 'Avril Lavigne, ', 0, 1977, ' Music of Asia, Industrial music, Hardcore punk, Hip hop music, Indie rock', 0, 0, 0),
(159, 'anything_but_ordinary_avril_lavigne0', 'Anything but Ordinary', '', 'Let Go', 'https://e-cdns-images.dzcdn.net/images/cover/1130d6301d5e87976279ea2f706fcc26/500x500-000000-80-0-0.jpg', '251', 'Avril Lavigne', 35, 'https://cdns-preview-e.dzcdn.net/stream/c-ea0fdee11868d3c8b0214664d412d7f0-8.mp3', 'Avril Lavigne, ', 0, 1996, ' UK garage, Pop rock, Classical music', 0, 0, 0),
(160, 'keep_holding_on_avril_lavigne8', 'Keep Holding On', '', 'Eragon: Music From The Motion Picture', 'https://e-cdns-images.dzcdn.net/images/cover/7067aaa3d1814d05cbd19eb249f3ec63/500x500-000000-80-0-0.jpg', '239', 'Avril Lavigne', 35, 'https://cdns-preview-1.dzcdn.net/stream/c-12f3f9f6daa08f3431fbb72a2db52b85-8.mp3', 'Avril Lavigne, ', 0, 1996, ' Industrial music, New wave, Jazz fusion, Jungle music', 0, 0, 0),
(161, 'flames_feat._avril_lavigne_[acoustic]_mod_sun6', 'Flames (feat. Avril Lavigne) [Acoustic]', '', 'Flames (feat. Avril Lavigne) [Acoustic]', 'https://e-cdns-images.dzcdn.net/images/cover/e0c3a38e9cd028eec03a81d1beaaf71f/500x500-000000-80-0-0.jpg', '147', 'Mod Sun', 24, 'https://cdns-preview-b.dzcdn.net/stream/c-b3f7806ed566aaf873f3f1317207b97c-4.mp3', 'Mod Sun, Avril Lavigne, ', 0, 2005, ' Funk, Musical theatre, UK garage', 0, 0, 0),
(162, 'barbie_girl_aqua1', 'Barbie Girl', '', 'Aquarium', 'https://e-cdns-images.dzcdn.net/images/cover/89c2dae2b498dc9ca9151324d02eca2d/500x500-000000-80-0-0.jpg', '197', 'Aqua', 36, 'https://cdns-preview-c.dzcdn.net/stream/c-ce59c8a004ae528ba4745f453eb428b6-10.mp3', 'Aqua, ', 0, 1986, ' Alternative rock, World music, Ambient music, Jazz fusion, Classical music', 0, 0, 0),
(163, 'all_the_things_she_said_t.a.t.u.2', 'All The Things She Said', '', 't.A.T.u. - The Best', 'https://e-cdns-images.dzcdn.net/images/cover/8841b5913fc52e3868f0ca4a7cb4342b/500x500-000000-80-0-0.jpg', '212', 't.A.T.u.', 37, 'https://cdns-preview-6.dzcdn.net/stream/c-63eea10a9fa3ed12f873649477499e61-9.mp3', 't.A.T.u., ', 0, 2021, ' Techno, Music of Latin America, Hardcore punk, Disco, Rock', 0, 0, 0),
(164, 'not_gonna_get_us_t.a.t.u.8', 'Not Gonna Get Us', '', 't.A.T.u. - The Best', 'https://e-cdns-images.dzcdn.net/images/cover/8841b5913fc52e3868f0ca4a7cb4342b/500x500-000000-80-0-0.jpg', '260', 't.A.T.u.', 37, 'https://cdns-preview-f.dzcdn.net/stream/c-fa593052b0e3aace6b7894a90195404b-9.mp3', 't.A.T.u., ', 0, 1989, ' Easy listening, Musical theatre, Hip hop music, Rhythm and blues, House music', 0, 0, 0),
(165, 'all_the_things_she_said_t.a.t.u.7', 'All The Things She Said', '(Radio Version)', 'Hits Of The Decade 2000-2009', 'https://e-cdns-images.dzcdn.net/images/cover/2a2fa199d821f46369b9fdee63575b66/500x500-000000-80-0-0.jpg', '208', 't.A.T.u.', 37, 'https://cdns-preview-7.dzcdn.net/stream/c-75623df74fbd10a68fdda17369105e07-12.mp3', 't.A.T.u., ', 0, 1978, ' Folk music, Classical music, Music of Asia, Alternative rock, Latin music', 0, 0, 0),
(166, 'lonely_akon3', 'Lonely', '', 'Trouble', 'https://e-cdns-images.dzcdn.net/images/cover/edcd5cfc4d0f6da3e7389e3507780348/500x500-000000-80-0-0.jpg', '235', 'Akon', 38, 'https://cdns-preview-f.dzcdn.net/stream/c-fbb90cde0769711ad943f38b50bef8d0-6.mp3', 'Akon, ', 0, 2011, ' Musical theatre, New-age music, Disco, Soul music, Blues', 0, 0, 0),
(167, 'smack_that_akon1', 'Smack That', '(Clean)', 'Konvicted', 'https://e-cdns-images.dzcdn.net/images/cover/bc4d98904d61661cc6d7dd53745340d0/500x500-000000-80-0-0.jpg', '212', 'Akon', 38, 'https://cdns-preview-c.dzcdn.net/stream/c-c45ae335d3f89e153c37217f4495cefc-4.mp3', 'Akon, Eminem, ', 0, 2019, ' Popular music, Music of the United States, Singing', 0, 0, 0),
(168, 'locked_up_akon2', 'Locked Up', '', 'Trouble', 'https://e-cdns-images.dzcdn.net/images/cover/edcd5cfc4d0f6da3e7389e3507780348/500x500-000000-80-0-0.jpg', '235', 'Akon', 38, 'https://cdns-preview-1.dzcdn.net/stream/c-186578cb3ab154052e4353159bfb69b7-6.mp3', 'Akon, ', 0, 2017, ' Hip hop music, Singing, Electronic music, Punk rock', 0, 0, 0),
(169, 'i_wanna_love_you_akon9', 'I Wanna Love You', '(Album Version Edited)', 'Konvicted', 'https://e-cdns-images.dzcdn.net/images/cover/bc4d98904d61661cc6d7dd53745340d0/500x500-000000-80-0-0.jpg', '247', 'Akon', 38, 'https://cdns-preview-7.dzcdn.net/stream/c-7b3236d048ec60d8c1135e945149890f-4.mp3', 'Akon, Snoop Dogg, ', 0, 1996, ' Electronic dance music, Pop music, Music of Asia, Folk music, Trance music', 0, 0, 0),
(170, 'sorry_blame_it_on_me_akon9', 'Sorry, Blame It On Me', '', 'Ultimate R&B 2008 (Double Album)', 'https://e-cdns-images.dzcdn.net/images/cover/839c51c8574ee5ea45e3f237741c4a46/500x500-000000-80-0-0.jpg', '295', 'Akon', 38, 'https://cdns-preview-f.dzcdn.net/stream/c-f838f92a395dc168f887c710f29e231c-14.mp3', 'Akon, ', 0, 1996, ' Latin music, Jazz, Instrumental, House music', 0, 0, 0),
(171, 'bananza_belly_dancer_akon5', 'Bananza (Belly Dancer)', '', 'Trouble', 'https://e-cdns-images.dzcdn.net/images/cover/edcd5cfc4d0f6da3e7389e3507780348/500x500-000000-80-0-0.jpg', '240', 'Akon', 38, 'https://cdns-preview-3.dzcdn.net/stream/c-382a077234652720a6246fdd1b9f1b6c-6.mp3', 'Akon, ', 0, 2003, ' Soul music, Alternative rock, Classical music, Rock, Electronic music', 0, 0, 0),
(172, 'uchi_wala_akon4', 'Uchi Wala', '', 'TumbaGobierno', 'https://e-cdns-images.dzcdn.net/images/cover/755daaed872779e7e04ef8455f85211c/500x500-000000-80-0-0.jpg', '192', 'Akon', 38, 'https://cdns-preview-d.dzcdn.net/stream/c-dae359cf456916ba83ee6be78fba6d73-3.mp3', 'Akon, Nicky Jam, Maffio, ', 0, 2009, ' Techno, New wave, Industrial music, Jazz, Alternative rock', 0, 0, 0),
(173, 'celebration_feat._ky-mani_marley_maffio7', 'Celebration (feat. Ky-Mani Marley)', '', 'Celebration (feat. Ky-Mani Marley)', 'https://e-cdns-images.dzcdn.net/images/cover/b123d1ab516103275935fa7a8dd792f8/500x500-000000-80-0-0.jpg', '231', 'Maffio', 24, 'https://cdns-preview-3.dzcdn.net/stream/c-33a3426de45aa83b6c553dc3b3ec5dc1-5.mp3', 'Maffio, Farruko, Akon, Ky-Mani Marley, ', 0, 2018, ' Electronic dance music, UK garage, Electronic music, New wave', 0, 0, 0),
(174, 'gun_session_akon0', 'Gun Session', '', 'Gun Session - Single', 'https://e-cdns-images.dzcdn.net/images/cover/4b844b9218633713356ebda33a4dee43/500x500-000000-80-0-0.jpg', '347', 'Akon', 38, 'https://cdns-preview-4.dzcdn.net/stream/c-4fe3ac77bbc68145251cd419d6e05ea6-2.mp3', 'Akon, Sizzla, Shabba Ranks, Vybz Kartel, ', 0, 1990, ' Electro, Pop music, Heavy metal', 0, 0, 0),
(175, 'my_life_dj_khaled6', 'My Life', '(Album Version)', 'We The Best Forever', 'https://e-cdns-images.dzcdn.net/images/cover/f5e82fd897a40dfca5cb78f681aa9a88/500x500-000000-80-0-0.jpg', '211', 'DJ Khaled', 24, 'https://cdns-preview-c.dzcdn.net/stream/c-c437da64791ebfd598c5149ba31efcc4-9.mp3', 'DJ Khaled, Akon, B.o.B, ', 0, 2022, ' Reggae, Psychedelic rock, American folk music, Popular music', 0, 0, 0),
(176, 'gangsta_akon5', 'Gangsta', '', 'Trouble', 'https://e-cdns-images.dzcdn.net/images/cover/edcd5cfc4d0f6da3e7389e3507780348/500x500-000000-80-0-0.jpg', '253', 'Akon', 38, 'https://cdns-preview-2.dzcdn.net/stream/c-2387f48689ed4e3dbfdc61e121b445c5-6.mp3', 'Akon, Daddy T, Picklehead, Devyne, ', 0, 1981, ' Funk, Latin music, World music, Jazz, House music', 0, 0, 0),
(177, 'smack_that_remix_akon0', 'Smack That (Remix)', '', 'Eminem Presents The Re-Up', 'https://e-cdns-images.dzcdn.net/images/cover/4213cb41530048f6ee114cbcc3ef4424/500x500-000000-80-0-0.jpg', '312', 'Akon', 38, 'https://cdns-preview-b.dzcdn.net/stream/c-ba95cdc3eac67371040a391f89c78aa9-2.mp3', 'Akon, Stat Quo, Bobby Creekwater, ', 0, 1988, ' Singing, World music, Reggae, Jazz, Trance music', 0, 0, 0),
(178, 'locked_up_akon3', 'Locked Up', '', 'Once Upon a Time in 2005', 'https://e-cdns-images.dzcdn.net/images/cover/63b8f4fc53f0f5e1b0a476ea1e0e6cfc/500x500-000000-80-0-0.jpg', '247', 'Akon', 38, 'https://cdns-preview-2.dzcdn.net/stream/c-2b0fc8e099bc1961552848d1f2df8ee9-7.mp3', 'Akon, ', 0, 2003, ' Psychedelic rock, Alternative rock, Jazz, Classical music', 0, 0, 0),
(179, 'eye_of_the_tiger_survivor9', 'Eye of the Tiger', '', '80s 100 Hits', 'https://e-cdns-images.dzcdn.net/images/cover/65689ec5162126a39cf7bff42a28ba50/500x500-000000-80-0-0.jpg', '227', 'Survivor', 39, 'https://cdns-preview-a.dzcdn.net/stream/c-a3f52ae310aa0ca6a75e2bd7f8abb5fe-6.mp3', 'Survivor, ', 0, 1983, ' American folk music, Soul music, Funk, Music of Latin America, World music', 0, 0, 0),
(180, 'burning_heart_survivor8', 'Burning Heart', '', 'Rocky IV', 'https://e-cdns-images.dzcdn.net/images/cover/e66b5d3a40f69690c1633afb73cc590c/500x500-000000-80-0-0.jpg', '230', 'Survivor', 39, 'https://cdns-preview-e.dzcdn.net/stream/c-e7d5e3a3026313aecf4219e14f143bc2-6.mp3', 'Survivor, ', 0, 2016, ' Electronic music, Hardcore punk, Jazz fusion, Instrumental', 0, 0, 0),
(181, 'the_rhythm_of_the_night_corona6', 'The Rhythm of the Night', '', 'The Rhythm of the Night', 'https://e-cdns-images.dzcdn.net/images/cover/cb7dc8ffabfb85536cbae5ca1801f39b/500x500-000000-80-0-0.jpg', '264', 'Corona', 40, 'https://cdns-preview-f.dzcdn.net/stream/c-f97416643cdf419ed612e60d8574a4ef-5.mp3', 'Corona, ', 0, 1986, ' Dance music, Music of Latin America, Electro, House music, Popular music', 0, 0, 0),
(182, 'paradoxx_6665', 'Paradoxx', '(New Radio Edit)', 'The Ways Are Mystic (The Ultimate Single Collection - Remastered)', 'https://e-cdns-images.dzcdn.net/images/cover/cb1db1ab08907d9e8cc332eb359357d0/500x500-000000-80-0-0.jpg', '203', '666', 41, 'https://cdns-preview-f.dzcdn.net/stream/c-f2e6a9feaddb5fbcd994e81e646d3801-4.mp3', '666, ', 0, 2008, ' Folk music, Pop music, Industrial music, Pop rock', 0, 0, 0),
(183, 'la_salsa_du_dACmon_le_grand_orchestre_du_splendid3', 'La salsa du dÃ©mon', '', 'La Salsa Du DÃ©mon', 'https://e-cdns-images.dzcdn.net/images/cover/e38921dff02426788b28bf91b9981647/500x500-000000-80-0-0.jpg', '279', 'Le Grand Orchestre du Splendid', 43, 'https://cdns-preview-1.dzcdn.net/stream/c-17d9f7f379be9d7a599fe870dfa05d72-8.mp3', 'Le Grand Orchestre du Splendid, ', 0, 2004, ' Electronic dance music, Blues, Music of the United States, Hip hop music', 0, 0, 0),
(184, 'je_cours_kyo4', 'Je cours', '', 'Le chemin', 'https://e-cdns-images.dzcdn.net/images/cover/945b9d0b6641b3e111db0c409949dc8b/500x500-000000-80-0-0.jpg', '180', 'Kyo', 44, 'https://cdns-preview-f.dzcdn.net/stream/c-fd34fea235629b51bcfb34dc48a99d06-6.mp3', 'Kyo, ', 0, 1986, ' Reggae, Electronic music, Experimental music, Electronic dance music', 0, 0, 0),
(185, 'on_the_floor_jennifer_lopez8', 'On The Floor', '', 'On The Floor', 'https://e-cdns-images.dzcdn.net/images/cover/d3df69d1356e25bf018df6cb66f8376b/500x500-000000-80-0-0.jpg', '230', 'Jennifer Lopez', 45, 'https://cdns-preview-f.dzcdn.net/stream/c-fa723eea4ab555bf88e2d3d3e59ace50-7.mp3', 'Jennifer Lopez, Pitbull, ', 0, 1990, ' Funk, Jungle music, Music of Asia, Blues', 0, 0, 0),
(186, 'get_right_jennifer_lopez8', 'Get Right', '', 'Rebirth', 'https://e-cdns-images.dzcdn.net/images/cover/372b8798e745e2831bdf31e2862cd3da/500x500-000000-80-0-0.jpg', '227', 'Jennifer Lopez', 45, 'https://cdns-preview-2.dzcdn.net/stream/c-2a4bcdffde5deb0f203829dfce4404e4-4.mp3', 'Jennifer Lopez, ', 0, 2013, ' Techno, Indie rock, Easy listening, Funk', 0, 0, 0),
(187, 'cambia_el_paso_jennifer_lopez2', 'Cambia el Paso', '', 'Cambia el Paso', 'https://e-cdns-images.dzcdn.net/images/cover/249c8b4265eb6978ad5d4470bc2d4564/500x500-000000-80-0-0.jpg', '245', 'Jennifer Lopez', 45, 'https://cdns-preview-7.dzcdn.net/stream/c-79a15684bdf5e2c216efc95912a1d756-3.mp3', 'Jennifer Lopez, Rauw Alejandro, ', 0, 2018, ' American folk music, Music of Asia, Heavy metal, Jungle music, UK garage', 0, 0, 0),
(188, 'on_the_floor_jennifer_lopez1', 'On The Floor', '', 'LOVE? (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/91a0ad607c0ed67831326f055f66afdf/500x500-000000-80-0-0.jpg', '284', 'Jennifer Lopez', 45, 'https://cdns-preview-2.dzcdn.net/stream/c-2f5777ceffe47adfe7b77fae17c894df-9.mp3', 'Jennifer Lopez, Pitbull, ', 0, 1989, ' New-age music, Jazz fusion, Instrumental, Pop rock, Soundtrack', 0, 0, 0),
(189, 'if_you_had_my_love_jennifer_lopez1', 'If You Had My Love', '', 'On The 6', 'https://e-cdns-images.dzcdn.net/images/cover/e9e59d8b00661ff2971cf7e62e1d780c/500x500-000000-80-0-0.jpg', '266', 'Jennifer Lopez', 45, 'https://cdns-preview-6.dzcdn.net/stream/c-67982c16d806e6654446aa62ed9737c7-6.mp3', 'Jennifer Lopez, ', 0, 2009, ' House music, Electronic music, Musical theatre, Rock', 0, 0, 0),
(190, 'marry_me_jennifer_lopez7', 'Marry Me', '(Kat & Bastian Duet)', 'Marry Me (Original Motion Picture Soundtrack)', 'https://e-cdns-images.dzcdn.net/images/cover/58930afc54bd6bb341a704306e7ffbc5/500x500-000000-80-0-0.jpg', '157', 'Jennifer Lopez', 45, 'https://cdns-preview-8.dzcdn.net/stream/c-89f027ce014f0512dac3df5df8e4c513-3.mp3', 'Jennifer Lopez, Maluma, ', 0, 2021, ' Rock, Trance music, Heavy metal, New-age music, Techno', 0, 0, 0),
(191, 'dance_again_feat._pitbull_jennifer_lopez6', 'Dance Again (feat. Pitbull)', '', 'Dance Again...The Hits', 'https://e-cdns-images.dzcdn.net/images/cover/7c8715d003f293bbf8937fda0ef35b16/500x500-000000-80-0-0.jpg', '237', 'Jennifer Lopez', 45, 'https://cdns-preview-b.dzcdn.net/stream/c-b86cd65af9a8e8fc653e0a34525fefda-5.mp3', 'Jennifer Lopez, Pitbull, ', 0, 1982, ' Hardcore punk, Dance music, Blues, Electro, Country music', 0, 0, 0),
(192, 'all_i_have_feat._ll_cool_j_jennifer_lopez7', 'All I Have (feat. LL Cool J)', '', 'This Is Me...Then', 'https://e-cdns-images.dzcdn.net/images/cover/24b1080aeb121dab1ec47e5873327a36/500x500-000000-80-0-0.jpg', '254', 'Jennifer Lopez', 45, 'https://cdns-preview-f.dzcdn.net/stream/c-fc18951b85f82ae44126a7490d627dcd-6.mp3', 'Jennifer Lopez, LL Cool J, ', 0, 2012, ' UK garage, Blues, Funk, Electronic music, Jazz fusion', 0, 0, 0),
(193, 'pa_ti_jennifer_lopez0', 'Pa Ti', '', 'Pa Ti + Lonely', 'https://e-cdns-images.dzcdn.net/images/cover/064c26e6677e3272ce46752a0794cfa9/500x500-000000-80-0-0.jpg', '230', 'Jennifer Lopez', 45, 'https://cdns-preview-2.dzcdn.net/stream/c-290cf9b9310677692ed983d2f09f64e2-3.mp3', 'Jennifer Lopez, Maluma, ', 0, 1973, ' New wave, Country music, Easy listening, Techno', 0, 0, 0),
(194, 'papi_jennifer_lopez0', 'Papi', '', 'LOVE? (Deluxe Edition)', 'https://e-cdns-images.dzcdn.net/images/cover/91a0ad607c0ed67831326f055f66afdf/500x500-000000-80-0-0.jpg', '223', 'Jennifer Lopez', 45, 'https://cdns-preview-6.dzcdn.net/stream/c-6d2df5404e3edceed4789804719be403-9.mp3', 'Jennifer Lopez, ', 0, 2013, ' Easy listening, Jungle music, New wave', 0, 0, 0),
(195, 'on_my_way_marry_me_jennifer_lopez5', 'On My Way (Marry Me)', '', 'On My Way (Marry Me)', 'https://e-cdns-images.dzcdn.net/images/cover/4e15ffb53b8cea41fe15ff8e65b8dc4f/500x500-000000-80-0-0.jpg', '192', 'Jennifer Lopez', 45, 'https://cdns-preview-8.dzcdn.net/stream/c-8c6d045aa60eb6e6369a85331c16ef98-3.mp3', 'Jennifer Lopez, ', 0, 2015, ' Heavy metal, Easy listening, Popular music, Music of Asia', 0, 0, 0),
(196, 'waiting_for_tonight_jennifer_lopez8', 'Waiting for Tonight', '', 'On The 6', 'https://e-cdns-images.dzcdn.net/images/cover/971218f2812a123fa925a197469da0ea/500x500-000000-80-0-0.jpg', '245', 'Jennifer Lopez', 45, 'https://cdns-preview-8.dzcdn.net/stream/c-8e6b1ea7a80c42b4d4996ade45bcd982-3.mp3', 'Jennifer Lopez, ', 0, 2002, ' Industrial music, Ambient music, Indie rock', 0, 0, 0),
(197, 'booty_jennifer_lopez3', 'Booty', '', 'A.K.A.', 'https://e-cdns-images.dzcdn.net/images/cover/13e74f15abaff7289778c4b953d15ed9/500x500-000000-80-0-0.jpg', '203', 'Jennifer Lopez', 45, 'https://cdns-preview-b.dzcdn.net/stream/c-b46a0870931ebc973a99d79af80cad9d-4.mp3', 'Jennifer Lopez, Pitbull, ', 0, 2000, ' Jazz fusion, Rock, Blues', 0, 0, 0),
(198, 'church_jennifer_lopez3', 'Church', '', 'Marry Me (Original Motion Picture Soundtrack)', 'https://e-cdns-images.dzcdn.net/images/cover/58930afc54bd6bb341a704306e7ffbc5/500x500-000000-80-0-0.jpg', '170', 'Jennifer Lopez', 45, 'https://cdns-preview-1.dzcdn.net/stream/c-185c703b6ad2039aa68c795204f7397b-3.mp3', 'Jennifer Lopez, ', 0, 1983, ' Ambient music, Funk, Dubstep, Classical music, Folk music', 0, 0, 0),
(199, 'quAc_hiciste_jennifer_lopez5', 'QuÃ© Hiciste', '', 'QuÃ© Hiciste', 'https://e-cdns-images.dzcdn.net/images/cover/016aa8dee39374017659b629a5b8d1e3/500x500-000000-80-0-0.jpg', '298', 'Jennifer Lopez', 45, 'https://cdns-preview-2.dzcdn.net/stream/c-2dbbf1ed767cce41a803dbccfff1e1e6-6.mp3', 'Jennifer Lopez, ', 0, 1980, ' Techno, American folk music, Pop rock, Music of Latin America, New wave', 0, 0, 0),
(200, 'step_into_my_world_jennifer_lopez1', 'Step Into My World', '', 'Rebirth', 'https://e-cdns-images.dzcdn.net/images/cover/372b8798e745e2831bdf31e2862cd3da/500x500-000000-80-0-0.jpg', '247', 'Jennifer Lopez', 45, 'https://cdns-preview-e.dzcdn.net/stream/c-e80f5007efa397adf0ecae880a96c182-5.mp3', 'Jennifer Lopez, ', 0, 1995, ' Psychedelic rock, Jazz fusion, UK garage, Easy listening', 0, 0, 0),
(201, 'feel_the_light_jennifer_lopez6', 'Feel The Light', '(From The \"Home\" Soundtrack)', 'Home (Original Motion Picture Soundtrack)', 'https://e-cdns-images.dzcdn.net/images/cover/51c9f98e031c5ec33713da671cd055a3/500x500-000000-80-0-0.jpg', '291', 'Jennifer Lopez', 45, 'https://cdns-preview-5.dzcdn.net/stream/c-5c6d2ad05d0ab78c0efbdba651ad5630-6.mp3', 'Jennifer Lopez, ', 0, 2003, ' Hardcore punk, Punk rock, World music, Easy listening, Rock', 0, 0, 0),
(202, 'limitless_from_the_movie_second_act_jennifer_lopez5', 'Limitless from the Movie \"Second Act\"', '', 'Limitless from the Movie \"Second Act\"', 'https://e-cdns-images.dzcdn.net/images/cover/b457fe4a1ca443113d5f96f81fee4bc2/500x500-000000-80-0-0.jpg', '247', 'Jennifer Lopez', 45, 'https://cdns-preview-d.dzcdn.net/stream/c-d82183cf594186c6b1d92949606808ec-3.mp3', 'Jennifer Lopez, ', 0, 1985, ' House music, Dubstep, Music of the United States', 0, 0, 0),
(203, '3_nuits_par_semaine_indochine4', '3 nuits par semaine', '', 'Unita (Best Of)', 'https://e-cdns-images.dzcdn.net/images/cover/2e93649109f0e03efa75c91b995114b7/500x500-000000-80-0-0.jpg', '289', 'Indochine', 47, 'https://cdns-preview-a.dzcdn.net/stream/c-a837e03fb4650cec0b20b0c051477b51-6.mp3', 'Indochine, ', 0, 1976, ' Funk, New wave, UK garage', 0, 0, 0),
(204, 'la_vie_est_belle_indochine8', 'La vie est belle', '', '13', 'https://e-cdns-images.dzcdn.net/images/cover/d03ca91189bf1a61c19cb01a084249f4/500x500-000000-80-0-0.jpg', '327', 'Indochine', 47, 'https://cdns-preview-d.dzcdn.net/stream/c-dd5623978772bab62bb738e62b9c8042-7.mp3', 'Indochine, ', 0, 2004, ' Hip hop music, House music, Electro', 0, 0, 0),
(205, 'nos_cAClACbrations_indochine8', 'Nos cÃ©lÃ©brations', '', 'Nos cÃ©lÃ©brations', 'https://e-cdns-images.dzcdn.net/images/cover/ede343d4aba71bec4338f8f192209554/500x500-000000-80-0-0.jpg', '304', 'Indochine', 47, 'https://cdns-preview-4.dzcdn.net/stream/c-4c99517dae92042c3b49f01a59d5331d-3.mp3', 'Indochine, ', 0, 1997, ' Instrumental, Industrial music, Music of the United States', 0, 0, 0),
(206, 'un_ACtAC_franASais_indochine1', 'Un Ã©tÃ© franÃ§ais', '', '13', 'https://e-cdns-images.dzcdn.net/images/cover/d03ca91189bf1a61c19cb01a084249f4/500x500-000000-80-0-0.jpg', '326', 'Indochine', 47, 'https://cdns-preview-3.dzcdn.net/stream/c-3e1fcf45cec3dee9ee157e5ca8615b20-7.mp3', 'Indochine, ', 0, 2007, 'Jazz,Techno,Classical music,', 0, 0, 0),
(209, 'test_misc', 'test misc', '', 'tiktok', 'http://localhost/Music/assets/image/thumbnail/62e7438e0d3famusic-logo-creative-icon-vector-29591237.jpg', '10', 'Corona', 40, 'http://localhost/Music/assets/preview/62e7438e0d44cc-17d9f7f379be9d7a599fe870dfa05d72-8.mp3', 'Christine Milton, Barry White', 0, 2022, 'New wave, New wave', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `musicgenre`
--

CREATE TABLE `musicgenre` (
  `id` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musicgenre`
--

INSERT INTO `musicgenre` (`id`, `genre`, `count`) VALUES
(1, 'Rock', 80),
(2, 'Pop music', 15),
(3, 'Popular music', 14),
(4, 'Hip hop music', 14),
(5, 'Folk music', 29),
(6, 'Rhythm and blues', 13),
(7, 'Country music', 14),
(8, 'Electronic music', 22),
(9, 'Jazz', 30),
(10, 'Classical music', 29),
(11, 'Musical theatre', 23),
(12, 'Blues', 31),
(13, 'Electronic dance music', 16),
(14, 'Heavy metal', 16),
(15, 'Dance music', 36),
(16, 'Punk rock', 12),
(17, 'Alternative rock', 11),
(18, 'Soul music', 16),
(19, 'Funk', 23),
(20, 'World music', 21),
(21, 'Singing', 13),
(22, 'Indie rock', 11),
(23, 'Techno', 19),
(24, 'Reggae', 19),
(25, 'Disco', 14),
(26, 'Pop rock', 14),
(27, 'Latin music', 12),
(28, 'House music', 22),
(29, 'Easy listening', 27),
(30, 'Music of Latin America', 15),
(31, 'Jazz fusion', 17),
(32, 'Experimental music', 18),
(33, 'Music of the United States', 14),
(34, 'Dubstep', 10),
(35, 'Music of Asia', 19),
(36, 'New-age music', 17),
(37, 'Soundtrack', 16),
(38, 'Industrial music', 20),
(39, 'Hardcore punk', 24),
(40, 'Ambient music', 12),
(41, 'Psychedelic rock', 20),
(42, 'Electro', 52),
(43, 'UK garage', 20),
(44, 'Trance music', 14),
(45, 'Instrumental', 19),
(46, 'Jungle music', 21),
(47, 'American folk music', 20),
(48, 'New wave', 21);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `musiccode` varchar(255) NOT NULL,
  `ratenumber` double NOT NULL,
  `userid` int(11) NOT NULL,
  `musicid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `email`, `musiccode`, `ratenumber`, `userid`, `musicid`) VALUES
(1, 'popot@popot.com', 'angie_the_rolling_stones8', 2.5, 21, 8);

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`) VALUES
(21, 'Popot lal', 'popot@popot.com', '$2y$10$VZ6n9XtlhLEcPjfi/S9NaeJiwhLwob7DA8W5Y7eLLaUSL5Ez2.dAi'),
(22, 'Ram Prasad', 'ramprasad@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(23, 'Lamond Bielli', 'TheHushedGamer@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(24, 'Melodee Kalt', 'Third@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(25, 'Mac Shady', 'Big@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(26, 'Cassy Denne', 'Hulking@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(27, 'Ingrim Zografou', 'Screeching@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(28, 'Emogene Throop', 'Moaning@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(29, 'Lukas Alisi', 'Thankful@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(30, 'Melanie Whitney', 'Typical@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(31, 'Tremain Padmore', 'Conscious@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(32, 'Shawna Henebury', 'Succinct@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(33, 'Gustave Boise', 'Grumpy@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(34, 'Juliann Cormier', 'Waggish@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(35, 'Rodd Dombroski', 'Little@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(36, 'Tana Rhode', 'Telling@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(37, 'Beulah Sussman', 'Obtainable@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(38, 'Merwin Nykrog', 'Coherent@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(39, 'Don Lyou', 'Red@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(40, 'Sabina Chua', 'Marked@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(41, 'Wash Farewell', 'Steady@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(42, 'Katine Svedrofsky', 'Squeamish@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(43, 'Tatiana Vancil', 'Famous@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(44, 'Hillery Leacock', 'Tedious@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(45, 'Nathan Mason', 'Truthful@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(46, 'Sherri Fargo', 'Sincere@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(47, 'Joshuah Gunstinson', 'Abusive@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(48, 'Padraig Roels', 'Mature@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(49, 'Shelagh Waugh', 'Short@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(50, 'Tristan Heck', 'Silent@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(51, 'Tansy Thombs', 'Needy@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(52, 'Rudolfo Penkethman', 'Caring@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(53, 'Cassondra Tcherepnin', 'Graceful@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(54, 'Rafe Spaur', 'Bent@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(55, 'Nollie Campbell', 'Unsuitable@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(56, 'Zacharia Viglionese', 'Decorous@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(57, 'Lorain Kerns', 'Discreet@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(58, 'Pincus Jarrett', 'Romantic@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(59, 'Amanda Moeykens', 'Petite@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(60, 'Winifield Michaud', 'Versed@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(61, 'Jenilee Pickwoad', 'Energetic@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(62, 'Standford Mccabe', 'Abrasive@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(63, 'Geraldine Phillpots', 'Unhealthy@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(64, 'Byram Von', 'hoffmanRoasted@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(65, 'Fernando Boothroyd', 'FernandoBoothroyd@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(66, 'Roslyn Fronteau', 'RoslynFronteau@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(67, 'Dom Velarde', 'DomVelarde@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(68, 'Fifine Pei', 'FifinePei@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(69, 'Graehme Turrini', 'GraehmeTurrini@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(70, 'Maura Snowball', 'MauraSnowball@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(71, 'Solomon Balan', 'SolomonBalan@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(72, 'Ilsa Wick', 'IlsaWick@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(73, 'Hersch Kessler', 'HerschKessler@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(74, 'Lilla Flores', 'LillaFlores@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(75, 'Daryle Voorhies', 'DaryleVoorhies@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(76, 'Susi Quilty', 'SusiQuilty@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(77, 'Lamond Drager', 'LamondDrager@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(78, 'Timmie Bowers', 'TimmieBowers@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(79, 'Mac Thielemann', 'MacThielemann@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(80, 'Priscella Osteen', 'PriscellaOsteen@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(81, 'Ingrim Maffa', 'IngrimMaffa@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(82, 'Harriett Mace', 'HarriettMace@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(83, 'Lukas Heggenhougen', 'LukasHeggenhougen@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(84, 'Maggee Crook', 'MaggeeCrook@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(85, 'Tremain Grier', 'TremainGrier@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(86, 'Linea Eckhaus', 'LineaEckhaus@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(87, 'Gustave Galeotti', 'GustaveGaleotti@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(88, 'Vanna Tingley', 'VannaTingley@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(89, 'Rodd Mavrinac', 'RoddMavrinac@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(90, 'Madelena Brathwaite', 'MadelenaBrathwaite@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(91, 'Merwin Pei', 'MerwinPei@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(92, 'Joella Schram', 'JoellaSchram@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(93, 'Don Wick', 'DonWick@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(94, 'Rica Whilton', 'RicaWhilton@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(95, 'Wash Quilty', 'WashQuilty@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(96, 'Meghan Fromm', 'MeghanFromm@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(97, 'Hillery Osteen', 'HilleryOsteen@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(98, 'Lorenza Mack', 'LorenzaMack@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(99, 'Nathan Crook', 'NathanCrook@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(100, 'Marcie Hodder', 'MarcieHodder@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(101, 'Joshuah Tingley', 'JoshuahTingley@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(102, 'Sybilla Glendinning', 'SybillaGlendinning@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(103, 'Dilly Schram', 'DillySchram@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(104, 'Shanna Borden', 'ShannaBorden@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(105, 'Kele Fromm', 'KeleFromm@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(106, 'Consuelo Moul', 'ConsueloMoul@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(107, 'Trent Hodder', 'TrentHodder@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(108, 'Suzanna Curzi', 'SuzannaCurzi@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W'),
(109, 'Chevy Borden', 'ChevyBorden@email.com', '$2y$10$YN6uuMRmOBsIQfxQa.3OEeEoL4a5fKme3eEPYQWQTiUJmOV1MSD9W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `musicid` (`musicid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `musiccode` (`musiccode`),
  ADD KEY `artistid` (`artistid`);

--
-- Indexes for table `musicgenre`
--
ALTER TABLE `musicgenre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `musicid` (`musicid`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `musicgenre`
--
ALTER TABLE `musicgenre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`musicid`) REFERENCES `music` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `usertable` (`id`);

--
-- Constraints for table `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`artistid`) REFERENCES `artist` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usertable` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`musicid`) REFERENCES `music` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
