
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `name` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `t_comment` (`id`, `music_id`, `content`, `name`, `user_id`, `time`) VALUES
(1, 27, 'My comments', 'qzc', 1, '2022-08-23 20:34:15'),
(2, 27, 'His comments', 'qzc', 1, '2022-08-23 20:35:32'),
(3, 27, 'Hahahaha', 'qwe', 2, '2022-08-23 21:12:01'),
(4, 27, 'Hurry', 'xiaohong', 3, '2022-08-23 21:14:09'),
(5, 4, 'Nice piece', 'xiaohong', 3, '2022-08-23 21:14:27');



CREATE TABLE `t_music` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'undefined',
  `time` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'undefined',
  `singer_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'undefined',
  `storage` text COLLATE utf8mb4_unicode_ci COMMENT 'undefined',
  `lyric` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `t_music` (`id`, `name`, `time`, `singer_id`, `storage`, `lyric`) VALUES
(1, 'Twilight', '03:51', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'I found a love, for me
Oh, darling, just dive right in and follow my lead
Well, I found a girl, beautiful and sweet
Oh, I never knew you were the someone waiting for me
Well, I found a woman, stronger than anyone I know
She shares my dreams, I hope that someday I will share her home
I found a lover, to carry more than just my secrets
To carry love, to carry children of our own'),
(2, 'How to Say I Love You', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'You shoot for the stars
If it feels right
And in for my heart
If you feel like
Can take me away, and make it okay
I swear I will behave
You wanted control
Sure we waited
I put on a show
Now I make it
You say I am a kid
My ego is big
I don\'t give a sh*t
And it goes like this'),
(3, 'J Adore', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'You shoot for the stars
If it feels right
And in for my heart
If you feel like
Can take me away, and make it okay
I swear I will behave
You wanted control
Sure we waited
I put on a show
Now I make it
You say I am a kid
My ego is big
I don\'t give a sh*t
And it goes like this'),
(4, 'Back to Back', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'You shoot for the stars
If it feels right
And in for my heart
If you feel like
Can take me away, and make it okay
I swear I will behave
You wanted control
Sure we waited
I put on a show
Now I make it
You say I am a kid
My ego is big
I don\'t give a sh*t
And it goes like this'),
(5, 'Jiang Nan', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'You shoot for the stars
If it feels right
And in for my heart
If you feel like
Can take me away, and make it okay
I swear I will behave
You wanted control
Sure we waited
I put on a show
Now I make it
You say I am a kid
My ego is big
I don\'t give a sh*t
And it goes like this'),
(6, 'Frozen', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(7, 'Wings', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(8, 'No. 89757', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(9, 'Cannot learn', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(10, 'Remember', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(11, 'Your smile', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(12, 'Soybean milk', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(13, 'New World', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(14, 'Ropes', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(15, 'St. ', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(16, 'Double Rod', '03:22', '2', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(17, 'Rice Field', '03:22', '2', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(18, 'Ballon', '03:22', '2', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(19, 'Waiting for You', '03:22', '2', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(20, 'Ears', '03:22', '3', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(21, 'Model', '03:22', '3', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(22, 'Bai Li', '03:22', '3', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(23, 'Sparrow', '03:22', '3', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '山Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(24, 'Bubbles', '03:22', '4', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(25, 'Supper Power', '03:22', '4', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(26, 'Exterior', '03:22', '4', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(27, 'Be together', '03:22', '4', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(28, 'Baikal', '03:22', '5', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(29, 'Station', '03:22', '5', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(30, 'Subway', '03:22', '5', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan'),
(31, 'Poem by Father', '03:22', '5', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', 'Midnight, not a sound from the pavement
Has the moon lost her memory?
She is smiling alone
In the lamplight, the withered leaves collect at my feet
And the wind begins to moan');



CREATE TABLE `t_singer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'undefined',
  `singer_desc` text COLLATE utf8mb4_unicode_ci COMMENT 'undefined',
  `storage` text COLLATE utf8mb4_unicode_ci COMMENT 'undefined'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `t_singer` (`id`, `name`, `singer_desc`, `storage`) VALUES
(1, 'JJ Lin', 'Wayne Lin Junjie (simplified Chinese: 林俊杰; traditional Chinese: 林俊傑; pinyin: Lín Jùnjié; born 27 March 1981) better known by his stage name JJ Lin, is a Singaporean singer, songwriter, record producer, and actor.[1] Lin launched his musical career by releasing his debut album, Music Voyager', 'https://ucarecdn.com/13fa6410-2842-418f-9bcc-39e3b32004b9/-/format/auto/-/preview/3000x3000/-/quality/lighter/TGB-Ambassador-Goal11-JJLin%20_1_.jpg'),
(2, 'Jay', 'Jay Chou (traditional Chinese: 周杰倫; simplified Chinese: 周杰伦; pinyin: Zhōu Jiélún; born January 18, 1979)[1] is a Taiwanese singer, songwriter, record producer, rapper, actor, and television personality. Dubbed the "King of Mandopop", and having sold over 30 million records, Chou is one of the best-selling artists in Taiwan and is known for his work with lyricist Vincent Fang, with whom he has frequently collaborated on his music', 'https://i.kfs.io/artist/global/4261,0v10/fit/300x300.jpg'),
(3, 'RongHao Li', 'Li Ronghao (born July 11, 1985 in Bengbu, Anhui) is a Chinese singer-songwriter, actor and producer. He has released six studio albums, three EPs, and won the Golden Melody Award for Best New Singer in 2013.[1] He has also acted in 3 movies, most notably the hit movie Duckweed. He has held 3 huge concert tours and become the first singer from the Chinese mainland to hold concerts at Hong Kong Coliseum and Taipei Arena. He was ranked 59th on the Forbes China Celebrity 100 List for 2020', 'https://e.snmc.io/i/600/s/1704c54e1ae9ca05e9b475845ff573ff/5779368/%E6%9D%8E%E8%8D%A3%E6%B5%A9-ronghao-li-%E6%A8%A1%E7%89%B9-model-cover-art.jpg'),
(4, 'Ziqi Deng', 'Gloria Tang Sze-wing (born 16 August 1991),[2] professionally known as G.E.M. (backronym of Get Everybody Moving)[3] or Tang Tsz-kei (simplified Chinese: 邓紫棋; traditional Chinese: 鄧紫棋; pinyin: Dèng Zǐqí), is a Hong Kong singer-songwriter originally from Shanghai, China. She made her debut in the Hong Kong music industry in 2008.[4] After releasing three albums in Hong Kong, her appearance in the 2014 edition of Chinese singing competition program I Am a Singer and subsequent 2nd-place finish gained her immense fame and popularity in Greater China', 'https://image.ijq.tv/201610/27/15-29-23-92-34.jpg'),
(5, 'Jian Li', 'Jian Li, From Herbin, a singer。', 'https://www.iludou.com/wp-content/uploads/2020/04/a0d14fd0c46cce1bdcdebccdcf678f9b.jpg');


CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `shoucang` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `t_user` (`id`, `name`, `password`, `shoucang`) VALUES
(1, 'qzc', '123456', NULL),
(2, 'qwe', '123456', NULL),
(3, 'xiaohong', '123456', NULL);


ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `t_music`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `t_singer`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `t_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `t_music`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;


ALTER TABLE `t_singer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `t_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

