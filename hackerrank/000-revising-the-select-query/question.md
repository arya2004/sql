# SQL Question and Solution

### Question:
Query all columns for all American cities in the `CITY` table with populations larger than `100000`. The `CountryCode` for America is `USA`.

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
WHERE POPULATION > 100000 
  AND COUNTRYCODE = 'USA';
```

### Explanation:
This query selects all columns (`*`) from the `CITY` table where the `POPULATION` is greater than `100000` and the `COUNTRYCODE` is `USA`.

- **SELECT \***: This statement is used to fetch all the columns from the `CITY` table.
- **FROM CITY**: Specifies the table to retrieve the data from.
- **WHERE POPULATION > 100000**: Filters the results to include only the rows where the `POPULATION` is greater than `100000`.
- **AND COUNTRYCODE = 'USA'**: Further filters the results to include only the rows where the `COUNTRYCODE` is `'USA'`, which corresponds to American cities.

This query will return a list of American cities that have populations exceeding 100,000.
