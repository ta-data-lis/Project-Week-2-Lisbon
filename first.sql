SELECT * FROM avg_com_time;
ALTER TABLE duração_média_mun_res ADD PRIMARY KEY (MUN);

SELECT * FROM avg_dist_day;
ALTER TABLE avg_dist_day MODIFY COLUMN MUN VARCHAR(20); 
ALTER TABLE avg_dist_day ADD PRIMARY KEY (MUN);

SELECT * FROM avg_dur_motive_transp;
ALTER TABLE avg_dur_motive_transp ADD PRIMARY KEY (Motive);

SELECT * FROM avg_dist_inter;
ALTER TABLE avg_dist_inter MODIFY COLUMN MUN VARCHAR(20); 
ALTER TABLE avg_dist_inter ADD PRIMARY KEY (MUN);
SELECT * FROM avg_time_inter;
ALTER TABLE avg_time_inter MODIFY COLUMN MUN VARCHAR(20),
ADD PRIMARY KEY (MUN); 
SELECT * FROM perc_type_trans_inter;
ALTER TABLE perc_type_trans_inter MODIFY COLUMN MUN VARCHAR(20),
ADD PRIMARY KEY (MUN); 

SELECT * FROM avg_dist_motive_tranp;
ALTER TABLE avg_dist_motive_tranp MODIFY COLUMN Motive VARCHAR(20),
ADD PRIMARY KEY (Motive); 

