DROP TABLE IF EXISTS ndwa_uni;
CREATE TABLE ndwa_uni (
voter_id VARCHAR (50),	
van_id int,
earliest_registration_date DATE,	
county VARCHAR (50),	
precinct VARCHAR (50),	
registration_city VARCHAR (50),	
registration_state VARCHAR (2),	
registration_zip int,	
registration_address_id	VARCHAR (50),
registration_address_latitude TEXT,
registration_address_longitude TEXT,	
usps_address_code VARCHAR (1),		
address_likely_vacant_flag int,	
mailable_flag int,	
cell_phone_hashed VARCHAR (50),	
landline_phone_hashed	VARCHAR (50),
date_of_birth	DATE,
current_age int,	
election_day_age int,	
gender	VARCHAR (6),
race_ethnicity	VARCHAR (10),
voted_2020_general	int,
voted_2018_general	int,
voted_2016_general	int,
voted_2014_general	int,
midterm_general_turnout_probability	TEXT,	
partisanship_probability	TEXT,	
deceased_flag	int,	
voter_status	VARCHAR (1),
registration_status_flag int
);