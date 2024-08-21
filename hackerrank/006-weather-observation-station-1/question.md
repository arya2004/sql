
# SQL Question and Solution

### Question:
Query a list of `CITY` and `STATE` from the `STATION` table.

The `STATION` table is described as follows:

| Field  | Type          |
|--------|---------------|
| ID     | NUMBER        |
| CITY   | VARCHAR2(21)  |
| STATE  | VARCHAR2(2)   |
| LAT_N  | NUMBER        |
| LONG_W | NUMBER        |

Where `LAT_N` is the northern latitude and `LONG_W` is the western longitude.

### SQL Query:
```sql
SELECT CITY, STATE 
FROM STATION;
```

### Explanation:
This query selects the `CITY` and `STATE` columns from the `STATION` table.

- **SELECT CITY, STATE**: This statement is used to fetch only the `CITY` and `STATE` columns from the `STATION` table.
- **FROM STATION**: Specifies the table from which to retrieve the data.

This query will return a list of cities along with their corresponding states from the `STATION` table.
