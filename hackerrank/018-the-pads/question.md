# SQL Question and Solution

### Question:
Generate the following two result sets:

1. Query an alphabetically ordered list of all names in `OCCUPATIONS`, immediately followed by the first letter of each profession as a parenthetical (i.e., enclosed in parentheses). For example:
   - `AnActorName(A)`, `ADoctorName(D)`, `AProfessorName(P)`, and `ASingerName(S)`.

2. Query the number of occurrences of each occupation in `OCCUPATIONS`. Sort the occurrences in ascending order, and output them in the following format:
   - `There are a total of [occupation_count] [occupation]s.`

Where `[occupation_count]` is the number of occurrences of an occupation in `OCCUPATIONS` and `[occupation]` is the lowercase occupation name. If more than one occupation has the same `[occupation_count]`, they should be ordered alphabetically.

The `OCCUPATIONS` table is described as follows:

| Column     | Type   |
|------------|--------|
| Name       | String |
| Occupation | String |

Occupation will only contain one of the following values: `Doctor`, `Professor`, `Singer`, or `Actor`.

#### Sample Input:
An `OCCUPATIONS` table that contains the following records:

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
Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)

There are a total of 2 doctors.
There are a total of 2 singers.
There are a total of 3 actors.
There are a total of 3 professors.
```

### SQL Queries:

#### First Query:
```sql
SELECT CONCAT(Name, "(", LEFT(Occupation, 1), ")")
FROM OCCUPATIONS
ORDER BY Name;
```

- **Explanation**: This query concatenates each `Name` with the first letter of their `Occupation` in parentheses and orders the list alphabetically by `Name`.

#### Second Query:
```sql
SELECT CONCAT("There are a total of ", COUNT(Occupation), " ", LOWER(Occupation), "s.")
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation;
```

- **Explanation**: This query counts the occurrences of each occupation, formats the result in the required sentence structure, and orders them first by the count of the occupations in ascending order and then alphabetically by occupation name if counts are the same.

These queries fulfill the requirements as stated in the problem prompt, generating a properly formatted output for both the list of names and the occupation counts.
