/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-10-30 17:03:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lcqy_tzzcyxx`
-- ----------------------------
DROP TABLE IF EXISTS `lcqy_tzzcyxx`;
CREATE TABLE `lcqy_tzzcyxx` (
  `DJYHDM` char(6) DEFAULT NULL,
  `CPDJBM` char(15) DEFAULT NULL,
  `SBBS` varchar(30) DEFAULT NULL,
  `CYRQ` date DEFAULT NULL,
  `BZ` char(3) DEFAULT NULL,
  `CYFE` decimal(18,5) DEFAULT NULL,
  `CYJE` decimal(15,2) DEFAULT NULL,
  `ZSRMBJE` decimal(15,2) DEFAULT NULL,
  `VALIDATE_FLAG` varchar(2) DEFAULT '0',
  `CHECK_FLAG` varchar(2) DEFAULT '0',
  `ORG_ID` varchar(30) DEFAULT NULL,
  `DEPART` varchar(2) DEFAULT NULL,
  `CJRQ` varchar(10) DEFAULT NULL,
  `ID` varchar(20) DEFAULT NULL,
  `REPORT_STATUS` varchar(2) DEFAULT '0',
  `STATUS` varchar(2) DEFAULT '1',
  `CPZFE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lcqy_tzzcyxx
-- ----------------------------
INSERT INTO `lcqy_tzzcyxx` VALUES ('11111您', null, '21312', '2018-10-25', null, '0.00000', null, null, '0', '0', null, null, '20170101', null, '0', '1', null);
INSERT INTO `lcqy_tzzcyxx` VALUES ('123456', null, '222', '2018-10-31', null, null, null, null, '0', '0', null, null, '20170101', null, '0', '1', null);

