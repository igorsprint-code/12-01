CREATE TABLE employees (
id INT PRIMARY KEY,
firts_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
patronymic VARCHAR(255) NOT NULL,
salary DECIMAL NOT NULL,
hire_date DATE NOT NULL,
post_id INT NOT NULL,
department_id  INT NOT NULL,
address_id  INT NOT NULL,
project_id  INT NOT NULL,
foreign key (post_id) references post (id),
foreign key (department_id) references department (id),
foreign key (address_id) references address (id),
foreign key (project_id) references project (id)
);


CREATE TABLE post (
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL
);


CREATE TABLE department (
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
department_type INT NOT NULL,
foreign key (department_type) references department_type (id)
);


CREATE TABLE department_type (
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL
);

CREATE TABLE address (
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL
);

CREATE TABLE project (
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL
);