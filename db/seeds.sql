INSERT INTO department (department_name) 
VALUES  ('Research'),
        ('Engineering'),
        ('Finance'),
        ('Legal'),
        ('Development');

INSERT INTO title (title, salary, department_id)
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

INSERT INTO employees (first_name, last_name, role_id, manager_id)
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
