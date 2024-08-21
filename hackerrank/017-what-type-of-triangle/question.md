
# SQL Question and Solution

### Question:
Write a query identifying the type of each record in the `TRIANGLES` table using its three side lengths. Output one of the following statements for each record in the table:

- **Equilateral**: It's a triangle with 3 sides of equal length.
- **Isosceles**: It's a triangle with 2 sides of equal length.
- **Scalene**: It's a triangle with 3 sides of differing lengths.
- **Not A Triangle**: The given values of `A`, `B`, and `C` don't form a triangle.

The `TRIANGLES` table is described as follows:

| Column | Type    |
|--------|---------|
| A      | Integer |
| B      | Integer |
| C      | Integer |

Each row in the table denotes the lengths of each of a triangle's three sides.

#### Sample Input:

| A  | B  | C  |
|----|----|----|
| 20 | 20 | 23 |
| 20 | 20 | 20 |
| 20 | 21 | 22 |
| 13 | 14 | 30 |

#### Sample Output:
```plaintext
Isosceles
Equilateral
Scalene
Not A Triangle
```

### SQL Query:
```sql
SELECT 
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END AS Triangle
FROM TRIANGLES;
```

### Explanation:
This query determines the type of triangle (or if the sides do not form a triangle) based on the lengths of sides `A`, `B`, and `C` for each record in the `TRIANGLES` table.

- **WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'**: This checks if the sum of any two sides is less than or equal to the third side, which means the sides do not form a valid triangle.
- **WHEN A = B AND B = C THEN 'Equilateral'**: If all three sides are equal, the triangle is equilateral.
- **WHEN A = B OR B = C OR A = C THEN 'Isosceles'**: If any two sides are equal, the triangle is isosceles.
- **ELSE 'Scalene'**: If none of the sides are equal, the triangle is scalene.

The query will output the type of triangle for each set of sides in the `TRIANGLES` table.
