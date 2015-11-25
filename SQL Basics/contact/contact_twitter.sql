-- DESIRED OUTPUT:
-- +--------------+-----------------+
-- | name         | twitter         |
-- +--------------+-----------------+
-- | Greg Benson  | @gregorydbenson |
-- | Sophie Engle | @sjengle        |
-- | Alark Joshi  | @alark          |
-- | Terence Parr | @the_antlr_guy  |
-- | Sami Rollins | @samirollins    |
-- | David Wolber | @wolberd        |
-- +--------------+-----------------+

# simple version, getting joins correct
SELECT
*
FROM contact_names
NATURAL JOIN contact_twitter;

# select specific columns and sort
SELECT
first, last, twitterid
FROM contact_names
NATURAL JOIN contact_twitter
ORDER BY last;

# combine columns and clean up output
SELECT
CONCAT(first, ' ', last) AS 'name',
CONCAT('@', twitterid) AS 'twitter'
FROM contact_names
NATURAL JOIN contact_twitter
ORDER BY last;
