CREATE DATABASE cars_database;
USE cars_database;

CREATE TABLE cars (
    ID INT NOT NULL,
    VIN VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year_model INT,
    color VARCHAR(255),
    PRIMARY KEY (ID)
);    

CREATE TABLE customers (
    ID INT NOT NULL,
    customer_id INT NOT NULL,
    name_customer VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    ZIP VARCHAR(255),
    PRIMARY KEY (ID)
);

CREATE TABLE stores (
    store_id INT NOT NULL,
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    ZIP VARCHAR(255),
    PRIMARY KEY (store_id)
);

CREATE TABLE sales_persons (
    staff_id INT NOT NULL,
    name_sales_person VARCHAR(255),
    store INT,
    PRIMARY KEY (staff_id),
    FOREIGN KEY (store)
        REFERENCES stores (store_id)
);

CREATE TABLE invoices (
    ID INT NOT NULL,
    invoice_number INT NOT NULL,
    date_invoice DATE,
    customer_id INT,
    car_id INT,
    sales_person_id INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (customer_id)
        REFERENCES customers (ID),
    FOREIGN KEY (sales_person_id)
        REFERENCES sales_persons (staff_id),
    FOREIGN KEY (car_id)
        REFERENCES cars (ID)
);












