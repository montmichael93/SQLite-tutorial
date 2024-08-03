/*
The `DISTINCT` clause is an optional clause of the  `[SELECT](https://www.sqlitetutorial.net/sqlite-select/)` statement. The `DISTINCT` clause allows you to remove the duplicate rows in the result set.

- First, the `DISTINCT` clause must appear immediately after the `SELECT` keyword.
- Second, you place a column or a list of columns after the `DISTINCT` keyword. If you use one column, SQLite uses values in that column to evaluate the duplicate. In case you use multiple columns, SQLite uses the combination of values in these columns to evaluate the duplicate.

SQLite considers `NULL` values as duplicates. If you use the`DISTINCT` clause with a column that has `NULL` values, SQLite will keep one row of a `NULL` value.
 */


/*
In database theory, if a column contains `NULL` values, it means that we do not have the information about that column of particular records or the information is not applicable.
 */

 SELECT DISTINCT city
FROM customers
ORDER BY city;

/*It returns 53 rows because the `DISTINCT` clause has removed 6 duplicate rows.*/

/*To remove duplicate the city and country, you apply the DISTINCT clause to both city and country columns as shown in the following query:*/


SELECT DISTINCT
  city,
  country
FROM
  customers
ORDER BY
  country;



/*SQLite SELECT DISTINCT with NULL example*/


SELECT DISTINCT
  company
FROM
  customers;


/*
without the `DISTINCT` clause it will return 59 rows with many `NULL` values.

 the `DISTINCT` clause to the statement, it will keep only one row with a `NULL` value.

Note that if you select a list of columns from a table and want to get a unique combination of some columns, you can use the `[GROUP BY](https://www.sqlitetutorial.net/sqlite-group-by/)` clause.
 */


















