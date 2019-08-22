
CREATE TABLE IF NOT EXISTS population_berlin_2018 (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    DistrNr CHAR(1),
    District VARCHAR(40),
    Area CHAR(10),
    Namearea VARCHAR(40),
    Gender CHAR(1),
    Nationality CHAR(1),
    Age VARCHAR(15),
    Quantity VARCHAR(15),
    FOREIGN KEY (`District`) REFERENCES `Berlin`(`District`)
);
DROP TABLE IF EXISTS population_berlin_2018;

CREATE TABLE IF NOT EXISTS Berlin (
	District INT PRIMARY KEY AUTO_INCREMENT,
    Election_districts VARCHAR(20)
    );
    
DROP TABLE IF EXISTS Berlin;