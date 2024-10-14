use telecom_db;

# 1. CONFIGURING USER ROLES
CREATE ROLE 'data_analyst';

GRANT SELECT, INSERT ON telecom_db.* TO 'data_analyst';

CREATE USER 'john'@'localhost';

GRANT 'data_analyst' TO 'john'@'localhost';

SET DEFAULT ROLE 'data_analyst' TO 'john'@'localhost';

REVOKE 'data_analyst' FROM 'john'@'localhost';

DROP ROLE 'data_analyst';

# 2. Managing Permissions

GRANT SELECT, INSERT ON telecom_db.* TO 'john'@'localhost';

GRANT UPDATE ON telecom_db.customers TO 'john'@'localhost';

GRANT SELECT (first_name, phone_number) ON telecom_db.customers TO 'john'@'localhost';

GRANT EXECUTE ON PROCEDURE telecom_db.update_customer TO 'john'@'localhost';

REVOKE UPDATE ON telecom_db.customers FROM 'john'@'localhost';

SHOW GRANTS FOR 'john'@'localhost';

# 3. Securing Data Access in SQL Databases

# a. Principle of Least Privilege (POLP)

GRANT SELECT ON telecom_db.customers TO 'john'@'localhost';

-- Create the role
CREATE ROLE 'data_analyst';

-- Grant SELECT privilege on the telecom_db database to the role
GRANT SELECT ON telecom_db.* TO 'data_analyst';

-- Assign the role to 'john' user
GRANT 'data_analyst' TO 'john'@'localhost';

# b. Authentication and Strong Password Policies
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'StrongPass@123';


# c. SQL Injection Prevention
PREPARE stmt FROM 'SELECT * FROM customers WHERE customer_id = ?';
SET @customer_id = 123;
EXECUTE stmt USING @customer_id;

# d. d.	Row-Level Security (RLS)
CREATE VIEW customer_plan_type AS
SELECT * FROM customers WHERE plan_type = 'Basic';
GRANT SELECT ON customer_plan_type TO 'john'@'localhost';





	





























