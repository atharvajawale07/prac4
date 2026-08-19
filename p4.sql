-- ============================================
-- CREATE AND SELECT DATABASE
-- ============================================

CREATE DATABASE IF NOT EXISTS employee_db;

USE employee_db;


-- ============================================
-- DROP EXISTING TABLES
-- ============================================

DROP TABLE IF EXISTS salary;
DROP TABLE IF EXISTS attendance;
DROP TABLE IF EXISTS employees;


-- ============================================
-- 1. EMPLOYEES TABLE
-- ============================================

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);


-- Insert employees

INSERT INTO employees (employee_id, first_name, last_name)
VALUES
    (1, 'Atharva', 'Jawale'),
    (2, 'Rishabh', 'Jain'),
    (3, 'Someone', 'Special');


-- ============================================
-- 2. ATTENDANCE TABLE
-- ============================================

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    total_hours DECIMAL(5,2) NOT NULL,

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);


-- Insert attendance records

INSERT INTO attendance (attendance_id, employee_id, total_hours)
VALUES
    (101, 1, 8.00),
    (102, 2, 9.00),
    (103, 3, 8.50);


-- ============================================
-- 3. SALARY TABLE
-- ============================================

CREATE TABLE salary (
    salary_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    amount INT NOT NULL,

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);


-- Insert salary records

INSERT INTO salary (salary_id, employee_id, amount)
VALUES
    (1001, 1, 100000),
    (1002, 2, 150000),
    (1003, 3, 85000);


-- ============================================
-- CHECK THE DATA
-- ============================================

SELECT * FROM employees;

SELECT * FROM attendance;

SELECT * FROM salary;
