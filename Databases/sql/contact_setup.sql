CREATE TABLE contact_users (
userid   INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
first    VARCHAR(20) NOT NULL,
last     VARCHAR(20) NOT NULL,
position VARCHAR(20)
);

CREATE TABLE contact_phones (
phoneid INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
userid  INTEGER NOT NULL,
area    CHAR(3) DEFAULT '415',
phone   CHAR(8) NOT NULL,
FOREIGN KEY (userid)
REFERENCES  contact_users(userid)
);

CREATE TABLE contact_emails (
emailid INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
userid  INTEGER NOT NULL,
email   VARCHAR(256),
FOREIGN KEY (userid)
REFERENCES  contact_users(userid)
);

CREATE TABLE contact_websites (
webid   INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
userid  INTEGER NOT NULL,
website VARCHAR(256),
FOREIGN KEY (userid)
REFERENCES  contact_users(userid)
);

INSERT INTO contact_users VALUES
(5066, 'Greg', 'Benson', 'Professor'),
(4174, 'Sophie', 'Engle', 'Assistant Professor'),
(5951, 'David', 'Galles', 'Associate Professor'),
(4916, 'Alark', 'Joshi', 'Assistant Professor'),
(5422, 'EJ', 'Jung', 'Associate Professor'),
(6630, 'Peter', 'Pacheco', 'Professor'),
(5707, 'Terence', 'Parr', 'Professor'),
(2024, 'Sami', 'Rollins', 'Associate Professor'),
(4917, 'Cindi', 'Thompson', 'Assistant Professor'),
(6451, 'David', 'Wolber', 'Professor');

INSERT INTO contact_phones
(userid, phone) VALUES
(5066, '422-5066'),
(4174, '422-4174'),
(5951, '422-5951'),
(4916, '422-4916'),
(5422, '422-5422'),
(6630, '422-6630'),
(5707, '422-5707'),
(2024, '422-2024'),
(4917, '422-4917'),
(6451, '422-6451');

INSERT INTO contact_emails
(userid, email) VALUES
(5066, 'benson@usfca.edu'),
(4174, 'sjengle@usfca.edu'),
(4174, 'sjengle@cs.usfca.edu'),
(5951, 'galles@usfca.edu'),
(4916, 'apjoshi@cs.usfca.edu'),
(5422, 'ejung2@usfca.edu'),
(5422, 'ejung@cs.usfca.edu'),
(6630, 'peter@usfca.edu'),
(5707, 'tjparr@usfca.edu'),
(5707, 'parrt@cs.usfca.edu'),
(2024, 'snrollins@usfca.edu'),
(2024, 'srollins@cs.usfca.edu'),
(4917, 'cathompson4@cs.usfca.edu'),
(6451, 'wolberd@usfca.edu');

INSERT INTO contact_websites
(userid, website) VALUES
(5066, 'http://benson.cs.usfca.edu/'),
(4174, 'http://sjengle.cs.usfca.edu/'),
(5951, 'http://www.cs.usfca.edu/~galles/'),
(4916, 'http://cs.usfca.edu/~apjoshi/'),
(5422, 'http://www.cs.usfca.edu/~ejung/'),
(6630, 'http://www.cs.usfca.edu/~peter/'),
(5707, 'http://parrt.cs.usfca.edu/'),
(2024, 'http://www.samirollins.com/'),
(6451, 'http://sites.google.com/site/wolberd/');
