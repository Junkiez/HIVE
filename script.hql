CREATE TABLE table_itsymbaliuk (
    index INT,
    age INT,
    gender INT,
    height INT,
    weight FLOAT,
    ap_hi INT,
    ap_lo INT,
    cholesterol INT,
    gluc INT,
    smoke INT,
    alco INT,
    active INT,
    cardio INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOAD DATA INPATH 'bootcamp5.csv' INTO TABLE table_itsymbaliuk;
