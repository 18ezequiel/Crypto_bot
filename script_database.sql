CREATE DATABASE proyecto0012;
USE proyecto0012;


DROP TABLE IF EXISTS main;
CREATE TABLE IF NOT EXISTS main (
id_main                           INTEGER PRIMARY KEY,
id_crypto                         VARCHAR(255),
symbol                            VARCHAR(255),
name                              VARCHAR(255),
image                             VARCHAR(255),
current_price                     FLOAT,
market_cap                        VARCHAR(255),
market_cap_rank                   INT,
fully_diluted_valuation           VARCHAR(255),
total_volume                      FLOAT,
high_24h                          FLOAT,
low_24h                           FLOAT,
price_change_24h                  FLOAT,
price_change_percentage_24h       FLOAT,
market_cap_change_24h             FLOAT,
market_cap_change_percentage_24h  FLOAT,
circulating_supply                FLOAT,
total_supply                      VARCHAR(255),
max_supply                        VARCHAR(255),
ath                               FLOAT,
ath_change_percentage             FLOAT,
ath_date                          VARCHAR(255),
atl                               FLOAT,
atl_change_percentage             FLOAT,
atl_date                          VARCHAR(255),
roi                               VARCHAR(255),
timestamp                         TEXT);

DROP TABLE IF EXISTS registro;
CREATE TABLE IF NOT EXISTS registro (
id                                INT AUTO_INCREMENT PRIMARY KEY,
id_main                           INTEGER REFERENCES main(id_main),
id_crypto                         VARCHAR(255),
symbol                            VARCHAR(255),
name                              VARCHAR(255),
image                             VARCHAR(255),
current_price                     FLOAT,
market_cap                        VARCHAR(255),
market_cap_rank                   INT,
fully_diluted_valuation           VARCHAR(255),
total_volume                      FLOAT,
high_24h                          FLOAT,
low_24h                           FLOAT,
price_change_24h                  FLOAT,
price_change_percentage_24h       FLOAT,
market_cap_change_24h             FLOAT,
market_cap_change_percentage_24h  FLOAT,
circulating_supply                FLOAT,
total_supply                      VARCHAR(255),
max_supply                        VARCHAR(255),
ath                               FLOAT,
ath_change_percentage             FLOAT,
ath_date                          VARCHAR(255),
atl                               FLOAT,
atl_change_percentage             FLOAT,
atl_date                          VARCHAR(255),
roi                               VARCHAR(255),
timestamp                         TEXT);


SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/datos.csv'
INTO TABLE main
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


