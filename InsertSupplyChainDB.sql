USE SupplyChainDB;

-- INSERT TEST DATA INTO 'CUSTOMER' 
INSERT INTO CUSTOMER
(CUST_ID, CUST_NAME, CUST_STREET, CUST_CITY, CUST_STATE, CUST_ZIP, CUST_REGION)
VALUES
(10001, 'CONVETRY PIPINGS', '929 KENNEDY EXPRESS', 'LONG BEACH', 'CALIFORNIA', '90774', 'W');

INSERT INTO CUSTOMER
(CUST_NAME, CUST_STREET, CUST_CITY, CUST_STATE, CUST_ZIP, CUST_REGION)
VALUES
('WELLPOINT PLASTICS', '289 FRANCIS', 'GRAND RAPIDS', 'MICHIGAN', '49510', 'N');

INSERT INTO CUSTOMER
(CUST_NAME, CUST_STREET, CUST_CITY, CUST_STATE, CUST_ZIP, CUST_REGION)
VALUES
('BIOMET GROUP', '277 TOOKER', 'SPRINGFIELDS', 'MASSACHUSETTS', '01179', 'E');

INSERT INTO CUSTOMER
(CUST_NAME, CUST_STREET, CUST_CITY, CUST_STATE, CUST_ZIP, CUST_REGION)
VALUES
('CARMAX CORPORATIONS', '120 WASHINGTON STREET', 'MORENO', 'CALIFORNIA', '92508', 'W');

INSERT INTO CUSTOMER
(CUST_NAME, CUST_STREET, CUST_CITY, CUST_STATE, CUST_ZIP, CUST_REGION)
VALUES
('ROCHESTER BEARINGS', '1130 PETERSON', 'SYRACUSE', 'NEW YORK', '13208', 'E');

-- SELECT * FROM CUSTOMER;

-- INSERT TEST DATA INTO 'EMPLOYEE'
INSERT INTO EMPLOYEE 
    (EMP_ID, EMP_NAME, EMP_DOB, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIP, EMP_HIREDATE) 
    VALUES 
    (123456,'MADELEINE REYES','1979/04/01','9020 BESSIE COLEMAN','NEW HAVEN','CONNECTICUT','06556','2007/01/15');

INSERT INTO EMPLOYEE 
    (EMP_NAME, EMP_DOB, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIP, EMP_HIREDATE) 
    VALUES 
    ('AMYA KINNEY','1981/03/16','PINE STREET','Cambridge','MA','02214','2009/09/04');
    
INSERT INTO EMPLOYEE 
    (EMP_NAME, EMP_DOB, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIP, EMP_HIREDATE) 
    VALUES 
    ('CATLYN PETERS','1991/10/13','742 ORNAGO AVENUE','LEXINTON','MA','02223','2011/07/02');
    
INSERT INTO EMPLOYEE 
    (EMP_NAME, EMP_DOB, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIP, EMP_HIREDATE) 
    VALUES 
    ('MORIAH NASH','1992/08/25','SIMMONS STREET','WARREN','MICHIGAN','48033','2015/02/05');
    
INSERT INTO EMPLOYEE 
    (EMP_NAME, EMP_DOB, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIP, EMP_HIREDATE) 
    VALUES 
    ('PATRICK HANSEN','1985/09/25','485 PEASANT STREET','COLORADO SPRINGS','SPRINGS','80772','2010/08/05');

INSERT INTO EMPLOYEE 
    (EMP_NAME, EMP_DOB, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIP, EMP_HIREDATE, EMP_ENDDATE) 
    VALUES 
    ('SHANK BARTON','1982/05/14','614 SHAWMUT AVENUE','BOSTON','MA','02118','1998/02/14', '2016/05/03');
-- SELECT * FROM EMPLOYEE;

