/*
 Navicat Premium Data Transfer

 Source Server         : Lucas
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : springboot4447x

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 07/11/2023 03:47:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biyequxiang
-- ----------------------------
DROP TABLE IF EXISTS `biyequxiang`;
CREATE TABLE `biyequxiang`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `fudaoyuangonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员工号',
  `fudaoyuanxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员姓名',
  `leixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `gongzuochengshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作城市',
  `gongzuodanwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作单位',
  `gangweimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `dengjishijian` datetime(0) NULL DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '毕业去向' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biyequxiang
-- ----------------------------
INSERT INTO `biyequxiang` VALUES (61, '2021-04-08 23:00:50', '学生账号1', '学生姓名1', '辅导员工号1', '辅导员姓名1', '升学', '工作城市1', '工作单位1', '岗位名称1', '2021-04-08 23:00:50');
INSERT INTO `biyequxiang` VALUES (62, '2021-04-08 23:00:50', '学生账号2', '学生姓名2', '辅导员工号2', '辅导员姓名2', '升学', '工作城市2', '工作单位2', '岗位名称2', '2021-04-08 23:00:50');
INSERT INTO `biyequxiang` VALUES (63, '2021-04-08 23:00:50', '学生账号3', '学生姓名3', '辅导员工号3', '辅导员姓名3', '升学', '工作城市3', '工作单位3', '岗位名称3', '2021-04-08 23:00:50');
INSERT INTO `biyequxiang` VALUES (64, '2021-04-08 23:00:50', '学生账号4', '学生姓名4', '辅导员工号4', '辅导员姓名4', '升学', '工作城市4', '工作单位4', '岗位名称4', '2021-04-08 23:00:50');
INSERT INTO `biyequxiang` VALUES (65, '2021-04-08 23:00:50', '学生账号5', '学生姓名5', '辅导员工号5', '辅导员姓名5', '升学', '工作城市5', '工作单位5', '岗位名称5', '2021-04-08 23:00:50');
INSERT INTO `biyequxiang` VALUES (66, '2021-04-08 23:00:50', '学生账号6', '学生姓名6', '辅导员工号6', '辅导员姓名6', '升学', '工作城市6', '工作单位6', '岗位名称6', '2021-04-08 23:00:50');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int(11) NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1697915554397 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '职业咨询' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (91, '2021-04-08 23:00:50', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (92, '2021-04-08 23:00:50', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (93, '2021-04-08 23:00:50', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (94, '2021-04-08 23:00:50', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (95, '2021-04-08 23:00:50', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (96, '2021-04-08 23:00:50', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (1617894569036, '2021-04-08 23:09:28', 1617894369093, NULL, '学生在前台咨询，辅导员和管理员后台回复', NULL, 1);
INSERT INTO `chat` VALUES (1697915430236, '2023-10-22 03:10:30', 11, NULL, '我是小白', NULL, 0);
INSERT INTO `chat` VALUES (1697915526993, '2023-10-22 03:12:06', 11, 11, NULL, 'hallo', 0);
INSERT INTO `chat` VALUES (1697915540907, '2023-10-22 03:12:20', 11, NULL, '测试测试测试测试测试测试测试测试测试', NULL, 0);
INSERT INTO `chat` VALUES (1697915554397, '2023-10-22 03:12:34', 11, 11, NULL, '6', NULL);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springboot4447x/upload/1697910836135.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springboot4447x/upload/1697910861426.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springboot4447x/upload/1697910873494.jpg');
INSERT INTO `config` VALUES (8, 'homepage', NULL);

-- ----------------------------
-- Table structure for discussjiuyezhishi
-- ----------------------------
DROP TABLE IF EXISTS `discussjiuyezhishi`;
CREATE TABLE `discussjiuyezhishi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '就业知识评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussjiuyezhishi
-- ----------------------------
INSERT INTO `discussjiuyezhishi` VALUES (121, '2021-04-08 23:00:50', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussjiuyezhishi` VALUES (122, '2021-04-08 23:00:50', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussjiuyezhishi` VALUES (123, '2021-04-08 23:00:50', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussjiuyezhishi` VALUES (124, '2021-04-08 23:00:50', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussjiuyezhishi` VALUES (125, '2021-04-08 23:00:50', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussjiuyezhishi` VALUES (126, '2021-04-08 23:00:50', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discussjiuyezhishi` VALUES (1699299833933, '2023-11-07 03:43:53', 71, 11, '学生1', '我爱陈小贰！！！', NULL);

-- ----------------------------
-- Table structure for fudaoyuan
-- ----------------------------
DROP TABLE IF EXISTS `fudaoyuan`;
CREATE TABLE `fudaoyuan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fudaoyuangonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '辅导员工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `fudaoyuanxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '辅导员姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `fudaoyuangonghao`(`fudaoyuangonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1617894422710 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '辅导员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fudaoyuan
-- ----------------------------
INSERT INTO `fudaoyuan` VALUES (1, '2023-11-07 03:22:02', 'fdy', '123', '老子叫辅导员', '男', NULL, NULL);
INSERT INTO `fudaoyuan` VALUES (21, '2021-04-08 23:00:50', '辅导员1', '123456', '辅导员姓名1', '男', '13823888881', '773890001@qq.com');
INSERT INTO `fudaoyuan` VALUES (22, '2021-04-08 23:00:50', '辅导员2', '123456', '辅导员姓名2', '男', '13823888882', '773890002@qq.com');
INSERT INTO `fudaoyuan` VALUES (23, '2021-04-08 23:00:50', '辅导员3', '123456', '辅导员姓名3', '男', '13823888883', '773890003@qq.com');
INSERT INTO `fudaoyuan` VALUES (24, '2021-04-08 23:00:50', '辅导员4', '123456', '辅导员姓名4', '男', '13823888884', '773890004@qq.com');
INSERT INTO `fudaoyuan` VALUES (25, '2021-04-08 23:00:50', '辅导员5', '123456', '辅导员姓名5', '男', '13823888885', '773890005@qq.com');
INSERT INTO `fudaoyuan` VALUES (26, '2021-04-08 23:00:50', '辅导员6', '123456', '辅导员姓名6', '男', '13823888886', '773890006@qq.com');

-- ----------------------------
-- Table structure for jiuyezhishi
-- ----------------------------
DROP TABLE IF EXISTS `jiuyezhishi`;
CREATE TABLE `jiuyezhishi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `fenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `xiangguanziliao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关资料',
  `shipin` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频',
  `wenzhangneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '就业知识' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiuyezhishi
-- ----------------------------
INSERT INTO `jiuyezhishi` VALUES (71, '2023-11-07 13:07:50', '陈小贰的故事', '动画', 'http://localhost:8080/springboot4447x/upload/1699299701855.png', '', 'http://localhost:8080/springboot4447x/upload/1699299438533.mp4', 'Q.Q 阅读《全职艺术家》作者：我最白.合作/咨询：sun7112073');
INSERT INTO `jiuyezhishi` VALUES (72, '2021-04-08 23:00:50', '标题2', '分类2', 'http://localhost:8080/springboot4447x/upload/jiuyezhishi_tupian2.jpg', '', '', '文章内容2');
INSERT INTO `jiuyezhishi` VALUES (73, '2021-04-08 23:00:50', '标题3', '分类3', 'http://localhost:8080/springboot4447x/upload/jiuyezhishi_tupian3.jpg', '', '', '文章内容3');
INSERT INTO `jiuyezhishi` VALUES (74, '2021-04-08 23:00:50', '标题4', '分类4', 'http://localhost:8080/springboot4447x/upload/jiuyezhishi_tupian4.jpg', '', '', '文章内容4');
INSERT INTO `jiuyezhishi` VALUES (75, '2021-04-08 23:00:50', '标题5', '分类5', 'http://localhost:8080/springboot4447x/upload/jiuyezhishi_tupian5.jpg', '', '', '文章内容5');
INSERT INTO `jiuyezhishi` VALUES (76, '2021-04-08 23:00:50', '标题6', '分类6', 'http://localhost:8080/springboot4447x/upload/jiuyezhishi_tupian6.jpg', '', '', '文章内容6');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (111, '2021-04-08 23:00:50', '标题1', '简介1', 'http://localhost:8080/springboot4447x/upload/news_picture1.jpg', '内容1');
INSERT INTO `news` VALUES (112, '2021-04-08 23:00:50', '标题2', '简介2', 'http://localhost:8080/springboot4447x/upload/news_picture2.jpg', '内容2');
INSERT INTO `news` VALUES (113, '2021-04-08 23:00:50', '标题3', '简介3', 'http://localhost:8080/springboot4447x/upload/news_picture3.jpg', '内容3');
INSERT INTO `news` VALUES (114, '2021-04-08 23:00:50', '标题4', '简介4', 'http://localhost:8080/springboot4447x/upload/news_picture4.jpg', '内容4');
INSERT INTO `news` VALUES (115, '2021-04-08 23:00:50', '标题5', '简介5', 'http://localhost:8080/springboot4447x/upload/news_picture5.jpg', '内容5');
INSERT INTO `news` VALUES (116, '2021-04-08 23:00:50', '标题6', '简介6', 'http://localhost:8080/springboot4447x/upload/news_picture6.jpg', '内容6');

-- ----------------------------
-- Table structure for qiye
-- ----------------------------
DROP TABLE IF EXISTS `qiye`;
CREATE TABLE `qiye`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业名称',
  `qiyedizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业地址',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `qiyetupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业图片',
  `qiyezizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业资质',
  `yingyexukezheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '营业许可证',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `qiyezhanghao`(`qiyezhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qiye
-- ----------------------------
INSERT INTO `qiye` VALUES (31, '2021-04-08 23:00:50', '企业1', '123456', '吉利汽车', '企业地址1', '负责人1', '13823888881', '773890001@qq.com', 'http://localhost:8080/springboot4447x/upload/1697889935213.jpg', '', 'http://localhost:8080/springboot4447x/upload/qiye_yingyexukezheng1.jpg', '是', '');
INSERT INTO `qiye` VALUES (32, '2021-04-08 23:00:50', '企业2', '123456', '华为', '中国-北京-朝阳区朝阳门南大街10号兆泰国际中心A座', '任正非', '13823888882', 'devConnect@huawei.com', 'http://localhost:8080/springboot4447x/upload/1697890101086.jpg', '', 'http://localhost:8080/springboot4447x/upload/qiye_yingyexukezheng2.jpg', '是', '');
INSERT INTO `qiye` VALUES (33, '2021-04-08 23:00:50', '企业3', '123456', '企业名称3', '企业地址3', '负责人3', '13823888883', '773890003@qq.com', 'http://localhost:8080/springboot4447x/upload/qiye_qiyetupian3.jpg', '', 'http://localhost:8080/springboot4447x/upload/qiye_yingyexukezheng3.jpg', '是', '');
INSERT INTO `qiye` VALUES (34, '2021-04-08 23:00:50', '企业4', '123456', '企业名称4', '企业地址4', '负责人4', '13823888884', '773890004@qq.com', 'http://localhost:8080/springboot4447x/upload/qiye_qiyetupian4.jpg', '', 'http://localhost:8080/springboot4447x/upload/qiye_yingyexukezheng4.jpg', '是', '');
INSERT INTO `qiye` VALUES (35, '2021-04-08 23:00:50', '企业5', '123456', '企业名称5', '企业地址5', '负责人5', '13823888885', '773890005@qq.com', 'http://localhost:8080/springboot4447x/upload/qiye_qiyetupian5.jpg', '', 'http://localhost:8080/springboot4447x/upload/qiye_yingyexukezheng5.jpg', '是', '');
INSERT INTO `qiye` VALUES (36, '2021-04-08 23:00:50', 'qiye', '123', '测试', '企业地址6', '负责人6', '13823888886', '773890006@qq.com', 'http://localhost:8080/springboot4447x/upload/qiye_qiyetupian6.jpg', '', 'http://localhost:8080/springboot4447x/upload/qiye_yingyexukezheng6.jpg', '是', '');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', '476sw3no73bjtz2kojb0tbiocwhcyt7a', '2021-04-08 23:06:30', '2023-11-07 04:35:51');
INSERT INTO `token` VALUES (2, 1617894369093, '111', 'xuesheng', '学生', 'vvsgse3o5xk2xdpnf3g201vixh09if8b', '2021-04-08 23:07:09', '2021-04-09 00:08:50');
INSERT INTO `token` VALUES (3, 1617894422710, '222', 'fudaoyuan', '管理员', '4bjan8ln43fmkjjxdqwmn9mdvjiuf49n', '2021-04-08 23:08:04', '2021-04-09 00:09:59');
INSERT INTO `token` VALUES (4, 11, '学生1', 'xuesheng', '学生', '2vpq91mmifm6yav32ko49pedcoyn2sc2', '2023-10-21 19:19:50', '2023-11-07 04:43:43');
INSERT INTO `token` VALUES (5, 2, 'Lucas', 'users', '管理员', '3htgm0q5ocwp3pv10qbpez7kvyc67cq4', '2023-10-21 20:01:05', '2023-11-05 03:22:44');
INSERT INTO `token` VALUES (6, 31, '企业1', 'qiye', '企业', 'orlfyrj0skjcvpijcqvyuv8c8t8tj6cx', '2023-10-21 20:01:36', '2023-10-22 04:10:52');
INSERT INTO `token` VALUES (7, 32, '企业2', 'qiye', '企业', 'jtvglw3d22k0lmzp0w69sl74fyn5fqcd', '2023-10-21 20:07:21', '2023-10-21 21:07:21');
INSERT INTO `token` VALUES (8, 21, '辅导员1', 'fudaoyuan', '管理员', 't0jkc16llxiiomgrcxj6pqi6gf6cyoo5', '2023-10-22 03:11:19', '2023-10-22 04:11:20');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2021-04-08 23:00:50');
INSERT INTO `users` VALUES (2, 'Lucas', '123', '管理员', '2023-10-21 20:00:46');

-- ----------------------------
-- Table structure for xianxiaxuanjianghui
-- ----------------------------
DROP TABLE IF EXISTS `xianxiaxuanjianghui`;
CREATE TABLE `xianxiaxuanjianghui`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuanjiangzhuti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宣讲主题',
  `jiaoxuelou` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教学楼',
  `kongxianjiaoshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空闲教室',
  `jiaoshirongliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教室容量',
  `shijian` date NULL DEFAULT NULL COMMENT '时间',
  `qiyezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `qiyetupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业图片',
  `neirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线下宣讲会' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xianxiaxuanjianghui
-- ----------------------------
INSERT INTO `xianxiaxuanjianghui` VALUES (81, '2021-04-08 23:00:50', '宣讲主题1', '教学楼1', '空闲教室1', '教室容量1', '2021-04-08', '企业账号1', '企业名称1', 'http://localhost:8080/springboot4447x/upload/xianxiaxuanjianghui_qiyetupian1.jpg', '内容1', '是', '');
INSERT INTO `xianxiaxuanjianghui` VALUES (82, '2021-04-08 23:00:50', '宣讲主题2', '教学楼2', '空闲教室2', '教室容量2', '2021-04-08', '企业账号2', '企业名称2', 'http://localhost:8080/springboot4447x/upload/xianxiaxuanjianghui_qiyetupian2.jpg', '内容2', '是', '');
INSERT INTO `xianxiaxuanjianghui` VALUES (83, '2021-04-08 23:00:50', '宣讲主题3', '教学楼3', '空闲教室3', '教室容量3', '2021-04-08', '企业账号3', '企业名称3', 'http://localhost:8080/springboot4447x/upload/xianxiaxuanjianghui_qiyetupian3.jpg', '内容3', '是', '');
INSERT INTO `xianxiaxuanjianghui` VALUES (84, '2021-04-08 23:00:50', '宣讲主题4', '教学楼4', '空闲教室4', '教室容量4', '2021-04-08', '企业账号4', '企业名称4', 'http://localhost:8080/springboot4447x/upload/xianxiaxuanjianghui_qiyetupian4.jpg', '内容4', '是', '');
INSERT INTO `xianxiaxuanjianghui` VALUES (85, '2021-04-08 23:00:50', '宣讲主题5', '教学楼5', '空闲教室5', '教室容量5', '2021-04-08', '企业账号5', '企业名称5', 'http://localhost:8080/springboot4447x/upload/xianxiaxuanjianghui_qiyetupian5.jpg', '内容5', '是', '');
INSERT INTO `xianxiaxuanjianghui` VALUES (86, '2021-04-08 23:00:50', '宣讲主题6', '教学楼6', '空闲教室6', '教室容量6', '2021-04-08', '企业账号6', '企业名称6', 'http://localhost:8080/springboot4447x/upload/xianxiaxuanjianghui_qiyetupian6.jpg', '内容6', '是', '');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `chushengnianyue` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生年月',
  `fudaoyuangonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员工号',
  `fudaoyuanxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员姓名',
  `gerenjineng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人技能',
  `jiangxiangzhengshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖项证书',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xueshengzhanghao`(`xueshengzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1617894369093 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (11, '2021-04-08 23:00:50', '学生1', '学生姓名1', '123456', '男', '专业1', '773890001@qq.com', '020-89819991', '440300199101010001', '出生年月1', '辅导员工号1', '辅导员姓名1', '', '', '是', '');
INSERT INTO `xuesheng` VALUES (12, '2021-04-08 23:00:50', '学生2', '学生姓名2', '123456', '男', '专业2', '773890002@qq.com', '020-89819992', '440300199202020002', '出生年月2', '辅导员工号2', '辅导员姓名2', '', '', '是', '');
INSERT INTO `xuesheng` VALUES (13, '2021-04-08 23:00:50', '学生3', '学生姓名3', '123456', '男', '专业3', '773890003@qq.com', '020-89819993', '440300199303030003', '出生年月3', '辅导员工号3', '辅导员姓名3', '', '', '是', '');
INSERT INTO `xuesheng` VALUES (14, '2021-04-08 23:00:50', '学生4', '学生姓名4', '123456', '男', '专业4', '773890004@qq.com', '020-89819994', '440300199404040004', '出生年月4', '辅导员工号4', '辅导员姓名4', '', '', '是', '');
INSERT INTO `xuesheng` VALUES (15, '2021-04-08 23:00:50', '学生5', '学生姓名5', '123456', '男', '专业5', '773890005@qq.com', '020-89819995', '440300199505050005', '出生年月5', '辅导员工号5', '辅导员姓名5', '', '', '是', '');
INSERT INTO `xuesheng` VALUES (16, '2021-04-08 23:00:50', '学生6', '学生姓名6', '123456', '男', '专业6', '773890006@qq.com', '020-89819996', '440300199606060006', '出生年月6', '辅导员工号6', '辅导员姓名6', '', '', '是', '');
INSERT INTO `xuesheng` VALUES (1617894369093, '2021-04-08 23:06:09', '111', '111', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '是', NULL);

-- ----------------------------
-- Table structure for yingpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `yingpinxinxi`;
CREATE TABLE `yingpinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `gangweimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `xinzidaiyu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '薪资待遇',
  `qiyezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业账号',
  `xueshengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `jianlitoudi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简历投递',
  `yingpinriqi` datetime(0) NULL DEFAULT NULL COMMENT '应聘日期',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应聘信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yingpinxinxi
-- ----------------------------
INSERT INTO `yingpinxinxi` VALUES (51, '2021-04-08 23:00:50', '企业名称1', '岗位名称1', '薪资待遇1', '企业账号1', '学生账号1', '学生姓名1', '联系方式1', '', '2021-04-08 23:00:50', '是', '');
INSERT INTO `yingpinxinxi` VALUES (52, '2021-04-08 23:00:50', '企业名称2', '岗位名称2', '薪资待遇2', '企业账号2', '学生账号2', '学生姓名2', '联系方式2', '', '2021-04-08 23:00:50', '是', '');
INSERT INTO `yingpinxinxi` VALUES (53, '2021-04-08 23:00:50', '企业名称3', '岗位名称3', '薪资待遇3', '企业账号3', '学生账号3', '学生姓名3', '联系方式3', '', '2021-04-08 23:00:50', '是', '');
INSERT INTO `yingpinxinxi` VALUES (54, '2021-04-08 23:00:50', '企业名称4', '岗位名称4', '薪资待遇4', '企业账号4', '学生账号4', '学生姓名4', '联系方式4', '', '2021-04-08 23:00:50', '是', '');
INSERT INTO `yingpinxinxi` VALUES (55, '2021-04-08 23:00:50', '企业名称5', '岗位名称5', '薪资待遇5', '企业账号5', '学生账号5', '学生姓名5', '联系方式5', '', '2021-04-08 23:00:50', '是', '');
INSERT INTO `yingpinxinxi` VALUES (56, '2021-04-08 23:00:50', '企业名称6', '岗位名称6', '薪资待遇6', '企业账号6', '学生账号6', '学生姓名6', '联系方式6', '', '2021-04-08 23:00:50', '是', '');

-- ----------------------------
-- Table structure for zhaopinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `zhaopinxinxi`;
CREATE TABLE `zhaopinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `qiyezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业账号',
  `qiyetupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业图片',
  `gangweimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `shangbandidian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上班地点',
  `shangbanshijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上班时间',
  `xinzidaiyu` int(11) NULL DEFAULT NULL COMMENT '薪资待遇',
  `zhaopinrenshu` int(11) NULL DEFAULT NULL COMMENT '招聘人数',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `renzhiyaoqiu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '任职要求',
  `qiyejieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '企业介绍',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhaopinxinxi
-- ----------------------------
INSERT INTO `zhaopinxinxi` VALUES (41, '2021-04-08 23:00:50', '企业名称1', '企业账号1', 'http://localhost:8080/springboot4447x/upload/zhaopinxinxi_qiyetupian1.jpg', '岗位名称1', '上班地点1', '上班时间1', 1, 1, '联系方式1', '任职要求1', '企业介绍1', '是', '', 5);
INSERT INTO `zhaopinxinxi` VALUES (42, '2021-04-08 23:00:50', '企业名称2', '企业账号2', 'http://localhost:8080/springboot4447x/upload/zhaopinxinxi_qiyetupian2.jpg', '岗位名称2', '上班地点2', '上班时间2', 2, 2, '联系方式2', '任职要求2', '企业介绍2', '是', '', 8);
INSERT INTO `zhaopinxinxi` VALUES (43, '2021-04-08 23:00:50', '企业名称3', '企业账号3', 'http://localhost:8080/springboot4447x/upload/zhaopinxinxi_qiyetupian3.jpg', '岗位名称3', '上班地点3', '上班时间3', 3, 3, '联系方式3', '任职要求3', '企业介绍3', '是', '', 3);
INSERT INTO `zhaopinxinxi` VALUES (44, '2021-04-08 23:00:50', '企业名称4', '企业账号4', 'http://localhost:8080/springboot4447x/upload/zhaopinxinxi_qiyetupian4.jpg', '岗位名称4', '上班地点4', '上班时间4', 4, 4, '联系方式4', '任职要求4', '企业介绍4', '是', '', 4);
INSERT INTO `zhaopinxinxi` VALUES (45, '2021-04-08 23:00:50', '企业名称5', '企业账号5', 'http://localhost:8080/springboot4447x/upload/zhaopinxinxi_qiyetupian5.jpg', '岗位名称5', '上班地点5', '上班时间5', 5, 5, '联系方式5', '任职要求5', '企业介绍5', '是', '', 5);
INSERT INTO `zhaopinxinxi` VALUES (46, '2021-04-08 23:00:50', '企业名称6', '企业账号6', 'http://localhost:8080/springboot4447x/upload/zhaopinxinxi_qiyetupian6.jpg', '岗位名称6', '上班地点6', '上班时间6', 6, 6, '联系方式6', '任职要求6', '企业介绍6', '是', '', 7);

SET FOREIGN_KEY_CHECKS = 1;
