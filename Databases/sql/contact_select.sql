-- DESIRED OUTPUT:
-- +----------------+---------------------+----------------+--------------------------------------------+---------------------------------------+
-- | name           | position            | phone(s)       | email(s)                                   | website                               |
-- +----------------+---------------------+----------------+--------------------------------------------+---------------------------------------+
-- | Sophie Engle   | Assistant Professor | (415) 422-4174 | sjengle@usfca.edu, sjengle@cs.usfca.edu    | http://sjengle.cs.usfca.edu/          |
-- | Alark Joshi    | Assistant Professor | (415) 422-4916 | apjoshi@cs.usfca.edu                       | http://cs.usfca.edu/~apjoshi/         |
-- | Cindi Thompson | Assistant Professor | (415) 422-4917 | cathompson4@cs.usfca.edu                   | NA                                    |
-- | David Galles   | Associate Professor | (415) 422-5951 | galles@usfca.edu                           | http://www.cs.usfca.edu/~galles/      |
-- | EJ Jung        | Associate Professor | (415) 422-5422 | ejung2@usfca.edu, ejung@cs.usfca.edu       | http://www.cs.usfca.edu/~ejung/       |
-- | Sami Rollins   | Associate Professor | (415) 422-2024 | snrollins@usfca.edu, srollins@cs.usfca.edu | http://www.samirollins.com/           |
-- | Greg Benson    | Professor           | (415) 422-5066 | benson@usfca.edu                           | http://benson.cs.usfca.edu/           |
-- | Peter Pacheco  | Professor           | (415) 422-6630 | peter@usfca.edu                            | http://www.cs.usfca.edu/~peter/       |
-- | Terence Parr   | Professor           | (415) 422-5707 | tjparr@usfca.edu, parrt@cs.usfca.edu       | http://parrt.cs.usfca.edu/            |
-- | David Wolber   | Professor           | (415) 422-6451 | wolberd@usfca.edu                          | http://sites.google.com/site/wolberd/ |
-- +----------------+---------------------+----------------+--------------------------------------------+---------------------------------------+

SELECT
CONCAT(contact_users.first, ' ', contact_users.last) AS 'name',
contact_users.position,
CONCAT('(', contact_phones.area, ') ', contact_phones.phone) AS 'phone(s)',
GROUP_CONCAT(contact_emails.email SEPARATOR ', ') AS 'email(s)',
IFNULL(contact_websites.website, 'NA') AS 'website'
FROM contact_users
NATURAL LEFT OUTER JOIN contact_phones
NATURAL LEFT OUTER JOIN contact_emails
NATURAL LEFT OUTER JOIN contact_websites
GROUP BY contact_users.userid
ORDER BY contact_users.position,
contact_users.last;