-- INSERT TEST DATA INTO 'PART'
INSERT INTO PART (PART_ID, PART_NAME, COMMODITY, QTY_UNIT, STATUS) VALUES (50000,'BEARING', 'FORGING', 'PIECE', 'OPEN');
INSERT INTO PART (PART_NAME, COMMODITY, QTY_UNIT, STATUS) VALUES ('ROLLER', 'FORGING', 'PIECE', 'OPEN'); 
INSERT INTO PART (PART_NAME, COMMODITY, QTY_UNIT, STATUS) VALUES ('SPARK ELECTRODE', 'POWDER METALLURGY', 'POUNDS', 'OPEN'); 
INSERT INTO PART (PART_NAME, COMMODITY, QTY_UNIT, STATUS) VALUES ('PACKAGING ROD', 'PLASTIC', 'PIECE', 'OPEN'); 
INSERT INTO PART (PART_NAME, COMMODITY, QTY_UNIT, STATUS) VALUES ('VIBRATOR', 'SCREW MACHINE', 'PIECE', 'OPEN');
INSERT INTO PART (PART_NAME, COMMODITY, STATUS, QTY_UNIT) VALUES ('PISTON VALVES', 'POWDER METALLURGY', 'OPEN', 'POUNDS');
-- SELECT * FROM PART;

-- INSERT TEST DATA INTO 'SUPPLIER'
INSERT INTO SUPPLIER 
    (SUPP_ID, SUPP_NAME, SUPP_STREET, SUPP_CITY, SUPP_STATE, SUPP_ZIP, SUPP_REGION) 
    VALUES 
    (301, 'OSHKASH CORPORATION', '8004 TAFT', 'HUNTSVILLA', 'ALABAMA', '35808', 'SE');
    
INSERT INTO SUPPLIER 
    (SUPP_NAME, SUPP_STREET, SUPP_CITY, SUPP_STATE, SUPP_ZIP, SUPP_REGION) 
    VALUES 
    ('O REILY AUTOMOTIVE', '201 HOYNE', 'YONKERS', 'NEW YORK', '10776', 'NE');
    
INSERT INTO SUPPLIER 
    (SUPP_NAME, SUPP_STREET, SUPP_CITY, SUPP_STATE, SUPP_ZIP, SUPP_REGION) 
    VALUES 
    ('BERKSHIRE MANUFACTURERES', '390 HEATH', 'COLUMBIA', 'SOUTH CAROLINA', '29012', 'E');
    
INSERT INTO SUPPLIER 
    (SUPP_NAME, SUPP_STREET, SUPP_CITY, SUPP_STATE, SUPP_ZIP, SUPP_REGION) 
    VALUES 
    ('HELMERICH PLASTICS', '156 STEVENSON DAN RYAN', 'DAYTON', 'OHIO', '45379', 'N');
    
INSERT INTO SUPPLIER 
    (SUPP_NAME, SUPP_STREET, SUPP_CITY, SUPP_STATE, SUPP_ZIP, SUPP_REGION) 
    VALUES 
    ('DST SYSTEMS', '2671 SAYRE', 'BOSTON', 'MASSACHUSETTS', '02746', 'NE');
    
-- SELECT * FROM SUPPLIER;

-- INSERT TEST DATA INTO 'SUPPLIER_CONTACT'
INSERT INTO SUPPLIER_CONTACT 
    (SUPP_EMP_ID, SUPP_EMP_NAME, SUPP_EMP_EMAIL, SUPP_EMP_PHONE, SUPP_EMP_DESIGNATION, SUPP_EMP_START, SUPP_EMP_END, SUPP_ID) 
    VALUES 
    (2001, 'AUBREE KEITH', 'Aubree.KEITH3@gmail.com', '2516107927', 'KEY ACCOUNTS MANAGER', '2013/09/25', NULL, 302);
    
INSERT INTO SUPPLIER_CONTACT 
    (SUPP_EMP_NAME, SUPP_EMP_EMAIL, SUPP_EMP_PHONE, SUPP_EMP_DESIGNATION, SUPP_EMP_START, SUPP_EMP_END, SUPP_ID) 
    VALUES 
    ('SOLAN HOLDEN', 'SLO.HOLDEN@gmail.com', '6052359572', 'KEY ACCOUNTS MANAGER', '1989/04/04', '2011/01/31', 302);
    
INSERT INTO SUPPLIER_CONTACT 
    (SUPP_EMP_NAME, SUPP_EMP_EMAIL, SUPP_EMP_PHONE, SUPP_EMP_DESIGNATION, SUPP_EMP_START, SUPP_EMP_END, SUPP_ID) 
    VALUES 
    ('CAILYN SPENCE', 'CAI.SPE65@hushmail.com', '5738974691', 'SALES REPRESENTATIVE', '2014/07/06', NULL, 304);
    
