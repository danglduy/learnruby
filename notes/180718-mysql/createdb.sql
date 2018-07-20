-- Create database
CREATE DATABASE IF NOT EXISTS `e-commerce`;

-- Change database
USE e-commerce;

-- Create tables
CREATE TABLE user (
  id int NOT NULL AUTO_INCREMENT UNIQUE,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product (
  id int NOT NULL AUTO_INCREMENT UNIQUE,
  name varchar(255) NOT NULL,
  price int NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE invoice (
  id int NOT NULL AUTO_INCREMENT UNIQUE,
  buydate datetime NOT NULL,
  status int NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE detail (
  id int NOT NULL AUTO_INCREMENT UNIQUE,
  invoice_id int NOT NULL,
  product_id int NOT NULL,
  quantity int NOT NULL,
  PRIMARY KEY (id)
);

-- Insert sample data
INSERT INTO user
  (name)
VALUES
  ('A'),
  ('B'),
  ('C'),
  ('D');

