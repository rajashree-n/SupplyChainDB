USE SUPPLYCHAINDB;
-- ----------------------------------------------------------------------------------------------------------------
-- FUNCTION TO GENERATE ADDRESS OF THE CUSTOMER
ALTER TABLE CUSTOMER
ADD COLUMN
CUST_ADDRESS VARCHAR(500) GENERATED ALWAYS AS (CONCAT(CUST_STREET,',', CUST_CITY,',',CUST_STATE,',', CUST_ZIP));
 
-- ----------------------------------------------------------------------------------------------------------------
-- FUNCTION TO GENERATE ADDRESS OF THE EMPLOYEE
ALTER TABLE EMPLOYEE
ADD COLUMN
EMP_ADDRESS VARCHAR(500) GENERATED ALWAYS AS (CONCAT(EMP_STREET,',', EMP_CITY,',',EMP_STATE,',', EMP_ZIP));

-- ----------------------------------------------------------------------------------------------------------------
-- FUNCTION TO GENERATE ADDRESS OF THE SUPPLIER
ALTER TABLE SUPPLIER
ADD COLUMN
SUPP_ADDRESS VARCHAR(500) GENERATED ALWAYS AS (CONCAT(SUPP_STREET,',', SUPP_CITY,',',SUPP_STATE,',', SUPP_ZIP));
   
-- ----------------------------------------------------------------------------------------------------------------
