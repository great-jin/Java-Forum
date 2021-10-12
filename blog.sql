/*
Navicat MySQL Data Transfer

Source Server         : GREAT
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2021-10-12 18:48:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_article`
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `AUId` int(11) NOT NULL,
  `AAuthor` varchar(50) NOT NULL,
  `ACategory` varchar(30) NOT NULL,
  `ATime` varchar(30) NOT NULL,
  `AIsOrigin` int(11) NOT NULL,
  `AHead` varchar(200) NOT NULL,
  `AContent` text NOT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=6467417 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES ('1', '3', 'Melody ', '趣闻', '2021-7-26', '1', '牛津大学学霸有什么学习习惯？', 'For the first 2 years of Oxford, I went to maybe 4 lectures out of hundreds available. I was arrogant, foolish, lazy, and severely disadvantaging myself.\r\n在牛津的前两年，有数百场讲座，而我大概只去了4场。我很自负、愚蠢、懒惰，严重地害了自己。\r\n\r\nIn my third year, I went to almost every single lecture available. Including those involving topics I was not personally involved or interested in. \r\n大三时几乎每场讲座我都去，包括我涉及不到的或不感兴趣的话题。\r\n\r\nMy mind changed when I actually went to lectures. \r\n去听讲座以后我的想法变了。\r\n\r\nFirstly, lectures are FUN! Sure, some of them suck. But I found so many gems that influenced my thinking. I found so many passionate, knowledgeable speakers who got me excited about the topic. \r\n首先，讲座很有趣！当然有些讲座很差劲，但我发现了很多影响我思想的有价值的讲座，我发现了很多有激情有学识的演讲者，他们使我对那个话题都感兴趣了。\r\n\r\nSecond, I remembered more stuff! An hour in the lecture hall has massive returns on investment.\r\n其次，我记住了更多东西！你投入到讲座的一个小时会有丰厚回报。\r\n\r\nStudy Habit #2: Be an active student.\r\n学习习惯#2：做一个积极的学生。\r\n\r\nFor my first year at Oxford, I barely said anything in tutorials. I didn’t volunteer in discussions and, as a result, I didn’t understand much. \r\n我在牛津的第一年在导师个别指导课上很少说话。我不会主动参与任何讨论，所以理解的也不好。\r\n\r\nMy understandings of different texts never matured or became complex. They stayed the same. And they were often wrong. \r\n我对不同文本的理解一直都不成熟，也不深刻，理解能力一如从前，也经常是错的。\r\n\r\nThen, somewhere in the middle of my second year, I got over myself and offered more of my own opinions. I responded to others, asked thoughtful questions, and interacted way more.\r\n后来大二期中的一段时间我开始超越自己，更多地提出自己的想法，响应其他人，问有深度的问题，和别人的互动也多了。\r\n\r\nBeing an active student also means asking for help. The smartest people in the world learned everything from other smart people.\r\n做一个积极的学生也意味着向他人求助，世界上最聪明的人的智慧都是从其他聪明人那儿学来的。');
INSERT INTO `tb_article` VALUES ('2', '4', 'Jack', '励志', '2021-7-28', '1', '哪5件事最值得你花时间去做？', '1. Hustling - at least 8 hours daily.\r\n忙一忙——每天至少8小时\r\nYou take charge of your own life and make your dreams come true. You don’t just dream about it - you take massive action as well.\r\n掌控你生活的是你自己，能让你的梦想成真的也是你自己。你不能只是做梦，你还得采取大量的行动。\r\nWhen you hustle, you manifest your intangible thoughts into tangible outcomes in the real world.\r\n当你忙的时候，你能把那些模糊的想法变成确实的结果。\r\nHustling isn’t about keeping yourself busy. It’s about identifying the tasks with the highest value and executing them ruthlessly.\r\n我所说的“忙一忙”并不是指单纯地一直做事，而是说先鉴别出最有价值的任务，然后毫不犹豫地执行它们。\r\nWhile hustling isn’t a guarantee that you will succeed, failing to do so is a guarantee that you will fail.\r\n虽然这么做并不能保证你成功，但不这么做却能保证你失败。\r\n\r\n2. Slowing down in the middle of the day - 15 minutes daily.\r\n找个时间放慢脚步——每天15分钟\r\nSometimes, it’s easy to get caught up with the never-ending hustling.\r\n有时候，你很容易被永远做不完的事搞得焦头烂额。\r\nYou may forget to stop and smell the roses.\r\n你可能会忘了停下脚步欣赏沿途的风景。\r\nSlow down. Your mind needs that short break.\r\n慢下来。你的大脑需要这样的小憩。\r\nSlow down whenever you catch yourself moving too fast. Doing so will reward you with extra energy and creativity.\r\n无论何时，只要你觉得自己走得太快了，就放慢脚步。这么做会让你获得额外的能量和创造力。\r\n\r\n3. Exercising - 30 minutes daily.\r\n锻炼——每天30分钟\r\nYou already know how important exercise is, right?\r\n你也知道运动很重要，对不对？\r\nIt keeps your body in optimal condition, keeps your brain sharp and make you more confident.\r\n它能让你的身体保持最佳状态，还能让你的大脑保持敏锐，并让你更加自信。\r\nMake sure you exercise daily no matter how busy you get.\r\n无论多忙，都要确保每天运动。\r\nIf you sacrifice health for wealth, someday you’re going to sacrifice your wealth for health.\r\n如果你现在为了财富而牺牲健康，总有一天你得为了健康而牺牲财富。\r\n\r\n4. Sleeping - 6 to 8 hours daily.\r\n睡觉——每天6-8小时\r\nI used to see people taking pride on their lack of sleep.\r\n我以前经常看到人们因为睡得少而感到自豪。\r\nThey’re proud of sleeping for 2 hours a night to pursue their dreams.\r\n他们为了追求梦想而每天只睡2小时，并因此感到骄傲。\r\nThen, they fell sick after a few days and took double the sleeping time to recover…\r\n结果，没过几天他们就病了，得多睡一倍的时间才能康复。\r\nYou have audacious goals, and that’s exactly why you must be well rested.\r\n你的目标很远大，而正因为如此你才需要好好休息。\r\nRemember, you want to thrive in the long term.\r\n记住，你希望赢得的是长跑，而不是百米冲刺。\r\n\r\n5. Visualizing long, middle and short term goals - 5 minutes daily.\r\n想象长期、中期和短期的愿景——每天5分钟\r\nIt’s easy to lose the big picture when you’re immersed in detailed executions.\r\n当你埋头执行那些具体的任务时，你很容易忽略大局。\r\nIt’s also easy to miss out the details executions when you’re grasping the big picture.\r\n而当你规划大局的时候，你也很容易忘了想怎么执行细节。\r\nVisualizing long, middle and short term goals allow you to refresh your mind about your current situation.\r\n将长、中、短期的愿景都想一想，这能让你重新激活大脑，让你把现况看得更清楚。');
INSERT INTO `tb_article` VALUES ('3', '5', 'Merry', '雅思', '2021-7-27', '0', 'You Have Only One Life', 'There are moments in life when you miss someone so much that you just want to pick them from your dreams and hug them for real! Dream what you want to dream;go where you want to go;be what you want to be,because you have only one life and one chance to do all the things you want to do.\r\n\r\n　　May you have enough happiness to make you sweet,enough trials to make you strong,enough sorrow to keep you human,enough hope to make you happy? Always put yourself in others’shoes.If you feel that it hurts you,it probably hurts the other person, too.\r\n\r\n　　The happiest of people don’t necessarily have the best of everything;they just make the most of everything that comes along their way.Happiness lies for those who cry,those who hurt, those who have searched,and those who have tried,for only they can appreciate the importance of people\r\n\r\n　　who have touched their lives.Love begins with a smile,grows with a kiss and ends with a tear.The brightest future will always be based on a forgotten past, you can’t go on well in lifeuntil you let go of your past failures and heartaches.\r\n\r\n　　When you were born,you were crying and everyone around you was smiling.Live your life so that when you die,you\'re the one who is smiling and everyone around you is crying.\r\n\r\n　　Please send this message to those people who mean something to you,to those who have touched your life in one way or another,to those who make you smile when you really need it,to those that make you see the brighter side of things when you are really down,to those who you want to let them know that you appreciate their friendship.And if you don’t, don’t worry,nothing bad will happen to you,you will just miss out on the opportunity to brighten someone’s day with this message.');
INSERT INTO `tb_article` VALUES ('4', '6', 'Mike', 'CET4', '2021-7-26', '0', 'Eliminate Internal Negative Chatter', 'The first step is one of awareness. It will be hard to make a change to positive thinking without being acutely intimate with the thoughts that run through your mind. Recently, I was amazed to discover deep buried emotions from negative thoughts that I had for fewer than 10 minutes. Without awareness, I would have carried the hurt and anger inside. Awareness helped me to bring them out to the open for me to deal with.');
INSERT INTO `tb_article` VALUES ('6467416', '5848030', 'great', '4', '21-8-3 下午8:47', '1', 'HHHHHH', 'hello!!!');

-- ----------------------------
-- Table structure for `tb_category`
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `CId` int(11) NOT NULL AUTO_INCREMENT,
  `CType` varchar(50) NOT NULL,
  PRIMARY KEY (`CId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('2', 'CET4');
INSERT INTO `tb_category` VALUES ('3', 'CET6');
INSERT INTO `tb_category` VALUES ('5', '广播');
INSERT INTO `tb_category` VALUES ('6', '趣闻');
INSERT INTO `tb_category` VALUES ('7', '励志');
INSERT INTO `tb_category` VALUES ('8', '雅思');
INSERT INTO `tb_category` VALUES ('9', '托福');

-- ----------------------------
-- Table structure for `tb_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `CId` int(11) NOT NULL AUTO_INCREMENT,
  `CUId` int(11) NOT NULL,
  `CArticleId` int(11) NOT NULL,
  `CTime` varchar(30) NOT NULL,
  `CContent` text NOT NULL,
  PRIMARY KEY (`CId`)
) ENGINE=InnoDB AUTO_INCREMENT=62827 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('1', '1', '3', '2021-7-29', 'GOOD');
INSERT INTO `tb_comment` VALUES ('2', '1', '4', '2021-7-29', '无敌敌');
INSERT INTO `tb_comment` VALUES ('3', '2', '5', '2021-7-28', '哈哈哈哈哈');
INSERT INTO `tb_comment` VALUES ('4', '2', '6', '2021-7-26', 'hhhhhh');
INSERT INTO `tb_comment` VALUES ('62826', '8855653', '1', '21-8-3 下午7:34', '');

-- ----------------------------
-- Table structure for `tb_employee`
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `EId` int(11) NOT NULL AUTO_INCREMENT,
  `EName` varchar(20) NOT NULL,
  `EPwd` varchar(20) NOT NULL,
  `EGender` char(2) NOT NULL,
  `ETel` varchar(20) NOT NULL,
  `EPower` int(11) NOT NULL,
  PRIMARY KEY (`EId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_employee
-- ----------------------------
INSERT INTO `tb_employee` VALUES ('1', 'admin', '123', '女', '13541635412', '0');
INSERT INTO `tb_employee` VALUES ('2', '张三', '123', '男', '21321213213', '1');
INSERT INTO `tb_employee` VALUES ('3', '李四', '123', '男', '12321213203', '1');
INSERT INTO `tb_employee` VALUES ('4', '王五', '123', '女', '11210531221', '1');
INSERT INTO `tb_employee` VALUES ('5', 'aaa', '123', '男', '30231021025', '1');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `UId` int(11) NOT NULL AUTO_INCREMENT,
  `UName` varchar(50) NOT NULL,
  `UPwd` varchar(20) NOT NULL,
  `UAge` varchar(20) NOT NULL,
  `UGender` char(2) NOT NULL,
  `UTel` varchar(20) NOT NULL,
  `UVocation` varchar(50) NOT NULL,
  PRIMARY KEY (`UId`)
) ENGINE=InnoDB AUTO_INCREMENT=5848031 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'aa', '123', '20', '男', '1234567891', '学生');
INSERT INTO `tb_user` VALUES ('2', 'bb', '123', '26', '女', '5213131313', '教师');
INSERT INTO `tb_user` VALUES ('3', 'Melody', '123', '18', '男', '5162135461', '学生');
INSERT INTO `tb_user` VALUES ('4', 'Jack', '123', '35', '女', '2541351213', '程序员');
INSERT INTO `tb_user` VALUES ('5', 'Merry', '123', '22', '女', '5451355436', '自媒体');
INSERT INTO `tb_user` VALUES ('6', 'Mike', '123', '29', '男', '3320212013', '记者');
INSERT INTO `tb_user` VALUES ('3021832', 'ccc', '123', '21', '男', '1775946620', '学生');
INSERT INTO `tb_user` VALUES ('5848030', 'great', '123', '21', '男', '1775946620', '程序员');
