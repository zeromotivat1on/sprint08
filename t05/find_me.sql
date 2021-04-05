USE ucode_web;

SELECT res.name FROM (
    SELECT heroes.id, heroes.name FROM heroes
    WHERE heroes.name LIKE BINARY '%a%' AND heroes.race != 'human' AND heroes.class_role IN ('tankman','dps')
) AS res JOIN teams ON res.id = teams.hero_id GROUP BY res.id HAVING COUNT(teams.hero_id) > 1 ORDER BY res.id ASC LIMIT 1;