INSERT INTO SUPPLIER_CONTACT 
    (SUPP_EMP_NAME, SUPP_EMP_EMAIL, SUPP_EMP_PHONE, SUPP_EMP_DESIGNATION, SUPP_EMP_START, SUPP_EMP_END, SUPP_ID) 
    VALUES 
    ('ROBERT SEARS', 'ROB.SE60@yahoo.com', '6075130064', 'SENIOR BUYER', '2000/07/24', NULL, 305);

INSERT INTO SUPPLIER_CONTACT 
    (SUPP_EMP_NAME, SUPP_EMP_EMAIL, SUPP_EMP_PHONE, SUPP_EMP_DESIGNATION, SUPP_EMP_START, SUPP_EMP_END, SUPP_ID) 
    VALUES 
    ('MIAH GREER', 'mi.gre8073@live.com', '8483891048', 'COMMODITY MANAGER', '2002/03/13', NULL, 301);
-- SELECT * FROM SUPPLIER_CONTACT;

-- INSERT TEST DATA INTO 'PROGRAMS'
INSERT INTO PROGRAMS
    (PROG_ID, PROG_NAME, PROG_START, PROG_END, PROG_STATUS, CUST_ID) 
    VALUES 
    (101, 'CATERPILLAR', '2014/01/03', '2019/01/02', 'DELAYED', '10001');
    
INSERT INTO PROGRAMS
    (PROG_NAME, PROG_START, PROG_END, PROG_STATUS, CUST_ID) 
    VALUES 
    ('STARDUST', '2017/07/01', '2022/06/30', 'OPEN', '10001');
 
INSERT INTO PROGRAMS
    (PROG_NAME, PROG_START, PROG_END, PROG_STATUS, CUST_ID) 
    VALUES 
    ('SIGNPLUS', '2012/02/27', '2017/02/26', 'CLOSED', '10003');
    
INSERT INTO PROGRAMS
    (PROG_NAME, PROG_START, PROG_END, PROG_STATUS, CUST_ID) 
    VALUES 
    ('P1ORANGE', '2011/03/11', '2016/03/10', 'CLOSED', '10004');
    
INSERT INTO PROGRAMS
    (PROG_NAME, PROG_START, PROG_END, PROG_STATUS, CUST_ID) 
    VALUES 
    ('HORIZON', '2016/04/11', '2021/04/10', 'OPEN', '10002');
-- SELECT * FROM PROGRAMS;

-- INSERT TEST DATA INTO 'PROGRAM_PART'
INSERT INTO PROGRAM_PART
    (PROG_PART_ID, PROG_ID, PART_ID, QTY_FACTOR)
    VALUES
    (60001, 101, 50001, 3);

INSERT INTO PROGRAM_PART
    (PROG_ID, PART_ID, QTY_FACTOR)
    VALUES
    (101, 50004, 1);
    
INSERT INTO PROGRAM_PART
    (PROG_ID, PART_ID, QTY_FACTOR)
    VALUES
    (103, 50004, 2);
    
INSERT INTO PROGRAM_PART
    (PROG_ID, PART_ID, QTY_FACTOR)
    VALUES
    (104, 50002, 2);
    
INSERT INTO PROGRAM_PART
    (PROG_ID, PART_ID, QTY_FACTOR)
    VALUES
    (101, 50003, 3);
    
INSERT INTO PROGRAM_PART
    (PROG_ID, PART_ID, QTY_FACTOR)
    VALUES
    (103, 50003, 1);

INSERT INTO PROGRAM_PART
    (PROG_ID, PART_ID, QTY_FACTOR)
    VALUES
    (102, 50004, 2);    
-- SELECT * FROM PROGRAM_PART;

-- INSERT TEST DATA INTO 'OUTGOING_INVOICE'
INSERT INTO OUTGOING_INVOICE
    (OUT_INV_NO, OUT_INV_DATE, QUANTITY, QTY_UNIT, COST_PER_UNIT, COST_UNIT, PROG_PART_ID)
    VALUES
    (201901, '2017/08/21', 1400, 'NUMBER', 0.67, 'PER-PIECE', 60001); 
    
