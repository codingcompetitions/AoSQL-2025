-- (c) Manuel Alejandro Gómez Nicasio <az-dev@outlook.com>
--
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code.

-- (sh) ./db.sh
-- (psql) \i dbeaver/Scripts/day04/day04.input.sql
-- (psql) \i dbeaver/Scripts/day04/day04.sql

DROP DATABASE IF EXISTS aosql_2025_day04;

CREATE DATABASE aosql_2025_day04;

\connect aosql_2025_day04 postgres

GRANT ALL ON SCHEMA public TO aosql_2025;

\connect aosql_2025_day04 aosql_2025

\i ../aosql-data/2025/input/day04-01.sql
