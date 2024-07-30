SELECT * FROM amazon_data.sales;
-- SQL Minicapstone Project on Amazon Data
-- Adding column timeofday beside Time Column

alter table amazon_data.sales
add column timeofday varchar (20) after Time;

-- Updating Values in timeofday column
set sql_safe_updates =0;

Update amazon_data.sales
     set timeofday = 
     case 
     when time(time) >= '00:00:00' and time(time) < '12:00:00' then 'Morning'
     when time(time) >= '12:00:00' and time(time) < '18:00:00' then 'Afternoon'
     else 'Evening'
     end;
     insert into amazon_data.sales (date) values (STR_TO_DATE('1/5/2019' , '%c/%e/%Y'));
-- Adding column dayname beside date column 
alter table amazon_data.sales
add column dayname varchar(20) after date;

-- Updating values in dayname column 
UPDATE amazon_data.sales 
SET 
    dayname = CASE DAYOFWEEK(Date)
        WHEN 1 THEN 'Sun'
        WHEN 2 THEN 'Mon'
        WHEN 3 THEN 'Tue'
        WHEN 4 THEN 'Wed'
        WHEN 5 THEN 'Thus'
        WHEN 6 THEN 'Fri'
        WHEN 7 THEN 'Sat'
    END;
    
-- Adding Column monthname
alter table amazon_data.sales
add column monthname varchar(20) after dayname;

-- Updating values in monthname column 
UPDATE amazon_data.sales 
SET 
    monthname = CASE MONTH(Date)
        WHEN 1 THEN 'Jan'
        WHEN 2 THEN 'Feb'
        WHEN 3 THEN 'Mar'
        WHEN 4 THEN 'Apr'
        WHEN 5 THEN 'May'
        WHEN 6 THEN 'Jun'
        WHEN 7 THEN 'Jul'
        WHEN 8 THEN 'Aug'
        WHEN 9 THEN 'Sep'
        WHEN 10 THEN 'Oct'
        WHEN 11 THEN 'Nov'
        WHEN 12 THEN 'Dec'
    END;
        
        
        
        