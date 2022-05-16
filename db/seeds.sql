DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;

DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS role;

CREATE TABLE department (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER NOT NULL,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    manager_id INTEGER,
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);

INSERT INTO department (name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO role (title, salary, department_id)
VALUES
    ('Salesperson', 80000, 1),
    ('Lead Engineer', 150000, 2),
    ('Software Engineer', 120000, 2),
    ('Account Manager', 160000, 3),
    ('Accountant', 125000, 4),
    ('Legal Team Lead', 250000, 4),
    ('Lawyer', 190000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
    ('Chan', 'Mike', 1, null),
    ('Rodriguez', 'Ashley', 2, null),
    ('Tupik', 'Kevin', 2, 2),
    ('Singh', 'Kunal', 6, 2),
    ('Brown', 'Malia', 2, null),
    ('Lourd', 'Sarah', 4, 2),
    ('Allen', 'Tom', 1, 2),
    ('Robinson', 'Dexter', 3, null);