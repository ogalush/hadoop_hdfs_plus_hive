DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
domain_name string,
http_status string
)
row format delimited
FIELDS terminated BY ','
LINES terminated BY '\n';

LOAD DATA inpath '/data/access.csv'
overwrite INTO TABLE access_log;

SELECT domain_name, http_status, count(*) FROM access_log GROUP BY domain_name, http_status;

