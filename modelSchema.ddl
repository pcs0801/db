-- 생성자 Oracle SQL Developer Data Modeler 24.3.1.347.1153
--   위치:        2025-05-21 12:05:50 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE buytbl (
    no       INTEGER NOT NULL,
    prodname NCHAR(10) NOT NULL,
    price    INTEGER NOT NULL,
    amount   INTEGER NOT NULL,
    mobile   NCHAR(12) NOT NULL
);

ALTER TABLE buytbl ADD CONSTRAINT buytbl_pk PRIMARY KEY ( no );

CREATE TABLE usertbl (
    mobile    NCHAR(12) NOT NULL,
    username  NCHAR(4) NOT NULL,
    birthyear INTEGER,
    addr      NCHAR(20)
);

ALTER TABLE usertbl ADD CONSTRAINT usertbl_pk PRIMARY KEY ( mobile );

ALTER TABLE buytbl
    ADD CONSTRAINT buytbl_usertbl_fk FOREIGN KEY ( mobile )
        REFERENCES usertbl ( mobile );



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             0
-- ALTER TABLE                              3
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

DROP TABLE buytbl CASCADE CONSTRAINTS;
DROP TABLE usertbl CASCADE CONSTRAINTS;

CREATE TABLE usertbl (
    mobile    NCHAR(12) NOT NULL,
    username  NCHAR(4) NOT NULL,
    birthyear INTEGER,
    addr      NCHAR(20),
    CONSTRAINT usertbl_pk PRIMARY KEY (mobile)
);

CREATE TABLE buytbl (
    no       INTEGER NOT NULL,
    prodname NCHAR(10) NOT NULL,
    price    INTEGER NOT NULL,
    amount   INTEGER NOT NULL,
    mobile   NCHAR(12) NOT NULL,
    CONSTRAINT buytbl_pk PRIMARY KEY (no),
    CONSTRAINT buytbl_usertbl_fk FOREIGN KEY (mobile)
        REFERENCES usertbl (mobile)
);
