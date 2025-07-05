# SQL: IN vs LIKE

This document explains the differences between `IN` and `LIKE` operators in SQL, including when to use each for filtering data in `WHERE` clauses.

## `IN` Operator
- **Purpose**: Matches a column value against a specific list of exact values.
- **Syntax**: `column IN (value1, value2, ...)`
- **Example**:
  ```sql
  SELECT * FROM employees WHERE department IN ('Sales', 'Marketing', 'HR');
  ```
  - Matches rows where `department` is exactly "Sales", "Marketing", or "HR".
- **Best for**: Discrete, exact matches (e.g., specific IDs, names, or categories).
- **Performance**: Generally faster for exact matches, especially with indexed columns.
- **Use with Subqueries**:
  ```sql
  SELECT * FROM orders WHERE customer_id IN (SELECT customer_id FROM customers WHERE country = 'USA');
  ```

## `LIKE` Operator
- **Purpose**: Matches a column value against a pattern or partial string, often for text searches.
- **Syntax**: `column LIKE 'pattern'`
  - Uses wildcards: `%` (any string of characters) or `_` (single character).
- **Example**:
  ```sql
  SELECT * FROM products WHERE product_name LIKE 'App%';
  ```
  - Matches rows where `product_name` starts with "App" (e.g., "Apple", "Application").
- **Best for**: Fuzzy or partial string matching (e.g., searching names or descriptions).
- **Performance**: Slower than `IN` for large datasets, as it often requires scanning the column (especially with leading wildcards like `%text%`).
- **Common Patterns**:
  - `'text%'`: Starts with "text".
  - `'%text'`: Ends with "text".
  - `'%text%'`: Contains "text".

## Key Differences
- **`IN`**: Checks for exact matches in a list.
- **`LIKE`**: Searches for patterns in strings using wildcards.
- Use `IN` for multiple exact values; use `LIKE` for partial matches.
- `IN` is typically faster for exact comparisons; `LIKE` is more flexible for text searches but slower.

## Example Comparison
- **Using `IN`**:
  ```sql
  SELECT * FROM users WHERE username IN ('john', 'jane', 'joe');
  ```
  - Matches only exact usernames: "john", "jane", or "joe".
- **Using `LIKE`**:
  ```sql
  SELECT * FROM users WHERE username LIKE 'j%';
  ```
  - Matches any username starting with "j" (e.g., "john", "jane", "joe", "jessica").

## Summary
- Choose `IN` for exact matches against a list of values.
- Choose `LIKE` for pattern-based filtering with wildcards.