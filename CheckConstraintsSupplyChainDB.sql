-- Check constraints for Region
DELIMITER $
CREATE PROCEDURE `check_region`(IN CUST_REGION VARCHAR(50))
BEGIN
   
    IF CUST_REGION NOT IN ('E','W','N','S','NE','NW','SE','SW') THEN
			SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Invalid region';
    END IF;
  
END$
DELIMITER ;
-- Customer Table
DELIMITER $
CREATE TRIGGER `customer_region_before_insert` BEFORE INSERT ON `CUSTOMER`
FOR EACH ROW
BEGIN
    CALL check_region(new.CUST_REGION);
END$   
DELIMITER ; 
-- Supplier table
DELIMITER $
CREATE TRIGGER `supplier_region_before_insert` BEFORE INSERT ON `SUPPLIER`
FOR EACH ROW
BEGIN
    CALL check_region(new.SUPP_REGION);
END$   
DELIMITER ; 

-- Check constraints for PIN code
DELIMITER $
CREATE PROCEDURE `check_zip`(IN CUST_ZIP VARCHAR(50))
BEGIN
    IF CUST_ZIP NOT REGEXP '^[0-9]{5}$' THEN
		   SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Invalid PIN';
    END IF;
END$
DELIMITER ;
-- Customer table
DELIMITER $
CREATE TRIGGER `customer_zip_before_insert` BEFORE INSERT ON `CUSTOMER`
FOR EACH ROW
BEGIN
    CALL check_zip(new.CUST_ZIP);
END$   
DELIMITER ; 
-- drop trigger customer_zip_before_insert;

-- Supplier Table
DELIMITER $
CREATE TRIGGER `supplier_zip_before_insert` BEFORE INSERT ON `SUPPLIER`
FOR EACH ROW
BEGIN
    CALL check_zip(new.SUPP_ZIP);
END$   
DELIMITER ; 


-- Employee Table
DELIMITER $
CREATE TRIGGER `employee_zip_before_insert` BEFORE INSERT ON `EMPLOYEE`
FOR EACH ROW
BEGIN
    CALL check_zip(new.EMP_ZIP);
END$   
DELIMITER ; 


-- Check constraints for PART Status 
DELIMITER $
CREATE PROCEDURE `check_part_status`(IN STATUS VARCHAR(10))
BEGIN
   
    IF STATUS NOT IN ('OPEN','CLOSED') THEN
			SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Invalid Status';
    END IF;
  
END$
DELIMITER ;

-- Part Table
DELIMITER $
CREATE TRIGGER `part_status_before_insert` BEFORE INSERT ON `PART`
FOR EACH ROW
BEGIN
    CALL check_part_status(new.STATUS);
END$   
DELIMITER ; 



-- Check constraints for Program Status 
DELIMITER $
CREATE PROCEDURE `check_program_status`(IN PROG_STATUS VARCHAR(10))
BEGIN
   
    IF PROG_STATUS NOT IN ('OPEN','CLOSED','DELAYED','CANCELLED') THEN
			SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Invalid Status';
    END IF;
  
END$
DELIMITER ;

-- Program Table
DELIMITER $
CREATE TRIGGER `prog_status_before_insert` BEFORE INSERT ON `PROGRAMS`
FOR EACH ROW
BEGIN
    CALL check_program_status(new.PROG_STATUS);
END$   
DELIMITER ; 



-- Check constraints for Approval Status 
DELIMITER $
CREATE PROCEDURE `check_approval_status`(IN APP_STATUS VARCHAR(10))
BEGIN
   
    IF APP_STATUS NOT IN ('APPROVED','DENIED', 'PENDING') THEN
			SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Invalid Status';
    END IF;
  
END$
DELIMITER ;

-- Part Table
DELIMITER $
CREATE TRIGGER `appr_status_before_insert` BEFORE INSERT ON `APPROVAL_DETAILS`
FOR EACH ROW
BEGIN
    CALL check_approval_status(new.APP_STATUS);
END$   
DELIMITER ; 


