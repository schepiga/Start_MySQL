-- Заполняем базу данных       

-- Заполняем таблицу Статуса рейса
INSERT INTO flight_status (status) VALUES
  ('On time'),
  ('Canseled'),
  ('Delayed'); 
 
-- Заполняем таблицу Типов ВС
INSERT INTO aircrafts (aircraft_type) VALUES
  ('B737-MAX'),
  ('B747'),
  ('B757'),
  ('B767'),
  ('B777X'),
  ('B787'),
  ('A320-neo'),
  ('A330-neo'),
  ('A310'),
  ('A340'),
  ('A321'),
  ('A380'),
  ('MC-21'),
  ('Superjet-100')
  ;  

 -- Заполняем таблицу Авиакомпаний
INSERT INTO airlines (airline, country_code_id) VALUES
  ('Qatar Airways', 1),
  ('Singapore Airlines', 1),
  ('Cathay Pacific Airways', 1),
  ('Emirates', 1),
  ('Aeroflot', 1),
  ('Pobeda', 1),
  ('S7 Airlines', 1),
  ('Utair', 1),
  ('Ural Airlines', 1),
  ('Red Wings', 1),
  ('Turkish Airlines', 1),
  ('Iberia', 1),
  ('Air France', 1),
  ('Hong Kong Airlines', 1)
  ;  


# TABLE STRUCTURE FOR: pass_profile
#

DROP TABLE IF EXISTS `pass_profile`;

