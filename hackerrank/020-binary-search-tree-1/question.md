
# SQL Question and Solution

### Question:
You are given a table, `BST`, containing two columns: `N` and `P`, where `N` represents the value of a node in a Binary Tree, and `P` is the parent of `N`.

Write a query to find the node type of the Binary Tree ordered by the value of the node. Output one of the following for each node:

- **Root**: If the node is the root node (i.e., `P` is `NULL`).
- **Leaf**: If the node is a leaf node (i.e., it does not appear as a parent for any other node).
- **Inner**: If the node is neither a root nor a leaf node.

The `BST` table is described as follows:

| Column | Type    |
|--------|---------|
| N      | Integer |
| P      | Integer |

#### Sample Input:

| N | P   |
|---|-----|
| 1 | 2   |
| 3 | 2   |
| 6 | 8   |
| 9 | 8   |
| 2 | 5   |
| 8 | 5   |
| 5 | NULL|

#### Sample Output:
```plaintext
1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf
```

### SQL Query:
```sql
SELECT CASE
    WHEN P IS NULL THEN CONCAT(N, ' Root')
    WHEN N IN (SELECT DISTINCT P FROM BST) THEN CONCAT(N, ' Inner')
    ELSE CONCAT(N, ' Leaf')
    END
FROM BST
ORDER BY N ASC;
```

### Explanation:
This query categorizes each node in the binary search tree (BST) as either a "Root", "Leaf", or "Inner" node based on its relationship to other nodes.

- **WHEN P IS NULL THEN CONCAT(N, ' Root')**: If `P` is `NULL`, the node is a root node.
- **WHEN N IN (SELECT DISTINCT P FROM BST) THEN CONCAT(N, ' Inner')**: If `N` appears in the `P` column of any other node, it is an inner node.
- **ELSE CONCAT(N, ' Leaf')**: If the node is not a root or inner node, it is a leaf node.

The query orders the results by the node value `N` in ascending order.

This solution correctly identifies the type of each node and orders the output as required.
