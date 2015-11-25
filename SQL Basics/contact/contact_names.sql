-- DESIRED OUTPUT:
-- +---------------+---------------------+-----------------+------------------------+
-- | name          | email               | twitter         | courses                |
-- +---------------+---------------------+-----------------+------------------------+
-- | Greg Benson   | benson@usfca.edu    | @gregorydbenson | CS 110, CS 326         |
-- | Sophie Engle  | sjengle@usfca.edu   | @sjengle        | CS 212, CS 360         |
-- | David Galles  | galles@usfca.edu    |                 | CS 245, CS 411, CS 420 |
-- | Alark Joshi   | apjoshi@usfca.edu   | @alark          | CS 107, CS 112         |
-- | EJ Jung       | ejung2@usfca.edu    |                 | CS 112, CS 333, CS 480 |
-- | Peter Pacheco | peter@usfca.edu     |                 | CS 220, CS 315         |
-- | Terence Parr  | tjparr@usfca.edu    | @the_antlr_guy  | CS 110, CS 345         |
-- | Sami Rollins  | snrollins@usfca.edu | @samirollins    | CS 107, CS 212         |
-- | David Wolber  | wolberd@usfca.edu   | @wolberd        | CS 107                 |
-- +---------------+---------------------+-----------------+------------------------+

# simple version, getting joins correct
SELECT
*
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses;

# fixing sorting by last name
SELECT
*
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses
ORDER BY last;

# select specific columns
SELECT
first, last, usfid, twitterid, course
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses
ORDER BY last;

# combine first and last name into single column
SELECT
CONCAT(first, ' ', last),
usfid, twitterid, course
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses
ORDER BY last;

# give a better column name
SELECT
CONCAT(first, ' ', last) AS 'name',
usfid, twitterid, course
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses
ORDER BY last;

# change usfid to usf email
SELECT
CONCAT(first, ' ', last) AS 'name',
CONCAT(usfid, '@usfca.edu') AS 'email',
twitterid, course
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses
ORDER BY last;

# add @ sign to twitter username
SELECT
CONCAT(first, ' ', last) AS 'name',
CONCAT(usfid, '@usfca.edu') AS 'email',
CONCAT('@', twitterid) AS 'twitter',
course
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses
ORDER BY last;

# remove nulls
SELECT
CONCAT(first, ' ', last) AS 'name',
CONCAT(usfid, '@usfca.edu') AS 'email',
IFNULL(CONCAT('@', twitterid), '') AS 'twitter',
course
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses
ORDER BY last;

# what to do about duplicate rows?
# aggregate matching courses column into single row
SELECT
CONCAT(first, ' ', last) AS 'name',
CONCAT(usfid, '@usfca.edu') AS 'email',
IFNULL(CONCAT('@', twitterid), '') AS 'twitter',
GROUP_CONCAT(course) AS 'courses'
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses
GROUP BY usfid
ORDER BY last;

# better separator and ordering
SELECT
CONCAT(first, ' ', last) AS 'name',
CONCAT(usfid, '@usfca.edu') AS 'email',
IFNULL(CONCAT('@', twitterid), '') AS 'twitter',
GROUP_CONCAT(course ORDER BY course SEPARATOR ', ') AS 'courses'
FROM contact_names
NATURAL LEFT OUTER JOIN contact_twitter
NATURAL LEFT OUTER JOIN contact_courses
GROUP BY usfid
ORDER BY last;

