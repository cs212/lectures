-- +--------+-------+----------------+
-- | userid | name  | phone          |
-- +--------+-------+----------------+
-- |      2 | Alice | (555) 333-3333 |
-- |      4 | Billy | (555) 444-4444 |
-- |      1 | Cathy | (555) 222-2222 |
-- |      1 | Cathy | (555) 111-1111 |
-- |      5 | David | (555) 555-5555 |
-- |      3 | Emily | NULL           |
-- +--------+-------+----------------+

SELECT userid, name,
CONCAT('(', area, ') ', number) AS phone FROM demo_users
NATURAL LEFT OUTER JOIN demo_phones ORDER BY name;
