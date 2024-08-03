
/*First, specify the table from which you want to get data in the FROM clause. Notice that you can have more than one table in the FROM clause. We’ll discuss it in the subsequent tutorial.
Second, specify a column or a list of comma-separated columns in the SELECT clause.
You use the semicolon (;) to terminate the statement.*/



/*select the ids, composers and unit prices for each entry in the tracks data*/
SELECT
	trackid,
	name,
	composer,
	unitprice
FROM
	tracks;



/*You specify a list column names, from which you want to get data, in the SELECT clruse and the tracks table in the FROM clause. SQLite returns the following result*/

/* To get data from all columns, you specify the columns of the tracks table in the SELECT clause as follows: */

SELECT
	trackid,
	name,
	albumid,
	mediatypeid,
	genreid,
	composer,
	milliseconds,
	bytes,
	unitprice
FROM
	tracks;


/*
For a table with many columns, the query would be so long that time-consuming to type. To avoid this, you can use the asterisk (*), which is the shorthand for all columns of the table as follows:
 */


SELECT * FROM tracks;


/*
The query is shorter and cleaner now.

However…

You should use the asterisk (*) for testing purposes only, not in the application development.

Because…

When you develop an application, you should control what SQLite returns to your application. Suppose, a table has 3 columns, and you use the asterisk (*) to retrieve the data from all three columns.

What if someone removes a column, your application would not be working properly, because it assumes that there are three columns returned, and the logic to process those three columns would be broken.

If someone adds more columns, your application may work but it gets more data than needed, which creates more I/O overhead between the database and application.

So try to avoid using the asterisk (*) as a good habit when you use the SELECT statement.
 */
