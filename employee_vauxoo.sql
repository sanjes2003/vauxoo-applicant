-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id int NOT NULL,
    first_name varchar(255),
    last_name varchar(255),
    id_department int,
    PRIMARY KEY (id),
    FOREIGN KEY (id_department) REFERENCES employee_department(id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE employee_department (
    id int NOT NULL,
    name varchar(255),
    description varchar(255),
    PRIMARY KEY (id)
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