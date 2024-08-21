
# SQL Question and Solution

### Question:
Query the `NAME` field for all American cities in the `CITY` table with populations larger than `120000`. The `CountryCode` for America is `USA`.

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
WHERE POPULATION > 120000 
  AND COUNTRYCODE = 'USA';
```

### Explanation:
This query selects the `NAME` field from the `CITY` table where the `POPULATION` is greater than `120000` and the `COUNTRYCODE` is `USA`.

- **SELECT NAME**: This statement is used to fetch only the `NAME` column from the `CITY` table.
- **FROM CITY**: Specifies the table from which to retrieve the data.
- **WHERE POPULATION > 120000**: Filters the results to include only the rows where the `POPULATION` is greater than `120000`.
- **AND COUNTRYCODE = 'USA'**: Further filters the results to include only the rows where the `COUNTRYCODE` is `'USA'`, which corresponds to American cities.

This query will return the names of American cities that have populations exceeding 120,000.
