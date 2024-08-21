
# SQL Question and Solution

### Question:
Query all columns (attributes) for every row in the `CITY` table.

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
FROM CITY;
```

### Explanation:
This query selects all columns from the `CITY` table.

- **SELECT \***: The asterisk (`*`) is a wildcard character used to select all columns from the table.
- **FROM CITY**: Specifies the `CITY` table from which to retrieve the data.

This query will return all rows and columns in the `CITY` table, providing a full view of the data contained within the table.