CREATE TABLE `pass_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пассажира',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пассажира',
  `passport_no` int(10) unsigned NOT NULL COMMENT 'Номер пасспорта',
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на код страны гражданства',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `flight_num_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на номер рейса',
  `flight_date` date NOT NULL COMMENT 'Дата вылета',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (1, 'Jaquelin', 'Huel', 87071, 'inld', 'f', '2005-06-23', '08 sf', '2009-05-31', '1984-12-04 09:03:05', '2012-05-10 07:12:39');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (2, 'Orlando', 'Harris', 55, 'jwju', 'f', '1970-12-17', '49 vi', '1995-04-04', '1980-10-20 18:24:45', '2010-02-05 02:46:08');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (3, 'Raymond', 'Hansen', 852943, 'ytrs', 'm', '2014-09-08', '92 gk', '1988-08-12', '1988-12-30 21:16:50', '2010-04-05 23:57:34');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (4, 'Raleigh', 'Lang', 79, 'hslg', 'm', '1987-11-24', '18 jj', '1979-08-15', '2006-10-02 18:13:20', '2008-06-21 14:00:44');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (5, 'Noah', 'Emard', 635846, 'dbae', 'm', '1983-06-25', '62 mc', '1995-04-02', '1978-04-02 09:39:32', '2007-03-12 03:34:01');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (6, 'Colt', 'Romaguera', 717953, 'rmqh', 'm', '1991-07-15', '61 gp', '1991-09-22', '2003-03-09 10:35:08', '2014-05-16 17:18:38');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (7, 'Carey', 'Thiel', 65791155, 'ekpg', 'm', '2006-03-18', '92 ln', '1990-05-03', '1987-06-20 11:40:06', '2020-06-17 02:19:48');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (8, 'Jarrett', 'Reynolds', 123756, 'eimt', 'm', '1975-07-17', '49 rf', '1993-11-30', '1988-06-23 13:39:04', '2009-04-26 18:22:05');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (9, 'Tomasa', 'Wilkinson', 81044, 'ytts', 'f', '1971-06-10', '33 ur', '2013-01-28', '2013-03-19 22:03:54', '1990-06-12 10:17:12');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (10, 'Nona', 'O\'Reilly', 0, 'nluu', 'f', '1994-11-19', '99 vi', '1991-03-10', '1988-06-22 11:24:51', '2001-10-31 17:43:36');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (11, 'Mohammad', 'Turner', 145333, 'lmjo', 'm', '1988-12-19', '25 sc', '2004-07-26', '1977-08-04 09:43:48', '2013-06-06 22:00:10');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (12, 'Destiney', 'Botsford', 0, 'fpsr', 'm', '2011-03-13', '08 ar', '1972-02-01', '1987-03-08 21:53:20', '2015-08-17 22:37:49');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (13, 'Robin', 'Schuster', 82711467, 'wkvy', 'f', '2005-08-31', '10 rh', '1988-10-01', '1980-01-22 15:48:43', '2006-04-08 07:51:12');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (14, 'Tyrel', 'Crist', 19020, 'ycsg', 'm', '1993-11-17', '68 oq', '1996-02-23', '1971-04-24 23:02:00', '2015-06-26 06:24:25');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (15, 'Allie', 'Spinka', 4981, 'wnfm', 'f', '2000-02-21', '13 ma', '2000-08-16', '1990-02-03 04:22:34', '1975-09-05 18:58:50');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (16, 'Willis', 'Predovic', 1237208, 'kmcv', 'm', '2003-03-27', '09 mk', '1979-05-01', '2000-06-11 01:28:05', '2017-11-26 12:53:43');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (17, 'Zetta', 'Goldner', 46, 'vnlw', 'f', '2014-11-06', '85 wt', '1986-09-11', '1970-10-20 04:47:21', '1988-12-09 11:04:50');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (18, 'Trenton', 'Fisher', 411060, 'ymxb', 'm', '1976-04-05', '52 ia', '1980-04-09', '2020-04-17 07:15:01', '1971-05-27 02:43:51');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (19, 'Era', 'Abbott', 7, 'vksk', 'f', '2007-02-21', '23 xg', '2003-10-12', '1970-01-17 00:42:49', '1982-11-01 17:40:39');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (20, 'Patience', 'Steuber', 9, 'dnqf', 'f', '1991-11-01', '37 wh', '1999-07-08', '2017-07-06 21:49:18', '1996-03-19 10:28:30');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (21, 'Trevion', 'Bradtke', 38951334, 'lfnl', 'm', '2014-03-08', '16 ds', '2016-02-11', '2004-05-29 07:39:36', '1980-08-12 17:48:53');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (22, 'Harold', 'Kerluke', 85055, 'xtrs', 'f', '2009-02-05', '05 yi', '1973-10-18', '2019-12-26 09:45:23', '1996-09-28 17:18:41');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (23, 'Shawn', 'Paucek', 53, 'cyka', 'm', '2003-09-02', '12 st', '1997-03-30', '1970-05-27 11:49:53', '2019-01-22 06:17:44');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (24, 'Cassie', 'Zemlak', 96, 'rebr', 'm', '1990-05-12', '82 fb', '1998-12-15', '1993-03-22 10:56:56', '2011-12-27 04:35:57');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (25, 'Hardy', 'Stehr', 61, 'aktk', 'm', '2007-10-08', '94 fo', '2005-09-28', '1978-11-13 14:12:43', '2019-04-19 15:03:17');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (26, 'Camylle', 'Langworth', 672728723, 'qhnl', 'f', '1997-10-31', '86 ow', '2007-10-23', '1989-10-14 05:45:58', '1971-08-25 06:23:26');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (27, 'Buddy', 'Little', 3, 'husr', 'm', '2017-11-29', '79 tl', '1986-05-16', '1982-01-25 18:03:11', '1999-03-08 15:37:40');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (28, 'Rick', 'Mosciski', 36, 'rvos', 'm', '2006-05-31', '57 mn', '1996-04-26', '2000-02-19 15:44:51', '2003-11-28 11:10:21');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (29, 'Pearline', 'Roberts', 708, 'xgwj', 'm', '2006-09-26', '48 lo', '1976-04-06', '2005-06-10 09:00:56', '1985-07-15 17:13:16');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (30, 'Karolann', 'Hegmann', 137316, 'xklg', 'f', '2012-11-08', '42 nk', '1981-02-02', '1980-01-30 11:20:31', '1972-01-31 05:16:44');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (31, 'Neha', 'Hudson', 0, 'pmzv', 'm', '1985-08-25', '77 ux', '1996-06-12', '2004-10-17 10:06:39', '1996-07-16 21:36:09');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (32, 'Allie', 'Kub', 76664988, 'uzka', 'm', '2005-04-14', '84 qu', '1998-07-08', '1980-04-02 08:15:29', '1997-09-03 06:36:22');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (33, 'Felicita', 'Jenkins', 0, 'kihm', 'f', '1989-01-30', '21 vg', '2001-03-11', '1982-01-07 10:59:40', '2016-08-22 02:01:41');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (34, 'Teresa', 'Powlowski', 923316291, 'sama', 'f', '1974-07-17', '34 tk', '1986-05-15', '2019-04-30 22:32:22', '1972-03-04 13:24:21');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (35, 'Rex', 'Pouros', 93294892, 'lxvu', 'm', '1994-11-23', '57 oc', '1980-06-08', '2001-12-22 21:17:38', '2014-09-16 09:12:52');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (36, 'Ceasar', 'Konopelski', 134, 'gfju', 'm', '2000-04-16', '21 xa', '1987-07-25', '1990-02-14 11:28:40', '1993-06-11 18:02:26');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (37, 'Mackenzie', 'Welch', 11363273, 'xvhl', 'm', '1987-10-29', '44 sr', '1985-01-22', '1973-03-14 20:26:22', '2006-04-15 06:37:43');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (38, 'Bertrand', 'Prosacco', 5467889, 'xchx', 'f', '1986-09-04', '03 sj', '2018-11-12', '2001-02-27 03:42:16', '2019-06-26 19:32:49');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (39, 'Hermann', 'Lesch', 70502362, 'kbfc', 'm', '2017-08-23', '77 ls', '1992-10-03', '2012-11-29 15:59:48', '1991-12-24 11:09:40');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (40, 'Myra', 'Muller', 0, 'mpca', 'f', '1990-12-28', '74 oo', '1995-12-26', '1987-09-12 13:21:06', '2018-05-14 08:47:25');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (41, 'Ernestine', 'Bogisich', 4, 'omiw', 'f', '2011-01-26', '96 ms', '1974-09-22', '1989-08-11 12:59:45', '1986-07-10 13:49:03');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (42, 'Lindsay', 'Lueilwitz', 87575841, 'lsac', 'm', '2004-08-02', '55 wm', '1998-11-14', '2003-02-02 23:13:53', '2020-07-23 11:56:10');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (43, 'Amie', 'Hilpert', 895, 'fvzq', 'f', '2000-03-02', '92 vt', '1970-09-02', '1995-06-10 16:06:41', '2015-08-05 22:43:35');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (44, 'Fae', 'Rowe', 97, 'hxwr', 'f', '2010-12-30', '99 we', '1979-03-19', '2018-09-29 00:53:40', '1990-06-18 17:28:57');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (45, 'Reilly', 'Bogisich', 3851317, 'rqfh', 'f', '2000-11-18', '21 qb', '1998-09-04', '1993-03-04 06:52:38', '1978-06-22 01:47:09');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (46, 'Evans', 'Skiles', 87635, 'xcjh', 'f', '1974-12-10', '22 rd', '1977-04-30', '1991-01-19 01:20:59', '1985-08-07 12:43:31');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (47, 'Kole', 'Hilpert', 3278, 'lxpp', 'm', '1979-07-01', '96 cy', '2018-06-19', '2006-05-31 15:26:35', '1999-02-27 08:36:33');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (48, 'Crawford', 'Marvin', 568, 'uyyb', 'm', '1972-08-03', '05 qn', '1970-09-22', '1974-08-26 23:32:18', '1972-04-06 02:52:47');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (49, 'Marietta', 'Becker', 4234120, 'zoop', 'f', '1994-09-25', '48 rj', '1971-09-18', '1992-11-10 12:12:34', '1989-02-20 22:26:15');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (50, 'Alexandrine', 'Reilly', 853061623, 'uctt', 'm', '1982-05-01', '29 ud', '1981-01-05', '2005-07-23 14:59:51', '1994-12-16 17:20:46');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (51, 'Gust', 'Witting', 2076793, 'mata', 'm', '1990-07-15', '28 ey', '2015-11-20', '1991-02-08 06:19:37', '2018-09-25 11:10:01');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (52, 'Fidel', 'Maggio', 29546, 'dnzb', 'f', '2018-09-14', '52 gu', '1986-06-29', '2011-07-10 23:53:08', '1979-05-02 16:32:36');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (53, 'Jenifer', 'Keebler', 6534598, 'mrfc', 'f', '1990-11-05', '16 nk', '1986-02-24', '1976-07-02 11:48:17', '1984-02-06 04:04:16');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (54, 'Seamus', 'Pollich', 6911456, 'rpnh', 'm', '2008-07-07', '64 jo', '1975-06-18', '2016-04-12 22:09:08', '1987-07-05 20:11:08');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (55, 'Sarah', 'Watsica', 2182, 'ktzi', 'f', '1997-12-11', '92 to', '2019-01-20', '1976-04-18 10:31:58', '1978-08-12 00:30:12');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (56, 'Jakayla', 'Hodkiewicz', 8744, 'nkcf', 'f', '1978-01-21', '95 mo', '1974-03-25', '1975-03-27 17:03:51', '1976-01-03 00:58:46');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (57, 'Orlo', 'Torphy', 622, 'yxot', 'f', '1986-05-30', '57 ra', '2008-05-12', '1998-12-06 22:25:05', '2002-02-14 04:53:53');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (58, 'Amelia', 'Bode', 0, 'mzua', 'f', '1980-03-31', '20 kc', '2018-07-30', '1993-02-07 22:00:31', '1989-10-15 05:53:17');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (59, 'Roslyn', 'Greenholt', 864069432, 'pyld', 'm', '2018-04-27', '60 kn', '1976-04-11', '2014-09-22 02:16:20', '2019-03-15 11:02:01');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (60, 'Bernadette', 'Kulas', 882, 'fzbu', 'm', '1982-08-05', '07 yx', '2016-09-29', '1989-02-18 16:24:03', '1986-12-13 16:32:45');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (61, 'Jedediah', 'Hudson', 8254109, 'vits', 'm', '2004-12-06', '72 ae', '2018-08-24', '1975-01-27 18:56:31', '2004-06-23 23:56:07');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (62, 'Elenor', 'Konopelski', 0, 'hcoz', 'f', '1978-11-25', '78 wd', '1976-02-20', '2009-12-15 07:02:31', '1994-07-17 08:39:35');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (63, 'Jess', 'Corkery', 66, 'dxhh', 'm', '1993-06-03', '46 my', '1987-05-23', '1988-11-06 17:34:18', '1999-03-17 16:46:54');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (64, 'Ashley', 'Hansen', 305, 'nndh', 'f', '1999-04-12', '29 ki', '2015-06-17', '2010-04-27 00:09:49', '2013-07-21 18:41:19');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (65, 'Aliyah', 'Predovic', 12837, 'xemd', 'f', '1990-04-07', '91 kw', '1994-05-22', '2009-03-03 13:08:06', '2019-11-29 01:15:40');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (66, 'Owen', 'Wilderman', 39919539, 'vkmf', 'm', '2012-04-09', '62 cs', '2018-07-07', '2018-05-16 14:56:27', '1995-09-12 10:23:43');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (67, 'Keira', 'Mueller', 89541672, 'wzoi', 'm', '1993-09-14', '85 cc', '2012-04-01', '2013-04-10 23:43:43', '1981-06-03 19:23:05');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (68, 'Anabel', 'Upton', 156, 'ftde', 'm', '2017-10-15', '29 ef', '1999-04-15', '2017-03-23 22:16:22', '2010-07-17 19:41:23');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (69, 'Spencer', 'Williamson', 690, 'hpup', 'f', '2010-03-21', '00 yw', '1983-10-06', '1977-06-05 18:48:42', '1993-10-25 20:11:39');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (70, 'Elenor', 'Schoen', 3, 'bqbl', 'm', '1999-05-03', '70 hw', '1978-12-02', '1976-10-24 09:53:09', '2001-06-15 10:18:08');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (71, 'Leo', 'Nicolas', 92406, 'ycad', 'f', '1990-07-11', '63 ms', '1990-08-18', '1992-02-26 14:16:38', '1970-11-16 16:27:51');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (72, 'Jeanette', 'Cronin', 63022, 'efze', 'f', '1993-11-28', '93 wc', '1993-08-26', '2003-06-22 21:42:38', '1976-08-21 10:37:13');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (73, 'Telly', 'Harris', 46, 'xsmq', 'f', '1980-12-02', '22 df', '1977-07-07', '1980-01-23 22:27:22', '1977-06-18 00:00:09');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (74, 'Ariel', 'Skiles', 6374, 'ftnt', 'm', '2001-07-14', '58 hc', '2001-03-24', '1984-06-09 12:30:20', '1970-10-05 23:00:31');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (75, 'Reyes', 'Schaden', 578015, 'bivk', 'f', '1999-06-30', '50 ih', '1983-04-06', '1983-06-03 07:19:12', '1979-08-11 06:30:28');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (76, 'Florencio', 'Hintz', 2841598, 'ccxm', 'f', '1971-07-17', '03 ai', '1986-01-18', '2015-05-11 13:39:09', '2014-09-30 18:48:36');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (77, 'Colleen', 'Beahan', 827184, 'exfm', 'm', '2009-07-14', '79 oo', '1995-03-25', '2002-05-19 10:22:46', '2008-10-09 20:38:23');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (78, 'Lilly', 'Harvey', 0, 'uakn', 'f', '1990-06-26', '11 ds', '1980-08-03', '1981-06-26 07:33:50', '1997-01-15 14:51:45');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (79, 'Felipa', 'Jacobs', 633, 'lcqi', 'm', '2012-07-21', '60 gr', '2014-05-17', '2008-02-24 03:01:30', '2012-02-17 19:34:37');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (80, 'Norval', 'Reynolds', 12594883, 'odjz', 'm', '1994-07-23', '30 tn', '1979-09-25', '1998-04-18 23:22:21', '1975-02-20 05:17:27');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (81, 'Krista', 'Walsh', 5426, 'mfga', 'm', '2005-01-03', '98 xo', '1991-05-05', '2002-06-30 08:39:24', '2009-04-25 18:28:39');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (82, 'Meggie', 'Strosin', 373, 'barq', 'f', '1984-06-02', '00 qz', '1995-10-11', '1970-04-23 23:55:22', '2019-12-24 00:10:09');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (83, 'Garrett', 'Crona', 0, 'naen', 'f', '2008-08-01', '37 vy', '2003-04-10', '1979-04-24 13:48:33', '2000-04-19 09:23:07');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (84, 'Deshawn', 'Macejkovic', 9575, 'odyv', 'm', '1986-02-07', '43 jj', '1973-09-04', '1981-12-05 17:22:36', '1999-02-08 08:14:21');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (85, 'Ellen', 'Larkin', 69649, 'zvwo', 'm', '1999-08-17', '81 gy', '1999-02-12', '1970-06-30 14:09:49', '1983-05-20 14:52:35');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (86, 'Chaim', 'Murphy', 37717372, 'qnzz', 'm', '2018-08-05', '15 jx', '1994-07-15', '2004-06-28 11:40:11', '1992-03-20 10:42:53');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (87, 'Damion', 'Sawayn', 0, 'hdwh', 'm', '1976-08-16', '04 zf', '2007-08-22', '1999-03-07 11:30:31', '1999-06-12 04:18:13');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (88, 'Cordell', 'Rutherford', 94969, 'nzmm', 'f', '2014-01-30', '16 mr', '2000-07-06', '2011-06-23 08:58:39', '2012-11-02 23:18:52');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (89, 'Tyree', 'Cormier', 4052, 'dnbm', 'm', '1970-04-02', '26 tp', '1991-08-09', '1980-10-10 09:49:59', '1988-02-06 04:00:29');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (90, 'Lesly', 'Schaden', 0, 'idin', 'f', '1976-05-07', '67 qw', '1999-04-16', '2012-11-15 11:01:05', '2012-09-07 03:25:05');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (91, 'Elody', 'Kunze', 34, 'tgum', 'm', '1971-08-27', '26 us', '1991-07-12', '2018-04-06 16:16:27', '2009-11-03 13:59:35');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (92, 'Kelton', 'Muller', 6, 'ozql', 'f', '2002-11-28', '83 wc', '1983-07-05', '1977-09-14 20:25:08', '1995-06-27 14:51:30');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (93, 'Bridie', 'Halvorson', 171392, 'pgqc', 'm', '1987-12-06', '27 ja', '2020-05-21', '1978-09-27 15:15:36', '2018-07-19 05:41:04');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (94, 'Albert', 'Murphy', 91348, 'ipnp', 'm', '2014-04-14', '85 ju', '1980-09-17', '1980-01-24 03:21:26', '2002-05-09 16:19:38');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (95, 'Laisha', 'Wintheiser', 7, 'mona', 'm', '2002-06-09', '48 he', '1989-09-09', '2016-07-07 03:57:57', '1988-09-15 17:27:43');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (96, 'Timmy', 'Blick', 66, 'cenm', 'm', '1992-09-14', '05 pr', '2001-09-25', '1975-12-02 06:11:41', '1985-08-12 10:52:44');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (97, 'Oral', 'Nienow', 0, 'tzhg', 'm', '1986-06-17', '65 dn', '2015-07-10', '1990-12-31 22:17:06', '2000-01-28 13:44:51');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (98, 'Ewald', 'Rau', 79210, 'gfgr', 'm', '1971-08-01', '58 ok', '2011-03-24', '1975-12-16 23:02:24', '1989-12-20 20:38:51');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (99, 'Rozella', 'Jast', 76953, 'uply', 'm', '1983-12-15', '67 ob', '2002-08-24', '2020-05-04 07:58:45', '2014-02-11 14:32:18');
