/*The WHERE clause is an optional clause of the SELECT statement. It appears after the FROM clause as the following statement: */

SELECT
  column_list
FROM
  TABLE
WHERE
  search_condition;

/*
In this example, you add a WHERE clause to the SELECT statement to filter rows returned by the query. When evaluating a SELECT statement with a WHERE clause, SQLite uses the following steps:

First, check the table in the FROM clause.
Second, evaluate the conditions in the WHERE clause to get the rows that met these conditions.
Third, make the final result set based on the rows in the previous step with columns in the SELECT clause.
The search condition in the WHERE has the following form:
 */


 /*left_expression COMPARISON_OPERATOR right_expression*/




/*

For example, you can form a search condition as follows:

WHERE column_1 = 100;

WHERE column_2 IN (1,2,3);

WHERE column_3 LIKE 'An%';

WHERE column_4 BETWEEN 10 AND 20;
Code language: SQL (Structured Query Language) (sql)
Besides the SELECT statement, you can use the WHERE clause in the UPDATE and DELETE statements.
 */

/*SQLite comparison operators are identical to comparison operators in other languages*/


/*
SQLite logical operators
Logical operators allow you to test the truth of some expressions. A logical operator returns 1, 0, or a NULL value.

Notice that SQLite does not provide Boolean data type therefore 1 means TRUE, and 0 means FALSE.
 */


/*
The equality operator (=) is the most commonly used operator. For example, the following query uses the WHERE clause the equality operator to find all the tracks in the album id 1:
 */

 SELECT
   name,
   milliseconds,
   bytes,
   albumid
FROM
   tracks
WHERE
   albumid = 1;

/*
When comparing two values, you need to ensure they are the same data type. You should compare numbers with numbers, string with strings, and so on.

In case you compare values in different data types e.g., a string with a number, SQLite has to perform implicit data type conversions, but in general, you should avoid doing this.
 */


 /*
You use the logical operator to combine expressions. For example, to get tracks of the album 1 that have the length greater than 200,000 milliseconds, you use the following statement:
 */

 SELECT
  name,
  milliseconds,
  bytes,
  albumid
FROM
  tracks
WHERE
  albumid = 1
  AND milliseconds > 250000;

/*
Using WHERE clause with LIKE operator example
Sometimes, you may not remember exactly the data you want to search. In this case, you perform an inexact search using the LIKE operator.

For example, to find which tracks were composed by Smith, you use the LIKE operator as follows:
 */

/*
Using SQLite WHERE clause with the IN operator example
The IN operator allows you to check whether a value is in a list of a comma-separated list of values. For example, to find tracks that have media type id is 2 or 3, you use the IN operator as shown in the following statement:
 */

 SELECT
	name,
	albumid,
	mediatypeid
FROM
	tracks
WHERE
	mediatypeid IN (2, 3);















