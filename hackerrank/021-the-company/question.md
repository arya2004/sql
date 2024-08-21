The SQL query you provided is structured to retrieve and summarize information about each company in the database, including the founder's name, and the total number of lead managers, senior managers, managers, and employees. The results are ordered by the `company_code`.

Here’s a breakdown of the query:

1. **Select Clause**:
    - `c.company_code`: Selects the code of the company.
    - `c.founder`: Selects the name of the founder of the company.
    - `count(distinct e.lead_manager_code)`: Counts the number of unique lead managers.
    - `count(distinct e.senior_manager_code)`: Counts the number of unique senior managers.
    - `count(distinct e.manager_code)`: Counts the number of unique managers.
    - `count(distinct e.employee_code)`: Counts the number of unique employees.

2. **From Clause**:
    - `company c`: Specifies the `company` table with alias `c`.
    - `inner join employee e on e.company_code = c.company_code`: Joins the `employee` table to the `company` table on the `company_code` field, to relate employees with their respective companies.

3. **Group By Clause**:
    - `group by c.company_code, c.founder`: Groups the results by the company code and the founder name to aggregate the counts.

4. **Order By Clause**:
    - `order by c.company_code`: Orders the results by the `company_code` in ascending order.

This query will output a summary for each company with the company code, founder's name, and the total counts of each managerial and employee role.