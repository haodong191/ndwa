DROP TABLE IF EXISTS ndwa_pro;
CREATE TABLE ndwa_pro (
contact_id	VARCHAR (50),
voter_id	VARCHAR (50),	
state	VARCHAR (2),	
van_id	int,
contact_type VARCHAR (50),	
result_name	 VARCHAR (50),
date_attempted	DATE,
date_created	DATE,
attempts_count int
);