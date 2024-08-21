# SQL Question and Solution

### Question:
Query all attributes of every Japanese city in the `CITY` table. The `COUNTRYCODE` for Japan is `JPN`.

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
SELECT * 
FROM CITY 
WHERE COUNTRYCODE = 'JPN';
```

### Explanation:
This query selects all columns from the `CITY` table where the `COUNTRYCODE` is equal to `'JPN'`, which represents Japan.

- **SELECT \***: The asterisk (`*`) is used to select all columns from the table.
- **FROM CITY**: Specifies the `CITY` table from which to retrieve the data.
- **WHERE COUNTRYCODE = 'JPN'**: Filters the results to return only the rows where the `COUNTRYCODE` matches `'JPN'`, which corresponds to cities in Japan.

This query will return all the details (columns) for each city in Japan listed in the `CITY` table.
