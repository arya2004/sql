
# SQL Question and Solution

### Question:
Pivot the `Occupation` column in `OCCUPATIONS` so that each `Name` is sorted alphabetically and displayed underneath its corresponding `Occupation`. The output column headers should be `Doctor`, `Professor`, `Singer`, and `Actor`, respectively.

- **Note**: Print `NULL` when there are no more names corresponding to an occupation.

The `OCCUPATIONS` table is described as follows:

| Column     | Type   |
|------------|--------|
| Name       | String |
| Occupation | String |

Occupation will only contain one of the following values: `Doctor`, `Professor`, `Singer`, or `Actor`.

#### Sample Input:

| Name       | Occupation |
|------------|------------|
| Samantha   | Doctor     |
| Julia      | Actor      |
| Maria      | Actor      |
| Meera      | Singer     |
| Ashely     | Professor  |
| Ketty      | Professor  |
| Christeen  | Professor  |
| Jane       | Actor      |
| Jenny      | Doctor     |
| Priya      | Singer     |

#### Sample Output:
```plaintext
Jenny    Ashely    Meera   Jane
Samantha Christeen Priya   Julia
NULL     Ketty     NULL    Maria
```

### SQL Query:
```sql
WITH RankedOccupations AS (
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
    FROM OCCUPATIONS
),
PivotedData AS (
    SELECT
        MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
        MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
        MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
        MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor,
        rn
    FROM RankedOccupations
    GROUP BY rn
)
SELECT
    Doctor,
    Professor,
    Singer,
    Actor
FROM PivotedData
ORDER BY rn;
```

### Explanation:
This query transforms the `OCCUPATIONS` table, pivoting the data so that each occupation is a separate column, and the names associated with each occupation are displayed under the appropriate column. 

- **RankedOccupations CTE**: This Common Table Expression (CTE) assigns a rank (`ROW_NUMBER()`) to each `Name` within its `Occupation` group, ordered alphabetically.
- **PivotedData CTE**: This CTE uses conditional aggregation to pivot the data, selecting the names based on their `Occupation` and the rank (`rn`).
- **Final SELECT**: The final query selects the pivoted data and orders it by the rank, which ensures that names are listed under the correct occupation column and aligned by rank.

The output shows the names listed under their respective occupation columns, with `NULL` values filling in where there are no more names corresponding to an occupation.
