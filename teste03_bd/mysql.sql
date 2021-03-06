CREATE DATABASE IF NOT EXISTS teste03_bancodedados;

USE teste03_bancodedados

#Criando tabela do ano 2020
CREATE TABLE ano2020 (
	CODIGO INT(11) NOT NULL AUTO_INCREMENT,
	DATA DATE DEFAULT NULL,
	REG_ANS INT(11) DEFAULT NULL,
	CD_CONTA_CONTABIL VARCHAR(200)  DEFAULT NULL,
	DESCRICAO TEXT  DEFAULT NULL,
	VL_SALDO_FINAL DECIMAL(12,2)  DEFAULT NULL,
	PRIMARY KEY (CODIGO)
);

#Criando Tabela do Ano 2021	
CREATE TABLE ano2021 (
CODIGO INT(11) NOT NULL AUTO_INCREMENT,
	DATA DATE DEFAULT NULL,
	REG_ANS INT(11) DEFAULT NULL,
	CD_CONTA_CONTABIL VARCHAR(200)  DEFAULT NULL,
	DESCRICAO TEXT  DEFAULT NULL,
	VL_SALDO_FINAL DECIMAL(12,2)  DEFAULT NULL,
	PRIMARY KEY (CODIGO)
);

# Primeiro Trimestre de 2020
LOAD DATA LOW_PRIORITY INFILE 'C:/Users/andre/repositoriocsv/1T2020.csv' 
INTO TABLE ano2020
CHARACTER SET Latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES
(@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
SET DATA = STR_TO_DATE(@DATA, '%d/%m/%Y'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

# Segundo Trimestre de 2020
LOAD DATA LOW_PRIORITY INFILE 'C:/Users/andre/repositoriocsv/2T2020.csv' 
INTO TABLE ano2020
CHARACTER SET Latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES
(@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
SET DATA = STR_TO_DATE(@DATA, '%d/%m/%Y'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

# Terceiro Trimestre de 2020
LOAD DATA LOW_PRIORITY INFILE 'C:/Users/andre/repositoriocsv/3T2020.csv' 
INTO TABLE ano2020
CHARACTER SET Latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES
(@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
SET DATA = STR_TO_DATE(@DATA, '%d/%m/%Y'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

# Quarto Trimestre de 2020
LOAD DATA LOW_PRIORITY INFILE 'C:/Users/andre/repositoriocsv/4T2020.csv' 
INTO TABLE ano2020
CHARACTER SET Latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES
(@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
SET DATA = STR_TO_DATE(@DATA, '%d/%m/%Y'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

# Primeiro Trimestre de 2021
LOAD DATA LOW_PRIORITY INFILE 'C:/Users/andre/repositoriocsv/1T2021.csv' 
INTO TABLE ano2021
CHARACTER SET Latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES
(@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
SET DATA = STR_TO_DATE(@DATA, '%d/%m/%Y'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

# Segundo Trimestre de 2020
LOAD DATA LOW_PRIORITY INFILE 'C:/Users/andre/repositoriocsv/2T2021.csv' 
INTO TABLE ano2021
CHARACTER SET Latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES
(@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
SET DATA = STR_TO_DATE(@DATA, '%d/%m/%Y'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

# Terceiro Trimestre de 2021
LOAD DATA LOW_PRIORITY INFILE 'C:/Users/andre/repositoriocsv/3T2021.csv' 
INTO TABLE ano2021
CHARACTER SET Latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES
(@DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_FINAL)
SET DATA = STR_TO_DATE(@DATA, '%d/%m/%Y'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');