INSERT INTO OUTGOING_INVOICE
    (OUT_INV_DATE, QUANTITY, QTY_UNIT, COST_PER_UNIT, COST_UNIT, PROG_PART_ID)
    VALUES
    ('2018/09/03', 850, 'NUMBER', 0.67, 'PER-PIECE', 60001); 

INSERT INTO OUTGOING_INVOICE
    (OUT_INV_DATE, QUANTITY, QTY_UNIT, COST_PER_UNIT, COST_UNIT, PROG_PART_ID)
    VALUES
    ('2016/02/18', 690, 'POUNDS', 1.38, 'PER-LB', 60004);

INSERT INTO OUTGOING_INVOICE
    (OUT_INV_DATE, QUANTITY, QTY_UNIT, COST_PER_UNIT, COST_UNIT, PROG_PART_ID)
    VALUES
    ('2017/01/31', 1950, 'NUMBER', 1.05, 'PER-PIECE', 60003);

INSERT INTO OUTGOING_INVOICE
    (OUT_INV_DATE, QUANTITY, QTY_UNIT, COST_PER_UNIT, COST_UNIT, PROG_PART_ID)
    VALUES
    ('2019/05/15', 1000, 'NUMBER', 1.32, 'PER-PIECE', 60002);

INSERT INTO OUTGOING_INVOICE
    (OUT_INV_DATE, QUANTITY, QTY_UNIT, COST_PER_UNIT, COST_UNIT, PROG_PART_ID)
    VALUES
    ('2018/10/07', 12000, 'NUMBER', 0.47, 'PER-PIECE', 60005);
    
INSERT INTO OUTGOING_INVOICE
    (OUT_INV_DATE, QUANTITY, QTY_UNIT, COST_PER_UNIT, COST_UNIT, PROG_PART_ID)
    VALUES
    ('2015/11/30', 1350, 'NUMBER', 1.30, 'PER-PIECE', 60006);    
-- SELECT * FROM OUTGOING_INVOICE;

-- INSERT TEST DATA INTO 'EMPLOYEE_PROGRAM'
INSERT INTO EMPLOYEE_PROGRAM
    (EMP_PROG_ID, EMP_ID, PROG_ID, DESIGNATION, START_DATE, END_DATE)
    VALUES
    (9001, 123458, 102, 'PROGRAM MANAGER', '2017/07/01', NULL);

INSERT INTO EMPLOYEE_PROGRAM
    (EMP_ID, PROG_ID, DESIGNATION, START_DATE, END_DATE)
    VALUES
    (123460, 104, 'SUPP_DEV_ENGINEER', '2012/01/09', '2014/08/18');

INSERT INTO EMPLOYEE_PROGRAM
    (EMP_ID, PROG_ID, DESIGNATION, START_DATE, END_DATE)
    VALUES
    (123456, 101, 'PROGRAM MANAGER', '2014/01/03', '2016/03/06');

INSERT INTO EMPLOYEE_PROGRAM
    (EMP_ID, PROG_ID, DESIGNATION, START_DATE, END_DATE)
    VALUES
    (123459, 101, 'PROGRAM MANAGER', '2016/05/07', '2019/01/02');    
    
INSERT INTO EMPLOYEE_PROGRAM
    (EMP_ID, PROG_ID, DESIGNATION, START_DATE, END_DATE)
    VALUES
    (123457, 103, 'APQP REP', '2012/05/13', '2017/02/26');
    
INSERT INTO EMPLOYEE_PROGRAM
    (EMP_ID, PROG_ID, DESIGNATION, START_DATE, END_DATE)
    VALUES
    (123461, 104, 'PROGRAM MANAGER', '2011/03/11', '2016/03/10');

INSERT INTO EMPLOYEE_PROGRAM
    (EMP_ID, PROG_ID, DESIGNATION, START_DATE, END_DATE)
    VALUES
    (123457, 103, 'PROGRAM MANAGER', '2012/02/27', '2017/02/26');

INSERT INTO EMPLOYEE_PROGRAM
    (EMP_ID, PROG_ID, DESIGNATION, START_DATE, END_DATE)
    VALUES
    (123460, 103, 'SUPP_DEV_ENGINEER', '2012/05/11', '2014/02/02');

