# SQL Question and Solution

### Question:
Query the list of `CITY` names starting with vowels (i.e., `a`, `e`, `i`, `o`, or `u`) from `STATION`. Your result cannot contain duplicates.

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
SELECT DISTINCT CITY 
FROM STATION 
WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');
```

### Explanation:
This query selects distinct city names from the `STATION` table where the `CITY` name starts with a vowel.

- **SELECT DISTINCT CITY**: This statement is used to fetch unique `CITY` names from the `STATION` table, ensuring there are no duplicates.
- **FROM STATION**: Specifies the table from which to retrieve the data.
- **WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u')**: Filters the results to include only the rows where the first character of the `CITY` name is one of the specified vowels (`a`, `e`, `i`, `o`, `u`).

This query will return a list of distinct city names that start with a vowel, with no duplicates in the results.
