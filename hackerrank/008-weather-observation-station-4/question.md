
# SQL Question and Solution

### Question:
Find the difference between the total number of `CITY` entries in the table and the number of distinct `CITY` entries in the table.

The `STATION` table is described as follows:

| Field  | Type          |
|--------|---------------|
| ID     | NUMBER        |
| CITY   | VARCHAR2(21)  |
| STATE  | VARCHAR2(2)   |
| LAT_N  | NUMBER        |
| LONG_W | NUMBER        |

Where `LAT_N` is the northern latitude and `LONG_W` is the western longitude.

For example, if there are three records in the table with `CITY` values `'New York'`, `'New York'`, and `'Bengaluru'`, there are 2 different city names: `'New York'` and `'Bengaluru'`. The query returns `1`, because the difference between the total number of records and the number of unique city names is `1`.

### SQL Query:
```sql
SELECT 
    (SELECT COUNT(CITY) AS total FROM STATION) - 
    (SELECT COUNT(DISTINCT CITY) AS uniq FROM STATION);
```

### Explanation:
This query calculates the difference between the total number of `CITY` entries and the number of distinct `CITY` entries in the `STATION` table.

- **SELECT (SELECT COUNT(CITY) AS total FROM STATION)**: This inner query counts the total number of `CITY` entries in the `STATION` table.
- **(SELECT COUNT(DISTINCT CITY) AS uniq FROM STATION)**: This inner query counts the number of distinct `CITY` entries in the `STATION` table.
- **The difference**: The outer query subtracts the count of distinct `CITY` entries from the total count of `CITY` entries to determine how many duplicate city names exist in the table.

This query returns the number of duplicate city names in the `STATION` table.
