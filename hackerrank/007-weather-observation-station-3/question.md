
# SQL Question and Solution

### Question:
Query a list of `CITY` names from `STATION` for cities that have an even `ID` number. Print the results in any order, but exclude duplicates from the answer.

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
WHERE ID % 2 = 0;
```

### Explanation:
This query selects distinct city names from the `STATION` table where the `ID` is an even number.

- **SELECT DISTINCT CITY**: This statement is used to fetch the unique `CITY` names from the `STATION` table, removing any duplicates.
- **FROM STATION**: Specifies the table from which to retrieve the data.
- **WHERE ID % 2 = 0**: Filters the results to include only those rows where the `ID` is even. The expression `ID % 2 = 0` checks if the `ID` is divisible by 2 without a remainder, which means it's an even number.

This query will return a list of distinct city names from the `STATION` table where the `ID` is even, with duplicates removed from the results.
