
# SQL Question

### Question
Query a count of the number of cities in the `CITY` table having a Population larger than 100,000.

### Table Schema
The `CITY` table is described as follows:

| Field       | Type          |
|-------------|---------------|
| ID          | NUMBER        |
| NAME        | VARCHAR2(17)  |
| COUNTRYCODE | VARCHAR2(3)   |
| DISTRICT    | VARCHAR2(20)  |
| POPULATION  | NUMBER        |

### SQL Query

```sql
SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;
```

### Explanation
- **Objective**: The query aims to find the total number of cities where the population is greater than 100,000.
- **Query Breakdown**:
  - `SELECT COUNT(NAME)`: This part of the query counts the number of rows that match the condition provided in the `WHERE` clause. Since we are only interested in counting the cities, we use the `COUNT()` function on the `NAME` column, though any column would work as we are counting rows.
  - `FROM CITY`: This specifies the table from which we are retrieving the data, which is the `CITY` table.
  - `WHERE POPULATION > 100000`: This condition filters the cities to include only those with a population greater than 100,000.

This query effectively returns the total number of cities with a population greater than 100,000 by counting the relevant rows in the `CITY` table.
