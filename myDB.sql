/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : myDB

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 13/06/2020 14:27:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for GOODS
-- ----------------------------
DROP TABLE IF EXISTS `GOODS`;
CREATE TABLE `GOODS`  (
  `uid` int(13) NOT NULL,
  `good_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `good_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `in_price` decimal(10, 2) NULL DEFAULT NULL,
  `out_price` decimal(10, 2) NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `amount` int(25) NULL DEFAULT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of GOODS
-- ----------------------------
INSERT INTO `GOODS` VALUES (1, '王老吉凉茶', '6901424333948 ', 2.10, 2.60, '广州', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '355ml可口可乐', '6908512108518 ', 1.90, 2.40, '杭州', 100, '听', '特价');
INSERT INTO `GOODS` VALUES (1, '355ml雪碧', '6908512109515 ', 1.90, 2.40, '杭州', 100, '听', '特价');
INSERT INTO `GOODS` VALUES (1, '355ml醒目[苹果]', '6908512233517 ', 2.00, 2.50, '杭州', 100, '听', NULL);
INSERT INTO `GOODS` VALUES (1, '355ml醒目[西瓜]', '6908512238512 ', 2.00, 2.50, '杭州', 100, '听', NULL);
INSERT INTO `GOODS` VALUES (1, '600ml雪碧', '6908512109423 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '600ml可口可乐', '6908512108426 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '500ml醒目[苹果]', '6908512233418 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '可口可乐', '6908512108211 ', 4.70, 5.20, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '雪碧', '6908512109218 ', 4.70, 5.20, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '330ml酷儿[橙汁]', '6920927181122 ', 2.50, 3.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '470ml茶研工坊(清研)', '6920927161728 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '480ml雀巢冰爽柠檬茶', '6920927143212 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '450ml美汁源果粒橙', '6920927181221 ', 2.80, 3.30, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '美汁源果粒橙', '6920927181894 ', 6.50, 7.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '光明橙汁饮料', '6901209203367 ', 6.50, 7.00, '上海', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '香派红糖姜茶', '6932541600101 ', 9.50, 10.00, '杭州', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '娃哈哈桂圆莲子八宝粥', '6902083880781 ', 3.20, 3.70, '杭州', 100, '听', '特价');
INSERT INTO `GOODS` VALUES (1, '500ml娃哈哈非常冰红茶', '6902083883089 ', 2.40, 2.90, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '280ml娃哈哈营养快线(原味)', '6902083889296 ', 2.50, 3.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '280ml娃哈哈营养快线(菠萝)', '6902083889289 ', 2.50, 3.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml娃哈哈营养快线(原味)', '6902083886455 ', 3.95, 4.45, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml娃哈哈营养快线(菠萝)', '6902083886417 ', 3.90, 4.40, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '350ml呦呦奶茶(原味)', '6942980800086 ', 3.20, 3.70, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '350ml呦呦奶茶(桂花)', '6942980800093 ', 3.20, 3.70, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '350ml呦呦奶茶(茉莉)', '6942980800260 ', 3.20, 3.70, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '雀巢咖啡(盒装)', '6917878008691 ', 12.80, 13.30, '广东', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '雀巢咖啡1+2', '6917878001982 ', 12.80, 13.30, '广东', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '农夫果园100%胡萝卜', '6921168513031 ', 3.50, 4.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '农夫果园100%番茄味', '6921168511013 ', 3.50, 4.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '550ml农夫山泉天然水(普通型)', '6921168509256 ', 1.00, 1.50, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '380ml农夫山泉天然水', '6921168511280 ', 1.00, 1.50, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '600ml农夫果园30%橙胡味', '6921168532001 ', 3.50, 4.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '600ml农夫果园30%菠芒', '6921168532025 ', 3.50, 4.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '380ml农夫果园30%番莓味', '6921168532049 ', 3.50, 4.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '红牛饮料(促销)', '6920202888838 ', 5.50, 6.00, '北京', 100, '听', NULL);
INSERT INTO `GOODS` VALUES (1, '80g香飘飘奶茶(原味)', '6938888888837 ', 2.60, 3.10, '湖州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '80g香飘飘奶茶（草莓）', '6938888888868 ', 2.60, 3.10, '湖州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '80g香飘飘奶茶(麦香)', '6938888888844 ', 2.60, 3.10, '湖州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '80g香飘飘奶茶（香芋）', '6938888888813 ', 2.60, 3.10, '湖州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '70g香飘飘珍珠奶茶（香芋）', '6938888888530 ', 3.50, 4.00, '湖州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '70g香飘飘珍珠奶茶（巧克力）', '6938888888561 ', 3.40, 3.90, '湖州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '70g香飘飘珍珠奶茶（原味红茶）', '6938888888516 ', 3.50, 4.00, '湖州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '72g大好大香约奶茶(哈密瓜)', '6926858908074 ', 2.50, 3.00, '温州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '22g大好大香约条装奶茶（香芋）', '6926858908203 ', 1.00, 1.50, '温州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '22g大好大香约条装奶茶（草莓）', '6926858908227 ', 1.00, 1.50, '温州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '22g大好大香约条装奶茶（原味）', '6926858908210 ', 1.00, 1.50, '温州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '80g喜之郎优乐美（原味）', '6926475203149 ', 2.50, 3.00, '广东', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '480ml雀巢冰极茶', '6920927143243 ', 2.50, 3.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '香派蜂蜜姜茶', '6932541600118 ', 9.50, 10.00, '广东', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '雀巢咖啡', '6903473100014 ', 17.80, 18.30, '广东', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '雀巢咖啡伴侣', '6903473021067 ', 8.55, 9.05, '广东', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '雀巢咖啡（杯装）', '6917878011004 ', 2.50, 3.00, '广东', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '雀巢咖啡1+2（10条装）', '6917878024189 ', 12.80, 13.30, '广东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '康师傅橙汁饮品', '6920459994801 ', 5.40, 5.90, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '490ml康师傅冰红茶', '6920459905012 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '500ml康师傅茉莉清茶', '6920459998434 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '500ml康师傅每日C（葡萄）', '6920459908549 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '340ml康师傅冰红茶', '6920459907016 ', 2.00, 2.50, '杭州', 100, '听', NULL);
INSERT INTO `GOODS` VALUES (1, '340ml康师傅每日C（橙汁）', '6920459907382 ', 2.00, 2.50, '杭州', 100, '听', NULL);
INSERT INTO `GOODS` VALUES (1, '340ml康师傅每日C（水晶葡萄）', '6920459907429 ', 2.00, 2.50, '杭州', 100, '听', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml康师傅冰红茶', '6920459902387 ', 1.20, 1.70, '杭州', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '250ml康师傅橙汁饮料', '6920459931004 ', 1.20, 1.70, '杭州', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '72g相约奶茶(原味)', '6926858908005 ', 2.50, 3.00, '温州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '72g相约奶茶(麦香)', '6926858908012 ', 2.50, 3.00, '温州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '72g相约奶茶(咖啡)', '6925858908050 ', 2.50, 3.00, '温州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '72g相约奶茶(巧克力)', '6925858908036 ', 2.50, 3.00, '温州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '72g相约奶茶(草莓)', '6926858908067 ', 2.50, 3.00, '温州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '80g喜之郎优乐美（香芋）', '6926475203170 ', 2.50, 3.00, '广东', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '80g喜之郎优乐美（草莓）', '6926475203187 ', 2.50, 3.00, '广东', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '80g喜之郎优乐美（麦香）', '6926475203156 ', 2.50, 3.00, '广东', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml娃哈哈营养快线(香草）', '6902083891329 ', 3.80, 4.30, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '600ml娃哈哈激活（柠檬）', '6902083886509 ', 2.80, 3.30, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '600ml娃哈哈激活（柑橘）', '6902083886363 ', 2.80, 3.30, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml娃哈哈龙井绿茶（低糖）', '6902083882983 ', 2.40, 2.90, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '350ml启力卡布奇诺口味', '6942980800062 ', 3.80, 4.30, '海宁', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '350ml启力焦糖玛奇朵口味', '6942980800079 ', 3.80, 4.30, '海宁', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '200ml娃哈哈爽歪歪(益生菌)', '6902083890636 ', 1.90, 2.40, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '550ml尖叫纤维饮料(柠檬味)', '6921168504022 ', 3.20, 3.70, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '550ml尖叫运动饮料(西柚)', '6921168504015 ', 3.20, 3.70, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '550ml尖叫植物饮料(复合果味)', '6921168504039 ', 3.20, 3.70, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '农夫果园30%菠芒味', '6921168591527 ', 6.70, 7.20, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '农夫果园30%番莓味', '6921168591534 ', 7.50, 8.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '250ML红牛', '6920202888883 ', 5.50, 6.00, '北京', 100, '听', NULL);
INSERT INTO `GOODS` VALUES (1, '农夫果园30%橙胡味', '6921168591510 ', 6.70, 7.20, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '农夫果园100%橙汁', '6921168512027 ', 3.50, 4.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml康师傅水晶葡萄', '6920459908181 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '500ml康师傅水蜜桃', '6920459905104 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '500ml康师傅每日C(橙汁)', '6920459908501 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '500ml康师傅绿茶', '6920459905166 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '480ml原叶冰红茶', '6920927143281 ', 2.30, 2.80, '江苏', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '480ml原叶绿茶', '6920927143274 ', 2.30, 2.80, '江苏', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '500ml娃哈哈思慕C（香橙味）', '6902083890209 ', 3.80, 4.30, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml娃哈哈思慕C（桃杏味）', '6902083891572 ', 3.80, 4.30, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml娃哈哈思慕C（芒果味）', '6902083890933 ', 3.80, 4.30, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml娃哈哈营养快线（菠萝味）', '6902083889227 ', 2.40, 2.90, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml娃哈哈营养快线（原味）', '6902083889234 ', 2.40, 2.90, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '600ML芬达', '6908512110429 ', 2.40, 2.90, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml醒目(西瓜味)', '6908512238413 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '470ml茶研工坊(清本绿茶)', '6920927161711 ', 2.40, 2.90, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '220ml娃哈哈乳娃娃', '6902083888411 ', 2.00, 2.50, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml呦呦奶茶奶味茶(桂花)', '6942980800055 ', 4.00, 4.50, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml呦呦奶茶奶味茶(原味)', '6942980800048 ', 4.00, 4.50, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml呦呦奶茶奶味茶(茉莉)', '6942980800253 ', 3.80, 4.30, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '450ml酷儿橙汁', '6920927181245 ', 2.90, 3.40, '广东', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '500ml康师傅每日C水晶葡萄', '6920459905739 ', 2.40, 2.90, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '550ml水森活纯净水', '6908198100011 ', 0.90, 1.40, '杭州', 100, '瓶', '特价');
INSERT INTO `GOODS` VALUES (1, '娃哈哈纯净水', '6902083881405 ', 1.00, 1.50, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '596ml娃哈哈纯真年代', '6902083884178 ', 1.00, 1.50, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '娃哈哈纯净水', '6902083880675 ', 0.90, 1.40, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '农夫山泉天然水', '6921168509270 ', 6.00, 6.50, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '农夫山泉天然水', '6921168520015 ', 2.20, 2.70, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '600ml康师傅纯净水', '6920459905036 ', 1.00, 1.50, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '350ml康师傅纯净水', '6920459905388 ', 0.90, 1.40, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利早餐奶(麦香)', '6907992504476 ', 2.70, 3.20, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利早餐奶(鸡蛋)', '6907992504940 ', 2.70, 3.20, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利双果奇缘（芒果西蕃莲）', '6907992501512 ', 1.70, 2.20, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利双果奇缘（荔枝梨）', '6907992502298 ', 1.70, 2.20, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利双果奇缘（哈密瓜+猕猴桃）', '6907992501505 ', 1.70, 2.20, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '娃哈哈AD钙奶220ml*24', '6902083881085 ', 1.50, 2.00, '杭州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利优酸乳（原味）', '6907992500010 ', 1.80, 2.30, '内蒙', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '250ml伊利优酸乳(草莓味)', '6907992100012 ', 1.70, 2.20, '内蒙', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '250ml伊利双果奇缘（菠萝+橙味）', '6907992502304 ', 1.70, 2.20, '内蒙', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '250ml伊利果之优酸乳（原味）', '6907992509389 ', 2.80, 3.30, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利果之优酸乳（草莓）', '6907992508856 ', 2.80, 3.30, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利果之优酸乳（菠萝）', '6907992508849 ', 2.80, 3.30, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利早餐奶(核桃)', '6907992505268 ', 2.70, 3.20, '内蒙', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '250ml伊利早餐奶(花生味)', '6907992505046 ', 2.70, 3.20, '内蒙', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '250ml伊利草莓奶', '6907992500089 ', 2.20, 2.70, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '250ml伊利优酸乳(蓝莓味)', '6907992502588 ', 1.70, 2.20, '内蒙', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '250ml伊利双果奇缘(木瓜+杏味)', '6907992501536 ', 1.70, 2.20, '内蒙', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '伊利纯牛奶', '6907992100272 ', 2.50, 3.00, '内蒙', 100, '盒', '特价');
INSERT INTO `GOODS` VALUES (1, '伊利营养舒化奶（全脂型）', '6907992507064 ', 3.50, 4.00, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '伊利营养舒化奶(低脂)', '6907992507088 ', 3.80, 4.30, '内蒙', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '308g广信大冰糖', '6920484103315 ', 3.80, 4.30, '广州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '80g百诺麦丽素', '6926832402918 ', 2.50, 3.00, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '77g百诺巧克力(草莓)', '6926832401317 ', 3.00, 3.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '85g百诺奶心果仁', '6926832407265 ', 2.00, 2.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '37g曼妥思(薄荷条装)', '6921211101017 ', 1.90, 2.40, '上海', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '37g曼妥思(青柠条装）', '6911316602014 ', 1.80, 2.30, '上海', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '35g阿尔卑斯(牛奶条装)', '6911316400016 ', 1.90, 2.40, '上海', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '35g阿尔卑斯(草莓条装)', '6911316400306 ', 1.90, 2.40, '上海', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '阿尔卑斯(牛奶)', '6911316400030 ', 6.50, 7.00, '上海', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '阿尔卑斯(鲜橙)', '6911316800038 ', 6.50, 7.00, '上海', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '6.9g清嘴含片(草莓味)', '6924960961185 ', 5.00, 5.50, '安吉', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '6.9g清嘴含片(柠檬味)', '6924960961116 ', 5.00, 5.50, '安吉', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '绿箭三条装', '6923450605035 ', 3.40, 3.90, '广州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '益达蓝莓单条装', '6923469021343 ', 1.90, 2.40, '福建', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '益达木糖醇草莓饼装40粒', '6923450656150 ', 8.90, 9.40, '福建', 100, '罐', NULL);
INSERT INTO `GOODS` VALUES (1, '益达木糖醇薄荷饼装40粒', '6923450656181 ', 8.90, 9.40, '福建', 100, '罐', NULL);
INSERT INTO `GOODS` VALUES (1, '瑞士糖草莓味(条装)', '6923469026836 ', 1.80, 2.30, '广州', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '瑞士糖黑加仑子味(条装)', '6923469026805 ', 1.80, 2.30, '广州', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '25g旺仔QQ糖(葡萄)', '6920952762020 ', 1.00, 1.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '25g旺仔QQ糖(菠萝)', '6920952762037 ', 1.00, 1.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '25g旺仔QQ糖(草莓)', '6920952767117 ', 1.00, 1.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '70g旺仔QQ糖(水蜜桃)', '6920952762099 ', 2.40, 2.90, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '70g旺仔QQ糖(荔枝)', '6920952762990 ', 2.40, 2.90, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '70g旺仔QQ糖(草莓)', '6920952767131 ', 2.40, 2.90, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '120g上好佳青苹果硬糖', '6926265306814 ', 2.80, 3.30, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '120g上好佳什锦果糖', '6919020012297 ', 2.80, 3.30, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '120上好佳牛奶软糖', '6919020011016 ', 4.20, 4.70, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '120g上好佳缤纷什锦软糖', '6919020011283 ', 4.15, 4.65, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '王老吉润喉糖', '6901424286213 ', 4.80, 5.30, '广州', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '18g旺仔牛奶糖', '6936003512414 ', 1.00, 1.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '120g上好佳提子硬糖', '6926265306838 ', 2.80, 3.30, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '大大切切乐泡泡糖蜜瓜味', '6923450681237 ', 2.40, 2.90, '广州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '35g瑞士糖草莓味（条装）', '69026836 ', 1.80, 2.30, '广州', 100, '条', NULL);
INSERT INTO `GOODS` VALUES (1, '35g瑞士青苹果味（条装）', '69026829 ', 1.80, 2.30, '广州', 100, '条', NULL);
INSERT INTO `GOODS` VALUES (1, '瑞士糖柠檬味（条装）', '69026812 ', 1.80, 2.30, '广州', 100, '条', NULL);
INSERT INTO `GOODS` VALUES (1, '瑞士糖香橙味（条装）', '69026850 ', 1.80, 2.30, '广州', 100, '条', NULL);
INSERT INTO `GOODS` VALUES (1, '瑞士糖黑加仑子味(条装)', '69026805 ', 1.80, 2.30, '广州', 100, '条', NULL);
INSERT INTO `GOODS` VALUES (1, '大大卷切切乐草莓味12卷', '6923450681121 ', 2.40, 2.90, '广州', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '大大卷切切乐青柠味12卷', '6923450681145 ', 2.40, 2.90, '广州', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '绿箭薄荷糖原味', '69026218 ', 3.50, 4.00, '广州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '绿箭薄荷糖茉莉花茶', '69026225 ', 3.50, 4.00, '广州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '绿箭瓶装40粒', '6923450601549 ', 8.50, 9.00, '广州', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '绿箭三条装', '6923450601037 ', 3.60, 4.10, '广州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '绿箭超强薄荷味（单支装）', '69022265 ', 1.70, 2.20, '广州', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '五片绿箭单支装', '69019388 ', 1.20, 1.70, '广州', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '绿箭分享包', '69021220 ', 3.60, 4.10, '广州', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '益达蓝莓单条装', '69021343 ', 1.90, 2.40, '广州', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '益达香浓蜜瓜40粒瓶装', '69025143 ', 8.90, 9.40, '广州', 100, '瓶', NULL);
INSERT INTO `GOODS` VALUES (1, '100g喔喔奶糖(红豆味)', '6921176608279 ', 4.50, 5.00, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '100g喔喔奶糖(原味)', '6921176608262 ', 4.50, 5.00, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '阿尔卑斯棒棒糖(牛奶味)', '6911316400504 ', 0.50, 1.00, '上海', 100, '粒', NULL);
INSERT INTO `GOODS` VALUES (1, '阿尔卑斯棒棒糖(草莓味)', '6911316540309 ', 0.50, 1.00, '上海', 100, '粒', NULL);
INSERT INTO `GOODS` VALUES (1, '阿尔卑斯棒棒糖(芒果)', '6911316540309 ', 0.50, 1.00, '上海', 100, '粒', NULL);
INSERT INTO `GOODS` VALUES (1, '阿尔卑斯棒棒糖(树莓)', '6911316540309 ', 0.50, 1.00, '上海', 100, '粒', NULL);
INSERT INTO `GOODS` VALUES (1, '25g旺仔QQ糖（蓝莓）', '6920952767124 ', 1.00, 1.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '70g旺仔QQ糖（菠萝）', '6920952762082 ', 2.40, 2.90, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '70g旺仔QQ糖（蓝莓）', '6920952767148 ', 2.40, 2.90, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '70g旺仔QQ糖（葡萄）', '6920952762075 ', 2.40, 2.90, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '阿尔卑斯棒棒糖(香蕉）', '6911316540309 ', 0.50, 1.00, '上海', 100, '粒', NULL);
INSERT INTO `GOODS` VALUES (1, '阿尔卑斯棒棒糖(香草)', '6911316540309 ', 0.50, 1.00, '上海', 100, '粒', NULL);
INSERT INTO `GOODS` VALUES (1, '果然多CC卷(菠萝)', '6938810900521 ', 1.00, 1.50, '南京', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '果然多CC卷(草莓)', '6938810900538 ', 1.00, 1.50, '南京', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '150G金娃维C果冻爽', '6911445990198 ', 1.80, 2.30, '广东', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '185G金娃大果肉果冻', '6911445200068 ', 2.80, 3.30, '广东', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '218G金娃高钙椰果果冻', '6911445201157 ', 1.80, 2.30, '广东', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '90g喜之郎香橙味果冻', '6926475200384 ', 0.90, 1.40, '广东', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '200g喜之郎果肉单杯混装', '6902934990362 ', 3.10, 3.60, '广东', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '218g喜之郎蜜桃果冻爽', '6926475201015 ', 1.75, 2.25, '广东', 100, '杯', '特价');
INSERT INTO `GOODS` VALUES (1, '218g喜之郎荔枝果冻爽', '6926475201411 ', 1.75, 2.25, '广东', 100, '杯', '特价');
INSERT INTO `GOODS` VALUES (1, '150g喜之郎荔枝维C爽', '6902934987171 ', 1.80, 2.30, '广东', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '150g喜之郎芒果维C爽', '6926475201329 ', 1.80, 2.30, '广东', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '150g喜之郎苹果维C爽', '6926475201312 ', 1.65, 2.15, '广东', 100, '支', '特价');
INSERT INTO `GOODS` VALUES (1, '117g喜之郎茶味果冻桶', '6926475202944 ', 2.45, 2.95, '广东', 100, '桶', NULL);
INSERT INTO `GOODS` VALUES (1, '117g喜之郎咖啡味果冻桶', '6926475202951 ', 2.45, 2.95, '广东', 100, '桶', NULL);
INSERT INTO `GOODS` VALUES (1, '150G喜之郎菠萝维C爽', '6926475201343 ', 1.80, 2.30, '广东', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '150G喜之郎香橙维C爽', '6926475201350 ', 1.80, 2.30, '广东', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '150G喜之郎葡萄维C爽', '6926475201367 ', 1.80, 2.30, '广东', 100, '支', NULL);
INSERT INTO `GOODS` VALUES (1, '218G喜之朗苹果果冻爽', '6902934990683 ', 1.80, 2.30, '广东', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '旺旺咖啡冻', '6920658267119 ', 2.95, 3.45, '南京', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '218g喜之郎芒果味果冻爽', '6926475201015 ', 1.75, 2.25, '广东', 100, '杯', '特价');
INSERT INTO `GOODS` VALUES (1, '18G奇多(牛排)', '6924743912373 ', 1.00, 1.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '18G奇多(火鸡)', '6924743912625 ', 1.00, 1.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '70G奇多(牛排)', '6924743911659 ', 2.70, 3.20, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '70G奇多(火鸡)', '6924743911673 ', 2.70, 3.20, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '100G正航梳打奶油饼', '6919046601628 ', 1.80, 2.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '100GD正航葱香味薄片饼', '6919046601284 ', 1.80, 2.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '100G正航烧烤味薄片饼', '6919046604582 ', 1.80, 2.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '120G正航蛋黄饼干', '6919046603974 ', 2.80, 3.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '110G正航蛋奶饼干', '6919046605817 ', 3.30, 3.80, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '60G正航快乐熊仔饼', '6919046607279 ', 1.40, 1.90, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '60G正航快乐趣味饼', '6919046607286 ', 1.40, 1.90, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(原味)', '6924743910355 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(烧烤)', '6924743910393 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(红烩)', '6924743910430 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(番茄)', '6924743910508 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(波番茄)', '6924743912755 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(波烤肋)', '6924743911987 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '120G乐事(原味)', '6924743910096 ', 7.50, 8.00, '上海', 100, '罐', NULL);
INSERT INTO `GOODS` VALUES (1, '120G乐事(烤肉)', '6924743910102 ', 7.50, 8.00, '上海', 100, '罐', NULL);
INSERT INTO `GOODS` VALUES (1, '120G乐事(海鲜)', '6924743910133 ', 7.50, 8.00, '上海', 100, '罐', NULL);
INSERT INTO `GOODS` VALUES (1, '120G乐事(番茄)', '6924743910768 ', 7.50, 8.00, '上海', 100, '罐', NULL);
INSERT INTO `GOODS` VALUES (1, '18G乐事(原味)', '6924743912434 ', 1.00, 1.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '18G乐事(烧烤)', '6924743912533 ', 1.00, 1.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '18G乐事(红烩)', '6924743912441 ', 1.00, 1.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '18G乐事(番茄)', '6924743912526 ', 1.00, 1.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '125g达能牛奶香脆', '6904682161018 ', 3.20, 3.70, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '130g达能牛奶特浓夹心', '6904682162206 ', 3.80, 4.30, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '130g达能牛奶特浓花生味夹心', '6920262316005 ', 3.95, 4.45, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '45g达能牛奶香脆便利装', '6920262316111 ', 1.00, 1.50, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '100g达能牛奶佳钙夹心(牛奶)', '6904682169205 ', 1.90, 2.40, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '100g达能牛奶佳钙甜脆饼干', '6904682164293 ', 1.70, 2.20, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '105g达能牛奶佳钙甜酥饼干', '6904682165283 ', 1.70, 2.20, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '达能无限脆饼干(玉米味)', '6904682157103 ', 2.80, 3.30, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '85g达能王子巧颗粒曲奇星', '6904682123207 ', 2.40, 2.90, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '120g达能王子夹心草莓味', '6904682124013 ', 3.20, 3.70, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '120g达能王子夹心巧克力味', '6904682123016 ', 3.30, 3.80, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '100g达能甜趣', '6904682151118 ', 2.80, 3.30, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '100g达能闲趣', '6904682151019 ', 2.80, 3.30, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '500G福马蛋黄派', '6921682815390 ', 9.90, 10.40, '福建', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '小熊维尼灌心饼(牛奶味)', '6924762397663 ', 4.50, 5.00, '江门', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '小熊维尼灌心饼(草莓味)', '6924762396338 ', 4.50, 5.00, '江门', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '小熊灌心饼(奶油味)', '6924762398615 ', 2.40, 2.90, '江门', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '小熊灌心饼(草莓味)', '6924762397618 ', 2.40, 2.90, '江门', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '375G福马蛋黄派', '6921682816465 ', 8.50, 9.00, '福建', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '40G福马爱尚非蛋糕香蕉味', '6921682823470 ', 2.80, 3.30, '福建', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '40G爱尚非蛋糕草莓味', '692168282348 ', 2.80, 3.30, '福建', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '80G爱尚非蛋糕草莓味', '6921682823562 ', 5.30, 5.80, '福建', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '80G爱尚非蛋糕椰香味', '6921682823579 ', 5.25, 5.75, '福建', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '160G爱尚非蛋糕草莓味', '6921682823609 ', 9.20, 9.70, '福建', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '格里高百力濨(白脱味)', '6901845040340 ', 3.20, 3.70, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '格力高双层百力滋(巧克力味)', '6901845040395 ', 3.20, 3.70, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '格力高双层百力滋(奶咖味)', '6901845040401 ', 3.20, 3.70, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '100g格力高菜园小饼(芝麻味)', '6901845040067 ', 3.70, 4.20, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '100g格力高菜园小饼(烧烤味)', '6901845040630 ', 3.70, 4.20, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '18g妙脆角(葱香原味)', '6923721201133 ', 0.90, 1.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '咪咪巧克力棒蛋奶味', '6921682824040 ', 6.00, 6.50, '福建', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '18g妙脆角(美式茄汁)', '6923721201232 ', 0.80, 1.30, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '18g妙脆角(魔力炭烧)', '6923721201317 ', 0.90, 1.40, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '18g妙脆角(香浓辣鸡)', '6923721201416 ', 0.90, 1.40, '上海', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '40g妙脆角(魔力炭烧)', '6923721201331 ', 3.00, 3.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '40g妙脆角(葱香原味)', '6923721201126 ', 3.00, 3.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '40g妙脆角(美式茄汁)', '6923721201225 ', 3.00, 3.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '200g三辉法式香奶面包', '6922734883886 ', 3.95, 4.45, '汕头', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '200g三辉日式点心面包', '6922734800081 ', 3.95, 4.45, '汕头', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '84g旺旺雪饼', '6909995102093 ', 2.90, 3.40, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '52g旺旺仙贝', '6909995101119 ', 3.70, 4.20, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳天然薯片--原味', '6909409040720 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳天然薯片--烤肉口味', '6909409040898 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳鲜虾片', '6909409012024 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳朱古力粟米条', '6909409012819 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳可可甜心--香芋味', '6926265352767 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50g迪士尼牛奶灌心饼', '6901789103118 ', 3.80, 4.30, '广州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50g迪士尼草莓灌心饼', '6901789103125 ', 3.80, 4.30, '广州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '40g迪士尼后调味红烧牛肉棒', '6901789103224 ', 2.30, 2.80, '广州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '30g迪士尼后牛奶棒', '6901789103248 ', 2.40, 2.90, '广州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '45g迪士尼草莓灌心饼', '6901789104122 ', 2.80, 3.30, '广州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '105g迪士尼葱香味饼', '6901789103187 ', 3.20, 3.70, '广州', 100, '箱', NULL);
INSERT INTO `GOODS` VALUES (1, '100g正航薄饼（奶油味）', '6919046601178 ', 1.80, 2.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '380g正航快乐乖乖兔饼干', '6919046600560 ', 4.80, 5.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '380g正航快乐趣味饼干', '6919046602144 ', 4.80, 5.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '500g正航玉米酥饼干', '6919046600546 ', 4.80, 5.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '500g正航花生酥', '6919046600553 ', 4.80, 5.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '100g正航巧克力薄饼', '6919046601482 ', 1.80, 2.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳天然薯片番茄口味', '6909409040775 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳鲜虾条', '6909409012017 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳荷兰豆', '6909409012031 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳玉米口味', '6909409012116 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳玉米花果仁奶油', '6909409012321 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳玉米卷', '6909409012093 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳草莓栗米条', '6909409012802 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳番茄薯条', '6909409014240 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳可可甜心', '6926265334299 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '上好佳日本鱼果海苔味', '6926265301130 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '125g康师傅3+2甜苏打(奶油)', '6919892633101 ', 3.50, 4.00, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '125g康师傅3+2甜苏打(柠檬)', '6919892633309 ', 3.50, 4.00, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '125g康师傅3+2甜苏打(香巧)', '6919892633200 ', 3.50, 4.00, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '125g康师傅3+2甜苏打(蓝莓)', '6919892633606 ', 3.35, 3.85, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '125g康师傅3+2甜苏打(咖啡牛奶)', '6919892633705 ', 3.35, 3.85, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '100g康师傅3+2咸苏打(葱香味)', '6919892641106 ', 3.40, 3.90, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '118g康师傅3+2酥松(奶油)', '6920731761008 ', 3.50, 4.00, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '118g康师傅3+2酥松(花生)', '6920731761800 ', 3.50, 4.00, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '118g康师傅3+2酥松(巧克力)', '6920731761602 ', 3.50, 4.00, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '118g康师傅3+2酥松(草莓)', '6920731763156 ', 3.50, 4.00, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '80g康师傅咸酥(醇香奶油)', '6919892654205 ', 2.80, 3.30, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '80g康师傅咸酥(葱香奶油)', '6919892654106 ', 2.80, 3.30, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '80g康师傅咸酥(火腿芝士)', '6919892654304 ', 2.80, 3.30, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '80g康师傅甜酥(榛巧)', '6919892656100 ', 2.80, 3.30, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '80g康师傅甜酥(柠檬)', '6919892656308 ', 2.80, 3.30, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '80g康师傅甜酥(蓝莓)', '6919892656407 ', 2.80, 3.30, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '80g康师傅甜酥(酸奶)', '6919892656209 ', 2.80, 3.30, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '80g康师傅蛋黄酥酥(牛奶)', '6919892321008 ', 3.00, 3.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '80g康师傅蛋黄酥酥(原味)', '6919892311009 ', 3.00, 3.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '85g康师傅美味酥(葱香)', '6919892880109 ', 3.00, 3.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '85g康师傅美味酥(烧烤)', '6919892880208 ', 3.00, 3.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '85g康师傅美味酥(蒜香鸡蓉)', '6919892880406 ', 3.00, 3.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '85g康师傅美味酥(黑胡椒牛排)', '6920731788500 ', 3.00, 3.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '85g康师傅美味酥(海苔)', '6919892880604 ', 3.00, 3.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '96g康师傅妙芙欧式(奶油)', '6920731701103 ', 4.50, 5.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '96g康师傅妙芙欧式(巧克力)', '6920731701202 ', 4.50, 5.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '96g康师傅妙芙欧式(香芋牛奶)', '6920731704302 ', 4.45, 4.95, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '96g康师傅妙芙欧式(鲜橙牛奶)', '6920731701400 ', 4.50, 5.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '40g康师傅彩笛卷(巧克力)', '6920731751108 ', 3.50, 4.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '40g康师傅彩笛卷(草莓)', '6920731752105 ', 3.50, 4.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '40g康师傅彩笛卷(哈密瓜)', '6920731755106 ', 3.50, 4.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '60g康师傅乐芙球(牛奶)', '6919892442109 ', 3.50, 4.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '60g康师傅乐芙球(巧克力)', '6919892441102 ', 3.50, 4.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '60g康师傅乐芙球(草莓)', '6919892443106 ', 3.50, 4.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '60g康师傅乐芙球(蓝莓)', '6919892444103 ', 3.50, 4.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '好丽友巧克力派(6枚装)', '6920907800029 ', 7.50, 8.00, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '好丽友巧克力派(2枚装)', '6920907800173 ', 2.90, 3.40, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '好丽友好多鱼(浓香茄汁)', '6920907808117 ', 3.80, 4.30, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '百力滋微辣比萨味', '6901845040357 ', 2.90, 3.40, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '好丽友蘑古力(香浓巧克力)', '6920907808018 ', 4.20, 4.70, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '好丽友蘑古力(红豆巧克力)', '6920907808070 ', 4.20, 4.70, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '好丽友注心蛋黄派(2枚装)', '6920907800616 ', 3.50, 4.00, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '格力高菜园小饼(番茄味)', '6901845040043 ', 3.50, 4.00, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '达能王子夹心饼干(牛奶巧克力)', '6904682124204 ', 3.50, 4.00, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '200G咪咪虾条', '6921682816663 ', 5.00, 5.50, '福建', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '明治欣欣杯巧克力味', '6908312000777 ', 2.50, 3.00, '广州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '明治欣欣杯香蕉味', '6908312000814 ', 2.50, 3.00, '广州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '明治欣欣杯牛奶味', '6908312000852 ', 2.50, 3.00, '广州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '明治欣欣杯香橙味', '6908312001392 ', 2.50, 3.00, '广州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '明治欣欣杯草莓味', '6908312000753 ', 2.50, 3.00, '广州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '明治欣欣杯香橙味', '6908312001347 ', 4.20, 4.70, '广州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '明治欣欣杯朱古力', '6908312000784 ', 4.20, 4.70, '广州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '明治欣欣杯草莓味', '6908312000760 ', 4.20, 4.70, '广州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '明治欣欣杯香蕉味', '6908312000821 ', 4.20, 4.70, '广州', 100, '杯', NULL);
INSERT INTO `GOODS` VALUES (1, '150g长鼻王麦烧(葱香口味)', '6906978203037 ', 2.20, 2.70, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '130g长鼻王麦烧(蛋黄夹心)', '6906978203051 ', 2.60, 3.10, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '150g长鼻王麦烧(海苔芝麻味)', '6906978203020 ', 2.20, 2.70, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '150g长鼻王麦烧(原味)', '6906978203006 ', 2.20, 2.70, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '130g长鼻王麦烧(花生夹心)', '6906978203068 ', 2.60, 3.10, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '150g长鼻王麦烧(蕃茄口味)', '6906978203013 ', 2.10, 2.60, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '130g长鼻王麦烧(巧克力夹心)', '6906978203044 ', 2.50, 3.00, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '160g长鼻王夹心卷(蛋黄口味)', '6906978941212 ', 7.20, 7.70, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '48g长鼻王夹心卷(蛋黄口味)', '6906978938663 ', 2.60, 3.10, '杭州', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '90g卡夫奥利奥威化巧克力(5条)', '6901668053350 ', 4.85, 5.35, '江苏', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '75g卡夫奥利奥夹心巧克力饼干', '6901668053428 ', 2.80, 3.30, '江苏', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '80g凯达e趣夹心饼干(奶油味)', '6920271053892 ', 1.00, 1.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '118g好搭档沙琪玛', '6904067312578 ', 2.00, 2.50, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '绿豆糕', '6938382501638 ', 2.80, 3.30, '绍兴', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '红豆糕', '6938382501539 ', 2.80, 3.30, '绍兴', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '桂花糕', '6938382501331 ', 2.80, 3.30, '绍兴', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '桔红糕', '6938382501430 ', 2.80, 3.30, '绍兴', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '蛋糕', '6938382500518 ', 1.20, 1.70, '绍兴', 100, '份', NULL);
INSERT INTO `GOODS` VALUES (1, '蛋糕', '6938382500525 ', 1.80, 2.30, '绍兴', 100, '份', NULL);
INSERT INTO `GOODS` VALUES (1, '蛋糕', '6938382500532 ', 2.20, 2.70, '绍兴', 100, '份', NULL);
INSERT INTO `GOODS` VALUES (1, '蛋糕', '6938382500549 ', 2.80, 3.30, '绍兴', 100, '份', NULL);
INSERT INTO `GOODS` VALUES (1, '蛋糕', '6938382500556 ', 3.20, 3.70, '绍兴', 100, '份', NULL);
INSERT INTO `GOODS` VALUES (1, '蛋糕', '6938382500563 ', 3.80, 4.30, '绍兴', 100, '份', NULL);
INSERT INTO `GOODS` VALUES (1, '125g鬼脸嘟嘟(花生)', '6901668166296 ', 3.20, 3.70, '江苏', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '125g鬼脸嘟嘟(草莓)', '6901668166203 ', 3.20, 3.70, '江苏', 100, '包', '特价');
INSERT INTO `GOODS` VALUES (1, '哥俩好沙琪玛(促销装)', '6904067311045 ', 6.80, 7.30, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '100g太平梳打饼干(蔬菜)', '6901668200181 ', 2.60, 3.10, '江苏', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '100g太平梳打饼干(奶盐)', '6901668200013 ', 2.60, 3.10, '江苏', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '100g太平梳打饼干(香葱)', '6901668200235 ', 2.60, 3.10, '江苏', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '350g康元柠檬卜夹心饼干', '84501202316 ', 5.80, 6.30, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '80g凯达e趣夹心饼干(柠檬味)', '6920271053922 ', 1.00, 1.50, '杭州', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '好多鱼(烧烤味)', '6920907808179 ', 3.80, 4.30, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '好丽友蛋黄派(注心蛋黄)', '6920907800210 ', 8.90, 9.40, '上海', 100, '盒', NULL);
INSERT INTO `GOODS` VALUES (1, '亿合牛奶鸡蛋虾条', '6926720421328 ', 2.90, 3.40, '杭州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '亿合原香味虾条', '6926720420802 ', 2.90, 3.40, '杭州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '亿合什锦派', '6926720421106 ', 2.90, 3.40, '杭州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '亿合原香味虾片', '6926720420888 ', 2.90, 3.40, '杭州', 100, '袋', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(芒果味)', '6924743913417 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(青柠味)', '6924743913189 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(鸡翅味)', '6924743910478 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '50G乐事(黄瓜味)', '6924743910621 ', 2.90, 3.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '旺旺煎饼（鸡蛋煎饼）', '6936515822025 ', 5.80, 6.30, '山东', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '达能王子曲奇星饼干(醇香奶油)', '6920262312304 ', 2.40, 2.90, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '达能佳钙牛奶夹心饼干(巧克力)', '6904682160202 ', 1.90, 2.40, '上海', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '波力鸡蛋捲', '6923807030251 ', 3.50, 4.00, '昆山', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '波力香葱捲', '6923807030305 ', 3.50, 4.00, '昆山', 100, '包', NULL);
INSERT INTO `GOODS` VALUES (1, '福马咪咪虾条', '6921682813907 ', 0.50, 1.00, '福建', 100, '包', NULL);

-- ----------------------------
-- Table structure for USER
-- ----------------------------
DROP TABLE IF EXISTS `USER`;
CREATE TABLE `USER`  (
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `uid` int(13) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of USER
-- ----------------------------
INSERT INTO `USER` VALUES ('root', 'root', 1, 'root');

SET FOREIGN_KEY_CHECKS = 1;
