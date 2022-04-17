DROP SCHEMA IF EXISTS Majors CASCADE;
CREATE SCHEMA Majors;

ALTER ROLE wenhaoyang SET SEARCH_PATH TO Majors;

DROP TABLE IF EXISTS Classes;
CREATE TABLE Classes(
    classID VARCHAR(10),
    className VARCHAR(100) NOT NULL,
    credit INTEGER NOT NULL,
    diffculty INTEGER,
    quarters VARCHAR(50),
    instructor VARCHAR(255),
    PRIMARY KEY (classID)
);

DROP TABLE IF EXISTS Requirements;
CREATE TABLE Requirements(
    classID VARCHAR(10),
    preReq VARCHAR(50),
    isMajorReq BOOLEAN,
    isGradReq BOOLEAN,
    majorReq VARCHAR(50),
    majorElective VARCHAR(50),
    PRIMARY KEY (classID),
    FOREIGN KEY (classID) REFERENCES Classes
);