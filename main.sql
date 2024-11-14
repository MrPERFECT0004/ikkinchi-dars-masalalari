-- -- 4-masala
-- DROP TABLE Departments CASCADE;

-- Create TABLE Departments ( 
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,  
--     location VARCHAR(100) NOT NULL  
-- );
-- DROP TABLE Employees CASCADE;

-- CREATE TABLE Employees (
--     id SERIAL PRIMARY KEY, 
--     name VARCHAR(100) NOT NULL,  
--     position VARCHAR(100) NOT NULL,  
--     department_id INT,  
--     email VARCHAR(100), 
--     FOREIGN KEY (department_id) REFERENCES Departments(id)
-- );
-- DROP TABLE Projects CASCADE;

-- CREATE TABLE Projects (
--     id SERIAL PRIMARY KEY,  
--     title VARCHAR(100) NOT NULL,  
--     department_id INT,  
--     FOREIGN KEY (department_id) REFERENCES Departments(id)  
-- );
-- DROP TABLE Tasks CASCADE;

-- CREATE TABLE Tasks (
--     id SERIAL PRIMARY KEY,
--     description VARCHAR(255) NOT NULL,  
--     project_id INT, 
--     employee_id INT,  
--     FOREIGN KEY (project_id) REFERENCES Projects(id) ON DELETE CASCADE,  
--     FOREIGN KEY (employee_id) REFERENCES Employees(id) ON DELETE SET NULL  
-- );

-- INSERT INTO Departments (name, location) VALUES
--     ('Marketing', 'Toshkent'),
--     ('Bozor', 'toshloq'),
--     ('IT', 'Fargona');

-- INSERT INTO Employees (name, department_id, email) VALUES 
--     ('Muhammadjon Abdujabborov', 1, 'muhammadjonabdujabborov@gmail.com'),
--     ('Davronbek', 2, 'DavronNazarov@gmail.com'),
--     ('Alisher', 3, 'darskside@gmail.com');

-- INSERT INTO Projects (name, department_id, start_date, end_date) VALUES 
--     ('saytni bezash', 3, '2023-01-01', '2023-03-31'),
--     ('marketing rejasini tuzish', 1, '2023-02-15', '2023-04-30'),
--     ('sotuvni solishtirish', 2, '2023-03-01', '2023-05-15');

-- INSERT INTO Tasks (name, project_id, assigned_to, status) VALUES 
--     ('saytni bezash', 1, 1, 'tez orada'),
--     ('marketing rejasini tuzish', 2, 2, 'tugatildi'),
--     ('sotuvni solishtirish', 3, 3, 'qilinmoqda');


-- 3-masala
-- UPDATE Employees
-- SET position = 'Backend Developer'
-- WHERE id = 1;
-- UPDATE Projects
-- SET title = 'Senior,backend developer'
-- WHERE id = 2;


-- 2-masala
-- DROP TABLE Employees CASCADE;
-- ALTER TABLE Employees ADD COLUMN email VARCHAR(100);
-- DROP TABLE Tasks CASCADE;
-- ALTER TABLE Tasks ALTER COLUMN description TYPE VARCHAR(255);


-- -- 1-masala
-- CREATE TABLE Departments (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     location VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE Employees (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     position VARCHAR(255) NOT NULL,
--     department_id INT,
--     FOREIGN KEY (department_id) REFERENCES Departments(id)
-- );

-- CREATE TABLE Projects (
--     id SERIAL PRIMARY KEY,
--     title VARCHAR(255) NOT NULL,
--     department_id INT,
--     FOREIGN KEY (department_id) REFERENCES Departments(id)
-- );

-- CREATE TABLE Tasks (
--     id SERIAL PRIMARY KEY,
--     description VARCHAR(255) NOT NULL,
--     project_id INT,
--     employee_id INT,
--     FOREIGN KEY (project_id) REFERENCES Projects(id),
--     FOREIGN KEY (employee_id) REFERENCES Employees(id)
-- );





