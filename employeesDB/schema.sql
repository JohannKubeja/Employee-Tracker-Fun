DROP DATABASE IF EXISTS employeesDB;
CREATE DATABASE employeesDB;

USE employeesDB; 

CREATE TABLE department (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
,  name VARCHAR(30) UNIQUE NOT NULL,
);

CREATE TABLE role (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) UNIQUE NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT NOT NULL,
  INDEX department_index (department_id),
  CONSTRAINT fk_department FOREIGN KEY (department_id)
  REFERENCES department(id)
  ON DELETE CASCADE
);

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  role_id INT UNISIGNED NOT NULL,
  INDEX role_ind (role_id)
  CONSTRAINT fk_role FOREIGN KEY (role_id) ON DELETE CASCADE
  manager_id INT UNISIGNED,
  INDEX manager_ind (manager_id)
  CONSTRAINT fk_manager FOREIGN KEY (manager_id)
  REFERENCES employee(id),
  ON DELETE SET NULL
);