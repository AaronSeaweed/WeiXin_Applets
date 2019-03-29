/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 29/03/2019 16:15:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articlelist
-- ----------------------------
DROP TABLE IF EXISTS `articlelist`;
CREATE TABLE `articlelist`  (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  `views` int(11) NOT NULL,
  `commentnum` int(11) NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `contenttype` int(11) NOT NULL,
  `recommend` tinyint(1) NOT NULL,
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articlelist
-- ----------------------------
INSERT INTO `articlelist` VALUES (1, '很棒的文章', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2016-12-16 15:18:22', 2, 2, 0, 2, 0);
INSERT INTO `articlelist` VALUES (2, '在这里可以看到前端技术，后端程序，网站内容', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2016-12-21 19:45:26', 2, 12, 1, 3, 0);
INSERT INTO `articlelist` VALUES (3, '在这个小工具中最多可以调用五条', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2016-12-22 22:29:34', 2, 4, 1, 4, 0);
INSERT INTO `articlelist` VALUES (4, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 6, 0, 5, 0);
INSERT INTO `articlelist` VALUES (5, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 4, 0);
INSERT INTO `articlelist` VALUES (6, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 3, 0);
INSERT INTO `articlelist` VALUES (7, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (8, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 4, 0);
INSERT INTO `articlelist` VALUES (9, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 2, 0);
INSERT INTO `articlelist` VALUES (10, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 3, 0);
INSERT INTO `articlelist` VALUES (11, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (12, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 3, 0);
INSERT INTO `articlelist` VALUES (13, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 2, 0);
INSERT INTO `articlelist` VALUES (14, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 4, 0);
INSERT INTO `articlelist` VALUES (15, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (16, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 3, 0);
INSERT INTO `articlelist` VALUES (17, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 2, 0);
INSERT INTO `articlelist` VALUES (18, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 3, 0);
INSERT INTO `articlelist` VALUES (19, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 3, 0);
INSERT INTO `articlelist` VALUES (20, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 4, 0);
INSERT INTO `articlelist` VALUES (21, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (22, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 2, 0);
INSERT INTO `articlelist` VALUES (23, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 2, 0);
INSERT INTO `articlelist` VALUES (24, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (25, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (26, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (27, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (28, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (29, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 5, 0);
INSERT INTO `articlelist` VALUES (30, '曾经他是一个王者', '可以用strtotime()把日期（$date）转成时间戳，再用date()按需要验证的格式转成一个日期，来跟$date比较是否相同来验证这个日期的格式是否是正确的。所以要验证日期格式 ... ', '2017-01-11 10:10:45', 2, 9, 0, 2, 0);

-- ----------------------------
-- Table structure for commentlist
-- ----------------------------
DROP TABLE IF EXISTS `commentlist`;
CREATE TABLE `commentlist`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `up` int(11) NOT NULL,
  `date` datetime(0) NOT NULL,
  `contentid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commentlist
-- ----------------------------
INSERT INTO `commentlist` VALUES (11, '信阳仔', '@紫菜 困了', 0, '2018-08-29 17:05:13', 1);
INSERT INTO `commentlist` VALUES (12, '其实我是真性情', '车牌是什么？', 0, '2018-11-02 10:55:00', 1);
INSERT INTO `commentlist` VALUES (13, '乂曱酱', '我会一字马', 322, '2018-11-03 11:24:00', 1);
INSERT INTO `commentlist` VALUES (14, 'starytx', '真刺激啊！', 88, '2018-10-11 12:04:00', 1);
INSERT INTO `commentlist` VALUES (15, '徐卡丘', '这不是去幼儿园的车', 123, '2018-11-02 11:12:00', 1);
INSERT INTO `commentlist` VALUES (16, '低调是种无声的高调', '唉！又绿了，天台没我位置了！', 666, '2018-11-04 14:12:00', 1);
INSERT INTO `commentlist` VALUES (31, 'admin', '看热闹', 0, '2018-11-09 09:40:56', 1);
INSERT INTO `commentlist` VALUES (39, '胜负多少', '本文可全文转载，但需要同时保留原作者和出处。', 0, '2018-11-13 14:42:36', 1);
INSERT INTO `commentlist` VALUES (40, '迷林', '牛逼牛逼牛逼', 0, '2019-01-16 14:58:53', 1);
INSERT INTO `commentlist` VALUES (41, 'admin', '????', 0, '2019-01-22 14:44:53', 3);
INSERT INTO `commentlist` VALUES (42, 'admin', '打个卡', 0, '2019-02-18 16:39:41', 1);
INSERT INTO `commentlist` VALUES (43, 'admin', '说点什么吧！', 0, '2019-02-19 11:05:23', 2);

-- ----------------------------
-- Table structure for contenttype
-- ----------------------------
DROP TABLE IF EXISTS `contenttype`;
CREATE TABLE `contenttype`  (
  `typeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`typeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contenttype
-- ----------------------------
INSERT INTO `contenttype` VALUES (1, '推荐');
INSERT INTO `contenttype` VALUES (2, 'Web前端');
INSERT INTO `contenttype` VALUES (3, '编程语言');
INSERT INTO `contenttype` VALUES (4, '数据库');
INSERT INTO `contenttype` VALUES (5, '移动端开发');
INSERT INTO `contenttype` VALUES (6, '全部');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `foodid` int(11) NOT NULL,
  `foodname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foodtypeid` int(11) NOT NULL,
  `eatnum` int(11) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`foodid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, '周黑鸭', 2, 0, 'zhouheiya.jpg', 38.80, '350g/盒');
INSERT INTO `food` VALUES (2, '串串', 2, 1, 'chuanchuan.jpg', 2.00, '3串起售');
INSERT INTO `food` VALUES (3, '蛋糕', 5, 2, 'dangao.jpg', 68.00, '1磅');
INSERT INTO `food` VALUES (4, '酸奶', 7, 2, 'suannai.jpg', 5.00, '250ml*4');
INSERT INTO `food` VALUES (5, '基围虾', 6, 1, 'jiweixia.jpg', 54.00, '400g');
INSERT INTO `food` VALUES (6, '火龙果', 4, 1, 'huolongguo.jpg', 11.50, '1个300g起');
INSERT INTO `food` VALUES (7, '油麦菜', 3, 2, 'youmaicai.jpg', 2.40, '300g');
INSERT INTO `food` VALUES (8, '鸡中翅', 2, 2, 'Chickenwings.jpg', 19.90, '400g');
INSERT INTO `food` VALUES (9, '番茄', 3, 3, 'tomato.jpg', 5.90, '2~3个');
INSERT INTO `food` VALUES (10, '鸡蛋', 2, 4, 'egg.jpg', 9.90, '10颗');
INSERT INTO `food` VALUES (11, '青枣', 4, 1, 'qingzao.jpg', 12.80, '500g/盒');
INSERT INTO `food` VALUES (12, '榴莲', 4, 0, 'liulian.jpg', 168.00, '1个3斤起');
INSERT INTO `food` VALUES (13, '五花肉', 2, 4, 'wuhuameat.jpg', 10.80, '250g');
INSERT INTO `food` VALUES (14, '牛排', 2, 1, 'steak.jpg', 15.80, '150g');
INSERT INTO `food` VALUES (15, '果冻', 8, 0, 'guodong.jpg', 15.00, '360g/袋');
INSERT INTO `food` VALUES (16, '香瓜子', 8, 1, 'xiangguazi.jpg', 12.00, '105g/袋');
INSERT INTO `food` VALUES (17, '卫龙辣条', 8, 1, 'weilonglatiao.jpg', 2.90, '60g/袋');
INSERT INTO `food` VALUES (18, '蒙牛优益C', 7, 1, 'youyiC.jpg', 9.90, '340ml*2');
INSERT INTO `food` VALUES (19, '益力多', 7, 1, 'yiliduo.jpg', 11.50, '100ml*5');
INSERT INTO `food` VALUES (20, '安慕希', 7, 0, 'anmuxi.jpg', 50.80, '205g*12');
INSERT INTO `food` VALUES (21, '百事可乐', 7, 2, 'baishikele.jpg', 7.80, '330ml*4');
INSERT INTO `food` VALUES (22, '菠菜', 3, 0, 'bocai.jpg', 5.90, '300g');
INSERT INTO `food` VALUES (23, '黄瓜', 3, 0, 'huanggua.jpg', 5.50, '450g');
INSERT INTO `food` VALUES (24, '胡萝卜', 3, 0, 'huluobo.jpg', 4.90, '400g');
INSERT INTO `food` VALUES (25, '金针菇', 3, 0, 'jinzhengu.jpg', 2.50, '200g');
INSERT INTO `food` VALUES (26, '空心菜', 3, 0, 'kongxincai.jpg', 2.80, '300g');
INSERT INTO `food` VALUES (27, '辣椒', 3, 0, 'lajiao.jpg', 4.50, '300g');
INSERT INTO `food` VALUES (28, '莲藕', 3, 0, 'lianou.jpg', 5.90, '400g');
INSERT INTO `food` VALUES (29, '茄子', 3, 0, 'qiezi.jpg', 3.20, '350g');
INSERT INTO `food` VALUES (30, '土豆', 3, 0, 'tudou.jpg', 2.50, '500g');
INSERT INTO `food` VALUES (31, '西兰花', 3, 0, 'xilanhua.jpg', 4.60, '300g');
INSERT INTO `food` VALUES (32, '洋葱', 3, 0, 'yangcong.jpg', 1.10, '100～300g');
INSERT INTO `food` VALUES (33, '芹菜', 3, 0, 'qincai.jpg', 4.50, '350g');
INSERT INTO `food` VALUES (34, '玉米', 3, 0, 'yumi.jpg', 6.50, '400~500g*2');
INSERT INTO `food` VALUES (35, '葡萄', 4, 0, 'putao.jpg', 9.90, '500g/盒');
INSERT INTO `food` VALUES (36, '柚子', 4, 0, 'youzi.jpg', 29.90, '8~10斤*2');
INSERT INTO `food` VALUES (37, '桃子', 4, 0, 'taozi.jpg', 19.80, '400~500g/份');
INSERT INTO `food` VALUES (38, '梨子', 4, 0, 'lizi.jpg', 11.90, '400～500g*5');
INSERT INTO `food` VALUES (39, '苹果', 4, 0, 'pingguo.jpg', 15.90, '4个600g起');
INSERT INTO `food` VALUES (40, '芒果', 4, 0, 'mangguo.jpg', 9.90, '1个240g起');
INSERT INTO `food` VALUES (41, '草莓', 4, 0, 'caomei.jpg', 29.90, '250g/盒');
INSERT INTO `food` VALUES (42, '哈密瓜', 4, 0, 'hamigua.jpg', 29.90, '1个2.2斤起');
INSERT INTO `food` VALUES (43, '西瓜', 4, 0, 'xigua.jpg', 12.90, '1个2斤起');
INSERT INTO `food` VALUES (44, '香蕉', 4, 0, 'xiangjiao.jpg', 11.90, '600g起');
INSERT INTO `food` VALUES (45, '菠萝', 4, 0, 'boluo.jpg', 19.90, '1个2.2斤起');
INSERT INTO `food` VALUES (46, '扇贝', 6, 0, 'shanbei.jpg', 19.90, '200g');
INSERT INTO `food` VALUES (47, '鲈鱼', 6, 0, 'luyu.jpg', 14.90, '200～250g/条');
INSERT INTO `food` VALUES (48, '三文鱼', 6, 0, 'sanwenyu.jpg', 39.90, '250g');
INSERT INTO `food` VALUES (49, '蛤蜊', 6, 0, 'geli.jpg', 12.90, '400g');
INSERT INTO `food` VALUES (50, '帝王蟹', 6, 0, 'diwangxie.jpg', 129.00, '500g');
INSERT INTO `food` VALUES (51, '波士顿龙虾', 6, 0, 'Bostonlongxia.jpg', 72.80, '400g');
INSERT INTO `food` VALUES (52, '鱿鱼', 6, 0, 'youyu.jpg', 12.90, '250g');
INSERT INTO `food` VALUES (53, '生蚝', 6, 0, 'shenghao.jpg', 29.90, '80~110g*10');
INSERT INTO `food` VALUES (54, '小龙虾', 6, 0, 'xiaolongxia.jpg', 29.90, '750g');
INSERT INTO `food` VALUES (55, '鲫鱼', 6, 0, 'jiyu.jpg', 9.90, '300g');
INSERT INTO `food` VALUES (56, '青蟹', 6, 0, 'qingxie.jpg', 278.00, '350~400g/只*2');

-- ----------------------------
-- Table structure for menulist
-- ----------------------------
DROP TABLE IF EXISTS `menulist`;
CREATE TABLE `menulist`  (
  `currentid` int(11) NOT NULL,
  `menuNmae` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`currentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menulist
-- ----------------------------
INSERT INTO `menulist` VALUES (1, '最爱吃的');
INSERT INTO `menulist` VALUES (2, '肉类');
INSERT INTO `menulist` VALUES (3, '蔬菜');
INSERT INTO `menulist` VALUES (4, '水果');
INSERT INTO `menulist` VALUES (5, '甜品');
INSERT INTO `menulist` VALUES (6, '海鲜水产');
INSERT INTO `menulist` VALUES (7, '冷饮冻食');
INSERT INTO `menulist` VALUES (8, '休闲食品');

-- ----------------------------
-- Table structure for order_goodlist
-- ----------------------------
DROP TABLE IF EXISTS `order_goodlist`;
CREATE TABLE `order_goodlist`  (
  `id` int(11) NOT NULL,
  `orderid` int(11) NULL DEFAULT NULL,
  `foodid` int(20) NULL DEFAULT NULL,
  `count` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_goodlist
-- ----------------------------
INSERT INTO `order_goodlist` VALUES (1, 1, 13, 1);
INSERT INTO `order_goodlist` VALUES (2, 1, 8, 3);
INSERT INTO `order_goodlist` VALUES (3, 1, 1, 1);
INSERT INTO `order_goodlist` VALUES (4, 1, 14, 1);
INSERT INTO `order_goodlist` VALUES (5, 1, 47, 1);
INSERT INTO `order_goodlist` VALUES (6, 2, 11, 1);
INSERT INTO `order_goodlist` VALUES (7, 2, 40, 1);

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist`  (
  `orderid` int(11) NOT NULL,
  `ordernum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodtolprice` double(10, 2) NOT NULL,
  `payprice` double(10, 2) NOT NULL,
  `deliveryprice` double(10, 2) NOT NULL,
  `Reciinfo` int(11) NOT NULL,
  `orderdate` datetime(0) NOT NULL,
  `orderstatus` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES (1, '1553156890', 140.00, 140.00, 0.00, 1, '2019-03-21 16:30:22', 1);
INSERT INTO `orderlist` VALUES (2, '1553756056', 22.70, 27.70, 5.00, 2, '2019-03-28 14:54:16', 1);

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statusid` int(11) NULL DEFAULT NULL,
  `statusname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
INSERT INTO `orderstatus` VALUES (1, 1, '待付款');
INSERT INTO `orderstatus` VALUES (2, 2, '待发货');
INSERT INTO `orderstatus` VALUES (3, 3, '配送中');
INSERT INTO `orderstatus` VALUES (4, 4, '已完成');
INSERT INTO `orderstatus` VALUES (5, 5, '已取消');

-- ----------------------------
-- Table structure for replyart
-- ----------------------------
DROP TABLE IF EXISTS `replyart`;
CREATE TABLE `replyart`  (
  `replyid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `artid` int(11) NOT NULL,
  `replyusername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `replycontent` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `replyup` int(11) NOT NULL,
  `replydate` datetime(0) NOT NULL,
  `replytype` int(11) NOT NULL,
  PRIMARY KEY (`replyid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of replyart
-- ----------------------------
INSERT INTO `replyart` VALUES (1, 16, 'admin', '节哀顺变', 0, '2018-11-08 10:23:54', 0);
INSERT INTO `replyart` VALUES (2, 16, '迷林', '借你2W美金加仓，别怂继续刚', 0, '2018-11-08 16:12:45', 0);
INSERT INTO `replyart` VALUES (3, 2, '低调是种无声的高调', '滚犊子，都等半年了没见2W美金', 1, '2018-11-08 16:22:00', 1);
INSERT INTO `replyart` VALUES (5, 3, 'admin', '666', 0, '2018-11-09 16:05:21', 1);
INSERT INTO `replyart` VALUES (7, 16, '信阳仔', '留下支付宝账号密码啊！', 0, '2018-11-09 16:53:22', 0);
INSERT INTO `replyart` VALUES (8, 2, '信阳仔', '我也要2W美金啊！', 0, '2018-11-09 16:55:27', 1);
INSERT INTO `replyart` VALUES (9, 11, 'admin', '回去玩儿媳妇去', 0, '2018-11-09 17:32:18', 0);
INSERT INTO `replyart` VALUES (10, 39, 'admin', '你真骚', 0, '2018-11-21 14:05:53', 0);
INSERT INTO `replyart` VALUES (15, 10, '胜负多少', '你最骚', 0, '2019-01-16 14:13:48', 1);
INSERT INTO `replyart` VALUES (17, 8, '胜负多少', '小婊贝要不要', 0, '2019-01-16 14:56:58', 1);
INSERT INTO `replyart` VALUES (18, 9, '胜负多少', '？？', 0, '2019-01-16 14:57:39', 1);
INSERT INTO `replyart` VALUES (19, 40, '胜负多少', '小骚货', 0, '2019-01-16 14:59:47', 0);
INSERT INTO `replyart` VALUES (20, 19, 'admin', '你才是小骚货', 0, '2019-01-16 15:00:29', 1);
INSERT INTO `replyart` VALUES (21, 18, 'admin', '玩你的小婊贝去', 0, '2019-01-16 15:00:53', 1);
INSERT INTO `replyart` VALUES (22, 15, 'admin', '晚上回去等着', 0, '2019-02-19 11:07:48', 1);
INSERT INTO `replyart` VALUES (23, 20, '胜负多少', '滚犊子', 0, '2019-02-20 09:49:31', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `callname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `selfintroduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homepage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '信阳仔', '123456', '\r\n扒灰圣手送浆', '1_lsq19871207.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (2, '低调是种无声的高调', '123456', '\r\n横沙岛狗群主', '1_mrmicrosoft.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, '其实我是真性情', '123123', '我女儿超可爱', '1_lwb314.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (4, '乂曱酱', '123123', '84灭鸡师太', '1_qq_27244815.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (5, 'starytx', '123123', '长安之星', '1_starytx.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (6, '徐卡丘', '123123', '朝阳女司机', '1_tu1425407707.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (7, '迷林', '123123', '99年小女友', '1_wi496481.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (8, 'admin', '123456', '紫菜', 'file-1550479133789.jpg', '豆豆豆星际联盟', '这个人很懒，没有留下任何信息', '最佳管理员', '开发中。emmmm...111');
INSERT INTO `user` VALUES (9, '胜负多少', '123456', '小婊贝体测员', 'file-1550478997402.png', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for useraddress
-- ----------------------------
DROP TABLE IF EXISTS `useraddress`;
CREATE TABLE `useraddress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Telphone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailaddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usestatus` int(11) NULL DEFAULT NULL,
  `addresstype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doorplate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of useraddress
-- ----------------------------
INSERT INTO `useraddress` VALUES (1, '老徐', '13097212696', '广东省', '深圳市', '宝安区', '新安街道裕安二路大家好广场综合楼', 0, '住宅', '一栋8楼801');
INSERT INTO `useraddress` VALUES (2, '雷先生', '18664364632', '广东省', '深圳市', '宝安区', '新安街道翻身路泰华俊庭', 0, '住宅', 'A栋1209');

SET FOREIGN_KEY_CHECKS = 1;
