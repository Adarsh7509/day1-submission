 create database transaction_demo_db

 -- Create the CUSTOMERS table
CREATE TABLE CUSTOMERS (
    customer_id INT PRIMARY KEY,
    Name VARCHAR(100),
    active BIT
);

-- Create the ORDERS table with a foreign key referencing CUSTOMERS table
CREATE TABLE ORDERS (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_status VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (customer_id)
);

-- Insert data into the CUSTOMERS table
INSERT INTO CUSTOMERS (customer_id, Name, active) VALUES
(1, 'Pam', 1),
(2, 'Kim', 1);

-- Insert data into the ORDERS table
INSERT INTO ORDERS (order_id, customer_id, order_status) VALUES
(101, 1, 'Pending'),
(102, 2, 'Pending');

-- Select data from CUSTOMERS table
SELECT * FROM CUSTOMERS;

-- Select data from ORDERS table
SELECT * FROM ORDERS;

--transaction A
begin transaction 
update customers set Name='john'
where customer_id=1

waitfor delay '00:00:05';
update ORDERS set order_status='processed'
where order_id=101

commit transaction

BEGIN TRANSACTION;
    -- Update the order status where order_id = 101
    UPDATE ORDERS 
    SET order_status = 'Shipped'
    WHERE order_id = 101;

    -- Introduce a delay of 5 seconds
    WAITFOR DELAY '00:00:05';

    -- Update customer name where customer_id = 1
    UPDATE CUSTOMERS 
    SET Name = 'Adarsh'
    WHERE customer_id = 1;

COMMIT TRANSACTION;