-- ----------------------------
-- Table structure for `lcqy_tzzsf`
-- ----------------------------
DROP TABLE IF EXISTS `lcqy_tzzsf`;
CREATE TABLE `lcqy_tzzsf` (
  `DJYHDM` char(6) DEFAULT NULL,
  `SJLX` varchar(10) DEFAULT NULL,
  `SBBS` varchar(30) DEFAULT NULL,
  `YSBBS` varchar(30) DEFAULT NULL,
  `TZZSFSYBH` varchar(4) DEFAULT NULL,
  `TZZSSYHMC` varchar(60) DEFAULT NULL,
  `TZZSSYHDM` char(6) DEFAULT NULL,
  `TZZJLWBS` varchar(6) DEFAULT NULL,
  `TZZSSGJDQ` varchar(30) DEFAULT NULL,
  `TZZLB` varchar(10) DEFAULT NULL,
  `GRZJLB` varchar(30) DEFAULT NULL,
  `JGZJLB` varchar(60) DEFAULT NULL,
  `QTZJMC` varchar(60) DEFAULT NULL,
  `ZJHM` varchar(30) DEFAULT NULL,
  `ZJTGZHKHH` varchar(24) DEFAULT NULL,
  `QTZJTGZHKHH` varchar(60) DEFAULT NULL,
  `TZZMC` varchar(200) DEFAULT NULL,
  `XB` varchar(6) DEFAULT NULL,
  `FXPH` varchar(8) DEFAULT NULL,
  `SJHM` char(11) DEFAULT NULL,
  `GDHM` varchar(30) DEFAULT NULL,
  `DZYX` varchar(50) DEFAULT NULL,
  `TZZDJRQ` date DEFAULT NULL,
  `TZZDJZH` char(12) DEFAULT NULL,
  `BZ` varchar(256) DEFAULT NULL,
  `ID` varchar(20) NOT NULL,
  `VALIDATE_FLAG` varchar(2) DEFAULT '0',
  `CHECK_FLAG` varchar(2) DEFAULT '0',
  `ORG_ID` varchar(30) DEFAULT NULL,
  `DEPART` varchar(2) DEFAULT NULL,
  `CJRQ` varchar(10) DEFAULT NULL,
  `REPORT_STATUS` varchar(2) DEFAULT '0',
  `STATUS` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lcqy_tzzsf
-- ----------------------------
INSERT INTO `lcqy_tzzsf` VALUES ('11111你', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '12223', null, null, null, null, null, '', '0', '0', null, null, '20170101', '0', '1');
INSERT INTO `lcqy_tzzsf` VALUES ('222222', null, 'wods', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '0', '0', null, null, '20170101', '0', '1');

-- ----------------------------
-- Table structure for `parameter`
-- ----------------------------
DROP TABLE IF EXISTS `parameter`;
CREATE TABLE `parameter` (
  `bm` varchar(200) DEFAULT NULL,
  `zdm` varchar(200) DEFAULT NULL,
  `zdcd` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parameter
-- ----------------------------
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'sjhm', '11');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'sbbs', '30');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'djyhdm', '6');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'sjlx', '500');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'ysbbs', '30');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'qtzjmc', '60');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'zjhm', '30');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'tzzmc', '200');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'gdhm', '30');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'dzyx', '50');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'tzzdjzh', '12');
INSERT INTO `parameter` VALUES ('lcqy_tzzsf', 'bz', '256');
INSERT INTO `parameter` VALUES ('lcqy_tzzcyxx', 'cpdjbm', '15');
INSERT INTO `parameter` VALUES ('lcqy_tzzcyxx', 'sbbs', '30');
INSERT INTO `parameter` VALUES ('lcqy_tzzcyxx', 'djyhdm', '6');
INSERT INTO `parameter` VALUES ('lcqy_tzzcyxx', 'cyrq', null);
INSERT INTO `parameter` VALUES ('lcqy_tzzcyxx', 'bz', '3');
INSERT INTO `parameter` VALUES ('lcqy_tzzcyxx', 'cyfe', null);
INSERT INTO `parameter` VALUES ('lcqy_tzzcyxx', 'cyje', null);
INSERT INTO `parameter` VALUES ('lcqy_tzzcyxx', 'zsrmbje', null);

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `djyhdm` varchar(200) DEFAULT NULL,
  `sjlx` varchar(200) DEFAULT NULL,
  `sbbs` varchar(200) DEFAULT NULL,
  `cpdjbm` varchar(200) DEFAULT NULL,
  `cyrq` date DEFAULT NULL,
  `bm` varchar(200) DEFAULT NULL COMMENT '表名',
  `zdm` varchar(200) DEFAULT NULL COMMENT '字段名',
  `sflength` varchar(200) DEFAULT NULL COMMENT '是否超长',
  `sfnull` varchar(200) DEFAULT NULL COMMENT '是否为空',
  `sfcz` varchar(200) DEFAULT NULL COMMENT '是否已在投资者信息登记要素中进行过登记',
  `sfdate` varchar(200) DEFAULT NULL COMMENT '是否超过当前日期',
  `sfdy` varchar(200) DEFAULT NULL COMMENT '是否大于0',
  `time` varchar(200) DEFAULT NULL COMMENT '跑p时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (null, null, '21312', null, '2018-10-25', 'lcqy_tzzcyxx', 'cpdjbm', null, 'y', null, null, null, '20170101');
INSERT INTO `test` VALUES (null, null, '222', null, '2018-10-31', 'lcqy_tzzcyxx', 'cpdjbm', null, 'y', null, null, null, '20170101');
INSERT INTO `test` VALUES (null, null, '21312', null, '2018-10-25', 'lcqy_tzzcyxx', 'djyhdm', 'y', 'n', null, null, null, '20170101');
INSERT INTO `test` VALUES (null, null, '21312', null, '2018-10-25', 'lcqy_tzzcyxx', 'cyrq', null, 'n', null, 'y', null, '20170101');
INSERT INTO `test` VALUES (null, null, '222', null, '2018-10-31', 'lcqy_tzzcyxx', 'cyrq', null, 'n', null, 'y', null, '20170101');
INSERT INTO `test` VALUES (null, null, '21312', null, '2018-10-25', 'lcqy_tzzcyxx', 'bz', null, 'y', null, null, null, '20170101');
INSERT INTO `test` VALUES (null, null, '222', null, '2018-10-31', 'lcqy_tzzcyxx', 'bz', null, 'y', null, null, null, '20170101');
INSERT INTO `test` VALUES (null, null, '21312', null, '2018-10-25', 'lcqy_tzzcyxx', 'cyfe', null, 'n', null, null, 'y', '20170101');
INSERT INTO `test` VALUES (null, null, '222', null, '2018-10-31', 'lcqy_tzzcyxx', 'cyfe', null, 'y', null, null, null, '20170101');
INSERT INTO `test` VALUES (null, null, '21312', null, '2018-10-25', 'lcqy_tzzcyxx', 'cyje', null, 'y', null, null, null, '20170101');
INSERT INTO `test` VALUES (null, null, '222', null, '2018-10-31', 'lcqy_tzzcyxx', 'cyje', null, 'y', null, null, null, '20170101');
INSERT INTO `test` VALUES (null, null, '21312', null, '2018-10-25', 'lcqy_tzzcyxx', 'zsrmbje', null, 'y', null, null, null, '20170101');
INSERT INTO `test` VALUES (null, null, '222', null, '2018-10-31', 'lcqy_tzzcyxx', 'zsrmbje', null, 'y', null, null, null, '20170101');

