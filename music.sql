
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
(6, 'Frozen', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨\r\n向晚伴残笛\r\n宣白落笔全是你\r\n文细腻 字飘逸 人无语\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n烛火摇曳 皆因风起\r\n泪晕墨迹 我在想你\r\n枫红愁绪 秋冷了回忆\r\n轻弹一首别离 放不下你\r\n吟唱心事秘密伤继续\r\n轻弹一首别离 名为茉莉雨\r\n雨季后我溯溪 找你的消息\r\n古镇老墙添绿 又一年过去\r\n庭院开满茉莉 却等不到你'),
(7, 'Wings', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨\r\n向晚伴残笛\r\n宣白落笔全是你\r\n文细腻 字飘逸 人无语\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n烛火摇曳 皆因风起\r\n泪晕墨迹 我在想你\r\n枫红愁绪 秋冷了回忆\r\n轻弹一首别离 放不下你\r\n吟唱心事秘密伤继续\r\n轻弹一首别离 名为茉莉雨\r\n雨季后我溯溪 找你的消息\r\n古镇老墙添绿 又一年过去\r\n庭院开满茉莉 却等不到你'),
(8, 'No. 89757', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨\r\n向晚伴残笛\r\n宣白落笔全是你\r\n文细腻 字飘逸 人无语\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n烛火摇曳 皆因风起\r\n泪晕墨迹 我在想你\r\n枫红愁绪 秋冷了回忆\r\n轻弹一首别离 放不下你\r\n吟唱心事秘密伤继续\r\n轻弹一首别离 名为茉莉雨\r\n雨季后我溯溪 找你的消息\r\n古镇老墙添绿 又一年过去\r\n庭院开满茉莉 却等不到你'),
(9, 'Cannot learn', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨\r\n向晚伴残笛\r\n宣白落笔全是你\r\n文细腻 字飘逸 人无语\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n烛火摇曳 皆因风起\r\n泪晕墨迹 我在想你\r\n枫红愁绪 秋冷了回忆\r\n轻弹一首别离 放不下你\r\n吟唱心事秘密伤继续\r\n轻弹一首别离 名为茉莉雨\r\n雨季后我溯溪 找你的消息\r\n古镇老墙添绿 又一年过去\r\n庭院开满茉莉 却等不到你'),
(10, 'Remember', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨\r\n向晚伴残笛\r\n宣白落笔全是你\r\n文细腻 字飘逸 人无语\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n烛火摇曳 皆因风起\r\n泪晕墨迹 我在想你\r\n枫红愁绪 秋冷了回忆\r\n轻弹一首别离 放不下你\r\n吟唱心事秘密伤继续\r\n轻弹一首别离 名为茉莉雨\r\n雨季后我溯溪 找你的消息\r\n古镇老墙添绿 又一年过去\r\n庭院开满茉莉 却等不到你'),
(11, 'Your smile', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨\r\n向晚伴残笛\r\n宣白落笔全是你\r\n文细腻 字飘逸 人无语\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n烛火摇曳 皆因风起\r\n泪晕墨迹 我在想你\r\n枫红愁绪 秋冷了回忆\r\n轻弹一首别离 放不下你\r\n吟唱心事秘密伤继续\r\n轻弹一首别离 名为茉莉雨\r\n雨季后我溯溪 找你的消息\r\n古镇老墙添绿 又一年过去\r\n庭院开满茉莉 却等不到你'),
(12, 'Soybean milk', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨111\n向晚伴残笛\n宣白落笔全是你\n文细腻 字飘逸 人无语\n梧桐秋风沙沙地\n孤窗外疑是你\n故事远去几华里\n等结局 我犹豫 轻叹气\n琴声里 愁几许 关于你\n轻弹一首别离 还在爱你\n缘分竟然默许 你离去\n轻弹一首别离 名为茉莉雨\n园中花瓣落地 了断了过去\n而我酝酿情绪 举杯引醉意\n梧桐秋风沙沙地\n孤窗外疑是你\n故事远去几华里\n等结局 我犹豫 轻叹气\n琴声里 愁几许 关于你\n轻弹一首别离 还在爱你\n缘分竟然默许 你离去\n轻弹一首别离 名为茉莉雨\n园中花瓣落地 了断了过去\n而我酝酿情绪 举杯引醉意\n烛火摇曳 皆因风起\n泪晕墨迹 我在想你\n枫红愁绪 秋冷了回忆\n轻弹一首别离 放不下你\n吟唱心事秘密伤继续\n轻弹一首别离 名为茉莉雨\n雨季后我溯溪 找你的消息\n古镇老墙添绿 又一年过去\n庭院开满茉莉 却等不到你'),
(13, 'New World', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨\r\n向晚伴残笛\r\n宣白落笔全是你\r\n文细腻 字飘逸 人无语\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n烛火摇曳 皆因风起\r\n泪晕墨迹 我在想你\r\n枫红愁绪 秋冷了回忆\r\n轻弹一首别离 放不下你\r\n吟唱心事秘密伤继续\r\n轻弹一首别离 名为茉莉雨\r\n雨季后我溯溪 找你的消息\r\n古镇老墙添绿 又一年过去\r\n庭院开满茉莉 却等不到你'),
(14, 'Ropes', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨\r\n向晚伴残笛\r\n宣白落笔全是你\r\n文细腻 字飘逸 人无语\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n烛火摇曳 皆因风起\r\n泪晕墨迹 我在想你\r\n枫红愁绪 秋冷了回忆\r\n轻弹一首别离 放不下你\r\n吟唱心事秘密伤继续\r\n轻弹一首别离 名为茉莉雨\r\n雨季后我溯溪 找你的消息\r\n古镇老墙添绿 又一年过去\r\n庭院开满茉莉 却等不到你'),
(15, 'St. ', '03:22', '1', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '垂柳斜向茉莉雨\r\n向晚伴残笛\r\n宣白落笔全是你\r\n文细腻 字飘逸 人无语\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n梧桐秋风沙沙地\r\n孤窗外疑是你\r\n故事远去几华里\r\n等结局 我犹豫 轻叹气\r\n琴声里 愁几许 关于你\r\n轻弹一首别离 还在爱你\r\n缘分竟然默许 你离去\r\n轻弹一首别离 名为茉莉雨\r\n园中花瓣落地 了断了过去\r\n而我酝酿情绪 举杯引醉意\r\n烛火摇曳 皆因风起\r\n泪晕墨迹 我在想你\r\n枫红愁绪 秋冷了回忆\r\n轻弹一首别离 放不下你\r\n吟唱心事秘密伤继续\r\n轻弹一首别离 名为茉莉雨\r\n雨季后我溯溪 找你的消息\r\n古镇老墙添绿 又一年过去\r\n庭院开满茉莉 却等不到你'),
(16, 'Double Rod', '03:22', '2', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '岩烧店的烟味弥漫 隔壁是国术馆\r\n店里面的妈妈桑 茶道 有三段\r\n教拳脚武术的老板 练铁沙掌 耍杨家枪\r\n硬底子功夫最擅长 还会金钟罩铁布衫\r\n他们儿子我习惯 从小就耳濡目染\r\n什么刀枪跟棍棒 我都耍的有模有样\r\n什么兵器最喜欢 双截棍柔中带刚\r\n想要去河南嵩山 学少林跟武当\r\n干什么 干什么\r\n呼吸吐纳心自在\r\n干什么 干什么\r\n气沉丹田手心开\r\n干什么 干什么\r\n日行千里系沙袋\r\n飞檐走壁莫奇怪\r\n去去就来\r\n一个马步向前 一记左勾拳 右勾拳\r\n一句惹毛我的人有危险\r\n一再重演\r\n一根我不抽的烟\r\n一放好多年 它一直在身边\r\n干什么 干什么\r\n我打开任督二脉\r\n干什么 干什么\r\n东亚病夫的招牌\r\n干什么 干什么\r\n已被我一脚踢开\r\n快使用双截棍 哼哼哈兮\r\n快使用双截棍 哼哼哈兮\r\n习武之人切记 仁者无敌\r\n是谁在练太极 风生水起\r\n快使用双截棍 哼哼哈兮\r\n快使用双截棍 哼哼哈兮\r\n如果我有轻功 飞檐走壁\r\n为人耿直不屈 一身正气 哼\r\n他们儿子我习惯 从小就耳濡目染\r\n什么刀枪跟棍棒 我都耍的有模有样\r\n什么兵器最喜欢 双截棍柔中带刚\r\n想要去河南嵩山 学少林跟武当\r\n快使用双截棍 哼哼哈兮\r\n快使用双截棍 哼哼哈兮\r\n习武之人切记 仁者无敌\r\n是谁在练太极 风生水起\r\n快使用双截棍 哼哼哈兮\r\n快使用双截棍 哼哼哈兮\r\n如果我有轻功 飞檐走壁\r\n为人耿直不屈 一身正气 哼\r\n他们儿子我习惯 从小就耳濡目染\r\n什么刀枪跟棍棒 我都耍的有模有样\r\n什么兵器最喜欢 双截棍柔中带刚\r\n想要去河南嵩山 学少林跟武当\r\n快使用双截棍 哼哼哈兮\r\n快使用双截棍 哼哼哈兮\r\n习武之人切记 仁者无敌\r\n是谁在练太极 风生水起\r\n快使用双截棍 哼\r\n快使用双截棍 哼\r\n如果我有轻功 哼\r\n为人耿直不屈 一身正气 哼\r\n快使用双截棍 哼\r\n我用手刀防御 哼\r\n漂亮的回旋踢'),
(17, 'Rice Field', '03:22', '2', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '对这个世界 如果你有太多的抱怨\r\n跌倒了 就不敢继续往前走\r\n为什么 人要这么的脆弱 堕落\r\n请你打开电视看看\r\n多少人为生命 在努力勇敢的走下去\r\n我们是不是该知足\r\n珍惜一切 就算没有拥有\r\n还记得 你说家是唯一的城堡\r\n随着稻香 河流继续奔跑\r\n微微笑 小时候的梦我知道\r\n不要哭 让萤火虫带着你逃跑\r\n乡间的歌谣 永远的依靠\r\n回家吧 回到最初的美好\r\n不要这么容易 就想放弃\r\n就像我说的\r\n追不到的梦想 换个梦不就得了\r\n为自己的人生鲜艳上色\r\n先把爱涂上喜欢的颜色\r\n笑一个吧 功成名就不是目的\r\n让自己快乐快乐 这才叫做意义\r\n童年的纸飞机\r\n现在终于飞回我手里\r\n所谓的那快乐\r\n赤脚在田里追蜻蜓 追到累了\r\n偷摘水果 被蜜蜂给叮到怕了\r\n谁在偷笑呢\r\n我靠着稻草人 吹着风 唱着歌 睡着了\r\n哦 哦 午后吉它在虫鸣中更清脆\r\n哦 哦 阳光洒在路上就不怕心碎\r\n珍惜一切 就算没有拥有\r\n还记得 你说家是唯一的城堡\r\n随着稻香 河流继续奔跑\r\n微微笑 小时候的梦我知道\r\n不要哭 让萤火虫带着你逃跑\r\n乡间的歌谣 永远的依靠\r\n回家吧 回到最初的美好\r\n还记得 你说家是唯一的城堡\r\n随着稻香 河流继续奔跑\r\n微微笑 小时候的梦我知道\r\n不要哭 让萤火虫带着你逃跑\r\n乡间的歌谣 永远的依靠\r\n回家吧 回到最初的美好'),
(18, 'Ballon', '03:22', '2', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '塞纳河畔 左岸的咖啡\r\n我手一杯 品尝你的美\r\n留下唇印 的嘴\r\n花店玫瑰 名字写错 谁\r\n告白气球 风吹到 对街\r\n微笑 在天上飞\r\n你说 你有点难追\r\n想让 我知难而退\r\n礼物 不需挑最贵\r\n只要 香榭的落叶\r\n喔 营造浪漫 的约会\r\n不害怕 搞砸一切\r\n拥有你就拥有 全世界\r\n亲爱的 爱上你 从那天起\r\n甜蜜的很轻易\r\n亲爱的 别任性 你的眼睛\r\n在说我愿意\r\n塞纳河畔 左岸的咖啡\r\n我手一杯 品尝你的美\r\n留下唇印的 嘴\r\n花店玫瑰 名字写错谁\r\n告白气球 风吹到 对街\r\n微笑 在天上飞\r\n你说 你有点难追\r\n想让 我知难而退\r\n礼物 不需挑最贵\r\n只要 香榭的落叶\r\n喔 营造浪漫 的约会\r\n不害怕 搞砸一切\r\n拥有你就拥有 全世界\r\n亲爱的 爱上你 从那天起\r\n甜蜜的很轻易\r\n亲爱的 别任性 你的眼睛\r\n在说我愿意\r\n亲爱的 爱上你 恋爱日记\r\n飘香水的回忆\r\n一整瓶 的梦境 全都有你\r\n搅拌在一起\r\n亲爱的 别任性 你的眼睛\r\n在说我愿意'),
(19, 'Waiting for You', '03:22', '2', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '你住的 巷子里\r\n我租了一间公寓\r\n为了想与你不期而遇\r\n高中三年 我为什么\r\n为什么不好好读书\r\n没考上跟你一样的大学\r\n我找了份工作\r\n离你宿舍很近\r\n当我开始学会做蛋饼\r\n才发现你 不吃早餐\r\n喔 你又擦肩而过\r\n你耳机听什么\r\n能不能告诉我\r\n躺在你学校的操场看星空\r\n教室里的灯还亮着你没走\r\n记得 我写给你的情书\r\n都什么年代了\r\n到现在我还在写着\r\n总有一天总有一年会发现\r\n有人默默的陪在你的身边\r\n也许 我不该在你的世界\r\n当你收到情书\r\n也代表我已经走远\r\n学校旁 的广场\r\n我在这等钟声响\r\n等你下课一起走好吗\r\n弹着琴 唱你爱的歌\r\n暗恋一点都不痛苦\r\n痛苦的是你根本没看我\r\n我唱这么走心\r\n却走不进你心里\r\n在人来人往 找寻着你 守护着你\r\n不求结局\r\n喔 你又擦肩而过\r\n我唱告白气球\r\n终于你回了头\r\n躺在你学校的操场看星空\r\n教室里的灯还亮着你没走\r\n记得 我写给你的情书\r\n都什么年代了\r\n到现在我还在写着\r\n总有一天总有一年会发现\r\n有人默默的陪在你的身边\r\n也许 我不该在你的世界\r\n当你收到情书\r\n也代表我已经走远'),
(20, 'Ears', '03:22', '3', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '谁的脚步近了 谁的脚步远了\r\n我都竖起耳朵\r\n听着楼道里还是空空荡荡的\r\n我没听你倾诉 没驱赶你孤独\r\n总是闭着耳朵\r\n直到心房里变得空空荡荡的\r\n所有的感官都要变迟钝\r\n茶饭不思 呆呆的凝望着\r\n只有耳朵不听话了\r\n非要我听那首最爱的老歌\r\n所有的情绪都要变脆弱\r\n烂俗桥段 眼睛却湿透了\r\n左右耳朵也埋怨着\r\n最近好像少了些什么\r\n谁的脚步近了 谁的脚步远了\r\n我都竖起耳朵\r\n听着楼道里还是空空荡荡的\r\n我没听你倾诉 没驱赶你孤独\r\n总是闭着耳朵\r\n直到心房里变得空空荡荡的\r\n所有的感官都要变迟钝\r\n茶饭不思 呆呆的凝望着\r\n只有耳朵不听话了\r\n非要我听那首最爱的老歌\r\n所有的情绪都要变脆弱\r\n烂俗桥段 眼睛却湿透了\r\n左右耳朵也埋怨着\r\n最近好像少了些什么\r\n所有的感官都要变迟钝\r\n茶饭不思 呆呆的凝望着\r\n只有耳朵不听话了\r\n非要我听那首最爱的老歌\r\n所有的情绪都要变脆弱\r\n烂俗桥段 眼睛却湿透了\r\n左右耳朵也埋怨着\r\n最近少一个人好寂寞'),
(21, 'Model', '03:22', '3', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '穿华丽的服装 为原始的渴望而站着\r\n用完美的表情 为脆弱的城市而撑着\r\n我冷漠的接受 你焦急的等待也困着\r\n像无数生存在橱窗里的模特\r\n除了灯以外 我还能看见什么\r\n除了光以外 我还能要求什么\r\n除了你以外 还能倚赖哪一个\r\n在千里以外 在呼喊的是什么\r\n在百年以后 想回忆的是什么\r\n在离开以前 能否再见那一刻\r\n记得 你的眼睛将会亮着\r\n我的手臂将会挥着\r\n谁说世界早已没有选择\r\n趁着 我会喜怒你会哀乐\r\n唱几分钟情歌\r\n没什么 至少证明我们还活着\r\n像单纯的蝴蝶 为玫瑰的甜美而飞着\r\n像顽皮的小猫 为明天的好奇而睡着\r\n是混乱的时代 是透明的监狱也觉得\r\n是不能继续在橱窗里做模特\r\n除了风以外 我还能听到什么\r\n除了尘以外 我还能拒绝什么\r\n除了你以外 还能倚赖哪一个\r\n在千里以外 在呼喊的是什么\r\n在百年以后 想回忆的是什么\r\n在离开以前 能否再见那一刻\r\n记得 你的眼睛将会亮着\r\n我的手臂将会挥着\r\n谁说世界早已没有选择\r\n趁着 我会喜怒你会哀乐\r\n唱几分钟情歌\r\n没什么 至少证明我们还活着\r\n记得 你的眼睛将会亮着\r\n我的手臂将会挥着\r\n谁说世界早已没有选择\r\n趁着 我会喜怒你会哀乐\r\n唱几分钟情歌\r\n没什么 至少证明我们还活着'),
(22, 'Bai Li', '03:22', '3', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '大部分人要我学习去看 世俗的眼光\r\n我认真学习了世俗眼光 世俗到天亮\r\n一部外国电影没听懂一句话\r\n看完结局才是笑话\r\n你看我多乖多聪明多么听话 多奸诈\r\n喝了几大碗米酒再离开是为了模仿\r\n一出门不小心吐的那幅是谁的书画\r\n你一天一口一个 亲爱的对方\r\n多么不流行的模样\r\n都应该练练书法再出门闯荡\r\n才会有人热情买账\r\n要是能重来 我要选李白\r\n几百年前做的好坏 没那么多人猜\r\n要是能重来 我要选李白\r\n至少我还能写写诗来澎湃 逗逗女孩\r\n要是能重来 我要选李白\r\n创作也能到那么高端 被那么多人崇拜\r\n要是能重来\r\n喝了几大碗米酒再离开是为了模仿\r\n一出门不小心吐的那幅是谁的书画\r\n你一天一口一个 亲爱的对方\r\n多么不流行的模样\r\n都应该练练书法再出门闯荡\r\n才会有人热情买账\r\n要是能重来 我要选李白\r\n几百年前做的好坏 没那么多人猜\r\n要是能重来 我要选李白\r\n至少我还能写写诗来澎湃 逗逗女孩\r\n要是能重来 我要选李白\r\n创作也能到那么高端 被那么多人崇拜\r\n要是能重来\r\n要是能重来 我要选李白\r\n几百年前做的好坏 没那么多人猜\r\n要是能重来 我要选李白\r\n至少我还能写写诗来澎湃 逗逗女孩\r\n要是能重来 我要选李白\r\n创作也能到那么高端 被那么多人崇拜\r\n要是能重来'),
(23, 'Sparrow', '03:22', '3', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '山隔壁还是山\r\n都有一个伴\r\n相信海枯石烂\r\n也许我笨蛋\r\n飞太慢会落单\r\n太快会受伤\r\n日子不就都这样\r\n天会晴就会暗\r\n我早就习惯\r\n一日为了三餐\r\n不至于寒酸\r\n为给你取暖我把翅膀折断\r\n我遭遇那些苦难\r\n你却不管\r\n我飞翔在乌云之中\r\n你看着我无动于衷\r\n有多少次波涛汹涌\r\n在我 心中\r\n你飞向了雪山之巅\r\n我留在你回忆里面\r\n你成仙我替你留守人间\r\n麻雀也有明天\r\n天会晴就会暗\r\n我早就习惯\r\n一日为了三餐\r\n不至于寒酸\r\n为给你取暖我把翅膀折断\r\n我遭遇那些苦难\r\n你却不管\r\n我飞翔在乌云之中\r\n你看着我无动于衷\r\n有多少次波涛汹涌\r\n在我 心中\r\n你飞向了雪山之巅\r\n我留在你回忆里面\r\n你成仙我替你留守人间\r\n麻雀也有明天\r\n我飞翔在乌云之中\r\n你看着我无动于衷\r\n有多少次波涛汹涌\r\n在我 心中\r\n你飞向了雪山之巅\r\n我留在你回忆里面\r\n你成仙我替你留守人间\r\n麻雀也有明天'),
(24, 'Bubbles', '03:22', '4', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '阳光下的泡沫 是彩色的\r\n就像被骗的我 是幸福的\r\n追究什么对错 你的谎言\r\n基于你还爱我\r\n美丽的泡沫 虽然一刹花火\r\n你所有承诺 虽然都太脆弱\r\n但爱像泡沫 如果能够看破\r\n有什么难过\r\n早该知道泡沫 一触就破\r\n就像已伤的心 不胜折磨\r\n也不是谁的错 谎言再多\r\n基于你还爱我\r\n美丽的泡沫 虽然一刹花火\r\n你所有承诺 虽然都太脆弱\r\n爱本是泡沫 如果能够看破\r\n有什么难过\r\n再美的花朵 盛开过就凋落\r\n再亮眼的星 一闪过就坠落\r\n爱本是泡沫 如果能够看破\r\n有什么难过\r\n为什么难过 有什么难过\r\n为什么难过\r\n全都是泡沫 只一刹的花火\r\n你所有承诺 全部都太脆弱\r\n而你的轮廓 怪我没有看破\r\n才如此难过\r\n相爱的把握 要如何再搜索\r\n相拥着寂寞 难道就不寂寞\r\n爱本是泡沫 怪我没有看破\r\n才如此难过\r\n在雨下的泡沫 一触就破\r\n当初炽热的心 早已沉没\r\n说什么你爱我 如果骗我\r\n我宁愿你沉默'),
(25, 'Supper Power', '03:22', '4', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '还没完全离去\r\n也许 是在等个结局\r\nYeah 但故事再延续\r\n你演了场 滑稽的喜剧\r\n要忘掉一个人\r\n也许 心里要带点怨恨\r\n例如发现你 没多单纯\r\n我却有多愚蠢\r\n这会不会是你唯一的谎言\r\n不可能 不可能\r\n这只不过是我第一次发现\r\n你的谎 有多漂亮\r\n你是否有超能力\r\n说谎才能全部都不留痕迹 不可思议\r\n原来你的超能力\r\n瞬间能够崩塌我所有回忆 我讨厌你\r\nBiu Biu Biu Biu Biu Biu Biu\r\n噢我好想代替月亮消灭你 我讨厌你\r\nBiu Biu Biu Biu Biu Biu Biu\r\n噢你的伪装实在无人能及 天下无敌\r\nShhhhhh 关闭嘴巴\r\n就让假亦真时真亦假\r\n你的笑话 我无法消化\r\nBadaboom 原地爆炸\r\n你炸到我心碎成了烟花\r\nMy God 那让我苦中作乐吧\r\n这会不会是你唯一的谎言\r\n不可能 不可能\r\n这只不过是我第一次发现\r\n你的谎 有多漂亮\r\n你是否有超能力\r\n说谎才能 全部都不留痕迹 不可思议\r\n原来你的超能力\r\n瞬间能够崩塌我所有回忆 我讨厌你\r\nBiu Biu Biu Biu Biu Biu Biu\r\n噢我好想代替月亮消灭你 我讨厌你\r\nBiu Biu Biu Biu Biu Biu Biu\r\n噢你的伪装实在无人能及 天下无敌\r\n我从未想过有一天\r\n会感觉不认识你\r\n你神奇得就像世界第八个奇迹\r\n超能力\r\n说谎才能 全部都不留痕迹 不可思议\r\n原来你的超能力\r\n瞬间能够崩塌我所有回忆 我讨厌你\r\nBiu Biu Biu Biu Biu Biu Biu\r\n超能力 超能力\r\nBiu Biu Biu Biu Biu Biu Biu\r\n超能力 超能力'),
(26, 'Exterior', '03:22', '4', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '感受停在我发端的指尖\r\n如何瞬间冻结时间\r\n记住望着我坚定的双眼\r\n也许已经没有明天\r\n面对浩瀚的星海\r\n我们微小得像尘埃\r\n漂浮在一片无奈\r\n缘分让我们相遇乱世以外\r\n命运却要我们危难中相爱\r\n也许未来遥远在光年之外\r\n我愿守候未知里为你等待\r\n我没想到为了你我能疯狂到\r\n山崩海啸没有你根本不想逃\r\n我的大脑为了你已经疯狂到\r\n脉搏心跳没有你根本不重要\r\n一双围在我胸口的臂弯\r\n足够抵挡天旋地转\r\n一种执迷不放手的倔强\r\n足以点燃所有希望\r\n宇宙磅礴而冷漠\r\n我们的爱微小却闪烁\r\n颠簸却如此忘我\r\n缘分让我们相遇乱世以外\r\n命运却要我们危难中相爱\r\n也许未来遥远在光年之外\r\n我愿守候未知里为你等待\r\n我没想到为了你我能疯狂到\r\n山崩海啸没有你根本不想逃\r\n我的大脑为了你已经疯狂到\r\n脉搏心跳没有你根本不重要\r\n也许航道以外是醒不来的梦\r\n乱世以外是纯粹的相拥\r\n我没想到为了你我能疯狂到\r\n山崩海啸没有你根本不想逃\r\n我的大脑为了你已经疯狂到\r\n脉搏心跳没有你根本不重要\r\n相遇乱世以外危难中相爱\r\n相遇乱世以外危难中相爱\r\n我没想到'),
(27, 'Be together', '03:22', '4', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '想听你听过的音乐\r\n想看你看过的小说\r\n我想收集每一刻\r\n我想看到你眼里的世界\r\n想到你到过的地方\r\n和你曾渡过的时光\r\n不想错过每一刻\r\n多希望我一直在你身旁\r\n未来何从何去\r\n你快乐我也就没关系\r\n对你我最熟悉\r\n你爱自由我却更爱你\r\n我能习惯远距离\r\n爱总是身不由己\r\n宁愿换了方式\r\n至少还能遥远爱着你\r\n爱能克服远距离\r\n多远都要在一起\r\n你已经不再存在我世界里\r\n请不要离开我的回忆\r\n想你说爱我的语气\r\n想你望着我的眼睛\r\n不想忘记每一刻\r\n用思念让我们一直前进\r\n想象你失落的唇印\r\n想象你失约的旅行\r\n想象你离开的一刻\r\n如果我有留下你的勇气\r\n我能习惯远距离\r\n爱总是身不由己\r\n宁愿换了方式\r\n至少还能遥远爱着你\r\n爱能克服远距离\r\n多远都要在一起\r\n我已经不再存在你的心里\r\n就让我独自守着回忆\r\n如果阳光永远都炽热\r\n如果彩虹不会掉颜色\r\n你能不能不离开呢\r\n我能习惯远距离\r\n爱总是身不由己\r\n宁愿换了方式\r\n至少还能遥远爱着你\r\n爱能克服远距离\r\n多远都要在一起\r\n你已经不再存在我世界里\r\n请不要离开我的回忆\r\n请不要离开 不要离开\r\n我的回忆'),
(28, 'Baikal', '03:22', '5', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '在我的怀里 在你的眼里\r\n那里春风沉醉 那里绿草如茵\r\n月光把爱恋 洒满了湖面\r\n两个人的篝火 照亮整个夜晚\r\n多少年以后 如云般游走\r\n那变换的脚步 让我们难牵手\r\n这一生一世 有多少你我\r\n被吞没在月光如水的夜里\r\n多想某一天 往日又重现\r\n我们流连忘返 在贝加尔湖畔\r\n多少年以后 往事随云走\r\n那纷飞的冰雪容不下那温柔\r\n这一生一世 这时间太少\r\n不够证明融化冰雪的深情\r\n就在某一天 你忽然出现\r\n你清澈又神秘 在贝加尔湖畔\r\n你清澈又神秘 像贝加尔湖畔'),
(29, 'Station', '03:22', '5', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '车窗外恋人相拥\r\n还在难舍难离\r\n汽笛声突然响起\r\n那姑娘满眼焦急\r\n不觉中下起雨来\r\n在黄昏的站台\r\n她终于上了列车\r\n却一直望向窗外\r\n当列车徐徐开动掠过蓝色站牌\r\n我看见她难过的脸\r\n如此苍白\r\n伴随雨点敲击车窗她的泪流下来\r\n我赶紧转过头去让我视线离开\r\n不知是甜蜜的伤感还是无奈\r\n天色暗了下来\r\n人们开始了等待\r\n我想起多年以前\r\n像今天的画面\r\n以为告别还会再见\r\n哪知道一去不还\r\n列车要奔向何方\r\n我竟一丝慌张\r\n夜色中车厢静悄悄\r\n那姑娘已经睡着\r\n当列车飞奔下一站的爱恨离别\r\n我仿佛看见车窗外换了季节\r\n在这一瞬间忘了要去向哪里的深夜\r\n我不知道我还有多少相聚分别\r\n就像这列车也不能随意停歇\r\n匆匆掠过的不仅仅是窗外的世界\r\n当列车飞奔下一站的爱恨离别\r\n我仿佛看见车窗外换了季节\r\n在这一瞬间忘了要去向哪里的深夜\r\n我不知道我还有多少相聚分别\r\n就像这列车也不能随意停歇\r\n匆匆错过的何止是窗外的世界\r\n啦啦啦...\r\n啦啦啦...\r\n再见'),
(30, 'Subway', '03:22', '5', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '十点半的地铁\r\n终于每个人都有了座位\r\n温热的风\r\n终于能轻轻地静静地吹\r\n身边的姑娘 胖胖的她\r\n重重的靠着我睡\r\n我没有推 我不忍心推\r\n她看起来好累\r\n矮下了身子 向后仰\r\n我懒散地伸长了腿\r\n对面的大叔\r\n在鼾声之中张大了嘴\r\n旁边的阿姨 左摇右晃\r\n她睡得找不到北\r\n身边的妹妹 和朋友谈谁\r\n是是非非\r\n我也疲倦了\r\n这是我唯一不失眠的地方\r\n悲伤的 难过的\r\n在这里我没有力气去想\r\n城市的夜 在头上\r\n沉默经过它的心上\r\n尽管它千疮百孔\r\n仍在夜里笑得冷艳漂亮\r\n十点半的地铁\r\n终于每个人都有了座位\r\n温热的风\r\n终于能轻轻地静静地吹\r\n对面的阿姨醒了又睡\r\n她没什么可依偎\r\n身边的妹妹\r\n不知道为谁 流着眼泪\r\n我也疲倦了\r\n这是我唯一不失眠的地方\r\n悲伤的 难过的\r\n在这里我没有力气去想\r\n城市的夜 在头上\r\n沉默经过它的心上\r\n尽管它千疮百孔\r\n仍在夜里笑得冷艳漂亮\r\n我也疲倦了\r\n这是我唯一不失眠的地方\r\n沉重的 烫手的\r\n在这里都可以暂时放放\r\n等到了站 下了车\r\n余下的路还有好长\r\n不去想 管它呢\r\n让风吹在我脸上\r\n十点半的地铁\r\n终于每个人都有了座位\r\n温柔的风\r\n终于能轻轻地轻轻地吹'),
(31, 'Poem by Father', '03:22', '5', 'https://y.qq.com/music/photo_new/T002R300x300M000002Z5WIn099zE9_1.jpg?max_age=2592000', '一九八四年 庄稼还没收割完\r\n女儿躺在我怀里 睡得那么甜\r\n今晚的露天电影 没时间去看\r\n妻子提醒我 修修缝纫机的踏板\r\n明天我要去 邻居家再借点钱\r\n孩子哭了一整天哪 闹着要吃饼干\r\n蓝色的涤卡上衣 痛往心里钻\r\n蹲在池塘边上 给了自己两拳\r\n这是我父亲 日记里的文字\r\n这是他的青春 留下留下来的散文诗\r\n几十年后 我看着泪流不止\r\n可我的父亲已经 老得像一个影子\r\n一九九四年 庄稼早已收割完\r\n我的老母亲去年 离开了人间\r\n女儿扎着马尾辫 跑进了校园\r\n可是她最近 有点孤单瘦了一大圈\r\n想一想未来 我老成了一堆旧纸钱\r\n那时的女儿一定 会美得很惊艳\r\n有个爱她的男人 要娶她回家\r\n可想到这些 我却不忍看她一眼\r\n这是我父亲 日记里的文字\r\n这是他的生命 留下\r\n留下来的散文诗\r\n几十年后 我看着泪流不止\r\n可我的父亲已经老得像一张旧报纸\r\n旧报纸\r\n那上面的故事 就是一辈子');



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

