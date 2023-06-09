-- DROP DATABASE IF EXISTS employeesDB;
-- CREATE DATABASE employeesDB;

-- USE employeesDB;

-- -- CREATE TABLE department (
-- --   id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
-- --   name VARCHAR(30) UNIQUE NOT NULL
-- -- );

-- -- -- CREATE TABLE role (
-- -- --   id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
-- -- --   title VARCHAR(30) UNIQUE NOT NULL,
-- -- --   salary DECIMAL UNSIGNED NOT NULL,
-- -- --   department_id INT UNSIGNED NOT NULL,
-- -- --   INDEX dep_ind (department_id),
-- -- --   CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
-- -- -- );

-- -- -- CREATE TABLE employee (
-- -- --   id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
-- -- --   first_name VARCHAR(30) NOT NULL,
-- -- --   last_name VARCHAR(30) NOT NULL,
-- -- --   role_id INT UNSIGNED NOT NULL,
-- -- --   INDEX role_ind (role_id),
-- -- --   CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
-- -- --   manager_id INT UNSIGNED,
-- -- --   INDEX man_ind (manager_id),
-- -- --   CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
-- -- -- );

DROP DATABASE IF EXISTS employeesDB;
CREATE DATABASE employeesDB;

USE employeesDB;

CREATE TABLE department (
    id INT AUTO_INCREMENT ,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role (
    id INT AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT, 
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    manager_id INT DEFAULT NULL,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id)
);
