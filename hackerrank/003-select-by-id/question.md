
# SQL Question and Solution

### Question:
Query all columns for a city in `CITY` with the `ID` 1661.

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
WHERE ID = 1661;
```

### Explanation:
This query selects all columns from the `CITY` table where the `ID` is equal to `1661`.

- **SELECT \***: The asterisk (`*`) is used to select all columns from the table.
- **FROM CITY**: Specifies the `CITY` table from which to retrieve the data.
- **WHERE ID = 1661**: Filters the results to return only the row where the `ID` matches `1661`.

This query will return all the details (columns) for the city that has the `ID` of 1661.
