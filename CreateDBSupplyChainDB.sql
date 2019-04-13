-- CREATE DATABASE SupplyChainDB;


USE SupplyChainDB;
CREATE TABLE IF NOT EXISTS CUSTOMER (
    CUST_ID INT AUTO_INCREMENT PRIMARY KEY,
    CUST_NAME VARCHAR(50) NOT NULL,
    CUST_STREET VARCHAR(50),
    CUST_CITY VARCHAR(20),
    CUST_STATE VARCHAR(50),
    CUST_ZIP VARCHAR(5) CHECK(REGEXP_LIKE(CUST_ZIP, '^\D{5}$')),
    CUST_REGION VARCHAR(50) CHECK(CUST_REGION IN ('E','W','N','S','NE','NW','SE','SW'))
    );

CREATE TABLE IF NOT EXISTS EMPLOYEE (
    EMP_ID INT AUTO_INCREMENT PRIMARY  KEY,
    EMP_NAME VARCHAR(45) NOT NULL,
    EMP_DOB DATE,
    EMP_STREET VARCHAR(50),
    EMP_CITY VARCHAR(50),
    EMP_STATE VARCHAR(50),
    EMP_ZIP VARCHAR(5),
    EMP_HIREDATE DATE,
    EMP_ENDDATE DATE
);

CREATE TABLE IF NOT EXISTS PART (
    PART_ID INT AUTO_INCREMENT PRIMARY KEY,
    PART_NAME VARCHAR(50)  NOT NULL,
    COMMODITY VARCHAR(25),
    QTY_UNIT VARCHAR(10),
    STATUS VARCHAR(10) CHECK(STATUS IN ('OPEN','CLOSED'))
);

CREATE TABLE IF NOT EXISTS SUPPLIER(
    SUPP_ID INT AUTO_INCREMENT PRIMARY KEY,
    SUPP_NAME VARCHAR(50)  NOT NULL,
    SUPP_STREET VARCHAR(50),
    SUPP_CITY VARCHAR(20),
    SUPP_STATE VARCHAR(50),
    SUPP_ZIP VARCHAR(5),
    SUPP_REGION VARCHAR(50) CHECK(SUPP_REGION IN ('E','W','N','S','NE','NW','SE','SW')) 
);

CREATE TABLE IF NOT EXISTS SUPPLIER_CONTACT(
    SUPP_EMP_ID INT AUTO_INCREMENT PRIMARY KEY,
    SUPP_EMP_NAME VARCHAR(20) NOT NULL,
    SUPP_EMP_EMAIL VARCHAR(25),
    SUPP_EMP_PHONE VARCHAR(10),
    SUPP_EMP_DESIGNATION VARCHAR(20),
    SUPP_EMP_START DATE,
    SUPP_EMP_END DATE,
    SUPP_ID INT,
    FOREIGN KEY (SUPP_ID)
        REFERENCES SUPPLIER(SUPP_ID)
        ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS PROGRAMS (
    PROG_ID INT AUTO_INCREMENT PRIMARY KEY,
    PROG_NAME VARCHAR(20)  NOT NULL,
    PROG_START DATE,
    PROG_END DATE,
    PROG_STATUS VARCHAR(10),
    CUST_ID INT,
    FOREIGN KEY (CUST_ID)
        REFERENCES CUSTOMER(CUST_ID)
        ON DELETE SET NULL,
	CONSTRAINT PROG_STATUS_LIST CHECK(PROG_STATUS IN ('OPEN','CLOSED','DELAYED','CANCELLED'))
); 

CREATE TABLE IF NOT EXISTS EMPLOYEE_PROGRAM(
    EMP_PROG_ID INT AUTO_INCREMENT PRIMARY KEY,
    EMP_ID INT,
    PROG_ID INT,
    DESIGNATION VARCHAR(20),
    START_DATE DATE,
    END_DATE DATE,
    FOREIGN KEY (PROG_ID)
        REFERENCES PROGRAMS(PROG_ID)
        ON DELETE SET NULL,
    FOREIGN KEY (EMP_ID)
        REFERENCES EMPLOYEE(EMP_ID)
        ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS PROGRAM_PART(
    PROG_PART_ID INT AUTO_INCREMENT PRIMARY KEY,
    PROG_ID INT,
    PART_ID INT,
    QTY_FACTOR DECIMAL(10,4),
    FOREIGN KEY (PROG_ID)
        REFERENCES PROGRAMS(PROG_ID)
        ON DELETE SET NULL,
    FOREIGN KEY (PART_ID)
        REFERENCES PART(PART_ID)
        ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS OUTGOING_INVOICE(
    OUT_INV_NO INT AUTO_INCREMENT PRIMARY KEY,
    OUT_INV_DATE DATE  NOT NULL,
    QUANTITY DECIMAL(10,4)  NOT NULL,
    QTY_UNIT VARCHAR(10)  NOT NULL,
    COST_PER_UNIT DECIMAL(10,4)  NOT NULL,
    COST_UNIT VARCHAR(10)  NOT NULL,
    PROG_PART_ID INT,
    FOREIGN KEY (PROG_PART_ID)
        REFERENCES PROGRAM_PART(PROG_PART_ID)
        ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS APPROVAL_DETAILS (
    PART_APPR_ID INT AUTO_INCREMENT PRIMARY KEY,
    PART_ID INT,
    SUPP_ID INT,
    APP_STATUS VARCHAR(10), 
    APP_DATE DATE,
    SQE_REP INT,
    APP_COST DECIMAL(10,4),
    FOREIGN KEY (PART_ID)
        REFERENCES PART(PART_ID)
        ON DELETE SET NULL,
    FOREIGN KEY (SUPP_ID)
        REFERENCES SUPPLIER(SUPP_ID)
        ON DELETE SET NULL,
    FOREIGN KEY(SQE_REP)
        REFERENCES EMPLOYEE(EMP_ID)
        ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS PURCHASE_ORDER (
    PO_NO INT AUTO_INCREMENT PRIMARY  KEY, 
    PART_APPR_ID INT,
    PO_DATE DATE  NOT NULL, 
    ITEM_QTY DECIMAL(10,4),
	FOREIGN KEY (PART_APPR_ID)
        REFERENCES APPROVAL_DETAILS(PART_APPR_ID)
        ON DELETE SET NULL
);
