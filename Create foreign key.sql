-- Создание внешних ключей

-- Справочник аэропортов. Связь с таблицей стран. 
ALTER TABLE airports
  ADD CONSTRAINT airports_country_code_fk 
    FOREIGN KEY (country_code_id) REFERENCES countries(id)
      ;
          
-- Справочник авиакомпаний. Связь с таблицей стран. 
ALTER TABLE airlines 
  ADD CONSTRAINT airline_country_code_fk 
    FOREIGN KEY (country_code_id) REFERENCES countries(id)
      ;     

-- Таблица вылетов. Связь с таблицей статуса рейса, таблицей а/к, и таблицей типов ВС.       
ALTER TABLE departures 
  ADD CONSTRAINT depart_flt_status_fk 
    FOREIGN KEY (status_id) REFERENCES flight_status(id),
ADD CONSTRAINT depart_ac_id_fk 
    FOREIGN KEY (aircraft_type_id) REFERENCES aircrafts(id),
ADD CONSTRAINT depart_pass_id_fk 
    FOREIGN KEY (pass_id) REFERENCES pass_profile(id);

ALTER TABLE departures 
ADD CONSTRAINT departures_flght_num_fk 
    FOREIGN KEY (flight_num_id) REFERENCES departure_schedule(id);
          
-- Таблица прилетов. Связь с таблицей статуса рейса, таблицей а/к, и таблицей типов ВС.         
ALTER TABLE arrivals 
ADD CONSTRAINT arrivals_flt_status_fk 
    FOREIGN KEY (status_id) REFERENCES flight_status(id),
ADD CONSTRAINT arriv_ac_id_fk 
    FOREIGN KEY (aircraft_type_id) REFERENCES aircrafts(id), 
ADD CONSTRAINT arriv_pass_id_fk 
    FOREIGN KEY (pass_id) REFERENCES pass_profile(id)
      ;

ALTER TABLE arrivals 
  ADD CONSTRAINT arriv_flght_num_fk 
    FOREIGN KEY (flight_num_id) REFERENCES arrival_schedule(id);
          
-- Расписание рейсов вылета. Связь с таблицей а/к и таблицей аэропортов.      
ALTER TABLE departure_schedule 
 ADD CONSTRAINT dep_sch_airport_code_fk
    FOREIGN KEY (airport_code_id) REFERENCES airports(id)
 ADD CONSTRAINT depart_sch_airline_id_fk
    FOREIGN KEY (airline_id) REFERENCES airlines(id);
          
CREATE UNIQUE INDEX flight_num_id ON departure_schedule(flight_num);      
     
-- Расписание рейсов прилета. Связь с таблицей а/к и таблицей аэропортов.      
ALTER TABLE arrival_schedule 
  ADD CONSTRAINT arriv_sch_airport_code_fk
    FOREIGN KEY (airport_code_id) REFERENCES airports(id)  
ADD CONSTRAINT arriv_sch_airline_id_fk
    FOREIGN KEY (airline_id) REFERENCES airlines(id);
          
CREATE UNIQUE INDEX flight_num_id ON arrival_schedule(flight_num); 

   
-- Профайл пассажира. Связь с таблицей стран и таблицей а/к. 
ALTER TABLE pass_profile 
  ADD CONSTRAINT pass_prof_country_code_fk 
    FOREIGN KEY (country_code_id) REFERENCES countries(id)
      ;    
        
ALTER TABLE pass_profile 
  ADD CONSTRAINT pass_prof_flght_num_fk 
    FOREIGN KEY (flight_num_id) REFERENCES departure_schedule(flight_num)
     ;    
       
SELECT * from departures d ; 
SELECT * FROM arrivals a ;
    
SELECT MIN(flight_num_id) FROM departures; 
SELECT MAX(flight_num_id) FROM departures; 

SELECT MIN(flight_num_id) FROM arrivals a ; 
SELECT MAX(flight_num_id) FROM arrivals a ; 

Select * from departures where flight_num_id not in (select id from departure_schedule);
Select * from arrivals where flight_num_id not in (select id from arrival_schedule);


















