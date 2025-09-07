# Task 4 - Database Performance Optimization

## Objective
The goal of this task is to optimize queries using indexing and analyze how the performance improves before and after indexing.

---

## Steps Performed
1. **Executed query without index**  
   ```sql
   SELECT * FROM Sales
   WHERE product = 'Laptop' AND amount > 50000;
   ```
   - Observed the query result.  
   - Used `EXPLAIN` to check execution plan → query performed a full table scan.  

2. **Created index on `(product, amount)`**  
   ```sql
   CREATE INDEX idx_product_amount
   ON Sales(product, amount);
   ```

3. **Executed query with index**  
   ```sql
   SELECT * FROM Sales
   WHERE product = 'Laptop' AND amount > 50000;
   ```
   - Used `EXPLAIN` again → query now used the index instead of a full scan.  

4. **Comparison**  
   - Before indexing → query was slower, using full table scan.  
   - After indexing → query was optimized, using the created index.  

---

## Deliverables
- `Task4_Optimization.sql` – SQL script containing all queries and index creation.  
- **Screenshots**:  
  1. Query without index  
  2. Execution plan without index  
  3. Query with index  
  4. Execution plan with index  
