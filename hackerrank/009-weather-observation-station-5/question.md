
# SQL Question and Solution

### Question:
Query the two cities in `STATION` with the shortest and longest `CITY` names, as well as their respective lengths (i.e., number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

The `STATION` table is described as follows:

| Field  | Type          |
|--------|---------------|
| ID     | NUMBER        |
| CITY   | VARCHAR2(21)  |
| STATE  | VARCHAR2(2)   |
| LAT_N  | NUMBER        |
| LONG_W | NUMBER        |

Where `LAT_N` is the northern latitude and `LONG_W` is the western longitude.

#### Sample Input
For example, `CITY` has four entries: `DEF`, `ABC`, `PQRS`, and `WXY`.

#### Sample Output
```plaintext
ABC  3
PQRS 4
```

#### Explanation:
When ordered alphabetically, the `CITY` names are listed as `ABC`, `DEF`, `PQRS`, and `WXY`, with lengths `3`, `3`, `4`, and `3`. The longest name is `PQRS`, but there are 3 options for the shortest named city. Choose `ABC`, because it comes first alphabetically.

### SQL Queries:
```sql
-- Query to find the city with the shortest name
SELECT CITY, LENGTH(CITY) 
FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC
LIMIT 1;

-- Query to find the city with the longest name
SELECT CITY, LENGTH(CITY) 
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1;
```

### Explanation:
These two queries find the cities with the shortest and longest names in the `STATION` table, along with their respective lengths.

- **Shortest City Name Query:**
  - **ORDER BY LENGTH(CITY) ASC, CITY ASC**: This orders the results by the length of the `CITY` name in ascending order. If multiple cities have the same length, they are ordered alphabetically.
  - **LIMIT 1**: This returns the top result, which is the city with the shortest name.

- **Longest City Name Query:**
  - **ORDER BY LENGTH(CITY) DESC, CITY ASC**: This orders the results by the length of the `CITY` name in descending order. If multiple cities have the same length, they are ordered alphabetically.
  - **LIMIT 1**: This returns the top result, which is the city with the longest name.

These queries provide the shortest and longest city names along with their respective lengths.
