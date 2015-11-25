-- DESIRED OUTPUT:
-- +--------+-----------------------------------------+
-- | course | professors                              |
-- +--------+-----------------------------------------+
-- | CS 107 | Alark Joshi, Sami Rollins, David Wolber |
-- | CS 110 | Greg Benson, Terence Parr               |
-- | CS 112 | Alark Joshi, EJ Jung                    |
-- | CS 212 | Sophie Engle, Sami Rollins              |
-- | CS 220 | Peter Pacheco                           |
-- | CS 245 | David Galles                            |
-- | CS 315 | Peter Pacheco                           |
-- | CS 326 | Greg Benson                             |
-- | CS 333 | EJ Jung                                 |
-- | CS 345 | Terence Parr                            |
-- | CS 360 | Sophie Engle                            |
-- | CS 411 | David Galles                            |
-- | CS 420 | David Galles                            |
-- | CS 480 | EJ Jung                                 |
-- +--------+-----------------------------------------+

# simple version, getting joins correct
SELECT
*
FROM contact_courses
NATURAL LEFT OUTER JOIN contact_names;

# fixing sorting by course
SELECT
*
FROM contact_courses
NATURAL LEFT OUTER JOIN contact_names
ORDER BY course;

# select specific columns
SELECT
course, first, last
FROM contact_courses
NATURAL LEFT OUTER JOIN contact_names
ORDER BY course;

# group courses
SELECT
course,
GROUP_CONCAT(first) AS 'professors'
FROM contact_courses
NATURAL LEFT OUTER JOIN contact_names
GROUP BY course
ORDER BY course, last;

# group full names and sort
SELECT
course,
GROUP_CONCAT(
    CONCAT(first, ' ', last)
    ORDER BY last
    SEPARATOR ', '
) AS 'professors'
FROM contact_courses
NATURAL LEFT OUTER JOIN contact_names
GROUP BY course
ORDER BY course, last;

