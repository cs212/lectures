-- +-------+-------------+---------------+
-- | name  | description | phone numbers |
-- +-------+-------------+---------------+
-- | Alice | Home        |             1 |
-- | Billy | Home        |             1 |
-- | Cathy | Work        |             2 |
-- | David | Cell        |             1 |
-- | Emily | NULL        |             0 |
-- +-------+-------------+---------------+

SELECT
name, description,
count(number) AS 'phone numbers'
FROM demo_users
NATURAL LEFT OUTER JOIN demo_phones
GROUP BY name;
