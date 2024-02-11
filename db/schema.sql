-- Drop the database if it exists
DROP DATABASE IF EXISTS employee_tracker;

-- Create the database
CREATE DATABASE employee_tracker;

-- Use the created database
USE employee_tracker;

-- Create department table
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(40)
);

-- Create role table
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
);

-- Create employee table
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT, -- Make role_id nullable
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
    FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);

-- Insert data into department table
INSERT INTO department (department_name) 
VALUES  ('Research'),
        ('Engineering'),
        ('Finance'),
        ('Legal'),
        ('Development');

-- Insert data into role table
INSERT INTO role (title, salary, department_id)
VALUES  ('Research Lead', '100000', 1),
        ('Researcher', '80000', 1),
        ('Lead Engineer', '150000', 2),
        ('Junior Engineer', '120000', 2),
        ('Senior Accountant', '160000', 3),
        ('Junior Accountant', '125000', 3),
        ('Lawyer', '250000', 4),
        ('Paralegal', '190000', 4),
        ('Senior Developer', '1000000', 5),
        ('Junior Developer', '25000', 5);

-- Insert data into employee table
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ('Alice', 'Smith', '1', NULL),
        ('Ethan', 'Johnson', '2', '1'),
        ('Olivia', 'Davis', '3', NULL),
        ('Noah', 'Anderson', '4', '3'),
        ('Ava', 'Wilson', '5', NULL),
        ('Sophia', 'Martinez', '6', '5'),
        ('Liam', 'Jones', '7', NULL),
        ('Emma', 'White', '8', '7'),
        ('Mia', 'Martin', '9', NULL),
        ('Lucas', 'Perez', '10', '9');