INSERT INTO `pass_profile` (`id`, `first_name`, `last_name`, `passport_no`, `country_code`, `gender`, `birthday`, `flight_num_id`, `flight_date`, `created_at`, `updated_at`) VALUES (100, 'Sidney', 'Bernhard', 510091, 'mrwc', 'm', '2016-12-13', '11 pg', '1974-01-24', '2001-02-07 09:06:36', '1991-06-14 05:22:12');

#
# TABLE STRUCTURE FOR: arrival_schedule
#

DROP TABLE IF EXISTS `arrival_schedule`;

CREATE TABLE `arrival_schedule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `flight_num_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на номер рейса',
  `intrn_fl` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Внутреннее или международное направление',
  `airport_code_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на код аэропорта',
  `dep_time` time NOT NULL COMMENT 'Время вылета',
  `arriv_time` time NOT NULL COMMENT 'Время прилета',
  `week_day` int(10) unsigned NOT NULL COMMENT 'День недели',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (1, 204, 0, 9, '04:18:26', '02:19:33', 8, '2017-07-12 19:28:17', '2019-07-13 05:40:28');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (2, 921, 0, 1, '14:18:14', '14:09:39', 3, '2011-06-17 03:51:25', '2000-08-02 12:27:37');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (3, 962, 0, 9, '18:53:20', '01:57:14', 1, '1978-03-28 12:10:37', '1992-10-23 00:01:46');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (4, 95, 0, 5, '08:21:38', '01:13:15', 2, '2004-12-25 05:41:14', '2009-07-14 20:40:12');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (5, 308, 0, 7, '05:37:01', '04:18:05', 4, '1976-12-04 13:17:43', '1974-02-02 17:31:33');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (6, 11, 0, 2, '05:48:18', '10:17:01', 6, '2003-07-06 23:00:45', '1974-02-14 00:36:26');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (7, 64, 0, 7, '15:52:14', '12:01:42', 6, '2010-05-05 00:05:37', '2010-02-06 05:16:52');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (8, 621, 0, 8, '22:12:47', '09:04:11', 8, '2017-12-19 12:29:25', '1992-12-14 05:20:46');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (9, 176, 0, 7, '05:59:10', '06:30:14', 8, '2010-09-19 09:00:05', '1991-12-19 11:45:28');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (10, 920, 0, 4, '17:40:56', '03:47:29', 4, '2003-10-26 10:37:48', '2004-09-08 07:35:53');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (11, 882, 0, 4, '07:17:28', '13:01:42', 2, '1991-05-29 15:42:33', '1997-11-02 19:11:05');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (12, 592, 0, 8, '10:34:00', '13:19:42', 5, '1980-05-30 12:54:54', '2003-10-29 08:41:51');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (13, 356, 0, 2, '12:49:02', '13:23:16', 6, '1994-10-21 22:27:36', '1974-11-15 15:29:13');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (14, 136, 0, 4, '06:07:46', '23:10:28', 9, '2011-11-21 04:22:15', '2019-12-07 20:05:13');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (15, 903, 0, 2, '13:13:42', '18:53:37', 4, '1998-10-21 17:03:08', '2017-07-26 07:39:55');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (16, 20, 0, 3, '07:34:22', '03:07:28', 1, '2012-07-20 21:16:32', '1985-01-13 21:28:19');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (17, 477, 0, 3, '17:47:22', '10:04:24', 5, '2003-07-11 03:22:15', '2018-05-25 04:48:42');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (18, 915, 0, 7, '14:24:08', '04:34:03', 9, '2003-05-27 06:11:27', '1985-02-15 02:17:03');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (19, 971, 0, 8, '22:48:51', '15:37:30', 8, '1996-06-21 09:48:13', '1985-01-29 06:24:12');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (20, 744, 0, 7, '09:44:32', '23:01:10', 5, '1979-01-30 22:48:08', '2020-09-20 11:41:18');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (21, 775, 0, 7, '18:57:30', '05:35:57', 2, '1974-06-01 15:25:05', '1979-08-15 11:19:42');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (22, 577, 0, 6, '21:27:40', '21:06:53', 7, '2020-04-26 09:02:26', '1975-08-02 22:02:12');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (23, 14, 0, 3, '22:09:37', '20:54:22', 7, '1991-03-20 02:12:52', '1970-05-15 18:23:21');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (24, 627, 0, 8, '07:42:06', '04:42:36', 2, '1993-01-13 05:17:43', '1998-02-02 13:57:19');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (25, 487, 0, 8, '04:31:51', '14:17:34', 8, '2012-11-03 22:35:20', '1978-03-01 22:24:01');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (26, 714, 0, 3, '17:58:22', '02:31:02', 7, '2004-08-17 07:58:47', '2007-04-17 04:28:28');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (27, 975, 0, 1, '12:34:33', '11:59:53', 5, '2007-03-14 01:33:39', '1989-03-10 00:59:43');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (28, 762, 0, 6, '09:42:23', '00:50:56', 4, '2019-08-12 03:07:40', '1998-12-25 23:03:31');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (29, 124, 0, 3, '04:57:19', '15:04:24', 5, '2009-01-28 09:41:05', '2019-10-14 08:11:20');
INSERT INTO `arrival_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (30, 639, 0, 1, '05:25:00', '02:08:39', 7, '2012-08-05 04:34:59', '2015-11-13 15:59:47');