-- ----------------------------
-- Procedure structure for `test`
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test`(IN `m_tableName` varchar(30),IN `m_tablefield` varchar(265),IN `m_time` varchar(30))
BEGIN
	/**身份表 持有表字段长度测试**/
  /*变量
   m_tableName  表名
   m_tablefield 表字段
  */
  set @temp1=m_tableName;
  set @temp2=m_tablefield;
  set @temp3=m_time;
  if m_tablefield ='djyhdm'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm) select djyhdm,sjlx,sbbs,djyhdm,''djyhdm'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where  cjrq = ',@temp3,' and length(',@temp2,') <> 6 or ',@temp2,' is null or ',@temp2,' = ''''' );
  end if;
  if m_tablefield ='sjlx'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm) select djyhdm,sjlx,sbbs,sjlx,''sjlx'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  if m_tablefield ='sbbs' and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm)  select djyhdm,sjlx,sbbs,sbbs,''sbbs'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') > 30 or ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  if m_tablefield ='tzzdjzh'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm)  select djyhdm,sjlx,sbbs,tzzdjzh,''tzzdjzh'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') <> 12 ');
  end if;
  if m_tablefield ='sjhm'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm) select djyhdm,sjlx,sbbs,sjhm,''sjhm'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') <> 11');
  end if;
  if m_tablefield ='qtzjmc'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm) select djyhdm,sjlx,sbbs,qtzjmc,''qtzjmc'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where  cjrq = ',@temp3,' and length(',@temp2,') > 60');
  end if;
  if m_tablefield ='tzzmc'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm)  select djyhdm,sjlx,sbbs,tzzmc,''tzzmc'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') > 200');
  end if;
   if m_tablefield ='dzyx'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm)  select djyhdm,sjlx,sbbs,dzyx,''dzyx'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') > 50');
  end if;
  if m_tablefield ='bz'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm)  select djyhdm,sjlx,sbbs,bz,''bz'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') > 256');
  end if;
  if m_tablefield ='ysbbs'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm)  select djyhdm,sjlx,sbbs,ysbbs,''ysbbs'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') > 30');
  end if;
  if m_tablefield ='zjhm'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm)  select djyhdm,sjlx,sbbs,zjhm,''zjhm'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') > 30');
  end if;
  if m_tablefield ='gdhm'and m_tableName='lcqy_tzzsf' then
  set @sqlStr=CONCAT('insert into test(djyhdm,sjlx,sbbs,sfnull,zdm,time,bm)  select djyhdm,sjlx,sbbs,gdhm,''gdhm'',',@temp3,',''lcqy_tzzsf'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') > 30');
  
  end if;
  if m_tablefield ='djyhdm'and m_tableName='lcqy_tzzcyxx' then
  set @sqlStr=CONCAT('insert into test(cpdjbm,cyrq,sbbs,sfnull,zdm,time,bm) select cpdjbm,cyrq,sbbs,djyhdm,''djyhdm'',',@temp3,',''lcqy_tzzcyxx'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') <> 6 or ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  if m_tablefield ='cpdjbm'and m_tableName='lcqy_tzzcyxx' then
  set @sqlStr=CONCAT('insert into test(cpdjbm,cyrq,sbbs,sfnull,zdm,time,bm) select cpdjbm,cyrq,sbbs,cpdjbm,''cpdjbm'',',@temp3,',''lcqy_tzzcyxx'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') > 15 or ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  if m_tablefield ='sbbs'and m_tableName='lcqy_tzzcyxx' then
  set @sqlStr=CONCAT('insert into test(cpdjbm,cyrq,sbbs,sfnull,zdm,time,bm) select cpdjbm,cyrq,sbbs,sbbs,''sbbs'',',@temp3,',''lcqy_tzzcyxx'' from ',@temp1,'    where cjrq = ',@temp3,' and length(',@temp2,') > 15 or  ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  if m_tablefield ='cyrq'and m_tableName='lcqy_tzzcyxx' then
  set @sqlStr=CONCAT('insert into test(cpdjbm,cyrq,sbbs,sfnull,zdm,time,bm) select cpdjbm,cyrq,sbbs,cyrq,''cyrq'',',@temp3,',''lcqy_tzzcyxx'' from ',@temp1,' where cjrq = ',@temp3,' and DATE_FORMAT(cyrq,"%Y%m%d")>',@temp3,' or ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  if m_tablefield ='bz'and m_tableName='lcqy_tzzcyxx' then
  set @sqlStr=CONCAT('insert into test(cpdjbm,cyrq,sbbs,sfnull,zdm,time,bm) select cpdjbm,cyrq,sbbs,bz,''bz'',',@temp3,',''lcqy_tzzcyxx'' from ',@temp1,' where cjrq = ',@temp3,' and length(',@temp2,') <> 3 or ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  if m_tablefield ='cyfe'and m_tableName='lcqy_tzzcyxx' then
  set @sqlStr=CONCAT('insert into test(cpdjbm,cyrq,sbbs,sfnull,zdm,time,bm,sfdy) select cpdjbm,cyrq,sbbs,cyfe,''cyfe'',',@temp3,',''lcqy_tzzcyxx'',cyfe from ',@temp1,' where cjrq = ',@temp3,' and cyfe<=0 or ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  if m_tablefield ='cyje'and m_tableName='lcqy_tzzcyxx' then
  set @sqlStr=CONCAT('insert into test(cpdjbm,cyrq,sbbs,sfnull,zdm,time,bm,sfdy) select cpdjbm,cyrq,sbbs,cyje,''cyje'',',@temp3,',''lcqy_tzzcyxx'',cyje from ',@temp1,' where cjrq = ',@temp3,' and cyje<=0 or ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  if m_tablefield ='zsrmbje'and m_tableName='lcqy_tzzcyxx' then
  set @sqlStr=CONCAT('insert into test(cpdjbm,cyrq,sbbs,sfnull,zdm,time,bm) select cpdjbm,cyrq,sbbs,zsrmbje,''zsrmbje'',',@temp3,',''lcqy_tzzcyxx'' from ',@temp1,' where  cjrq = ',@temp3,' and ',@temp2,' is null or ',@temp2,' = ''''');
  end if;
  PREPARE stmt from @sqlStr;
  EXECUTE stmt;
  if m_tableName='lcqy_tzzsf' then
  update test set sfnull='y' where sfnull is null or sfnull='' and bm='lcqy_tzzsf';
  update test set sfnull = 'n' where sfnull <>'y' and bm='lcqy_tzzsf';
  update test set sflength='y' where sfnull ='n' and bm='lcqy_tzzsf';
  else
  update test set sfdate='y' where  DATE_FORMAT(cyrq,"%Y%m%d")>@temp3 and cyrq is not null and zdm='cyrq' and bm='lcqy_tzzcyxx';
  update test set sfnull='y' where sfnull is null or sfnull='' and bm='lcqy_tzzcyxx';
  update test set sfdy='y' where  cast(sfdy as decimal)<=0 and sfdy is not null and bm='lcqy_tzzcyxx';  
  update test set sfnull = 'n' where sfnull <>'y'and bm='lcqy_tzzcyxx'; 
  update test set sflength='y' where sfnull ='n' and sfdy  is null and sfdate  is null  and sfcz  is null  and bm='lcqy_tzzcyxx';
  end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `test1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `test1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test1`(IN `m_tableName` varchar(30),IN `m_time` varchar(30))
BEGIN
  ##定义判断变量
	DECLARE _flag varchar(50);
	## 定义查询变量
	DECLARE _cur CURSOR FOR
		SELECT zdm FROM parameter where bm=m_tableName;
	### 循环赋初始值
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET _flag=NULL;
	### 打开
	OPEN _cur;
	## 赋值
	FETCH _cur INTO _flag;
	###循环判断
	WHILE (_flag is not null ) DO
		CALL test(m_tableName,_flag,m_time);
		## 赋值下一个游标
		FETCH _cur INTO _flag;
	END WHILE;
	## 关闭
	CLOSE _cur;


END
;;
DELIMITER ;
