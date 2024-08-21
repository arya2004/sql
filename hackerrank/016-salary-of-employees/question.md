
# SQL Question and Solution

### Question:
Write a query that prints a list of employee names (i.e., the `name` attribute) for employees in `Employee` having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending `employee_id`.

The `Employee` table containing employee data for a company is described as follows:

| Column      | Type    |
|-------------|---------|
| employee_id | Integer |
| name        | String  |
| months      | Integer |
| salary      | Integer |

Where `employee_id` is an employee's ID number, `name` is their name, `months` is the total number of months they've been working for the company, and `salary` is their monthly salary.

### SQL Query:
```sql
SELECT name 
FROM Employee
WHERE salary > 2000
AND months < 10
ORDER BY employee_id ASC;
```

### Explanation:
This query selects the names of employees who earn more than $2000 per month and have worked for the company for less than 10 months. The results are sorted by `employee_id` in ascending order.

- **WHERE salary > 2000**: Filters employees who earn more than $2000 per month.
- **AND months < 10**: Further filters to include only those employees who have been with the company for less than 10 months.
- **ORDER BY employee_id ASC**: Sorts the result set by `employee_id` in ascending order.

The query will return a list of employee names matching the criteria, ordered by their ID.
