CREATE DATABASE chat;

USE chat;

CREATE TABLE usernames (
  /* Describe your table here.*/
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE rooms (
  /* Describe your table here.*/
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20)


);

CREATE TABLE messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  message VARCHAR(20),
  date DATE,
  username_id INT,
  roomname_id INT,
  FOREIGN KEY (username_id) REFERENCES usernames(id),
  FOREIGN KEY (roomname_id) REFERENCES rooms(id)
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

