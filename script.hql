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
FIELDS TERMINATED BY '\;'
STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'bootcamp5.csv' INTO TABLE table_itsymbaliuk;

-- task 1
SELECT
    CASE
        WHEN gender = 1 THEN 'Male'
        WHEN gender = 2 THEN 'Female'
        ELSE 'Unknown'
    END AS gender,
    AVG(height) AS average_height
FROM
    table_itsymbaliuk
GROUP BY
    gender;

-- task 2

-- v1
CREATE VIEW total_rows AS
SELECT weight < 65 as condition FROM table_itsymbaliuk WHERE gender = 2 AND age > 60;
SELECT COUNT(CASE WHEN condition = TRUE THEN 1 ELSE NULL END)/COUNT(*)*100 FROM total_rows;

-- v2
SELECT COUNT(CASE WHEN age > 60 AND gender = 2 AND weight < 65 THEN 1 ELSE NULL END)/COUNT(CASE WHEN age > 60 AND gender = 2 THEN 1 ELSE NULL END)*100 FROM table_itsymbaliuk;

-- v3
SELECT 100 * AVG(CASE WHEN weight < 65 THEN 1 ELSE 0 END) FROM table_itsymbaliuk WHERE age > 60 AND gender = 2;
