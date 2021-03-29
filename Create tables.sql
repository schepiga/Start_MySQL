-- CREATE DATABASE dme;

-- Создание таблиц

-- Справочник стран
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  country_name varchar(100) NOT NULL COMMENT 'Название страны',
  country_code varchar(10) NOT NULL COMMENT '3-х буквенный код страны по ISO 3166',
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id),
  UNIQUE KEY (country_code)
);

-- Справочник аэропортов
DROP TABLE IF EXISTS airports;
CREATE TABLE airports (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  airport_code varchar(10) NOT NULL COMMENT '3-х буквенный код аэропорта по IATA',
  airport_name varchar(10) NOT NULL COMMENT 'Название аэропорта',
  city_name varchar(100) NOT NULL COMMENT 'Название города ',
  country_code_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на код страны',
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id, airport_name) COMMENT 'Составной первичный ключ',
  UNIQUE KEY (airport_code)
); 

-- Справочник авиакомпаний
DROP TABLE IF EXISTS airlines;
CREATE TABLE airlines (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  airline varchar(100) NOT NULL COMMENT 'Название авиакомпании',
  country_code_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на код страны регистрации', 
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id)
 );
  
-- Справочник типов ВС  
DROP TABLE IF EXISTS aircrafts;
 CREATE TABLE aircrafts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  aircraft_type varchar(100) NOT NULL COMMENT 'Тип ВС',
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id),
  UNIQUE KEY (aircraft_type)
  );
  
-- Расписание рейсов вылета
DROP TABLE IF EXISTS departure_schedule;
 CREATE TABLE departure_schedule (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  flight_num INT UNSIGNED NOT NULL COMMENT 'Ссылка на номер рейса',
  direction VARCHAR(10) NOT NULL COMMENT 'Внутреннее или международное направление',
  airport_code_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на код аэропорта',
  dep_time time NOT NULL COMMENT 'Время вылета',
  arriv_time time NOT NULL COMMENT 'Время прилета',
  week_day INT UNSIGNED NOT NULL COMMENT 'День недели',
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id)
  );
 
 -- Расписание рейсов прилета
DROP TABLE IF EXISTS arrival_schedule;
 CREATE TABLE arrival_schedule (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  flight_num INT UNSIGNED NOT NULL COMMENT 'Ссылка на номер рейса',
  direction VARCHAR(10) NOT NULL COMMENT 'Внутреннее или международное направление',
  airport_code_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на код аэропорта',
  dep_time time NOT NULL COMMENT 'Время вылета',
  arriv_time time NOT NULL COMMENT 'Время прилета',
  week_day INT UNSIGNED NOT NULL COMMENT 'День недели',
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id)
  );
  
-- Таблица вылетов
DROP TABLE IF EXISTS departures;
 CREATE TABLE departures (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  pass_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пассажира',
  flight_num_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на номер рейса',
  flight_date DATE NOT NULL COMMENT 'Дата вылета',
  status_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на статус рейса',
  aircraft_type_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на тип ВС',
  class BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'Бизнеес или эконом класс',
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id)
  ); 

-- Таблица прилетов
DROP TABLE IF EXISTS arrivals;
 CREATE TABLE arrivals (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  pass_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пассажира',
  flight_num_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на номер рейса',
  flight_date DATE NOT NULL COMMENT 'Дата вылета',
  status_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на статус рейса',
  aircraft_type_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на тип ВС',
  class BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'Бизнеес или эконом класс',
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id)
  ); 
 
 -- Статус рейсов  
DROP TABLE IF EXISTS flight_status;
 CREATE TABLE flight_status (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  status varchar(100) NOT NULL COMMENT 'Статус вылета',
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id),
  UNIQUE KEY (status)
  );
  
-- Профайл пассажира
DROP TABLE IF EXISTS pass_profile;
CREATE TABLE pass_profile (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пассажира",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пассажира",
  passport_no INT UNSIGNED NOT NULL COMMENT "Номер пасспорта",
  country_code_id INT UNSIGNED NOT NULL COMMENT "Ссылка на код страны гражданства", 
  gender CHAR(1) NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  flight_num_id INT UNSIGNED NOT NULL COMMENT "Ссылка на номер рейса",
  flight_date DATE NOT NULL COMMENT "Дата вылета",
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  PRIMARY KEY (id)
  );
 