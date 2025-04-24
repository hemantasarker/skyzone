
CREATE DATABASE sky_zone;
USE sky_zone;

CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE recruitment_notices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    department VARCHAR(100) NOT NULL,
    job VARCHAR(100) NOT NULL,
    qualification VARCHAR(100) NOT NULL,
    min_age INT NOT NULL,
    max_age INT NOT NULL,
    age_as_on_date DATE NOT NULL,
    last_date DATE NOT NULL,
    remarks TEXT
);

CREATE TABLE admission_notices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sl_no INT NOT NULL,
    exam_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    date_from DATE NOT NULL,
    date_to DATE NOT NULL,
    last_date DATE NOT NULL,
    correction_date DATE NOT NULL,
    admit_date DATE NOT NULL,
    exam_date DATE NOT NULL,
    result_date DATE NOT NULL
);

CREATE TABLE images (
    id INT AUTO_INCREMENT PRIMARY KEY,
    filename VARCHAR(255) NOT NULL,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE feedback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
        