# SQL Question and Solution

### Question:
Query the names of all the Japanese cities in the `CITY` table. The `COUNTRYCODE` for Japan is `JPN`.

The `CITY` table is described as follows:

| Field       | Type           |
|-------------|----------------|
| ID          | NUMBER         |
| NAME        | VARCHAR2(17)   |
| COUNTRYCODE | VARCHAR2(3)    |
| DISTRICT    | VARCHAR2(20)   |
| POPULATION  | NUMBER         |

### SQL Query:
```sql
SELECT NAME 
FROM CITY 
WHERE COUNTRYCODE = 'JPN';
```

### Explanation:
This query selects the `NAME` field from the `CITY` table where the `COUNTRYCODE` is equal to `'JPN'`, representing cities in Japan.

- **SELECT NAME**: This statement is used to fetch only the `NAME` column from the `CITY` table.
- **FROM CITY**: Specifies the table from which to retrieve the data.
- **WHERE COUNTRYCODE = 'JPN'**: Filters the results to include only the rows where the `COUNTRYCODE` matches `'JPN'`, which corresponds to Japanese cities.

This query will return the names of all cities in Japan listed in the `CITY` table.
