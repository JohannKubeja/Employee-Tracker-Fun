# Employee-Tracker-Fun
As part of their work, developers often need to design user-friendly interfaces for individuals without coding skills to access and manipulate data stored in databases. These interfaces are referred to as content management systems (CMS). Your task for this week is to construct a command-line application from scratch utilizing Node.js, Inquirer, and MySQL to manage an employee database for a company.

To meet the requirements of this Challenge, it is important to download and employ version 8.2.4 of the Inquirer package. To do this, run the following command in your project directory: npm i inquirer@8.2.4.

# User Story

AS A business owner

I WANT to be able to view and manage the departments, roles, and employees in my company

SO THAT I can organize and plan my business

# Acceptance Criteria

GIVEN a command-line application that accepts user input

WHEN I start the application

THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an 
employee role

WHEN I choose to view all departments

HEN I am presented with a formatted table showing department names and department ids

WHEN I choose to view all roles

THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role

WHEN I choose to view all employees

THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that 
the employees report to

WHEN I choose to add a department

THEN I am prompted to enter the name of the department and that department is added to the database

WHEN I choose to add a role

THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database

WHEN I choose to add an employee

THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database

WHEN I choose to update an employee role

THEN I am prompted to select an employee to update and their new role and this information is updated in the database