INSERT INTO EMPLOYEE_PROGRAM
    (EMP_ID, PROG_ID, DESIGNATION, START_DATE)
    VALUES
    (123461, 105, 'PROGRAM MANAGER', '2016/04/11');
    
    
-- SELECT * FROM EMPLOYEE_PROGRAM

-- INSERT TEST DATA INTO 'APPROVAL_DETAILS'
INSERT INTO APPROVAL_DETAILS
    (PART_APPR_ID, PART_ID, SUPP_ID, APP_STATUS, APP_DATE, SQE_REP, APP_COST)
    VALUES
    (4001, 50000, 303, 'APPROVED', '2019/01/13', 123460, 1.6);

INSERT INTO APPROVAL_DETAILS
    (PART_ID, SUPP_ID, APP_STATUS, APP_DATE, SQE_REP, APP_COST)
    VALUES
    (50001, 305, 'APPROVED', '2015/07/20', 123459, 0.43);

INSERT INTO APPROVAL_DETAILS
    (PART_ID, SUPP_ID, APP_STATUS, APP_DATE, SQE_REP, APP_COST)
    VALUES
    (50002, 302, 'APPROVED', '2013/08/24', 123458, 2.16);
    
INSERT INTO APPROVAL_DETAILS
    (PART_ID, SUPP_ID, APP_STATUS, APP_DATE, SQE_REP, APP_COST)
    VALUES
    (50004, 302, 'PENDING', NULL, 123460, NULL);

INSERT INTO APPROVAL_DETAILS
    (PART_ID, SUPP_ID, APP_STATUS, APP_DATE, SQE_REP, APP_COST)
    VALUES
    (50003, 301, 'APPROVED', '2015/09/11', 123457, 1.22);

INSERT INTO APPROVAL_DETAILS
    (PART_ID, SUPP_ID, APP_STATUS, APP_DATE, SQE_REP, APP_COST)
    VALUES
    (50003, 301, 'DENIED', '2013/11/09', 123457, 1.10);
    
INSERT INTO APPROVAL_DETAILS
    (PART_ID, SUPP_ID, APP_STATUS, APP_DATE, SQE_REP, APP_COST)
    VALUES
    (50005, 304, 'PENDING', NULL, 123457, NULL);    
-- SELECT * FROM APPROVAL_DETAILS;

-- INSERT TEST DATA INTO 'PURCHASE_ORDER'
INSERT INTO PURCHASE_ORDER
    (PO_NO, PART_APPR_ID, PO_DATE, ITEM_QTY)
    VALUES
    (70001, 4006, '2014/03/06', 3000);
    
INSERT INTO PURCHASE_ORDER
    (PART_APPR_ID, PO_DATE, ITEM_QTY)
    VALUES
    (4003, '2014/12/12', 850);
    
INSERT INTO PURCHASE_ORDER
    (PART_APPR_ID, PO_DATE, ITEM_QTY)
    VALUES
    (4002, '2017/11/24', 3300);
    
INSERT INTO PURCHASE_ORDER
    (PART_APPR_ID, PO_DATE, ITEM_QTY)
    VALUES
    (4005, '2017/01/17', 1350);
-- SELECT * FROM PURCHASE_ORDER;

-- SELECT * FROM CUSTOMER;
-- SELECT * FROM EMPLOYEE;
--  SELECT * FROM EMPLOYEE_PROGRAM;
-- SELECT * FROM SUPPLIER;
-- SELECT * FROM SUPPLIER_CONTACT;
-- SELECT * FROM PROGRAM_PART;
-- SELECT * FROM PROGRAMS;
-- SELECT * FROM PART;
-- SELECT * FROM OUTGOING_INVOICE;
-- SELECT * FROM APPROVAL_DETAILS;
-- SELECT * FROM PURCHASE_ORDER;

-- SELECT * FROM PROGRAMS P WHERE @PROG BETWEEN YEAR(P.PROG_START) AND YEAR(P.PROG_END);

-- SELECT EMP_ID, EMP_NAME, YEAR(EMP_HIREDATE) AS YEAR FROM EMPLOYEE;

