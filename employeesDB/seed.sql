use employeesDB;

INSERT INTO department
   (name) 
VALUES 
  ("Branch Manager"), 
  ("Finance"), 
  ("Sales"),
  ("Legal");


INSERT INTO
   role (title, salary, department_id)
VALUES 
  ("Manager", 100000.00, 1), 
  ("Accountant", 70000.00, 2), 
  ("Salesperson", 50000.00,3), 
  ("Engineer",90000.00,4), 
  ("Human Resource",60000, 5), 
  ("Reprensative", 40000, 6), 
  ("Receptionist",35000.00, 7), 
  ("Security Officer",30000,8);

INSERT INTO  employee 
  (first_name, last_name, role_id, manager_id) 
VALUES 
  ("Dwight", "Schrute", 4, 1 ),
  ("Michael", "Scott", "1", NULL), 
  ("Jim", "Halpert", "4", "1"), 
  ("Pam", "Beesly", "7", "1"), 
  ("Stanley", "Hudson", "4","1"), 
  ("Phyllis","Vance","4", "1"), 
  ("Hank", "Tate", "8",NULL), 
  ("Meridth", "Palmer", "3", "1"), 
  ("Creed", "Bratton", "3", "1"), 
  ("Ryan", "Howard", "3", "1"), 
  ("Kelly", "Kapoor", "6", "1"), 
  ("Toby", "Flenderson", "5", "1"), 
  ("Oscar", "Martinez", "2", "1"), 
  ("Kevin", "Malone", "2", "1"), 
  ("Angela","Martin","2","1")
