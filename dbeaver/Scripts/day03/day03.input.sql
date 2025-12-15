-- (c) Manuel Alejandro Gómez Nicasio <az-dev@outlook.com>
--
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code.

-- (sh) ./db.sh
-- (psql) \i dbeaver/Scripts/day03/day03.input.sql
-- (psql) \i dbeaver/Scripts/day03/day03.sql

DROP DATABASE IF EXISTS aosql_2025_day03;

CREATE DATABASE aosql_2025_day03;

\connect aosql_2025_day03 postgres

GRANT ALL ON SCHEMA public TO aosql_2025;

\connect aosql_2025_day03 aosql_2025

\i ../aosql-data/2025/input/day03-01.sql
