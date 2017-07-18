-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
    id int NOT NULL,
    name varchar(255),
    description varchar(255),
    PRIMARY KEY (id)
);
CREATE TABLE employee (
    id int NOT NULL,
    first_name varchar(255),
    last_name varchar(255),
    id_department int,
    PRIMARY KEY (id),
    FOREIGN KEY (id_department) REFERENCES employee_department(id) ON DELETE SET NULL ON UPDATE CASCADE
);
CREATE TABLE employee_hobby (
    id int NOT NULL,
    first_name varchar(255),
    last_name varchar(255),
    id_department int,
    PRIMARY KEY (id),
    FOREIGN KEY (id_department) REFERENCES employee_department(id) ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO employee_department (id, name, description) VALUES (1, 'PERSONAL', 'RECURSOS HUMANOS');
INSERT INTO employee_department (id, name, description) VALUES (2, 'OPERACIONES', 'DEPARTAMENTO OPERACIONES');
INSERT INTO employee_department (id, name, description) VALUES (3, 'INGENIERIA', 'DEPARTAMENTO DE DISENO Y ARQUITECTURA');
INSERT INTO employee_department (id, name, description) VALUES (4, 'FINANZAS', 'DEPARTAMENTO DE FINANZAS Y CUENTAS');
INSERT INTO employee_department (id, name, description) VALUES (5, 'CONTABILIDAD', 'DEPARTAMENTO DE CONTABILIDAD');
INSERT INTO employee_department (id, name, description) VALUES (6, 'SEGURIDAD', 'DEPARTAMENTO DE SEGURIDAD Y PREVENCION DE ACCIDENTES');
INSERT INTO employee (id, first_name, last_name,id_department) VALUES (14302421, 'SANDRA P.', 'GARCES S.',3);
INSERT INTO employee (id, first_name, last_name,id_department) VALUES (25870668, 'STUARD', 'ROMERO',5);
INSERT INTO employee (id, first_name, last_name,id_department) VALUES (22738281, 'BRYAN J.', 'PEREZ G.',6);
INSERT INTO employee (id, first_name, last_name,id_department) VALUES (13245672, 'JAIME', 'GARCES',2);
-- CAMBIOS DE HOBBIES
CREATE TABLE employee_hobby (
    id int NOT NULL,
    name varchar(255),
    description varchar(255),
    PRIMARY KEY (id)
);
CREATE TABLE employees_hobbies (
    id_hobbies int NOT NULL,
    id_employee int NOT NULL,
    id_hobby int NOT NULL,
    PRIMARY KEY (id_hobbies),
    FOREIGN KEY (id_employee) REFERENCES employee(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_hobby) REFERENCES employee_hobby(id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO employee_hobby (id, name, description) VALUES (1, 'CINE', 'IR TODOS LOS FINES DE SEMANA Y DISFRUTAR DE ALGUNA PELICULA TAQUILLERA');
INSERT INTO employee_hobby (id, name, description) VALUES (2, 'BASKETT', 'PRACTICA DE BALONCESTO COMO RUTINA DIARIA');
INSERT INTO employee_hobby (id, name, description) VALUES (3, 'PLAYA', 'IR TODOS LOS FINES DE SEMANA Y DISFRUTAR DEL MAR Y EL SOL');
INSERT INTO employees_hobbies (id_hobbies, id_employee, id_hobby) VALUES (1,14302421, 1);
INSERT INTO employees_hobbies (id_hobbies, id_employee, id_hobby) VALUES (2, 14302421, 3);
INSERT INTO employees_hobbies (id_hobbies, id_employee, id_hobby) VALUES (3, 25870668, 1);
INSERT INTO employees_hobbies (id_hobbies, id_employee, id_hobby) VALUES (4, 25870668, 2);
INSERT INTO employees_hobbies (id_hobbies, id_employee, id_hobby) VALUES (5, 22738281, 1);
INSERT INTO employees_hobbies (id_hobbies, id_employee, id_hobby) VALUES (6, 22738281, 2);
INSERT INTO employees_hobbies (id_hobbies, id_employee, id_hobby) VALUES (7, 13245672, 3);
INSERT INTO employees_hobbies (id_hobbies, id_employee, id_hobby) VALUES (8, 13245672, 2);
INSERT INTO employees_hobbies (id_hobbies, id_employee, id_hobby) VALUES (9, 13245672, 1);
-- ALTER TABLE DE EMPLOYEES
ALTER TABLE employee ADD is_boss INT NULL;
UPDATE employee SET is_boss = 24567432 WHERE id_department = 3;
UPDATE employee SET is_boss = 14302453 WHERE id_department = 5;
UPDATE employee SET is_boss = 4567432 WHERE id_department = 6;
INSERT INTO employee (id, first_name, last_name,id_department,is_boss) VALUES (24567432, 'GUSTAVO A.', 'GARCES S.',3,NULL);
INSERT INTO employee (id, first_name, last_name,id_department,is_boss) VALUES (14302453, 'ELENA M', 'FURTADO',5,NULL);
INSERT INTO employee (id, first_name, last_name,id_department,is_boss) VALUES (4567432, 'GUSTAVO A.', 'GARCES S.',6,NULL);