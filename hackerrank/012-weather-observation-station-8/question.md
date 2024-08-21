
# SQL Question and Solution

### Question:
Query the list of `CITY` names from `STATION` which have vowels (i.e., `a`, `e`, `i`, `o`, and `u`) as both their first and last characters. Your result cannot contain duplicates.

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
WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u')
AND RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');
```

### Explanation:
This query selects distinct city names from the `STATION` table where the `CITY` name starts and ends with a vowel.

- **SELECT DISTINCT CITY**: This statement is used to fetch unique `CITY` names from the `STATION` table, ensuring there are no duplicates.
- **FROM STATION**: Specifies the table from which to retrieve the data.
- **WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u')**: Filters the results to include only the rows where the first character of the `CITY` name is a vowel.
- **AND RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u')**: Further filters the results to include only the rows where the last character of the `CITY` name is also a vowel.

This query will return a list of distinct city names that start and end with a vowel, with no duplicates in the results.
