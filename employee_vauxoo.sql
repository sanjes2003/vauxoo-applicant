CREATE TABLE employee_department (
 	id          serial,
 	name        varchar (50) NOT NULL,
 	description varchar (50),
 	CONSTRAINT  employee_department_pkey PRIMARY KEY (id)
 );
  CREATE TABLE employee (
 	id         serial,
 	first_name varchar (50) NOT NULL,
 	last_name  varchar (50) NOT NULL,
 	employee_department_id integer NOT NULL,
 	manager_id serial NOT NULL,
   	CONSTRAINT employee_pkey PRIMARY KEY (id),
   	FOREIGN KEY (employee_department_id) REFERENCES employee_department (id),
   	FOREIGN KEY (manager_id) REFERENCES employee
       	ON DELETE CASCADE ON UPDATE CASCADE
  );
  CREATE TABLE employee_hobby (
 	id          serial,
 	name        varchar (50) NOT NULL,
 	description varchar (50),
 	CONSTRAINT  employee_hobby_pkey PRIMARY KEY (id)
 );
 CREATE TABLE employees_hobbies (
 	employee_id       serial,
 	employee_hobby_id integer NOT NULL,
 	FOREIGN KEY (employee_id) REFERENCES employee (id),
 	FOREIGN KEY (employee_hobby_id) REFERENCES employee_hobby (id)
  );
 INSERT INTO employee_department (name, description) VALUES ('PERSONAL', 'Departamento de RRHH');
 INSERT INTO employee_department (name, description) VALUES ('CYP', 'Calidad y Procesos');
 INSERT INTO employee_department (name, description) VALUES ('CYS', 'Comunicacion y Soporte');
 INSERT INTO employee_department (name, description) VALUES ('ADMIN', 'Administracion');
 INSERT INTO employee_department (name, description) VALUES ('BI', 'Bienes');
 INSERT INTO employee_department (name, description) VALUES ('Finanzas', 'Administracion y finanzas');
 INSERT INTO employee (first_name, last_name, employee_department_id, manager_id ) VALUES ('Sandra', 'Garces','1','1');
 INSERT INTO employee (first_name, last_name, employee_department_id, manager_id ) VALUES ('Stuard', 'Romero','2','1');
 INSERT INTO employee (first_name, last_name, employee_department_id, manager_id ) VALUES ('Bryan', 'Perola','4','1');
 INSERT INTO employee (first_name, last_name, employee_department_id, manager_id ) VALUES ('Diva', 'Diaz','4','1');
 INSERT INTO employee_hobby (name, description) VALUES ('Natacion', 'Agua Sol y Arena');
 INSERT INTO employee_hobby (name, description) VALUES ('Basket', 'Basketball');
 INSERT INTO employee_hobby (name, description) VALUES ('Zumba', 'Bailar y Drenar');
 INSERT INTO employees_hobbies VALUES (1, 2);
 INSERT INTO employees_hobbies VALUES (1, 1);
 INSERT INTO employees_hobbies VALUES (2, 3);
 INSERT INTO employees_hobbies VALUES (2, 1);
 INSERT INTO employees_hobbies VALUES (3, 1);
 INSERT INTO employees_hobbies VALUES (3, 2);
 INSERT INTO employees_hobbies VALUES (4, 1);
 INSERT INTO employees_hobbies VALUES (4, 3);
