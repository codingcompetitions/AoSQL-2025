-- (c) Manuel Alejandro Gómez Nicasio <az-dev@outlook.com>
--
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code.

-- (sh) ./db.sh
-- (psql) \i dbeaver/Scripts/day06/day06.input.sql
-- (psql) \i dbeaver/Scripts/day06/day06.sql

DROP DATABASE IF EXISTS aosql_2025_day06;

CREATE DATABASE aosql_2025_day06;

\connect aosql_2025_day06 postgres

GRANT ALL ON SCHEMA public TO aosql_2025;

\connect aosql_2025_day06 aosql_2025

\i ../aosql-data/2025/input/day06-01.sql
