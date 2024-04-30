CREATE TABLE table_itsymbaliuk (
    col1 INT,
    col2 STRING,
    col3 DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOAD DATA INPATH 'bootcamp5.csv' INTO TABLE table_itsymbaliuk;
