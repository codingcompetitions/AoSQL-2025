-- (c) Manuel Alejandro Gómez Nicasio <az-dev@outlook.com>
--
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code.

-- On https://databaseschool.com/series/advent-of-sql/videos/313
-- At 1:42 it says "disregard that batch all together"
-- Does that mean to not count all tuples with that batch_id
-- or to not count only the tuple with the negative quantity.

SELECT
    SC.OFFICIAL_CATEGORY
    , SUM(SI.QUANTITY) AS TOTAL_USABLE_SNOWBALLS
FROM
    SNOWBALL_INVENTORY SI
    JOIN SNOWBALL_CATEGORIES SC ON SC.OFFICIAL_CATEGORY = SI.CATEGORY_NAME
WHERE
    SI.QUANTITY > 0
GROUP BY
    SC.OFFICIAL_CATEGORY
ORDER BY 
    SUM(SI.QUANTITY) ASC