#
# TABLE STRUCTURE FOR: departure_schedule
#

DROP TABLE IF EXISTS `departure_schedule`;

CREATE TABLE `departure_schedule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `flight_num_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на номер рейса',
  `intrn_fl` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Внутреннее или международное направление',
  `airport_code_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на код аэропорта',
  `dep_time` time NOT NULL COMMENT 'Время вылета',
  `arriv_time` time NOT NULL COMMENT 'Время прилета',
  `week_day` int(10) unsigned NOT NULL COMMENT 'День недели',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (1, 963, 0, 5, '06:46:28', '17:38:25', 8, '1981-06-28 16:35:34', '1972-01-18 11:27:37');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (2, 40, 0, 7, '20:11:58', '01:28:12', 1, '1996-04-01 08:44:22', '1986-02-09 06:44:59');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (3, 94, 0, 1, '17:55:33', '17:35:24', 3, '1993-05-03 11:08:59', '2016-10-12 16:39:56');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (4, 318, 0, 8, '17:50:57', '13:07:05', 3, '1997-03-07 02:28:18', '1995-08-03 23:34:11');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (5, 508, 0, 6, '09:33:19', '08:28:01', 3, '2012-02-09 19:16:15', '2017-02-11 10:03:46');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (6, 131, 0, 9, '21:04:10', '21:50:41', 6, '1997-09-21 11:35:58', '2003-04-13 08:20:59');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (7, 15, 0, 5, '15:29:32', '18:15:12', 2, '2004-03-15 10:47:00', '1972-05-21 19:49:57');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (8, 173, 0, 5, '10:00:44', '23:45:44', 1, '1973-12-04 14:27:07', '1985-03-01 17:59:49');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (9, 940, 0, 4, '08:02:04', '08:50:51', 2, '1973-05-28 20:05:21', '1996-10-30 11:31:24');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (10, 760, 0, 6, '12:53:34', '13:18:17', 7, '2006-09-08 09:04:19', '1995-08-16 03:51:39');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (11, 295, 0, 7, '18:24:19', '17:36:17', 8, '2021-01-30 22:23:32', '2004-03-16 08:46:16');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (12, 549, 0, 6, '01:12:10', '08:29:25', 2, '2007-07-11 15:33:38', '2020-10-31 02:59:18');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (13, 787, 0, 5, '12:24:47', '16:34:57', 4, '2000-09-24 08:12:24', '2016-08-31 06:50:54');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (14, 625, 0, 6, '06:30:48', '20:13:59', 3, '1982-03-15 04:10:15', '1986-11-06 18:45:06');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (15, 936, 0, 1, '14:57:12', '01:58:43', 1, '2003-04-30 23:23:44', '1970-06-21 11:25:20');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (16, 472, 0, 5, '12:22:43', '20:59:36', 8, '1989-05-12 19:43:19', '1988-12-23 02:16:46');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (17, 218, 0, 9, '14:49:52', '11:02:55', 8, '2008-12-23 19:35:53', '1987-05-11 10:53:11');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (18, 496, 0, 5, '14:06:38', '17:42:27', 7, '1986-03-23 09:22:33', '1980-07-03 09:06:46');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (19, 848, 0, 1, '09:59:45', '16:47:41', 1, '2002-06-08 05:24:14', '1999-06-17 19:10:55');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (20, 261, 0, 4, '00:11:39', '05:50:30', 2, '2013-01-22 17:22:36', '2012-07-22 01:41:37');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (21, 821, 0, 1, '07:55:17', '03:36:05', 8, '2006-05-15 11:06:10', '2017-02-15 16:03:15');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (22, 386, 0, 3, '17:15:51', '09:45:14', 1, '2018-04-24 06:13:34', '2008-09-13 09:12:10');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (23, 724, 0, 7, '11:11:17', '12:29:11', 7, '1987-01-20 08:30:42', '1990-05-22 21:12:33');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (24, 933, 0, 3, '05:49:32', '14:10:34', 7, '1976-07-19 09:29:34', '2003-02-10 17:54:48');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (25, 2, 0, 3, '15:32:35', '08:23:46', 1, '1973-12-21 22:15:42', '1991-12-03 09:32:21');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (26, 50, 0, 7, '19:55:32', '04:43:37', 7, '1972-03-23 08:53:01', '2019-05-18 06:29:48');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (27, 3, 0, 1, '01:52:32', '13:59:22', 6, '1991-08-31 20:55:46', '2008-10-23 23:14:03');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (28, 12, 0, 3, '06:59:17', '01:39:04', 3, '2016-09-06 17:55:04', '2001-11-20 13:54:01');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (29, 814, 0, 5, '20:40:56', '00:28:27', 1, '1987-07-03 10:18:31', '2012-06-09 00:41:46');
INSERT INTO `departure_schedule` (`id`, `flight_num_id`, `intrn_fl`, `airport_code_id`, `dep_time`, `arriv_time`, `week_day`, `created_at`, `updated_at`) VALUES (30, 864, 0, 5, '10:44:30', '22:25:35', 1, '2010-04-08 11:09:29', '1996-10-17 20:10:14');

#
# TABLE STRUCTURE FOR: arrivals
#

DROP TABLE IF EXISTS `arrivals`;

CREATE TABLE `arrivals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `pass_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пассажира',
  `flight_num_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на номер рейса',
  `flight_date` date NOT NULL COMMENT 'Дата вылета',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус рейса',
  `aircraft_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип ВС',
  `class` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Бизнеес или эконом класс',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (1, 5, 43, '2011-12-29', 4, 8, 0, '2019-07-25 23:01:41', '2018-05-22 00:27:32');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (2, 2, 52, '2014-10-01', 4, 2, 3, '2011-09-08 12:20:58', '2013-03-01 10:43:21');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (3, 5, 34, '2012-10-10', 7, 1, 5, '2019-07-13 00:56:45', '2012-08-26 17:44:19');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (4, 6, 78, '2011-10-16', 2, 6, 7, '2012-04-16 03:22:36', '2019-01-02 01:59:30');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (5, 5, 68, '2012-01-15', 5, 2, 7, '2018-08-05 19:25:33', '2019-12-06 14:44:46');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (6, 8, 8, '2018-05-04', 1, 8, 4, '2020-11-27 12:47:36', '2014-12-07 14:38:05');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (7, 4, 28, '2017-03-12', 5, 5, 2, '2013-08-26 13:39:43', '2019-05-04 18:01:59');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (8, 8, 5, '2015-03-24', 9, 3, 6, '2011-11-03 04:20:21', '2012-01-16 21:28:21');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (9, 6, 93, '2017-06-12', 5, 5, 0, '2017-08-20 19:20:15', '2015-09-28 03:34:11');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (10, 4, 84, '2018-03-24', 6, 8, 4, '2012-12-01 20:48:22', '2014-08-28 19:41:00');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (11, 5, 61, '2015-10-28', 8, 8, 7, '2012-07-09 01:52:56', '2012-07-18 06:10:30');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (12, 4, 69, '2011-12-18', 1, 9, 5, '2012-11-18 03:31:25', '2013-08-18 23:38:50');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (13, 5, 82, '2015-04-21', 8, 1, 9, '2020-11-18 18:40:25', '2013-12-31 06:04:41');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (14, 6, 46, '2016-05-24', 5, 7, 6, '2018-08-17 05:59:09', '2018-08-25 15:11:43');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (15, 9, 96, '2016-03-11', 1, 6, 7, '2019-04-07 02:55:30', '2017-11-23 02:52:27');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (16, 6, 58, '2015-04-26', 7, 7, 3, '2013-03-31 02:11:51', '2020-10-31 05:15:20');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (17, 8, 27, '2012-10-18', 7, 5, 9, '2013-03-26 01:22:08', '2012-05-02 14:54:47');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (18, 6, 85, '2015-01-31', 6, 2, 3, '2013-06-16 01:12:07', '2015-08-01 06:44:36');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (19, 8, 81, '2019-12-10', 5, 8, 6, '2012-04-01 13:55:10', '2012-07-08 20:03:46');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (20, 2, 21, '2019-03-12', 4, 5, 0, '2018-02-19 03:43:22', '2016-10-14 06:19:52');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (21, 1, 50, '2015-05-31', 6, 1, 2, '2015-08-24 23:46:58', '2018-06-08 12:31:15');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (22, 7, 90, '2014-03-20', 2, 5, 5, '2018-10-23 02:29:37', '2016-01-08 18:00:07');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (23, 9, 98, '2014-01-21', 1, 1, 8, '2012-11-12 05:27:58', '2020-05-19 07:39:52');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (24, 8, 2, '2011-10-14', 8, 5, 7, '2012-03-01 21:13:29', '2014-07-21 20:50:13');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (25, 1, 73, '2015-04-27', 9, 4, 2, '2012-01-31 10:20:49', '2018-01-24 21:52:26');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (26, 2, 24, '2014-05-14', 2, 8, 6, '2020-08-10 02:00:02', '2020-01-01 21:19:33');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (27, 1, 69, '2020-12-07', 8, 9, 7, '2019-09-14 22:52:03', '2017-06-06 20:50:42');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (28, 1, 67, '2014-09-14', 5, 3, 3, '2017-04-26 13:25:44', '2018-09-28 19:29:08');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (29, 8, 33, '2018-03-08', 9, 6, 2, '2013-01-26 08:37:04', '2012-07-26 01:39:06');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (30, 4, 97, '2013-10-21', 2, 5, 2, '2017-09-01 15:51:58', '2013-06-26 14:02:10');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (31, 2, 18, '2013-11-09', 7, 2, 4, '2013-03-05 01:18:25', '2014-04-30 02:53:59');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (32, 8, 77, '2016-08-21', 3, 3, 3, '2020-04-26 11:03:22', '2016-08-14 01:00:04');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (33, 4, 34, '2019-08-11', 7, 2, 2, '2021-03-18 19:36:43', '2018-08-15 19:44:25');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (34, 3, 84, '2013-11-10', 2, 6, 0, '2015-03-05 11:25:51', '2018-06-04 21:55:42');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (35, 2, 91, '2012-10-11', 1, 3, 9, '2011-07-26 07:32:00', '2011-12-01 06:43:57');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (36, 9, 52, '2016-07-12', 8, 6, 5, '2012-05-14 07:30:34', '2014-08-14 20:00:48');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (37, 3, 46, '2020-04-20', 6, 6, 0, '2014-03-10 00:09:05', '2011-09-06 06:02:01');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (38, 3, 8, '2016-08-15', 2, 5, 8, '2020-11-06 12:29:31', '2015-06-10 16:14:51');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (39, 3, 74, '2012-07-17', 7, 4, 8, '2017-06-12 09:37:30', '2013-10-31 07:26:38');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (40, 8, 33, '2015-09-24', 9, 1, 7, '2015-01-18 06:21:34', '2012-01-10 21:29:33');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (41, 6, 0, '2020-07-17', 4, 1, 3, '2019-05-31 03:50:30', '2016-01-06 11:06:40');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (42, 6, 15, '2013-04-26', 1, 9, 1, '2012-05-25 04:44:33', '2019-08-10 16:20:44');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (43, 3, 57, '2012-11-01', 3, 9, 0, '2012-05-18 14:51:37', '2013-01-10 10:54:13');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (44, 1, 30, '2012-12-18', 9, 4, 7, '2015-05-28 07:02:24', '2013-12-21 18:50:43');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (45, 8, 90, '2014-12-24', 3, 6, 8, '2020-04-11 19:37:51', '2019-12-08 00:31:50');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (46, 3, 26, '2016-07-02', 8, 8, 0, '2017-04-11 12:18:54', '2018-09-11 17:13:53');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (47, 1, 65, '2016-12-29', 3, 3, 1, '2011-11-12 05:05:38', '2018-08-13 08:34:24');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (48, 4, 91, '2017-10-19', 7, 4, 2, '2018-07-23 12:39:26', '2018-03-24 05:54:20');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (49, 5, 75, '2011-12-09', 9, 9, 1, '2021-03-08 11:20:24', '2012-09-14 23:58:13');
INSERT INTO `arrivals` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (50, 2, 88, '2013-10-05', 4, 4, 8, '2020-11-16 08:58:26', '2012-07-24 05:03:29');


#
# TABLE STRUCTURE FOR: departures
#

DROP TABLE IF EXISTS `departures`;

CREATE TABLE `departures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `pass_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пассажира',
  `flight_num_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на номер рейса',
  `flight_date` date NOT NULL COMMENT 'Дата вылета',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус рейса',
  `aircraft_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип ВС',
  `class` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Бизнеес или эконом класс',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (1, 4, 67, '2020-04-19', 7, 4, 0, '2014-01-07 04:10:50', '2015-08-26 20:24:23');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (2, 8, 1, '1986-12-11', 3, 1, 0, '2013-09-21 05:00:04', '2012-02-28 04:00:55');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (3, 3, 86, '1996-07-01', 6, 2, 0, '2020-06-25 02:31:56', '2019-05-25 10:26:59');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (4, 8, 41, '2008-01-26', 1, 4, 0, '2011-10-28 03:49:36', '2018-01-20 17:51:00');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (5, 2, 55, '1975-12-11', 1, 7, 0, '2018-12-06 16:00:45', '2014-04-15 19:14:27');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (6, 5, 58, '1996-05-09', 5, 2, 0, '2017-10-20 21:19:06', '2018-01-04 00:53:54');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (7, 2, 85, '1975-11-06', 7, 6, 0, '2012-01-28 11:22:56', '2011-09-15 09:09:25');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (8, 8, 20, '1984-02-07', 1, 4, 0, '2013-10-25 11:40:29', '2020-03-27 07:01:20');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (9, 2, 93, '2013-06-29', 4, 2, 0, '2014-06-28 14:01:44', '2012-04-09 08:43:57');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (10, 3, 30, '2017-09-16', 9, 9, 0, '2019-01-29 11:59:08', '2013-10-04 15:59:01');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (11, 4, 14, '1976-12-12', 8, 6, 0, '2019-11-09 03:31:14', '2017-02-07 14:26:59');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (12, 7, 45, '2020-10-04', 7, 2, 0, '2016-04-20 20:58:23', '2021-01-16 23:07:01');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (13, 6, 26, '1976-01-09', 9, 2, 0, '2018-08-26 00:58:15', '2013-09-19 01:21:02');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (14, 4, 25, '2011-03-20', 6, 4, 0, '2014-09-03 16:26:27', '2012-08-28 22:35:30');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (15, 8, 87, '2013-06-26', 5, 9, 0, '2012-02-11 04:25:29', '2012-09-11 18:23:24');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (16, 2, 16, '1983-08-10', 3, 2, 0, '2019-04-22 23:46:30', '2020-07-24 23:47:52');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (17, 3, 90, '1995-02-12', 8, 4, 0, '2013-04-24 17:26:01', '2020-06-07 07:46:53');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (18, 8, 73, '2014-04-06', 9, 3, 0, '2012-12-18 21:39:15', '2013-05-22 19:16:26');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (19, 5, 96, '1982-12-11', 2, 7, 0, '2015-11-12 15:58:43', '2011-03-31 07:42:07');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (20, 4, 54, '1971-05-13', 2, 8, 0, '2012-09-05 11:08:55', '2016-07-02 06:01:56');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (21, 4, 11, '1998-06-10', 7, 2, 0, '2011-12-28 09:07:05', '2020-03-29 15:35:23');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (22, 2, 0, '1997-08-10', 3, 5, 0, '2020-04-15 11:19:07', '2017-11-10 04:37:00');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (23, 9, 70, '2016-07-10', 7, 4, 0, '2014-08-05 16:44:54', '2018-03-18 22:38:42');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (24, 3, 42, '1976-08-12', 2, 1, 0, '2020-02-19 15:34:25', '2020-05-28 23:35:41');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (25, 2, 12, '2009-07-12', 7, 6, 0, '2017-05-14 15:40:09', '2014-10-09 23:34:37');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (26, 9, 43, '1970-10-15', 9, 7, 0, '2015-10-18 03:30:20', '2019-07-01 08:46:22');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (27, 8, 57, '2008-07-18', 4, 4, 0, '2016-05-28 11:23:24', '2015-02-03 02:56:45');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (28, 3, 32, '1980-06-06', 7, 3, 0, '2019-04-17 10:34:58', '2016-11-07 05:47:21');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (29, 5, 73, '2006-12-10', 4, 7, 0, '2020-01-31 07:08:33', '2018-07-17 06:51:10');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (30, 2, 2, '2019-06-25', 4, 3, 0, '2020-11-09 17:41:18', '2020-05-03 19:34:10');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (31, 6, 95, '2015-06-30', 9, 3, 0, '2018-12-22 16:30:54', '2019-04-21 05:00:22');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (32, 3, 19, '1971-11-18', 8, 3, 0, '2018-06-06 22:30:09', '2012-01-01 04:05:32');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (33, 3, 78, '1986-09-13', 3, 3, 0, '2013-07-28 06:29:31', '2015-07-30 07:16:12');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (34, 8, 96, '2007-06-21', 5, 6, 0, '2017-03-24 16:52:48', '2020-01-02 22:59:15');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (35, 6, 87, '1990-03-08', 4, 8, 0, '2012-02-06 04:30:23', '2018-03-16 19:38:06');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (36, 8, 11, '1998-12-23', 6, 1, 0, '2013-10-12 02:01:31', '2019-09-27 15:23:39');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (37, 4, 36, '1994-06-11', 6, 1, 0, '2014-12-24 16:38:15', '2017-09-21 05:11:50');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (38, 6, 31, '2016-01-20', 6, 3, 0, '2016-06-11 07:59:47', '2021-02-28 03:38:12');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (39, 9, 60, '1983-12-12', 6, 5, 0, '2016-11-25 03:40:52', '2020-11-29 16:44:38');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (40, 5, 77, '2003-10-03', 1, 8, 0, '2011-05-28 01:35:27', '2017-06-25 14:38:16');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (41, 7, 91, '1988-03-30', 9, 3, 0, '2012-01-17 08:20:19', '2012-03-19 20:51:38');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (42, 1, 68, '2012-08-19', 7, 2, 0, '2012-10-24 10:16:32', '2020-01-01 01:46:29');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (43, 9, 78, '2005-10-12', 9, 9, 0, '2021-01-14 12:21:48', '2016-08-12 12:18:08');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (44, 1, 77, '1978-04-30', 4, 3, 0, '2017-07-13 03:13:43', '2016-10-14 08:45:25');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (45, 4, 20, '1972-08-31', 5, 9, 0, '2018-07-16 03:14:10', '2015-09-27 12:21:31');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (46, 3, 41, '2017-06-28', 6, 8, 0, '2012-01-31 18:31:51', '2013-02-02 12:41:22');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (47, 7, 28, '1979-03-18', 6, 9, 0, '2018-10-02 14:28:04', '2019-02-17 23:24:38');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (48, 1, 69, '2015-10-17', 4, 9, 0, '2012-05-14 06:02:05', '2014-10-18 20:31:25');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (49, 1, 49, '1975-01-24', 2, 7, 0, '2012-03-22 00:34:26', '2020-06-26 11:31:44');
INSERT INTO `departures` (`id`, `pass_id`, `flight_num_id`, `flight_date`, `status_id`, `aircraft_type_id`, `class`, `created_at`, `updated_at`) VALUES (50, 5, 68, '2013-07-28', 6, 1, 0, '2012-08-09 02:18:25', '2017-09-07 10:56:47');


-- Корректируем заполнение базы данных

-- Обновляем направление вн/межд
CREATE TEMPORARY TABLE directions (name CHAR(10));
INSERT INTO directions VALUES ('INT'), ('DOM'); 
SELECT * FROM directions;
UPDATE departure_schedule 
  SET direction = (SELECT name FROM directions ORDER BY RAND() LIMIT 1);
UPDATE arrival_schedule 
  SET direction = (SELECT name FROM directions ORDER BY RAND() LIMIT 1);


-- Разные корректировки
UPDATE airlines SET country_code_id = FLOOR(1 + RAND() * 50);
UPDATE airlines SET country_code_id = 51 WHERE id BETWEEN 5 and 9;

UPDATE arrivals SET pass_id = FLOOR(1 + RAND() * 100);
UPDATE arrivals SET status_id = FLOOR(1 + RAND() * 3);
UPDATE arrivals SET aircraft_type_id = FLOOR(1 + RAND() * 14);

ALTER TABLE arrival_schedule ADD airline_id INT UNSIGNED NOT NULL;
ALTER TABLE arrival_schedule CHANGE COLUMN intrn_fl direction VARCHAR(10);
ALTER TABLE arrival_schedule CHANGE flight_num_id flight_num INT UNSIGNED NOT NULL;
UPDATE arrival_schedule SET airline_id = FLOOR(1 + RAND() * 14);

UPDATE departures SET pass_id = FLOOR(1 + RAND() * 100);
UPDATE departures SET status_id = FLOOR(1 + RAND() * 3);
UPDATE departures SET aircraft_type_id = FLOOR(1 + RAND() * 14);
UPDATE departures SET class = FLOOR(RAND() * 2);

ALTER TABLE departure_schedule CHANGE pass_id airline_id INT UNSIGNED NOT NULL;
ALTER TABLE departure_schedule UPDATE departure_schedule SET airline_id = FLOOR(1 + RAND() * 14);
UPDATE departure_schedule SET week_day = FLOOR(1 + RAND() * 7);
UPDATE departure_schedule SET airport_code_id = FLOOR(1 + RAND() * 25);
UPDATE departure_schedule set dep_time = dep_time - second(dep_time);
UPDATE departure_schedule set arriv_time = arriv_time - second(arriv_time);
UPDATE departure_schedule SET flight_num = 10;
UPDATE arrivals SET flight_num_id = FLOOR(1000 + RAND() * 100000);

UPDATE airports SET country_code_id = FLOOR(1 + RAND() * 51);

UPDATE pass_profile SET flight_num_id = FLOOR(1000 + RAND() * 10000); 
UPDATE pass_profile SET flight_num_id = '';
UPDATE pass_profile SET updated_at = NOW() WHERE updated_at < created_at; 
UPDATE pass_profile SET passport_no = FLOOR(1 + RAND() * 100000) WHERE passport_no >= 5;
UPDATE pass_profile SET country_code = FLOOR(1 + RAND() * 51);
ALTER TABLE pass_profile MODIFY COLUMN flight_num_id INT UNSIGNED NOT NULL;




