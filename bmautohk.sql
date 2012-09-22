-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 建立日期: Sep 12, 2012, 01:06 AM
-- 伺服器版本: 5.0.67
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `bmautohk`
--

-- --------------------------------------------------------

--
-- 資料表格式： `aboutus`
--

CREATE TABLE IF NOT EXISTS `aboutus` (
  `c_content` text collate utf8_unicode_ci NOT NULL,
  `e_content` text collate utf8_unicode_ci NOT NULL,
  `business_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `representative` varchar(255) collate utf8_unicode_ci NOT NULL,
  `office` varchar(255) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(15) collate utf8_unicode_ci NOT NULL,
  `fax` varchar(15) collate utf8_unicode_ci NOT NULL,
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  `business_nature` text collate utf8_unicode_ci NOT NULL,
  `image` varchar(100) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 列出以下資料庫的數據： `aboutus`
--

INSERT INTO `aboutus` (`c_content`, `e_content`, `business_name`, `representative`, `office`, `phone`, `fax`, `email`, `business_nature`, `image`) VALUES
('朝暉汽車用品有限会社は広州で自動車アフターパーツ開発・製造・販売・輸出などの業務をいたしましてるISO9001:2000認定取得工場を持って、専門的日本向き車ドレスアップ部品を製造、販売させている会社です。　当社では、日本の自動車用にインテリアパネル、ステアリング、シフトノブ、LEDウインカー付きドア、ミラーカバー、LED.SMDルームランプ、シートカバー、ABSメッキ加工によるドアノブカバー、フロアマット、その他FRP成型品など幅広く製造しております。　　　　　　　　　　　　　　　　　エアロメーカー様などOEMや、カー用品大手量販店様にも販売している高品質商品で、主な販売輸出先はアメリカ・ヨーロッパ・中東方面・日本などです。台湾AMPA、中国輸出入商品交易会、東京AUTO、大阪メッセなどでよく展示していただきます。　　　　　　　　　　　　　　　　　　　　　　　　当社の商品パーツなら、各車種ごとの専用設計なので完壁なフィット感が得られるうえ、純正な部品の機能が一切損なわれることがないので安心して使用することができる。豊富な経験と、開発力を背景に他社にはない発想で付加価値の高い、お客様の立場に立った「ものづくり」に励んでおります。これからもより高品質、より低価格な商品をご提供できるよう努めますので、ご愛顧よろしくお願いします。									\r\n									\r\n									\r\n									\r\n									\r\n									\r\n									\r\n									\r\n									\r\n									\r\n									\r\n									\r\n									', '', '朝暉汽車用品有限会社', '', '広州淘金北路71号恒华阁308-2', '86-20-37221551', '86-20-37026589', 'bmautohk@gmail.com;ellen@bmautohk.com', 'インテリアパネル、ステアリング、シフトノブ、LEDウインカー付きドア、ミラーカバー、LED.SMDルームランプ、シートカバー、ABSメッキ加工によるドアノブカバー、フロアマット、その他FRP成型品など、様々なカー用品を提供いたします。', 'aboutus1.jpg');

-- --------------------------------------------------------

--
-- 資料表格式： `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL auto_increment,
  `cat_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `cat_eng_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `sts` varchar(1) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- 列出以下資料庫的數據： `category`
--

INSERT INTO `category` (`id`, `cat_name`, `cat_eng_name`, `sts`) VALUES
(3, 'エアロ', '', ''),
(2, '4灯キット', '', ''),
(1, '3Dフロアマット', '', ''),
(4, 'アームレスト', '', ''),
(5, 'バックHID', '', ''),
(6, 'フロントグリルバンパー', '', ''),
(7, 'ルームランプカバー', '', ''),
(8, 'カーテン', '', ''),
(9, 'ドアベゼルクロームパネル', '', ''),
(10, 'クロームシフトベゼル', '', ''),
(11, 'スピカークロームパネル', '', ''),
(12, 'ダッシュマット', '', ''),
(13, '防虫ネット', '', ''),
(14, '内装ドアハンドルカバー', '', ''),
(15, '外装ドアハンドルカバー', '', ''),
(16, 'ドアレザーパネル', '', ''),
(17, 'インサイドレザーロアパネル', '', ''),
(18, 'インサイドレザーアッパパネル', '', ''),
(19, 'スカッフプレート', '', ''),
(20, 'LEDスカッフプレート', '', ''),
(21, 'フロントテーブル', '', ''),
(22, 'エンジンスタートリング', '', ''),
(23, 'フロアマット', '', ''),
(24, 'フォグランプカバー', '', ''),
(25, 'LEDフォグランプ', '', ''),
(26, 'グリル', '', ''),
(27, 'グリルバンパー', '', ''),
(28, 'ヘッドレストモニター', '', ''),
(29, 'HID ', '', ''),
(30, 'インテリア', '', ''),
(31, 'ノブ', '', ''),
(32, 'LEDバルブ', '', ''),
(33, 'LEDミラカバー', '', ''),
(34, 'LEDリア　リフレクター', '', ''),
(35, 'LEDルームランプ', '', ''),
(36, 'LEDヴンカー', '', ''),
(37, 'LEDポジションライト', '', ''),
(38, 'ウエルカムライト', '', ''),
(39, 'インテリアパネル', '', ''),
(40, 'シートカバー', '', ''),
(41, 'エンブレムシート', '', ''),
(42, 'ステアリング', '', ''),
(43, 'バイザー', '', ''),
(44, 'ライト', '', ''),
(45, 'ウェザーストリップカバー', '', ''),
(46, 'サンシェードカバー', '', ''),
(47, 'LEDドアポケットライト', '', ''),
(48, 'LEDブラックホール', '', '');

-- --------------------------------------------------------

--
-- 資料表格式： `companyprofile`
--

CREATE TABLE IF NOT EXISTS `companyprofile` (
  `company_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `company_address` varchar(255) collate utf8_unicode_ci NOT NULL,
  `company_phone` varchar(20) collate utf8_unicode_ci NOT NULL,
  `company_fax` varchar(20) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 列出以下資料庫的數據： `companyprofile`
--

INSERT INTO `companyprofile` (`company_name`, `company_address`, `company_phone`, `company_fax`) VALUES
('BM AUTO ACCESSORIES (HK) CO LTD', 'Room2113.Yiyun Plaza NO.79 Yongfu Road.Guangzhou City', '(86)20 37221551', '(86)20 37026589');

-- --------------------------------------------------------

--
-- 資料表格式： `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `first_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `first_name2` varchar(255) collate utf8_unicode_ci NOT NULL,
  `last_name2` varchar(255) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(255) collate utf8_unicode_ci NOT NULL,
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  `car_type` varchar(255) collate utf8_unicode_ci NOT NULL,
  `detail` text collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 列出以下資料庫的數據： `contactus`
--


-- --------------------------------------------------------

--
-- 資料表格式： `make`
--

CREATE TABLE IF NOT EXISTS `make` (
  `make_id` int(11) NOT NULL auto_increment,
  `make_name` varchar(255) NOT NULL default '',
  `sts` varchar(1) NOT NULL,
  PRIMARY KEY  (`make_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 列出以下資料庫的數據： `make`
--

INSERT INTO `make` (`make_id`, `make_name`, `sts`) VALUES
(1, 'TOYOTA', ''),
(2, 'HONDA', ''),
(3, 'NISSAN', ''),
(4, 'MITSUIBISHI', ''),
(5, 'SUZUKI', ''),
(6, 'DAIHATSU ', '');

-- --------------------------------------------------------

--
-- 資料表格式： `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `model_id` int(11) NOT NULL auto_increment,
  `model_name` varchar(255) NOT NULL default '',
  `make_id` int(11) default NULL,
  `sts` varchar(1) NOT NULL,
  PRIMARY KEY  (`model_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 列出以下資料庫的數據： `model`
--

INSERT INTO `model` (`model_id`, `model_name`, `make_id`, `sts`) VALUES
(1, 'A/VELLFIRE', 1, ''),
(2, 'ALPHARD', 1, ''),
(3, 'HIACE', 1, ''),
(4, 'PRIUS', 1, '');

-- --------------------------------------------------------

--
-- 資料表格式： `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `image_path` varchar(255) collate utf8_unicode_ci NOT NULL,
  `link` varchar(255) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 列出以下資料庫的數據： `news`
--

INSERT INTO `news` (`image_path`, `link`) VALUES
('images/yahoo1.jpg', 'http://www.bmautohk.com/productdetails.php?productdetail=pt559'),
('images/yahoo1.jpg', ''),
('images/yahoo1.jpg', '');

-- --------------------------------------------------------

--
-- 資料表格式： `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_cd` varchar(20) NOT NULL default '0',
  `product_made` varchar(255) default NULL,
  `product_model` varchar(255) default NULL,
  `product_car_name` varchar(255) NOT NULL,
  `product_remark` tinytext,
  `product_name` varchar(255) default NULL,
  `product_colour` varchar(100) default NULL,
  `cat_id` varchar(5) default NULL,
  `product_cat` varchar(20) default NULL,
  `product_qty` text,
  `product_rmb` int(11) default NULL,
  `product_colour_no` varchar(255) NOT NULL,
  `product_photo` int(2) NOT NULL default '0',
  `alias` varchar(1) NOT NULL,
  `new` varchar(1) default NULL,
  `product_desc` text,
  `sts` varchar(1) default NULL,
  PRIMARY KEY  (`product_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 列出以下資料庫的數據： `product`
--

INSERT INTO `product` (`product_cd`, `product_made`, `product_model`, `product_car_name`, `product_remark`, `product_name`, `product_colour`, `cat_id`, `product_cat`, `product_qty`, `product_rmb`, `product_colour_no`, `product_photo`, `alias`, `new`, `product_desc`, `sts`) VALUES
('pt559', 'TOYOTA', 'A/VELLFIRE', 'GGH/A/MNH', NULL, 'インテリアパネル/INTERIOR PANEL', 'ピアノブラック', NULL, 'INTERIOR PANEL', '58', 2153, '', 10, '', '', '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('dp02', 'TOYOTA', 'A/VELLFIRE', 'ANH2#W', NULL, ' ドアポケットライト/DOOR POCKET LAMP', 'White', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', NULL, '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします 今、流行りのブラックホールイルミネーションで簡単ドレスアップ！ <br>\r\nフロントドアポケットサイズにジャストフィット専用設計！', 'A'),
('dp03', 'TOYOTA', 'HIACE', '200', NULL, 'ポケットライト/DOOR POCKET LAMP', 'Blue', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', NULL, '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします 今、流行りのブラックホールイルミネーションで簡単ドレスアップ！ <br>\r\nフロントドアポケットサイズにジャストフィット専用設計！', 'A'),
('rl02', 'TOYOTA', 'GGH/ANH2#W', 'ALPHARD', '114LED+12SMD', 'ルームランプレンズ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '7', 144, '白色', 10, '', 'H', '"専用設計ですので純正バルブを外し交換するだけの簡単取り付けです。\r\n純正の黄色っぽい光を澄みきった純白色に変えます。\r\n超発光と拡散性を実現するため、高品質LEDを惜しみなく配置した贅沢な超高輝度ルームランプキットです。\r\nドアを開けた瞬間見るものを魅了し、雰囲気を変える迫力満点・圧巻のフルセットです。\r\n\r\n"\r\n', 'A'),
('ex179', 'TOYOTA', '200', 'HIACE', '', 'グリル/GRILL', NULL, NULL, 'GRILL', '', 250, '电镀色', 10, '', 'N', '"純正グリルを外してはめ変えるだけの簡単取付♪\r\n\r\n鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nフロントフェイスを一変させるグリルになっております。\r\n\r\n"\r\n', 'A'),
('i112blwh', 'TOYOTA', 'ZVW30', 'PRIUS ', NULL, 'スカッフプレート/DOOR　SILL　PLATE', NULL, NULL, 'DOOR SILL PLATE', NULL, 280, 'WHITE ', 10, '', 'N', '"純正のスカッフ部の上から貼付するタイプとなります。\r\n耐久性、防錆性に優れたステンレス製。鈍い輝きが更なる高級感を演出します。\r\nカーテシランプなどに連動させれば、ドアを開けた時にロゴLEDが点灯し優しい光でお出迎え。その他連動させる場所次第で色々な光らせ方が可能。\r\n\r\n"\r\n', 'A'),
('dp04', 'TOYOTA', 'HIACE', '', NULL, 'ポケットライト/DOOR POCKET LAMP', 'White', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', 'H', '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！ ', 'A'),
('ex126', 'HONDA', 'RK ', 'STEP WGN ', NULL, 'メッキドアノブカバー/CHROME　HANDLE　COVER', NULL, NULL, 'CHROME HANDLE COVER', '8PCS\r\n', 110, '电镀色 ', 10, '', NULL, '"鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nインテリジェントキー専用タイプとなっております。\r\n\r\n強力両面テープ付きのため、簡単にお取り付けできます。"\r\n', 'A'),
('ex124', 'HONDA', 'GB3 ', 'FREED ', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER', NULL, NULL, 'CHROME HANDLE COVER', '6PCS\r\n', 85, '电镀色', 10, '', 'N', '"鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nインテリジェントキー専用タイプとなっております。\r\n\r\n強力両面テープ付きのため、簡単にお取り付けできます。"\r\n', 'A'),
('ex171', 'DAIHATSU', 'LA100S ', 'MOVE ', NULL, 'メッキドアノブカバー/CHROME　HANDLE　COVER', NULL, NULL, 'CHROME HANDLE COVER', '8PCS\r\n', 60, '电镀色 ', 10, '', 'H', '"鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nインテリジェントキー専用タイプとなっております。\r\n\r\n強力両面テープ付きのため、簡単にお取り付けできます。"\r\n', 'A'),
('ex172', 'DAIHATSU', 'LA100S ', 'MOVE ', NULL, 'メッキフロントバンパーグリルカバー/CHROME　GRILL', NULL, NULL, 'CHROME GRILL', '4PCS\r\n', 135, '电镀色 ', 10, '', 'Y', '"純正グリルを外してはめ変えるだけの簡単取付♪\r\n\r\n鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nフロントフェイスを一変させるグリルになっております。\r\n\r\n"\r\n', 'A'),
('sl-c', 'SUZUKI', 'DA64 ', 'EVERY WGN ', NULL, 'ドアサイドマーカー/SIDE　MAKER', NULL, NULL, 'SIDE MAKER', '2PCS\r\n', 80, '黄色 ', 10, '', NULL, '"個性的なルックスを演出するクリアレンズ仕様です。\r\n純正タイプだから、ファッションとしても、補修用としても安心してお使い頂けます。\r\n"\r\n', 'A'),
('sl-b', 'HONDA', 'RB1/2 ', 'ODYSSEY ', NULL, 'ドアサイドマーカー/SIDE　MAKER', NULL, NULL, 'SIDE MAKER', '2PCS\r\n', 80, '黄色 ', 10, '', 'N', '"個性的なルックスを演出するクリアレンズ仕様です。\r\n純正タイプだから、ファッションとしても、補修用としても安心してお使い頂けます。\r\n"\r\n', 'A'),
('sl-a', 'TOYOTA', 'UCF30・31 ', 'CELSIOR ', NULL, 'ドアサイドマーカー/SIDE　MAKER', NULL, NULL, 'SIDE MAKER', '2PCS\r\n', 80, '黄色 ', 10, '', NULL, '"個性的なルックスを演出するクリアレンズ仕様です。\r\n純正タイプだから、ファッションとしても、補修用としても安心してお使い頂けます。\r\n"\r\n', 'A'),
('i117wh', 'NISSAN', 'C26', 'SERENA ', NULL, 'スカッフプレート/DOOR　SILL　PLATE', NULL, NULL, 'DOOR SILL PLATE', '2PCS\r\n\r\n', 450, 'WHITE/BLUE ', 10, '', 'H', '"純正のスカッフ部の上から貼付するタイプとなります。\r\n耐久性、防錆性に優れたステンレス製。鈍い輝きが更なる高級感を演出します。\r\nカーテシランプなどに連動させれば、ドアを開けた時にロゴLEDが点灯し優しい光でお出迎え。その他連動させる場所次第で色々な光らせ方が可能。\r\n\r\n"\r\n', 'A'),
('dp17', 'NISSAN', 'R2 ', 'X-TRAL', NULL, 'ドアポケットライト/DOOR　POCKET　LAMP', NULL, NULL, 'DOOR POCKET LAMP', '2PCS\r\n', 160, 'BLUE ', 10, '', 'H', '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします 今、流行りのブラックホールイルミネーションで簡単ドレスアップ！ <br>\r\nフロントドアポケットサイズにジャストフィット専用設計！\r\n', 'A'),
('dp15', 'NISSAN', 'J10 ', 'DUALIS  ', NULL, 'ドアポケットライト/DOOR　POCKET　LAMP', NULL, NULL, 'DOOR POCKET LAMP', '2PCS\r\n', 160, 'WHITE/BLUE ', 10, '', NULL, '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします 今、流行りのブラックホールイルミネーションで簡単ドレスアップ！ <br>\r\nフロントドアポケットサイズにジャストフィット専用設計！', 'A'),
('bm001', 'TOYOTA', 'GGH/A/MNH ', 'A/VELLFIRE ', NULL, 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING WHEEL', '普通款\r\n', 550, '钢琴黑 ', 10, '', 'H', NULL, 'A'),
('bm014', 'NISSAN', 'C25 ', 'SERENA  ', NULL, 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING WHEEL', '运动款\r\n', 680, '柾木色 ', 10, '', 'N', NULL, 'A'),
('bm002', 'TOYOTA', '200 ', 'HIACE ', NULL, 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING WHEEL', '运动款\r\n', 550, '钢琴白 ', 10, '', NULL, NULL, 'A'),
('dp16', 'NISSAN', 'J10 ', 'DUALIS', NULL, 'ドアポケットライト/DOOR　POCKET　LAMP', NULL, '', 'DOOR POCKET LAMP', '2PCS\r\n', 160, 'WHITE ', 10, '', NULL, '通常のミラーが、ライトをONにすると…\r\nLED光が無限大に広がり、幻想的なイルミネーションにチェンジします<br>\r\n\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\n\r\nフロントドアポケットサイズにジャストフィット専用設計！\r\n', 'A'),
('st16', 'TOYOTA', 'GGH/A/MNH ', 'A/VELLFIRE ', NULL, 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING WHEEL', NULL, 550, '钢琴黑 ', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', 'A'),
('sn05b', 'NISSAN', 'C25 ', 'SERENA  ', '运动款\r\n', 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING WHEEL', NULL, 680, '茶木色 ', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', 'A'),
('ST09', 'TOYOTA', '200', 'HIACE', '运动款\r\n', 'ステアリング/STEERING　WHEEL', '茶木色 ', NULL, 'STEERING WHEEL', NULL, 550, '', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', 'A'),
('ST40', 'SUZUKI', 'DA64', 'EVERYWGN', '运动款\r\n', 'ステアリング/STEERING　WHEEL', '茶木色 ', NULL, 'STEERING WHEEL', NULL, 680, '茶木色 ', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', 'A'),
('ST89', 'TOYOTA', '30 ', 'PRIUS', '运动款\r\n', 'ステアリング/STEERING　WHEEL', 'T034+134 ', NULL, 'STEERING WHEEL', NULL, 550, 'T034+134 ', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', 'A'),
('ST72', 'TOYOTA', '30', 'PRIUS', '普通款\r\n', 'ステアリング/STEERING　WHEEL', 'T034+126 ', NULL, 'STEERING WHEEL', NULL, 550, '', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', 'A'),
('bmcl01', 'TOYOTA', '200', 'HIACE', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, 140, '', 0, '', 'T', '適合車種：<br>トヨタ ハイエース200系 S-GL\r\n<br>※両側スライドドア車用\r\n<br>※DXは非対応\r\n<br>\r\n<br>セット内容\r\n<br>マップランプレンズ×1\r\n<br>ドームランプレンズ×1\r\n<br>ステップランプレンズ×2', 'A'),
('bmcl52', 'DAIHATSU', 'LA100S', 'MOVE', 'L175/185<br>L375/385<br>OK', 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', '', 135, '', 0, '', 'T', 'セット内容\r\n<br>マップランプレンズ×3\r\n<br>リアルームランプレンズ×2', 'A'),
('bmcl35', 'HONDA ', 'JB5', 'LIFT', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, 100, '', 0, '', 'T', '適合車種：ライフJB5/6/7/8\r\n<br>前期(H15.09～H18.10)　\r\n<br>※C/Cターボ/Cスタイル非対応\r\n<br>後期(H18.11～H20.11)　\r\n<br>V※DIVAのみ対応\r\n<br><br>セット内容\r\n<br>マップランプレンズ×2\r\n<br>リアルームランプレンズ×1\r\n', 'A'),
('bmcl47', 'NISSAN', 'C25', 'SERENA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, 140, '', 0, '', 'T', '適合車種：C25 セレナ　\r\n<br>全グレード対応品\r\n<br><br>セット内容\r\n<br>マップランプレンズ×2\r\n<br>リアルームランプレンズ×4', 'A'),
('bmcl48', 'NISSAN', 'E52', 'ELGRAND', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, 140, '', 0, '', 'T', '適合車種：E52 　全グレード対応品\r\n<br><br>セット内容\r\n<br>マップランプレンズ×2\r\n<br>リアルームランプレンズ×4', 'A'),
('bmcl50', 'NISSAN', 'C26', 'SERENA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', 'セット内容\r\n<br>マップランプレンズ×1\r\n<br>リアルームランプレンズ×3', 'A'),
('bmcl09', 'SUZUKI', 'MH21/22/23', 'WAGON-R', 'EVERY-WGN DA64', 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：AZ ワゴン　\r\n<br>MH21/MH22/MH23S/MJ21/MJ22/MJ23S \r\n<br><br>セット内容\r\n<br>マップランプレンズ×1\r\n<br>リアルームランプレンズ×1', 'A'),
('bmcl70', 'TOYOTA', '200', 'HIACE', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：トヨタ　ハイエース200系 DX\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>ドームランプレンズ×1', 'A'),
('bmcl02', 'TOYOTA', '10', 'ALPHARD', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'N', '適合車種：アルファード　MNH/ANH 10W/15W\r\n\r\n<BR><BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×4\r\n<BR>ラゲージランプレンズ×1', 'A'),
('bmcl24', 'TOYOTA', '50', 'ESTIMA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：トヨタ　エスティマ50系\r\n<BR>ARC50/55・GSR50/55(NO SUNROOF )\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×4', 'A'),
('bmcl04', 'TOYOTA', '20', 'ALPHARD/VELLFIRE', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：ALPHARD/VELLFIRE GGH/ANH 20W/25W\r\n<BR>セット内容\r\n<BR>マップランプレンズ（左右）×2\r\n<BR>リアルームランプレンズセカンド　サード（左右）×4', 'A'),
('bmcl20', 'TOYOTA', '60', 'NOAH/VOXY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 't', '<BR>大型\r\n<BR>適合車種：60系ノア/ヴォクシー(H13.11～H19.05)AZR60/65 ( 大型小型OK )\r\n\r\n<BR>セット内容\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ(セカンド・サード用）×1\r\n<BR>リアルームランプレンズ×1\r\n<BR>ラゲージランプレンズ×1\r\n<BR>対象グレード\r\n<BR>X-G セレクション\r\n<BR>X-G セレクションサイドリフトアップシート装着車\r\n<BR>YY\r\n<BR>X-V Edition\r\n<BR>X-V Editionサイドリフトアップシート装着車\r\n<BR>トランスX', 'A'),
('bmcl41', 'TOYOTA', '70', 'NOAH/VOXY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', '', '<BR>大型\r\n<BR>適合車種：70系ノア/ヴォクシーZRR70・75W/70・70G\r\n<BR>セット内容\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ(セカンド・サード用）×1\r\n<BR>リアルームランプレンズ(大型サード用）×1\r\n<BR>ラゲージランプレンズ×2\r\n<BR>6ピースセット', 'A'),
('bmcl18', 'TOYOTA', '30', 'ESTIMA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：ACR／MCR 30W/40W　\r\n<BR>全グレード対応\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ(セカンド・サード用）×4\r\n<BR>ラゲージランプレンズ×2\r\n<BR>6ピースセット', 'A'),
('bmcl45', 'TOYOTA', '60', 'NOAH/VOXY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>小型\r\n<BR>適合車種：60系ノア/ヴォクシー(H13.11～H19.05) AZR60/65 ( 小型 ) \r\n<BR>セット内容\r\n<BR>マップランプレンズ×2 \r\n<BR>リアルームランプレンズ(セカンド・サード用）×1\r\n<BR>リアルームランプレンズ×1\r\n<BR>ラゲージランプレンズ×1 \r\n<BR>対象グレード\r\n<BR>X-G セレクション\r\n<BR>X-G セレクションサイドリフトアップシート装着車\r\n<BR>YY \r\n<BR>X-V Edition\r\n<BR>X-V Editionサイドリフトアップシート装着車\r\n<BR>トランスX ', 'A'),
('bmcl42', 'TOYOTA', '70', 'NOAH/VOXY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>小型\r\n<BR>適合車種：70系ノア/ヴォクシーZRR70・75W/70・70G\r\n<BR>セット内容\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ(セカンド・サード用）×1\r\n<BR>リアルームランプレンズ(大型サード用）×1\r\n<BR>ラゲージランプレンズ×2\r\n<BR>6ピースセット', 'A'),
('bmcl37', 'TOYOTA', 'GRS18#', 'CROWN', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：GRS18#\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1　 \r\n<BR>1ピースセット', 'A'),
('bmcl40', 'TOYOTA', 'UCF2#', 'CELSIOR', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：UCF20/21\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ(セカンド・サード用）×4\r\n<BR>5ピースセット', 'A'),
('bmcl39', 'TOYOTA', 'UCF3#', 'CELSIOR', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：UCF30/31\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×2', 'A'),
('bmcl36', 'TOYOTA', '50', 'ESTIMA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>マップランプレンズ×1', 'A'),
('bmcl44', 'TOYOTA', '50', 'ESTIMA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：トヨタ　エスティマ50系\r\nARC50/55・GSR50/55 (SUNROOF USE)\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×4', 'A'),
('bmcl38', 'TOYOTA', 'JZS16#', 'ARISTO', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', '', '適合車種：JZS16#\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×2', 'A'),
('bmcl46', 'TOYOTA', 'ANE/ZNE10', 'WISH', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：ANE/ZNE10\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×1\r\n<BR>ラゲージランプレンズ×1', 'A'),
('bmcl49', 'TOYOTA', 'ZVW30', 'PRIUS', '', 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '適合車種：ZVW30/ZVW40\r\n<BR>セット内容 ( NO SUNROOF )\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ×1', 'A'),
('bmcl51', 'TOYOTA', 'ZVW40', 'PRIUS A', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>セット内容 ( SUNROOF )\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ×1', 'A'),
('bmcl69', 'NISSAN', 'C26', 'SERENA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>マップランプレンズ×1', 'A'),
('bmcl53', 'HONDA', 'RB3/4', 'ODYSSEY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>セット内容 ( SUNROOF )', 'A'),
('bmcl54', 'HONDA', 'GE6-9', 'FIT', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>セット内容 ( NO SUNROOF )', 'A'),
('bmcl55', 'HONDA', 'GE6-9', 'FIT', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>セット内容 ( SUNROOF )', 'A'),
('bmcl56', 'HONDA', 'RK1/2', 'STEPWGN', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', NULL, '<BR>セット内容 ( NO SUNROOF )', 'A'),
('bmcl57', 'HONDA', 'RF3-8', 'STEPWGN', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', '', '', 'A'),
('bmcl58', 'HONDA', 'ZF1', 'CR-Z', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>マップランプレンズ×2', 'A'),
('bmcl62', 'HONDA', 'JC1/2', 'LIFE', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', 'T', '<BR>FRONT & REAR', 'A'),
('bmcl63', 'HONDA', 'RN6-9', 'STREAM', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, '', 0, '', NULL, '<BR>マップランプレンズ×2 ( SUNROOF )', 'A'),
('ex270', 'TOYOTA', 'VELLFIRE20後期', '24Z・35Z・HBDZR', NULL, 'フロントバンパーカバー/CHROME GRILL', NULL, NULL, 'CHROME GRILL', '2', NULL, '', 0, '', NULL, NULL, 'A'),
('ex164', 'TOYOTA', 'ODYSSEY', '30', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER ', NULL, '', 'CHROME HANDLE COVER', '8', NULL, '', 0, '', 'H', NULL, 'A'),
('rl03', 'DAIHATSU', 'TANTO', 'L3#', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, 'LEDルームランプセット\r\n', 'A'),
('rl04', 'TOYOTA', 'ALPHARD', 'ANH2#W', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, 'LEDルームランプセット<BR>フロントマップランプ<BR>リアルームランプ<BR>ラゲージランプ<BR>カーテシランプ灯\r\n', NULL),
('rl05', 'HONDA', 'FIT', 'GE6-9', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, 'LEDルームランプセット\r\n', NULL),
('rl06', 'MITSUBISHI', 'DELICA', 'D5', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, 'LEDルームランプセット 92球<BR>フロンﾄ  2箇所 32球<BR>セカンド・サードシート4箇所 60球\r\n', 'A'),
('rl07', 'SUZUKI', 'WAGON-R', 'MH23', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '1', NULL, '', 0, '', NULL, 'フロント  1箇所 28球\r\n', 'A'),
('rl08', 'SUZUKI', 'MR WAGON', 'MF22', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '1', NULL, '', 0, '', NULL, 'リア    1箇所 18球\r\n', 'A'),
('rl09', 'SUZUKI', 'WAGON-R', 'MH21', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '2', NULL, '', 0, '', NULL, 'LEDルームランプセット46球(RL07+RL08)\r\n', 'A'),
('rl10', 'SUZUKI', 'MR WAGON', 'MF22', 'フロント 1箇所 40球', 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '1', NULL, '', 0, '', NULL, '', 'A'),
('rl11', 'SUZUKI', 'MR WAGON', 'MF22', 'LEDルームランプセット58球(RL08+RL10)', 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '2', NULL, '', 0, '', NULL, 'LEDルームランプセット58球(RL08+RL10)', 'A'),
('rl12', 'TOYOTA', 'HIACE', '200', 'DX フロント&(RL01) ', 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '1', NULL, '', 0, '', NULL, NULL, 'A'),
('rl13', 'TOYOTA', 'NOAH/VOXY', 'ZRR70', 'Set 162LED+8SMD\r\n', 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '4', NULL, '', 0, '', NULL, NULL, 'A'),
('rl15', 'DAIHATSU', 'MOVE', 'L175', 'SET 5箇所 51球\r\n', 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '5', NULL, '', 0, '', NULL, NULL, 'A'),
('rl17', 'DAIHATSU', 'MOVE CONTE', 'L575', 'SET 4箇所 39球\r\n', 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '4', NULL, '', 0, '', NULL, NULL, 'A'),
('rl18', 'TOYOTA', 'ESTIMA', 'A/MCR30/40', 'フロント/サイド/ナンバ-プレト 60LED/4SMD\r\n', 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, NULL, 'A'),
('rl20', 'TOYOTA', 'NOAH/VOXY', 'AZR6#', '36LED/4SMD 小型\r\n', 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '5', NULL, '', 0, '', NULL, NULL, 'A'),
('rl21', 'TOYOTA', 'NOAH/VOXY', 'ZRR70', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, NULL, 'A'),
('rl22', 'TOYOTA', 'PRIUS', 'ZVW30', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, NULL, 'A'),
('rl23', 'TOYOTA', 'WISH', 'ZGE20/1/2/5 ', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, NULL, 'A'),
('rl24', 'TOYOTA', 'ESTIMA', '50系 ', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, NULL, 'A'),
('rl24a', 'TOYOTA', 'ESTIMA', '50系 ', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, NULL, 'A'),
('rl25', 'TOYOTA', 'HARRIER', 'A/MCU10/15', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, NULL, 'A'),
('rl26f', 'TOYOTA', 'HARRIER', 'A/MCU30/35', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '4', NULL, '', 0, '', NULL, NULL, 'A'),
('rl27', 'TOYOTA', 'CELSIOR', 'UCF20/21', 'サンルーフ車不可\r\n', 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '7', NULL, '', 0, '', NULL, NULL, 'A'),
('rl28', 'TOYOTA', 'CELSIOR', 'UCF30/31', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '5', NULL, '', 0, '', NULL, NULL, 'A'),
('rl29', 'TOYOTA', 'ARISTO', 'JZS160/161', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '5', NULL, '', 0, '', 'H', NULL, 'A'),
('rl30', 'TOYOTA', 'CROWN(ｴｽﾃｰﾄ以外〕', 'JZS/UZS17 ', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '5', NULL, '', 0, '', NULL, NULL, 'A'),
('rl31', 'TOYOTA', 'CROWN', 'GSR200', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '5', NULL, '', 0, '', NULL, NULL, 'A'),
('rl32', 'HONDA', 'STEP WAGON', 'RG1~4', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, NULL, 'A'),
('rl33', 'HONDA', 'STEP WAGON', 'RF3~8', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, NULL, 'A'),
('rl34', 'HONDA', 'ODYSSEY', 'RB1/2', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, NULL, 'A'),
('rl35', 'HONDA', 'LIFE', 'JB5~8', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '5', NULL, '', 0, '', NULL, NULL, 'A'),
('rl36', 'HONDA', 'VAMOS HOBIO', 'HM3/4', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, NULL, 'A'),
('rl37', 'HONDA', 'STREAM', 'RN6~9', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '4', NULL, '', 0, '', NULL, NULL, 'A'),
('rl38', 'HONDA', 'ELYSION (PRESTIGE)', 'RR1~6', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, NULL, 'A'),
('rl39', 'NISSAN', 'ELGRAND', 'E51', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, NULL, 'A'),
('rl40', 'NISSAN', 'SERENA', 'C25', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, NULL, 'A'),
('rl41', 'MAZDA', 'RX-7', '', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '2', NULL, '', 0, '', NULL, NULL, 'A'),
('rl42', 'MAZDA', 'RX-8', '', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '1', NULL, '', 0, '', NULL, NULL, 'A'),
('rl43', 'DAIHATSU', 'TANTO CUSTOM ', '', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '7', NULL, '', 0, '', NULL, NULL, 'A'),
('rl45', 'NISSAN', 'SERENA', 'C25', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, NULL, 'A'),
('rl46', 'NISSAN', 'ELGRAND', 'E52', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '6', NULL, '', 0, '', NULL, NULL, 'A'),
('rl47', 'NISSAN', 'ELGRAND', 'E52', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '7', NULL, '', 0, '', NULL, NULL, 'A'),
('rl48', 'TOYOTA', 'PRIUS', 'ZVW30', NULL, 'ルームランプ/ROOM LAMP', NULL, NULL, 'ROOM LAMP', '3', NULL, '', 0, '', NULL, NULL, 'A'),
('ex106', 'NISSAN', 'ELGRAND', 'E51', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER', NULL, NULL, 'CHROME HANDLE COVER', '4', NULL, '', 0, '', NULL, '鏡面仕上げとなっていますので、光を反射します。 メッキの輝きで車のドレスアップに！ インテリジェントキー専用タイプとなっております。 強力両面テープ付きのため、簡単にお取り付けできます。', NULL),
('ex107', 'NISSAN', 'SERENA', 'C25', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER', NULL, NULL, 'CHROME HANDLE COVER', '8', NULL, '', 0, '', NULL, '鏡面仕上げとなっていますので、光を反射します。 メッキの輝きで車のドレスアップに！ インテリジェントキー専用タイプとなっております。 強力両面テープ付きのため、簡単にお取り付けできます。', 'A'),
('ex109', 'TOYOTA', 'PRIUS', '30', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER', NULL, NULL, 'CHROME HANDLE COVER', '9', NULL, '', 0, '', NULL, '鏡面仕上げとなっていますので、光を反射します。 メッキの輝きで車のドレスアップに！ インテリジェントキー専用タイプとなっております。 強力両面テープ付きのため、簡単にお取り付けできます。', NULL),
('ex113', 'SUZUKI', 'WAGON-R', 'MH21/22', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER', NULL, NULL, 'CHROME HANDLE COVER', '4', NULL, '', 0, '', NULL, '鏡面仕上げとなっていますので、光を反射します。 メッキの輝きで車のドレスアップに！ インテリジェントキー専用タイプとなっております。 強力両面テープ付きのため、簡単にお取り付けできます。', 'A'),
('ex114', 'SUZUKI', 'WAGON-R', 'MH23', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER', NULL, NULL, 'CHROME HANDLE COVER', '12', NULL, '', 0, '', NULL, '鏡面仕上げとなっていますので、光を反射します。 メッキの輝きで車のドレスアップに！ インテリジェントキー専用タイプとなっております。 強力両面テープ付きのため、簡単にお取り付けできます。', 'A'),
('ex115', 'DAIHATSU', '汎用', '', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER', NULL, NULL, 'CHROME HANDLE COVER', '10', NULL, '', 0, '', NULL, '鏡面仕上げとなっていますので、光を反射します。 メッキの輝きで車のドレスアップに！ インテリジェントキー専用タイプとなっております。 強力両面テープ付きのため、簡単にお取り付けできます。', 'A'),
('ex121', 'HONDA', 'STEP WGN', 'RG1/2', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER', NULL, NULL, 'CHROME HANDLE COVER', '2', NULL, '', 0, '', NULL, '鏡面仕上げとなっていますので、光を反射します。 メッキの輝きで車のドレスアップに！ インテリジェントキー専用タイプとなっております。 強力両面テープ付きのため、簡単にお取り付けできます。', 'A'),
('ex123', 'HONDA', 'FREED', 'GB3', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER 	', NULL, NULL, 'CHROME HANDLE COVER ', '6', NULL, '', 0, '', NULL, '鏡面仕上げとなっていますので、光を反射します。 メッキの輝きで車のドレスアップに！ インテリジェントキー専用タイプとなっております。 強力両面テープ付きのため、簡単にお取り付けできます。', NULL),
('ex144', 'DAIHATSU', 'TANTO', 'L375', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER ', NULL, NULL, 'CHROME HANDLE COVER', '10', NULL, '', 0, '', NULL, NULL, 'A'),
('ex253', 'HONDA', 'NBOX', 'JF1/2', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER ', NULL, NULL, 'CHROME HANDLE COVER', '8', NULL, '', 0, '', 'H', NULL, 'A'),
('dp01', 'TOYOTA', 'A/VELLFIRE', 'ANH2#W', NULL, 'ポケットライト/DOOR POCKET LAMP', 'Blue', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', 'N', '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします 今、流行りのブラックホールイルミネーションで簡単ドレスアップ！ <br>\r\nフロントドアポケットサイズにジャストフィット専用設計！', 'A'),
('ex129', 'TOYOTA', 'ESTIMA', '30/40', NULL, 'メッキドアノブカバー/CHROME HANDLE COVER', NULL, NULL, 'CHROME HANDLE COVER', '8', NULL, '', 0, '', 'H', NULL, 'A'),
('pt020', 'NISSAN', 'SERENA', 'C24', '後期\r\n', 'インタリアパネル/INTERIOR PANEL', '茶木目', 'BM054', 'INTERIOR PANEL', '12', NULL, '', 0, '', 'H', '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('pt021', 'TOYOTA', 'bB', 'QNC', NULL, 'インテリアパネル/INTERIOR PANEL', '黒木目', 'BM075', 'INTERIOR PANEL', '16', NULL, '', 0, '', 'H', '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('pt024', 'NISSAN', 'ELGRAND', 'E51', NULL, 'インテリアパネル/INTERIOR PANEL', '黄木目', 'BM022', 'INTERIOR PANEL', '17', NULL, '', 0, '', 'H', '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('pt025', 'HONDA', 'FIT', 'GD1-4', NULL, 'インテリアパネル/INTERIOR PANEL', 'カーボン調', 'BM039', 'INTERIOR PANEL', '12', NULL, '', 0, '', 'H', '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('pt034', 'HONDA', 'ODYSSEY', 'RB1-2', '前期\r\n', 'インテリアパネル/INTERIOR PANEL', '黒木目', 'BM050', 'INTERIOR PANEL', '23\r\n', NULL, '', 0, '', 'H', '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('pt035', 'HONDA', 'ODYSSEY', 'RB1-2', NULL, 'インテリアパネル/INTERIOR PANEL', '茶木目', 'BM032', 'INTERIOR PANEL', '23\r\n', NULL, '', 0, '', 'N', '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('pt038', 'エルフ', 'ELF', '', NULL, 'インテリアパネル/INTERIOR PANEL', '黒木目', 'BM075', 'INTERIOR PANEL', '16\r\n', NULL, '', 0, '', NULL, '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A');
INSERT INTO `product` (`product_cd`, `product_made`, `product_model`, `product_car_name`, `product_remark`, `product_name`, `product_colour`, `cat_id`, `product_cat`, `product_qty`, `product_rmb`, `product_colour_no`, `product_photo`, `alias`, `new`, `product_desc`, `sts`) VALUES
('pt039', 'エルフ', 'ELF', '', NULL, 'インテリアパネル/INTERIOR PANEL', '茶木目', 'BM054', 'INTERIOR PANEL', '16\r\n', NULL, '', 0, '', NULL, '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('pt041', 'TOYOTA', 'VITZ', 'NCP9#', 'カーボン調内装パネル\r\n', 'インテリアパネル/INTERIOR PANEL', 'カーボン調', 'BM037', 'INTERIOR PANEL', '14\r\n', NULL, '', 0, '', NULL, '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('pt052', 'TOYOTA', 'LANDCRUISER', '100系', 'A/C ウッド調内装パネル\r\n', 'インテリアパネル/INTERIOR PANEL', '茶木目', 'BM054', 'INTERIOR PANEL', '3\r\n', NULL, '', 0, '', NULL, '立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！<br>\r\n 車内が高級感溢れる空間に早代わり！<br>\r\n■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に <br>\r\n■取付は両面テープで貼り付けるだけなので簡単！ 　（パネル裏面に最初から両面テープが貼り付けてあります）<br> \r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。 取付手順例 <br>\r\n①油分や汚れを綺麗に拭き取って下さい。 （油分や汚れが付着しているとすぐ剥がれる可能性があります） <br>\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。 （この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます） <br>\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。 （基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）<br> \r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。', 'A'),
('dp05', 'NISSAN', 'SENERA', '', NULL, 'ポケットライト/DOOR POCKET LAMP', 'Blue', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', 'H', '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！ ', 'A'),
('dp06', 'NISSAN', 'SENERA', '', NULL, 'ポケットライト/DOOR POCKET LAMP', 'White', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', 'H', '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！ ', 'A'),
('dp07', 'NISSAN', 'ELGRAND', '', NULL, 'ポケットライト/DOOR POCKET LAMP', 'Blue', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', NULL, '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！ ', 'A'),
('dp08', 'NISSAN', 'ELGRAND', '', NULL, 'ポケットライト/DOOR POCKET LAMP', 'White', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', NULL, '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！', 'A'),
('dp09', 'TOYOTA', 'PRIUS', '', NULL, 'ポケットライト/DOOR POCKET LAMP', NULL, NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', NULL, '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！', 'A'),
('dp10', 'TOYOTA', 'PRIUS', '', NULL, 'ポケットライト/DOOR POCKET LAMP', 'White', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', NULL, '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！', NULL),
('dp11', 'TOYOTA', 'PRIUS', '', NULL, 'ポケットライト/DOOR POCKET LAMP', NULL, NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', 'H', '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！', 'A'),
('dp12', 'TOYOTA', 'PRIUS', '', NULL, 'ポケットライト/DOOR POCKET LAMP', 'White', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', NULL, '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！ ', NULL),
('dp13', 'SUZUKI', 'EVERY WAGON', 'DA64', NULL, 'ポケットライト/DOOR POCKET LAMP', 'Blue', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', 'H', '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします <br>\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！ ', 'A'),
('dp14', 'SUZUKI', 'EVERY WAGON ', 'DA64', NULL, 'ドアポケットライト/DOOR POCKET LAMP', 'White', NULL, 'DOOR POCKET LAMP', '2', NULL, '', 0, '', NULL, '通常のミラーが、ライトをONにすると… LED光が無限大に広がり、幻想的なイルミネーションにチェンジします<br>\r\n 今、流行りのブラックホールイルミネーションで簡単ドレスアップ！<br>\r\nフロントドアポケットサイズにジャストフィット専用設計！', 'A');

-- --------------------------------------------------------

--
-- 資料表格式： `product20120813`
--

CREATE TABLE IF NOT EXISTS `product20120813` (
  `product_cd` varchar(20) NOT NULL default '0',
  `product_made` varchar(255) default NULL,
  `product_model` varchar(255) default NULL,
  `product_car_name` varchar(255) NOT NULL,
  `product_remark` tinytext,
  `product_name` varchar(255) default NULL,
  `product_colour` varchar(100) default NULL,
  `cat_id` varchar(5) default NULL,
  `product_cat` varchar(20) default NULL,
  `eng_product_cat` varchar(20) default NULL,
  `product_qty` text,
  `product_rmb` int(11) default NULL,
  `product_colour_no` varchar(255) NOT NULL,
  `product_photo` int(2) NOT NULL default '0',
  `alias` varchar(1) NOT NULL,
  `new` varchar(1) default NULL,
  `product_desc` text,
  `sts` varchar(1) default NULL,
  PRIMARY KEY  (`product_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 列出以下資料庫的數據： `product20120813`
--

INSERT INTO `product20120813` (`product_cd`, `product_made`, `product_model`, `product_car_name`, `product_remark`, `product_name`, `product_colour`, `cat_id`, `product_cat`, `eng_product_cat`, `product_qty`, `product_rmb`, `product_colour_no`, `product_photo`, `alias`, `new`, `product_desc`, `sts`) VALUES
('pt559', 'TOYOTA', 'A/VELLFIRE', 'GGH/A/MNH', NULL, 'インテリアパネル/INTERIOR PANEL', '钢琴黑 ', NULL, 'INTERIOR PANEL', NULL, NULL, 2153, '', 10, '', 'T', '"立体形成された３Ｄインテリアパネルは、両面テープで貼り付けるだけ！\r\n車内が高級感溢れる空間に早代わり！■光沢のあるピアノブラック仕上げで室内をシックな雰囲気に\r\n\r\n■取付は両面テープで貼り付けるだけなので簡単！\r\n　（パネル裏面に最初から両面テープが貼り付けてあります）\r\n\r\n※メーカーオプションナビ付車はナビ廻りのパネルが適合致しません。\r\n\r\n取付手順例\r\n①油分や汚れを綺麗に拭き取って下さい。\r\n（油分や汚れが付着しているとすぐ剥がれる可能性があります）\r\n②両面テープの保護シールをはがさずに、そのままフィッティングのチェックを行って下さい。\r\n（この際パネルが割れているなど明らかにおかしい場合はすぐにご連絡下さい。取付後の返品・交換は対応いたしかねます）\r\n③若干の曲がり角度などのズレがある場合、ドライヤーなどで温めて曲がりのくせをつけて下さい。\r\n（基本的にテープの粘着力だけで、そのまま装着できます。ドライヤーの温度などには十分ご注意下さい。火傷・製品が溶けた場合など当社では対応致しかねます）\r\n④以上問題なければ両面テープの保護シールをはがし、ズレに注意しながらパネルを貼り付けて下さい。\r\n\r\n※お車のグレードやオプション、スイッチの有無により不足部分、不適合のピースがある場合がございます。グレードや年式などお問い合わせ頂きましても当社では分かりかねますので必ず画像の商品と現車のパネル形状をご確認の上ご入札下さい。\r\n\r\n※輸入品につき、商品にスレ、小傷、塗装のムラがある場合がございます。ご理解頂いた上でのご入札をお願い致します。\r\n\r\n\r\n\r\n"\r\n', 'A'),
('rl02', 'TOYOTA', 'GGH/ANH2#W', 'ALPHARD', '114LED+12SMD', 'ルームランプレンズ/ROOM LAMP LENS', NULL, NULL, 'ROOM LAMP LENS', NULL, '9PCS', 144, '白色', 10, '', 'T', '"専用設計ですので純正バルブを外し交換するだけの簡単取り付けです。\r\n純正の黄色っぽい光を澄みきった純白色に変えます。\r\n超発光と拡散性を実現するため、高品質LEDを惜しみなく配置した贅沢な超高輝度ルームランプキットです。\r\nドアを開けた瞬間見るものを魅了し、雰囲気を変える迫力満点・圧巻のフルセットです。\r\n\r\n"\r\n', 'A'),
('ex179', 'TOYOTA', '200', 'HIACE', '', 'グリル/GRILL', NULL, NULL, 'GRILL', NULL, '\r\n', 250, '电镀色', 10, '', NULL, '"純正グリルを外してはめ変えるだけの簡単取付♪\r\n\r\n鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nフロントフェイスを一変させるグリルになっております。\r\n\r\n"\r\n', NULL),
('i112blwh', 'TOYOTA', 'ZVW30', 'PRIUS ', NULL, 'スカッフプレート/DOOR　SILL　PLATE', NULL, NULL, 'DOOR　SILL　PLATE', NULL, NULL, 280, 'WHITE ', 10, '', 'T', '"純正のスカッフ部の上から貼付するタイプとなります。\r\n耐久性、防錆性に優れたステンレス製。鈍い輝きが更なる高級感を演出します。\r\nカーテシランプなどに連動させれば、ドアを開けた時にロゴLEDが点灯し優しい光でお出迎え。その他連動させる場所次第で色々な光らせ方が可能。\r\n\r\n"\r\n', 'S'),
('dp01dp02', 'TOYOTA', 'ANH2#W ', 'A/VELLFIRE ', NULL, 'ドアポケットライト/DOOR　POCKET　LAMP', NULL, NULL, 'DOOR　POCKET　LAMP', NULL, NULL, 135, 'BLUE/WHITE ', 10, '', NULL, '"通常のミラーが、ライトをONにすると…\r\nLED光が無限大に広がり、幻想的なイルミネーションにチェンジします\r\n\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！\r\n\r\nフロントドアポケットサイズにジャストフィット専用設計！\r\n\r\n"\r\n', NULL),
('ex126', 'HONDA', 'RK ', 'STEP WGN ', NULL, 'メッキドアノブカバー/CHROME　HANDLE　COVER', NULL, NULL, 'CHROME　HANDLE　COVER', NULL, '8PCS\r\n', 110, '电镀色 ', 10, '', NULL, '"鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nインテリジェントキー専用タイプとなっております。\r\n\r\n強力両面テープ付きのため、簡単にお取り付けできます。"\r\n', NULL),
('ex124', 'HONDA', 'GB3 ', 'FREED ', NULL, 'メッキドアノブカバー/CHROME　HANDLE　COVER', NULL, NULL, 'CHROME　HANDLE　COVER', NULL, '6PCS\r\n', 85, '电镀色', 10, '', NULL, '"鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nインテリジェントキー専用タイプとなっております。\r\n\r\n強力両面テープ付きのため、簡単にお取り付けできます。"\r\n', NULL),
('ex171', 'DAIHATSU', 'LA100S ', 'MOVE ', NULL, 'メッキドアノブカバー/CHROME　HANDLE　COVER', NULL, NULL, 'CHROME　HANDLE　COVER', NULL, '8PCS\r\n', 60, '电镀色 ', 10, '', NULL, '"鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nインテリジェントキー専用タイプとなっております。\r\n\r\n強力両面テープ付きのため、簡単にお取り付けできます。"\r\n', NULL),
('ex172', 'DAIHATSU', 'LA100S ', 'MOVE ', NULL, 'メッキフロントバンパーグリルカバー/CHROME　GRILL', NULL, NULL, 'CHROME　GRILL', NULL, '4PCS\r\n', 135, '电镀色 ', 10, '', NULL, '"純正グリルを外してはめ変えるだけの簡単取付♪\r\n\r\n鏡面仕上げとなっていますので、光を反射します。\r\n\r\nメッキの輝きで車のドレスアップに！\r\n\r\nフロントフェイスを一変させるグリルになっております。\r\n\r\n"\r\n', NULL),
('sl-c', 'SUZUKI', 'DA64 ', 'EVERY WGN ', NULL, 'ドアサイドマーカー/SIDE　MAKER', NULL, NULL, 'SIDE　MAKER', NULL, '2PCS\r\n', 80, '黄色 ', 10, '', NULL, '"個性的なルックスを演出するクリアレンズ仕様です。\r\n純正タイプだから、ファッションとしても、補修用としても安心してお使い頂けます。\r\n"\r\n', NULL),
('sl-b', 'HONDA', 'RB1/2 ', 'ODYSSEY ', NULL, 'ドアサイドマーカー/SIDE　MAKER', NULL, NULL, 'SIDE　MAKER', NULL, '2PCS\r\n', 80, '黄色 ', 10, '', NULL, '"個性的なルックスを演出するクリアレンズ仕様です。\r\n純正タイプだから、ファッションとしても、補修用としても安心してお使い頂けます。\r\n"\r\n', NULL),
('sl-a', 'TOYOTA', 'UCF30・31 ', 'CELSIOR ', NULL, 'ドアサイドマーカー/SIDE　MAKER', NULL, NULL, 'SIDE　MAKER', NULL, '2PCS\r\n', 80, '黄色 ', 10, '', NULL, '"個性的なルックスを演出するクリアレンズ仕様です。\r\n純正タイプだから、ファッションとしても、補修用としても安心してお使い頂けます。\r\n"\r\n', NULL),
('i117wh', 'NISSAN', 'C26', 'SERENA ', NULL, 'スカッフプレート/DOOR　SILL　PLATE', NULL, NULL, 'DOOR　SILL　PLATE', NULL, '2PCS\r\n\r\n', 450, 'WHITE/BLUE ', 10, '', NULL, '"純正のスカッフ部の上から貼付するタイプとなります。\r\n耐久性、防錆性に優れたステンレス製。鈍い輝きが更なる高級感を演出します。\r\nカーテシランプなどに連動させれば、ドアを開けた時にロゴLEDが点灯し優しい光でお出迎え。その他連動させる場所次第で色々な光らせ方が可能。\r\n\r\n"\r\n', NULL),
('dp17', 'NISSAN', 'R2 ', 'X-TRAL', NULL, 'ドアポケットライト/DOOR　POCKET　LAMP', NULL, NULL, 'DOOR　POCKET　LAMP', NULL, '2PCS\r\n', 160, 'BLUE ', 10, '', NULL, '"通常のミラーが、ライトをONにすると…\r\nLED光が無限大に広がり、幻想的なイルミネーションにチェンジします\r\n\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！\r\n\r\nフロントドアポケットサイズにジャストフィット専用設計！\r\n\r\n"\r\n', NULL),
('dp15', 'NISSAN', 'J10 ', 'DUALIS  ', NULL, 'ドアポケットライト/DOOR　POCKET　LAMP', NULL, NULL, 'DOOR　POCKET　LAMP', NULL, '2PCS\r\n', 160, 'WHITE/BLUE ', 10, '', NULL, NULL, NULL),
('bm001', 'TOYOTA', 'GGH/A/MNH ', 'A/VELLFIRE ', NULL, 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING　WHEEL', NULL, '普通款\r\n', 550, '钢琴黑 ', 10, '', NULL, NULL, NULL),
('bm014', 'NISSAN', 'C25 ', 'SERENA  ', NULL, 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING　WHEEL', NULL, '运动款\r\n', 680, '柾木色 ', 10, '', NULL, NULL, NULL),
('bm002', 'TOYOTA', '200 ', 'HIACE ', NULL, 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING　WHEEL', NULL, '运动款\r\n', 550, '钢琴白 ', 10, '', NULL, NULL, NULL),
('dp16', 'NISSAN', 'J10 ', 'DUALIS', NULL, 'ドアポケットライト/DOOR　POCKET　LAMP', NULL, '', 'DOOR　POCKET　LAMP', NULL, '2PCS\r\n', 160, 'WHITE ', 10, '', NULL, '"通常のミラーが、ライトをONにすると…\r\nLED光が無限大に広がり、幻想的なイルミネーションにチェンジします\r\n\r\n今、流行りのブラックホールイルミネーションで簡単ドレスアップ！\r\n\r\nフロントドアポケットサイズにジャストフィット専用設計！\r\n\r\n"\r\n', NULL),
('st16', 'TOYOTA', 'GGH/A/MNH ', 'A/VELLFIRE ', NULL, 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING　WHEEL', NULL, NULL, 550, '钢琴黑 ', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', NULL),
('sn05b', 'NISSAN', 'C25 ', 'SERENA  ', '运动款\r\n', 'ステアリング/STEERING　WHEEL', NULL, NULL, 'STEERING　WHEEL', NULL, NULL, 680, '茶木色 ', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', NULL),
('ST10W', 'TOYOTA', '', 'HIACE', NULL, 'ステアリング/STEERING　WHEEL', '钢琴白', NULL, 'STEERING　WHEEL', NULL, NULL, NULL, '', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', NULL),
('ST09', 'TOYOTA', '200', 'HIACE', '运动款\r\n', 'ステアリング/STEERING　WHEEL', '茶木色 ', NULL, 'STEERING　WHEEL', NULL, NULL, 550, '', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', NULL),
('ST40', 'SUZUKI', 'DA64', 'EVERYWGN', '运动款\r\n', 'ステアリング/STEERING　WHEEL', '茶木色 ', NULL, 'STEERING　WHEEL', NULL, NULL, 680, '茶木色 ', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', NULL),
('ST89', 'TOYOTA', '30 ', 'PRIUS', '运动款\r\n', 'ステアリング/STEERING　WHEEL', 'T034+134 ', NULL, 'STEERING　WHEEL', NULL, NULL, 550, 'T034+134 ', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', NULL),
('ST72', 'TOYOTA', '30', 'PRIUS', '普通款\r\n', 'ステアリング/STEERING　WHEEL', 'T034+126 ', NULL, 'STEERING　WHEEL', NULL, NULL, 550, '', 10, '', NULL, '"パンチングレザーガングリップ\r\nあふれるスポーツテイストと手にしっくりとなじむ絶妙のグリップ感が、\r\nコクピットを一段と精悍に演出させたモデル。\r\nまるで別の車かのようにハンドル操作性が変わります。\r\n柔らかな風合いとソフトな手触りが特長です。\r\n高級車では当たり前のコブ付仕様\r\nしっかり手になじみ、確実なハンドリングを容易にします\r\n\r\n純正ステアリングを車輌本体からはずし、エアバック、スイッチ、カバー類を\r\n入れ換え再度車輌本体に装着していただければ完成です。\r\n\r\n\r\n"\r\n', NULL),
('bmcl01', 'TOYOTA', '200', 'HIACE', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, 140, '', 0, '', 'T', '適合車種：<br>トヨタ ハイエース200系 S-GL\r\n<br>※両側スライドドア車用\r\n<br>※DXは非対応\r\n<br>\r\n<br>セット内容\r\n<br>マップランプレンズ×1\r\n<br>ドームランプレンズ×1\r\n<br>ステップランプレンズ×2', NULL),
('bmcl52', 'DAIHATSU', 'LA100S', 'MOVE', 'L175/185<br>L375/385<br>OK', 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, '', 135, '', 0, '', 'T', 'セット内容\r\n<br>マップランプレンズ×3\r\n<br>リアルームランプレンズ×2', NULL),
('bmcl35', 'HONDA ', 'JB5', 'LIFT', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, 100, '', 0, '', 'T', '適合車種：ライフJB5/6/7/8\r\n<br>前期(H15.09～H18.10)　\r\n<br>※C/Cターボ/Cスタイル非対応\r\n<br>後期(H18.11～H20.11)　\r\n<br>V※DIVAのみ対応\r\n<br><br>セット内容\r\n<br>マップランプレンズ×2\r\n<br>リアルームランプレンズ×1\r\n', NULL),
('bmcl47', 'NISSAN', 'C25', 'SERENA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, 140, '', 0, '', 'T', '適合車種：C25 セレナ　\r\n<br>全グレード対応品\r\n<br><br>セット内容\r\n<br>マップランプレンズ×2\r\n<br>リアルームランプレンズ×4', NULL),
('bmcl48', 'NISSAN', 'E52', 'ELGRAND', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, 140, '', 0, '', 'T', '適合車種：E52 　全グレード対応品\r\n<br><br>セット内容\r\n<br>マップランプレンズ×2\r\n<br>リアルームランプレンズ×4', NULL),
('bmcl50', 'NISSAN', 'C26', 'SERENA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', 'セット内容\r\n<br>マップランプレンズ×1\r\n<br>リアルームランプレンズ×3', NULL),
('bmcl09', 'SUZUKI', 'MH21/22/23', 'WAGON-R', 'EVERY-WGN DA64', 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：AZ ワゴン　\r\n<br>MH21/MH22/MH23S/MJ21/MJ22/MJ23S \r\n<br><br>セット内容\r\n<br>マップランプレンズ×1\r\n<br>リアルームランプレンズ×1', NULL),
('bmcl70', 'TOYOTA', '200', 'HIACE', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：トヨタ　ハイエース200系 DX\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>ドームランプレンズ×1', NULL),
('bmcl02', 'TOYOTA', '10', 'ALPHARD', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：アルファード　MNH/ANH 10W/15W\r\n\r\n<BR><BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×4\r\n<BR>ラゲージランプレンズ×1', NULL),
('bmcl24', 'TOYOTA', '50', 'ESTIMA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：トヨタ　エスティマ50系\r\n<BR>ARC50/55・GSR50/55(NO SUNROOF )\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×4', NULL),
('bmcl04', 'TOYOTA', '20', 'ALPHARD/VELLFIRE', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：ALPHARD/VELLFIRE GGH/ANH 20W/25W\r\n<BR>セット内容\r\n<BR>マップランプレンズ（左右）×2\r\n<BR>リアルームランプレンズセカンド　サード（左右）×4', NULL),
('bmcl20', 'TOYOTA', '60', 'NOAH/VOXY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 't', '<BR>大型\r\n<BR>適合車種：60系ノア/ヴォクシー(H13.11～H19.05)AZR60/65 ( 大型小型OK )\r\n\r\n<BR>セット内容\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ(セカンド・サード用）×1\r\n<BR>リアルームランプレンズ×1\r\n<BR>ラゲージランプレンズ×1\r\n<BR>対象グレード\r\n<BR>X-G セレクション\r\n<BR>X-G セレクションサイドリフトアップシート装着車\r\n<BR>YY\r\n<BR>X-V Edition\r\n<BR>X-V Editionサイドリフトアップシート装着車\r\n<BR>トランスX', NULL),
('bmcl41', 'TOYOTA', '70', 'NOAH/VOXY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', '', '<BR>大型\r\n<BR>適合車種：70系ノア/ヴォクシーZRR70・75W/70・70G\r\n<BR>セット内容\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ(セカンド・サード用）×1\r\n<BR>リアルームランプレンズ(大型サード用）×1\r\n<BR>ラゲージランプレンズ×2\r\n<BR>6ピースセット', NULL),
('bmcl18', 'TOYOTA', '30', 'ESTIMA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：ACR／MCR 30W/40W　\r\n<BR>全グレード対応\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ(セカンド・サード用）×4\r\n<BR>ラゲージランプレンズ×2\r\n<BR>6ピースセット', NULL),
('bmcl45', 'TOYOTA', '60', 'NOAH/VOXY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>小型\r\n<BR>適合車種：60系ノア/ヴォクシー(H13.11～H19.05) AZR60/65 ( 小型 ) \r\n<BR>セット内容\r\n<BR>マップランプレンズ×2 \r\n<BR>リアルームランプレンズ(セカンド・サード用）×1\r\n<BR>リアルームランプレンズ×1\r\n<BR>ラゲージランプレンズ×1 \r\n<BR>対象グレード\r\n<BR>X-G セレクション\r\n<BR>X-G セレクションサイドリフトアップシート装着車\r\n<BR>YY \r\n<BR>X-V Edition\r\n<BR>X-V Editionサイドリフトアップシート装着車\r\n<BR>トランスX ', NULL),
('bmcl42', 'TOYOTA', '70', 'NOAH/VOXY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>小型\r\n<BR>適合車種：70系ノア/ヴォクシーZRR70・75W/70・70G\r\n<BR>セット内容\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ(セカンド・サード用）×1\r\n<BR>リアルームランプレンズ(大型サード用）×1\r\n<BR>ラゲージランプレンズ×2\r\n<BR>6ピースセット', NULL),
('bmcl37', 'TOYOTA', 'GRS18#', 'CROWN', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：GRS18#\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1　 \r\n<BR>1ピースセット', NULL),
('bmcl40', 'TOYOTA', 'UCF2#', 'CELSIOR', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：UCF20/21\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ(セカンド・サード用）×4\r\n<BR>5ピースセット', NULL),
('bmcl39', 'TOYOTA', 'UCF3#', 'CELSIOR', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：UCF30/31\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×2', NULL),
('bmcl36', 'TOYOTA', '50', 'ESTIMA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>マップランプレンズ×1', NULL),
('bmcl44', 'TOYOTA', '50', 'ESTIMA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：トヨタ　エスティマ50系\r\nARC50/55・GSR50/55 (SUNROOF USE)\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×4', NULL),
('bmcl38', 'TOYOTA', 'JZS16#', 'ARISTO', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：JZS16#\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×2', NULL),
('bmcl46', 'TOYOTA', 'ANE/ZNE10', 'WISH', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：ANE/ZNE10\r\n<BR>セット内容\r\n<BR>マップランプレンズ×1\r\n<BR>リアルームランプレンズ×1\r\n<BR>ラゲージランプレンズ×1', NULL),
('bmcl49', 'TOYOTA', 'ZVW30', 'PRIUS', '', 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '適合車種：ZVW30/ZVW40\r\n<BR>セット内容 ( NO SUNROOF )\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ×1', NULL),
('bmcl51', 'TOYOTA', 'ZVW40', 'PRIUS A', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>セット内容 ( SUNROOF )\r\n<BR>マップランプレンズ×2\r\n<BR>リアルームランプレンズ×1', NULL),
('bmcl69', 'NISSAN', 'C26', 'SERENA', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>マップランプレンズ×1', NULL),
('bmcl53', 'HONDA', 'RB3/4', 'ODYSSEY', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>セット内容 ( SUNROOF )', NULL),
('bmcl54', 'HONDA', 'GE6-9', 'FIT', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>セット内容 ( NO SUNROOF )', NULL),
('bmcl55', 'HONDA', 'GE6-9', 'FIT', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>セット内容 ( SUNROOF )', NULL),
('bmcl56', 'HONDA', 'RK1/2', 'STEPWGN', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', NULL, '<BR>セット内容 ( NO SUNROOF )', NULL),
('bmcl57', 'HONDA', 'RF3-8', 'STEPWGN', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', '', '', NULL),
('bmcl58', 'HONDA', 'ZF1', 'CR-Z', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>マップランプレンズ×2', NULL),
('bmcl62', 'HONDA', 'JC1/2', 'LIFE', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', 'T', '<BR>FRONT & REAR', NULL),
('bmcl63', 'HONDA', 'RN6-9', 'STREAM', NULL, 'CRY ROOM LAMP COVER', 'CLEAR', NULL, 'CRY ROOM LAMP COVER', NULL, NULL, NULL, '', 0, '', NULL, '<BR>マップランプレンズ×2 ( SUNROOF )', NULL);

-- --------------------------------------------------------

--
-- 資料表格式： `product_member`
--

CREATE TABLE IF NOT EXISTS `product_member` (
  `product_id` varchar(20) NOT NULL default '0',
  `product_jp_no` varchar(255) default NULL,
  `product_us_no` varchar(255) default NULL,
  `product_sup_no` varchar(255) default NULL,
  `make_id` int(10) default NULL,
  `product_made` varchar(255) default NULL,
  `product_model` varchar(255) default NULL,
  `product_remark` tinytext,
  `product_name` varchar(255) default NULL,
  `product_pcs` int(11) default '0',
  `product_photo` varchar(255) default NULL,
  `product_dit` varchar(255) default NULL,
  `product_price_s` double(10,2) default '0.00',
  `product_price_s1` double(10,2) default NULL,
  `product_price_s2` double(10,2) default NULL,
  `product_cus_price` double(10,2) default NULL,
  `product_cost_rmb` double(10,2) default NULL,
  `product_cost_hk` double(10,2) default NULL,
  `product_cost_us` double(10,2) default NULL,
  `product_cost_yan` double(10,2) default NULL,
  `product_sup` varchar(255) default NULL,
  `product_web` char(1) default NULL,
  `product_colour` varchar(100) default NULL,
  `product_price_u` double(10,2) default '0.00',
  `product_index` int(11) NOT NULL auto_increment,
  `product_location` varchar(100) default NULL,
  `product_stock_level` int(11) default '0',
  `product_stock_jp` int(11) default '0',
  `product_model_no` varchar(255) default NULL,
  `product_year` varchar(100) default NULL,
  `cat_id` varchar(5) default NULL,
  `product_cat` varchar(20) default NULL,
  `product_desc` text,
  `product_70_17` int(11) default NULL,
  `product_rmb` int(11) default NULL,
  `product_stock_us` int(11) default '0',
  `product_stock_cn` int(11) default '0',
  `product_stock_hk` int(11) default '0',
  `product_cus_des` text,
  `product_group` varchar(255) default NULL,
  `product_material` varchar(255) default NULL,
  `product_colour_no` varchar(255) default NULL,
  `product_original_color` varchar(255) default NULL,
  `product_auction_p` int(11) default NULL,
  `product_qc` varchar(3) default NULL,
  `maz` varchar(255) default NULL,
  `prod_on_order` char(1) default NULL,
  `alias` varchar(1) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_upd_date` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`product_id`),
  KEY `123` (`product_index`),
  KEY `make_id` (`make_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- 列出以下資料庫的數據： `product_member`
--

INSERT INTO `product_member` (`product_id`, `product_jp_no`, `product_us_no`, `product_sup_no`, `make_id`, `product_made`, `product_model`, `product_remark`, `product_name`, `product_pcs`, `product_photo`, `product_dit`, `product_price_s`, `product_price_s1`, `product_price_s2`, `product_cus_price`, `product_cost_rmb`, `product_cost_hk`, `product_cost_us`, `product_cost_yan`, `product_sup`, `product_web`, `product_colour`, `product_price_u`, `product_index`, `product_location`, `product_stock_level`, `product_stock_jp`, `product_model_no`, `product_year`, `cat_id`, `product_cat`, `product_desc`, `product_70_17`, `product_rmb`, `product_stock_us`, `product_stock_cn`, `product_stock_hk`, `product_cus_des`, `product_group`, `product_material`, `product_colour_no`, `product_original_color`, `product_auction_p`, `product_qc`, `maz`, `prod_on_order`, `alias`, `creation_date`, `last_upd_date`) VALUES
('2-039', '', '', '', 0, '', 'HIACE', '', 'DOOR KNOB UNDER COVER', 28, '', '', 0.00, 0.00, 0.00, 0.00, 67.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 1, '', 0, 0, '200·Ï', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-05-19 00:56:48'),
('2-075', '', '', '', 0, '', 'HIACE', '200·ÏÉ¸½à', 'MOSQUITO NET REAR GATE', 2, '', '', 0.00, 0.00, 0.00, 0.00, 75.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 2, '', 0, 0, '200·Ï', '', '', '', '2-075(H2-01)', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-05-19 00:50:51'),
('2-076', '', '', '', 0, '', 'HIACE', '200·Ï¥ï¥¤¥É', 'MOSQUITO NET REAR GATE', 1, '', '', 0.00, 0.00, 0.00, 0.00, 75.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 3, '', 0, 0, '200·Ï', '', '', '', '2-076(H2-02)', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-05-19 00:56:34'),
('2-077', '', '', '', 0, 'TOYOTA', 'HIACE', '', '¥â¥¹¥­¡¼¥È¥Í¥Ã¥È ¥»¥«¥ó¥É', 2, '', '', 0.00, 0.00, 0.00, 0.00, 120.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 4, '', 0, 0, '200·Ï', '', '', '', '2-077(H2-03L/H2-04R)', 0, 0, 0, 0, 0, '', 'HIACE', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('2-079', '', '', '', 0, 'TOYOTA', 'HIACE', '200·Ï¥ï¥¤¥É', '¥â¥¹¥­¡¼¥È¥Í¥Ã¥È S/R¥»¥Ã¥È', 3, '', '', 0.00, 0.00, 0.00, 0.00, 195.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 5, '', 0, 0, '200·Ï', '', '', '', '2-079(H2-02/H2-03/H2-04)', 0, 0, 0, 0, 0, '', 'HIACE', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('2-080', '', '', '', 0, 'TOYOTA', 'HIACE', 'Stainless Step Door Sill EL light ( Blue )', '¥»¥«¥ó¥É¡¡¥¹¥«¥Ã¥Õ¥×¥ì¡¼¥È¡¡º¸±¦¡¡LEDÍ­¤ê', 2, '', '', 0.00, 0.00, 0.00, 0.00, 230.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 6, '', 0, 0, '200·Ï', '', '', '', '', 0, 0, 0, 0, 0, '', 'HIACE', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('2-083', '', '', '', 0, 'TOYOTA', 'HIACE', 'Stainless Step Door Sill EL light ( WH )', '¥»¥«¥ó¥É¡¡¥¹¥«¥Ã¥Õ¥×¥ì¡¼¥È¡¡º¸±¦¡¡LEDÍ­¤ê', 2, '', '', 0.00, 0.00, 0.00, 0.00, 230.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 7, '', 0, 0, '200·Ï', '', '', '', '', 0, 0, 0, 0, 0, '', 'HIACE', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('BT51', '', '', '', 0, 'TOYOTA', 'CROWN', '', '¸å´ü', 3, '', '', 0.00, 0.00, 0.00, 0.00, 100.00, 0.00, 0.00, 0.00, '', '', 'ÃãÌÚÌÜ', 0.00, 8, '', 0, 0, '17#', '¸å´ü', '', '', '', 0, 0, 0, 0, 0, '', 'Panel B', 'PP', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('CL49BL', '', '', '', 0, 'TOYOTA', 'PRIUS', '', 'BLUE CRY LENS', 3, '', '', 0.00, 0.00, 0.00, 0.00, 69.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 9, '', 0, 0, '30', '', '', '', '', 0, 0, 0, 0, 0, '', '', 'PC', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX109', '', '', '', 0, 'TOYOTA', 'PRIUS', '', '¥á¥Ã¥­¥É¥¢¥Î¥Ö¥«¥Ð¡Ý', 9, '', '', 0.00, 0.00, 0.00, 0.00, 50.00, 0.00, 0.00, 0.00, '', '', 'Chrome', 0.00, 10, '', 0, 0, '30', '', '', '', '', 0, 0, 0, 0, 0, '', 'HANDLE', 'ABS', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX110', '', '', '', 0, 'TOYOTA', 'PRIUS', '', '¥á¥Ã¥­¥Õ¥í¥ó¥È¥Ð¥ó¥Ñ¡¼¥°¥ê¥ë¥«¥Ð¡¼ (3pcs)', 3, '', '', 0.00, 0.00, 0.00, 0.00, 100.00, 0.00, 0.00, 0.00, '', '', 'Chrome', 0.00, 11, '', 0, 0, '30', '', '', '', '', 0, 0, 0, 0, 0, '', 'GRILL', 'ABS', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX111', '', '', '', 0, 'TOYOTA', 'PRIUS', '', '¥á¥Ã¥­¥Õ¥í¥ó¥È¥Ð¥ó¥Ñ¡¼¥°¥ê¥ë¥«¥Ð¡¼ (2pcs)', 2, '', '', 0.00, 0.00, 0.00, 0.00, 80.00, 0.00, 0.00, 0.00, '', '', 'Chrome', 0.00, 12, '', 0, 0, '30', '', '', '', '', 0, 0, 0, 0, 0, '', 'GRILL', 'ABS', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX112', '', '', '', 0, 'HONDA', 'ODYSSEY', '(MX274)', 'Front Grill', 1, '', '', 0.00, 0.00, 0.00, 0.00, 108.00, 0.00, 0.00, 0.00, '', '', 'Chrome', 0.00, 13, '', 0, 0, 'RB1/2', '', '', '', '', 0, 0, 0, 0, 0, '', 'GRILL', 'ABS', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX119', '', '', '', 0, 'TOYOTA', 'PRIUS', '', 'EX110 + EX111  (5pcs)', 5, '', '', 0.00, 0.00, 0.00, 0.00, 180.00, 0.00, 0.00, 0.00, '', '', 'Chrome', 0.00, 14, '', 0, 0, 'ZVW30', '', '', '', '', 0, 0, 0, 0, 0, '', 'EXTERIAL', 'ABS', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX120', '', '', '', 0, 'TOYOTA', 'PRIUS', 'Shift Knob Ring', '¥á¥Ã¥­¥·¥Õ¥È¥ê¥ó¥°', 1, '', '', 0.00, 0.00, 0.00, 0.00, 20.00, 0.00, 0.00, 0.00, '', '', 'Chrome', 0.00, 15, '', 0, 0, '30', '', '', '', '', 0, 0, 0, 0, 0, '', 'EXTERIAL', 'ABS', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX124', '', '', '', 0, 'HONDA', 'FREED', '', '6PCS DOOR HANDLE ( GI with keyless hold )', 6, '', '', 0.00, 0.00, 0.00, 0.00, 51.00, 0.00, 0.00, 0.00, '', '', 'Chrome', 0.00, 16, '', 0, 0, 'GB3', '', '', '', '', 0, 0, 0, 0, 0, '', 'HANDLE', 'ABS', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX129', '', '', '', 0, 'TOYOTA', 'ESTIMA', '', '13PCS   DOOR HANDLE', 13, '', '', 0.00, 0.00, 0.00, 0.00, 28.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 17, '', 0, 0, '30/40', '', '', '', '', 0, 0, 0, 0, 0, '', 'HANDLE', 'ABS', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX130', '', '', '', 0, 'NISSAN', 'CARAVAN', 'Exchange', 'Fog Lamp Cover', 2, '', '', 0.00, 0.00, 0.00, 0.00, 70.00, 0.00, 0.00, 0.00, '', '', 'Chrome', 0.00, 18, '', 0, 0, 'E25', '', '', '', '', 0, 0, 0, 0, 0, '', 'EXTERIAL', 'ABS', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX149', '', '', '', 0, 'TOYOTA', 'HIACE', '', 'Spoiler S', 1, '', '', 0.00, 0.00, 0.00, 0.00, 180.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 19, '', 0, 0, '200·Ï', '', '', '', '', 0, 0, 0, 0, 0, '', 'HIACE', 'FRP', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX172', '', '', '', 0, 'DAIHATSU', 'MOVE CUSTOM', '', '¥Õ¥í¥ó¥È¥Ð¥ó¥Ñ¡¼¥°¥ê¥ë¥«¥Ð¡¼ (4pcs)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 90.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 20, '', 0, 0, 'LA100S', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX174', '', '', '', 0, 'TOYOTA', 'HIACE', '', 'Fog Lamp Cover', 0, '', '', 0.00, 0.00, 0.00, 0.00, 138.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 21, '', 0, 0, '200·Ï', '3·¿', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX180', '', '', '', 0, 'TOYOTA', 'HARRIER', '', 'FRONT GRILL CH/SL', 1, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 22, '', 0, 0, 'RX330', '', '', '', '', 0, 0, 0, 0, 0, '', 'EXTERIAL', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX181', '', '', '', 0, 'TOYOTA', 'HARRIER', '', 'FRONT GRILL CH/BK', 1, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 23, '', 0, 0, 'RX330', '', '', '', '', 0, 0, 0, 0, 0, '', 'EXTERIAL', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX182', '', '', '', 0, 'TOYOTA', 'VELLFIRE', '', 'HEADLIGHT STAINLESS COVER', 0, '', '', 0.00, 0.00, 0.00, 0.00, 40.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 24, '', 0, 0, 'GGH/ANH2#W', '', '', '', '', 0, 0, 0, 0, 0, '', 'EXTERIAL', '304ST', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX207', '', '', '', 0, 'SUZUKI', 'JIMNY', '', 'FRONT GRILL ALL CHROME', 1, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 25, '', 0, 0, 'JB23', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('EX208', '', '', '', 0, 'SUZUKI', 'JIMNY', '', 'FRONT GRILL BLACK PRINT+CHROME', 1, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 26, '', 0, 0, 'JB23', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I103BK-BL', '', '', '', 0, 'TOYOTA', 'ALPHARD', '', '¡Ê¢¢¢¢¢¢¡Ë', 4, '', '', 0.00, 0.00, 0.00, 0.00, 220.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 27, '', 0, 0, 'ANH2#W', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I103BL', '', '', '', 0, 'TOYOTA', 'ALPHARD', '', 'DOOR SILL PLATE WITE LED (BLUE)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 220.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 28, '', 0, 0, 'ANH2#W', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I103WH', '', '', '', 0, 'TOYOTA', 'ALPHARD', '', 'DOOR SILL PLATE WITE LED (Çò)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 220.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 29, '', 0, 0, 'ANH2#W', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I104BK-BL', '', '', '', 0, 'TOYOTA', 'VELLFIRE', '', '¡Ê¢¢¢¢¢¢¡Ë', 4, '', '', 0.00, 0.00, 0.00, 0.00, 220.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 30, '', 0, 0, 'ANH2#W', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I105BL', '', '', '', 0, 'TOYOTA', 'ESTIMA', '', '¥¹¥Æ¥ó¥ì¥¹LED(BLUE)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 210.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 31, '', 0, 0, '50', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I105WH', '', '', '', 0, 'TOYOTA', 'ESTIMA', '', '¥¹¥Æ¥ó¥ì¥¹LED(Çò)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 210.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 32, '', 0, 0, '50', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I106BL', '', '', '', 0, 'NISSAN', 'ELGRAND', '', '¥¹¥Æ¥ó¥ì¥¹LED(BLUE)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 520.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 33, '', 0, 0, 'E51', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I106WH', '', '', '', 0, 'NISSAN', 'ELGRAND', '', '¥¹¥Æ¥ó¥ì¥¹LED(Çò)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 530.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 34, '', 0, 0, 'E51', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I110BL', '', '', '', 0, 'TOYOTA', 'VOXY', '', '¥¹¥Æ¥ó¥ì¥¹LED(BLUE)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 250.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 35, '', 0, 0, '70', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I112BL', '', '', '', 0, 'TOYOTA', 'PRIUS', '', '¥¹¥Æ¥ó¥ì¥¹LED(BLUE)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 115.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 36, '', 0, 0, '30', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I112WH', '', '', '', 0, 'TOYOTA', 'PRIUS', '', '¥¹¥Æ¥ó¥ì¥¹LED(Çò)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 115.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 37, '', 0, 0, '30', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I114BL', '', '', '', 0, 'DAIHATSU', 'MOVE', '', '¥¹¥Æ¥ó¥ì¥¹LED(BLUE)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 130.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 38, '', 0, 0, 'LA100S', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I114WH', '', '', '', 0, 'DAIHATSU', 'MOVE', '', '¥¹¥Æ¥ó¥ì¥¹LED(Çò)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 130.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 39, '', 0, 0, 'LA100S', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I115WH', '', '', '', 0, 'DAIHATSU', 'MOVE', '', 'LED REAR PROTECTO(WHITE)', 1, '', '', 0.00, 0.00, 0.00, 0.00, 80.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 40, '', 0, 0, 'LA100S', '', '', '', '', 0, 0, 0, 0, 0, '', 'REAR PRO.', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I116BL', '', '', '', 0, 'HONDA', 'FREED', '', '', 4, '', '', 0.00, 0.00, 0.00, 0.00, 170.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 41, '', 0, 0, 'GB3', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I117BL', '', '', '', 0, 'NISSAN', 'SERENA', '', '¥¹¥Æ¥ó¥ì¥¹LED(BLUE)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 240.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 42, '', 0, 0, 'C25/26', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I117WH', '', '', '', 0, 'NISSAN', 'SERENA', '', '¥¹¥Æ¥ó¥ì¥¹LED(Çò)', 4, '', '', 0.00, 0.00, 0.00, 0.00, 280.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 43, '', 0, 0, 'C25/26', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I121BL', '', '', '', 0, 'SUZUKI', 'EVERY WGN', '', '', 4, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 44, '', 0, 0, 'DA64W', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('I121WH', '', '', '', 0, 'SUZUKI', 'EVERY WGN', '', '', 4, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 45, '', 0, 0, 'DA64W', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('IA002BL', '', '', '', 0, 'VW', 'GOLF', '', 'ARMREST', 1, '', '', 0.00, 0.00, 0.00, 0.00, 70.00, 0.00, 0.00, 0.00, '', '', 'Black', 0.00, 46, '', 0, 0, 'VI', '', '', '', '', 0, 0, 0, 0, 0, '', 'INTERIAL', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('IA032', '', '', '', 0, 'HONDA', 'FIT', '', '¥¢¡¼¥à¥ì¥¹¥È¡¡¡Ì¥¹¥é¥¤¥É¼°¡Ë', 1, '', '', 0.00, 0.00, 0.00, 0.00, 100.00, 0.00, 0.00, 0.00, '', '', 'Black', 0.00, 47, '', 0, 0, 'GE6-9', '', '', '', '', 0, 0, 0, 0, 0, '', 'INTERIAL', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('IA034', '', '', '', 0, 'HONDA', 'FIT', '', '¥¢¡¼¥à¥ì¥¹¥È', 1, '', '', 0.00, 0.00, 0.00, 0.00, 75.00, 0.00, 0.00, 0.00, '', '', 'Black', 0.00, 48, '', 0, 0, 'GE6-9', '', '', '', '', 0, 0, 0, 0, 0, '', 'INTERIAL', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA016', '', '', '', 0, 'BENZ', 'W220', 'S/CL¥¯¥é¥¹', 'W220 W215 £Ì£Å£Ä¥¦¥¤¥ó¥«¡¼¸å´ü ¥ë¥Ã¥¯ ', 2, '', '', 0.00, 0.00, 0.00, 0.00, 30.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 49, '', 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, '', 'LIGHT', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA050A', '', '', '', 0, 'TOYOTA', 'U', '', 'Mirror Cover', 2, '', '', 0.00, 0.00, 0.00, 0.00, 90.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 50, '', 0, 0, 'U', '', '', '', '', 0, 0, 0, 0, 0, '', 'MIRROR COVER', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA139', '', '', '', 0, 'TOYOTA', 'U', 'REFLECTOR WHITE', '¥ê¥Õ¥ì¥¯¥¿¡¼¡¡¡¡¥¯¥ê¥¢¡¼', 2, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', 'WHITE', 0.00, 51, '', 0, 0, 'U', '', '', '', '', 0, 0, 0, 0, 0, '', 'LIGHT', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA145', '', '', '', 0, 'TOYOTA', 'ESTIMA ', '', ' ¥Ö¥ì¡¼¥­£´Åô¥­¥Ã¥È', 1, '', '', 0.00, 0.00, 0.00, 0.00, 30.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 52, '', 0, 0, '50', 'Á°´ü', '', '', '', 0, 0, 0, 0, 0, '', 'LIGHT', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA150', '', '', '', 0, 'TOYOTA', 'PRIUS', 'LED FOG LAMP', 'LED ¥Õ¥©¥°¥é¥ó¥×', 2, '', '', 0.00, 0.00, 0.00, 0.00, 110.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 53, '', 0, 0, '30', '', '', '', '', 0, 0, 0, 0, 0, '', 'LIGHT', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA156', '', '', '', 0, 'TOYOTA', 'ALPHARD', '', ' ¥Ö¥ì¡¼¥­£´Åô¥­¥Ã¥È', 0, '', '', 0.00, 0.00, 0.00, 0.00, 35.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 54, '', 0, 0, '10', '', '', '', '', 0, 0, 0, 0, 0, '', 'LIGHT', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA157', '', '', '', 0, 'TOYOTA', 'Crown', 'ATHLETE', ' ¥Ö¥ì¡¼¥­£´Åô¥­¥Ã¥È', 1, '', '', 0.00, 0.00, 0.00, 0.00, 25.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 55, '', 0, 0, 'GRS18', '', '', '', '', 0, 0, 0, 0, 0, '', 'LIGHT', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA160', '', '', '', 0, 'NISSAN', 'ELGRAND', '', '¥¹¥Æ¥ó¥ì¥¹LED(BLUE)', 2, '', '', 0.00, 0.00, 0.00, 0.00, 180.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 56, '', 0, 0, 'E51', '', '', '', '', 0, 0, 0, 0, 0, '', 'Door Sill', 'Stainless', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA161', '', '', '', 0, 'HONDA', 'ODYSSEY', 'REFLECTOR', '', 2, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 57, '', 0, 0, 'RB3/4', '', '', '', 'made in china', 0, 0, 0, 0, 0, '', 'LIGHT', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA162', '', '', '', 0, 'TOYOTA', 'ALPHARD', '', ' ¥¹¥â¡¼¥ë6Åô¥­¥Ã¥È', 2, '', '', 0.00, 0.00, 0.00, 0.00, 40.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 58, '', 0, 0, '20', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA164-S25', '', '', '', 0, 'U', 'U', '', 'BACK HID', 0, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 59, '', 0, 0, 'U', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA164-T15', '', '', '', 0, 'U', 'U', '', 'BACK HID', 0, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 60, '', 0, 0, 'U', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA164-T20', '', '', '', 0, 'U', 'U', '', 'BACK HID', 11, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 61, '', 0, 0, 'U', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-29 20:01:33'),
('LA165', '', '', '', 0, 'TOYOTA', 'PRIUS', 'WINKERPOSITION KITS', '¥ô¥£¥ó¥«¡¼¥Ý¥¸¥·¥ç¥ó', 0, '', '', 0.00, 0.00, 0.00, 0.00, 110.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 62, '', 0, 0, '30·Ï', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA168', '', '', '', 0, 'TOYOTA', 'VOXY', 'WINKERPOSITION KITS', '¥ô¥£¥ó¥«¡¼¥Ý¥¸¥·¥ç¥ó', 0, '', '', 0.00, 0.00, 0.00, 0.00, 110.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 63, '', 0, 0, '60·Ï', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('LA169', '', '', '', 0, 'TOYOTA', 'NOAH', '', 'LED winker', 0, '', '', 0.00, 0.00, 0.00, 0.00, 240.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 64, '', 0, 0, '60·Ï', '', '', '', '', 0, 0, 0, 0, 0, '', 'LIGHT', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('MQS01', '', '', '', 0, 'SUZUKI', 'EVERYWGN', '', 'EVERY DA64   S/R¥»¥Ã¥È', 3, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', 'Black', 0.00, 65, '', 0, 0, 'DA64', '', '', '', '', 0, 0, 0, 0, 0, '', 'Anti-bug', 'Nylon', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('MQS01-3', '', '', '', 0, 'SUZUKI', 'EVERY WGN', '', 'EVERY DA64   ¥é¥²¡¼¥¸', 0, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 66, '', 0, 0, 'DA64W', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('MQT01-3', '', '', '', 0, 'TOYOTA', 'ALPHARD/VELLFIRE', '', 'ALPHARD/VELLFIRE 20 ¥é¥²¡¼¥¸', 0, '', '', 0.00, 0.00, 0.00, 0.00, 75.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 67, '', 0, 0, 'GGH/ANH2#W', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('MQT02', '', '', '', 0, 'TOYOTA', 'ALPHARD', '', 'ALPHARD 10  S/R¥»¥Ã¥È', 0, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 68, '', 0, 0, 'A/MNH10/15', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('MQT02-3', '', '', '', 0, 'TOYOTA', 'ALPHARD', '', 'ALPARD 10 ¥é¥²¡¼¥¸', 0, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 69, '', 0, 0, 'A/MNH10/15', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('MQT03', '', '', '', 0, 'TOYOTA', 'NOAH/VOXY', '', 'NOAH/VOXY ZRR70 S/R¥»¥Ã¥È', 0, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 70, '', 0, 0, 'ZRR7#', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('MQT03-3', '', '', '', 0, 'TOYOTA', 'NOAH/VOXY', '', 'NOAH/VOXY ZRR70 ¥é¥²¡¼¥¸', 0, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 71, '', 0, 0, 'ZRR7#', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('PT723', '', '', '', 0, 'TOYOTA', 'PRIUS', 'Door Handle', '#22/23/26/27', 4, '', '', 0.00, 0.00, 0.00, 0.00, 74.00, 0.00, 0.00, 0.00, '', '', 'CHROME', 0.00, 72, '', 0, 0, 'ZVW30', '', '', '', '', 0, 0, 0, 0, 0, '', 'Panel A', 'PC', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('SKT20-3', '', '', '', 0, 'TOYOTA', 'PRIUS', '', '', 0, '', '', 0.00, 0.00, 0.00, 0.00, 45.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 73, '', 0, 0, 'ZVW30', '', '', '', '(P)', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('SL-A', '', '', '', 0, 'TOYOTA', 'CELSIOR', '', '½ãÀµ¸ò´¹ LED ¥µ¥¤¥É¥¦¥¤¥ó¥«¡¼', 0, '', '', 0.00, 0.00, 0.00, 0.00, 36.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 74, '', 0, 0, 'UCF30.31', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('SL-C', '', '', '', 0, 'SUZUKI', 'WAGON-R', '', '½ãÀµ¸ò´¹ LED ¥µ¥¤¥É¥¦¥¤¥ó¥«¡¼', 1, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 75, '', 0, 0, 'MH21/22', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('VN07', '', '', '', 0, 'NISSAN', 'SERENA', '', '¥É¥¢¥Ð¥¤¥¶¡Ý', 4, '', '', 0.00, 0.00, 0.00, 0.00, 70.00, 0.00, 0.00, 0.00, '', '', 'Black', 0.00, 76, '', 0, 0, 'C26', '', '', '', '', 0, 0, 0, 0, 0, '', 'VISOR', 'PMMA', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15'),
('VT23', '', '', '', 0, 'TOYOTA', 'WISH', '', '', 0, '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '', '', 0.00, 77, '', 0, 0, '20', '', '', '', '', 0, 0, 0, 0, 0, '', 'VISOR', 'PMMA', '', '', 0, '', '', '', '', '2012-04-27 01:33:15', '2012-04-27 01:33:15');
