
-- --------            << PROJETO1 >>            ------------ --
--                                                                   --
--                    SCRIPT  de criação(DDL)                        --
--                                                                   --
-- Data Criacao ...........: 24/06/2018                              --
-- Autor(es) ..............: José Aquiles , Ramon           --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: donorsChoose                                  --
--                                                                   --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 6 tabelas                                              --
-- ----------------------------------------------------------------- --

CREATE DATABASE if not exists donorsChoose;
use donorsChoose;

CREATE TABLE TEACHER (
    teacher_id VARCHAR(100) PRIMARY KEY NOT NULL,
    teacher_prefix VARCHAR(50),
    teacher_first_project_posted_date DATE
);

CREATE TABLE SCHOOLS (
    school_id VARCHAR(100) PRIMARY KEY NOT NULL,
    school_name VARCHAR(100),
    school_metro_type VARCHAR(50),
    school_percentage_free_lunch INT,
    school_state VARCHAR(50),
    school_zip INT,
    school_city VARCHAR(50),
    school_county VARCHAR(50),
    school_district VARCHAR(100)
);


CREATE TABLE PROJECT (
    project_id VARCHAR(100) PRIMARY KEY NOT NULL,
    teacher_project_posted_sequence INT,
    project_type VARCHAR(50),
    project_title VARCHAR(100),
    project_essay TEXT,
    project_short_description TEXT,
    project_need_statement TEXT,
    project_subject_Category_tree VARCHAR(150),
    project_subject_subcategory_tree VARCHAR(100),
    project_grade_level_category VARCHAR(100),
    project_resource_category VARCHAR(50),
    project_cost FLOAT,
    project_posted_date DATE,
    project_expiration_date DATE,
    project_fully_funded_date DATE,
    teacher_id VARCHAR(100) NOT NULL,
    school_id VARCHAR(100) NOT NULL,
    CONSTRAINT teacher_projectFK FOREIGN KEY (teacher_id)
        REFERENCES TEACHER (teacher_id),
    CONSTRAINT school_projectFK FOREIGN KEY (school_id)
        REFERENCES SCHOOLS (school_id)
);

CREATE TABLE DONORS (
    donor_state VARCHAR(50),
    donor_is_teacher BOOLEAN,
    donor_id VARCHAR(100) PRIMARY KEY NOT NULL,
    donor_city VARCHAR(50),
    donor_zip INT
);

CREATE TABLE RESOURCES (
    resource_item_name TEXT,
    resource_unit_price FLOAT,
    resource_quantity INT,
    resource_vendor_name VARCHAR(50),
    project_id VARCHAR(100) NOT NULL,
    CONSTRAINT project_resourcesFK FOREIGN KEY (project_id)
        REFERENCES PROJECT (project_id)
);


CREATE TABLE DONATION (
    donation_id VARCHAR(100) PRIMARY KEY,
    donor_cart_sequence INT,
    donation_included_optional_donation BOOLEAN,
    donation_receveid_date DATETIME,
    donation_amount FLOAT,
    donor_id VARCHAR(100),
    project_id VARCHAR(100),
    CONSTRAINT donor_donationFK FOREIGN KEY (donor_id)
        REFERENCES DONORS (donor_id),
    CONSTRAINT project_donationFK FOREIGN KEY (project_id)
        REFERENCES PROJECT (project_id)
);
