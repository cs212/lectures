CREATE TABLE demo_users (
userid INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(15) NOT NULL );

CREATE TABLE demo_phones (
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
area CHAR(3) NOT NULL DEFAULT '555',
number CHAR(8) NOT NULL,
description VARCHAR(15),
userid INTEGER NOT NULL);

ALTER TABLE demo_users ENGINE=InnoDB;

ALTER TABLE demo_phones ENGINE=InnoDB;

ALTER TABLE demo_phones ADD FOREIGN KEY (userid)
REFERENCES demo_users(userid);

INSERT INTO demo_users (name) VALUES
('Cathy'), ('Alice'), ('Emily'), ('Billy'), ('David');

INSERT INTO demo_phones (number, description, userid) VALUES
('111-1111', 'Work', 1),
('222-2222', 'Cell', 1),
('333-3333', 'Home', 2),
('444-4444', 'Home', 4),
('555-5555', 'Cell', 5);
