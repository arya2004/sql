# SQL Question and Solution

### Question:
Query the `Name` of any student in `STUDENTS` who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e., Bobby, Robby, etc.), secondary sort them by ascending `ID`.

The `STUDENTS` table is described as follows:

| Column | Type    |
|--------|---------|
| ID     | Integer |
| Name   | String  |
| Marks  | Integer |

The `Name` column only contains uppercase (A-Z) and lowercase (a-z) letters.

#### Sample Input:
The `STUDENTS` table might look like this:

| ID | Name     | Marks |
|----|----------|-------|
| 1  | Ashley   | 81    |
| 2  | Samantha | 75    |
| 4  | Julia    | 76    |
| 3  | Belvet   | 84    |

#### Sample Output:
```plaintext
Ashley
Julia
Belvet
```

#### Explanation:
Only Ashley, Julia, and Belvet have Marks > 75. If you look at the last three characters of each of their names, there are no duplicates and `'ley'` < `'lia'` < `'vet'`.

### SQL Query:
```sql
SELECT Name 
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;
```

### Explanation:
This query retrieves the names of students who scored more than 75 marks and orders the results based on the last three characters of the `Name` field. If two names share the same last three characters, the query will further order those results by the `ID` field in ascending order.

- **WHERE Marks > 75**: Filters out students who scored 75 or lower.
- **ORDER BY RIGHT(Name, 3), ID**: Orders the remaining names by the last three characters of the name (`RIGHT(Name, 3)`), and if there's a tie, it orders them by the `ID` column.

This ensures that the list is correctly sorted as required by the problem statement.
