# Advent of SQL 2025

[★ Advent of SQL 2025](https://databaseschool.com/series/advent-of-sql) is solved using [PostgreSQL](https://www.postgresql.org/).

| Star | Day |
|------|-----|
|      |     |

## Init

```sql
--- how to create a password
-- echo -n pass+user | md5sum
--- echo -n asdfg1234aosql_2025 | md5sum
--- asdfg1234 + aosql_2025 i.e. asdfg1234aosql_2025
--- asdfg1234 is the password
--- aosql_2025 is the user
--- prefix with md5 i.e. md5$hash$


DROP DATABASE IF EXISTS aosql_2025;

DROP ROLE IF EXISTS aosql_2025;

CREATE ROLE aosql_2025 WITH
  LOGIN
  NOSUPERUSER
  NOINHERIT
  CREATEDB
  NOCREATEROLE
  NOREPLICATION
  PASSWORD 'md54a3f83a3f2c3c8c6df1284a82ecf76aa'
  VALID UNTIL 'infinity';

CREATE DATABASE aosql_2025 WITH
  OWNER = aosql_2025
  ENCODING = 'UTF8'  
  TABLESPACE = pg_default
  CONNECTION LIMIT = -1;
```

```sh
echo "127.0.0.1:5432:*:aosql_2025:aosql_2025" >> ~/.pgpass

# may overwrite you config file
# cp .psqlrc ~/.psqlrc
```

## License

MIT License.

Copyright (c) 2025 Manuel Alejandro Gómez Nicasio <az-dev@outlook.com>

See [LICENSE.md](LICENSE.md) for details.
