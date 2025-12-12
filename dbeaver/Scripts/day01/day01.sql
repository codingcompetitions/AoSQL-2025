-- (c) Manuel Alejandro Gómez Nicasio <az-dev@outlook.com>
--
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code.

WITH WISHES AS (
    SELECT
        LOWER(TRIM(RAW_WISH)) AS WISH
    FROM
        WISH_LIST WL
)
SELECT
    W.WISH
    , COUNT(W.WISH)
FROM
    WISHES W
GROUP BY
    W.WISH
ORDER BY
    COUNT DESC