/*
SQLite stores rows in a table in an unspecified order. It means that the rows in the table may or may not be in the order they were inserted.
 */
/*
The ORDER BY clause comes after the FROM clause. It allows you to sort the result set based on one or more columns in ascending or descending order.

In this syntax, you place the column name by which you want to sort after the ORDER BY clause followed by the ASC or DESC keyword.
 */
/*
If you don’t specify the ASC or DESC keyword, SQLite sorts the result set using the ASC option. In other words, it sorts the result set in ascending order by default.
 */
/*
The SELECT statement that does not use ORDER BY clause returns rows that are in an unspecified order.

Suppose you want to sort the result set based on AlbumId column in ascending order, you use the following statement:
 */
SELECT
  name,
  milliseconds,
  albumid
FROM
  tracks
ORDER BY
  albumid ASC;

/*
SQLite uses ASC by default so you can omit it in the above statement
 */
/*
Suppose you want to sort the sorted result (by AlbumId) above by the Milliseconds column in descending order. In this case, you need to add the Milliseconds column to the ORDER BY clause as follows
 */
SELECT
  name,
  milliseconds,
  albumid
FROM
  tracks
ORDER BY
  albumid ASC,
  milliseconds DESC;

/*
SQLite ORDER BY with the column position
Instead of specifying the names of columns, you can use the column’s position in the ORDER BY clause.

For example, the following statement sorts the tracks by both AlbumId (3rd column) and Milliseconds (2nd column) in ascending order.
 */
SELECT
  name,
  milliseconds,
  albumid
FROM
  tracks
ORDER BY
  3,
  2;

/*
Sorting NULLs
In the database world, NULL is special. It denotes that the information is missing or the data is not applicable.

Suppose you want to store the birthday of an artist in a table. At the time of saving the artist’s record, you don’t have the birthday information.

To represent the unknown birthday information in the database, you may use a special date like 01.01.1900 or an '' empty string. However, these values do not clearly show that the birthday is unknown.

NULL was invented to resolve this issue. Instead of using a special value to indicate that the information is missing, NULL is used.

NULL is special because you cannot compare it with another value. Simply put, if the two pieces of information are unknown, you cannot compare them.

NULL is even cannot be compared with itself; NULL is not equal to itself so NULL = NULL always results in false.

When it comes to sorting, SQLite considers NULL to be smaller than any other value.

It means that NULLs will appear at the beginning of the result set if you use ASC or at the end of the result set when you use DESC.

SQLite 3.30.0 added the NULLS FIRST and NULLS LAST options to the ORDER BY clause. The NULLS FIRST option specifies that the NULLs will appear at the beginning of the result set while the NULLS LAST option places NULLs at the end of the result set.
 */
SELECT
  TrackId,
  Name,
  Composer
FROM
  tracks
ORDER BY
  Composer;

/*
NULLs appear at the beginning of the result set because SQLite treats them as the lowest values. When you scroll down the result, you will see other values
 */
SELECT
  TrackId,
  Name,
  Composer
FROM
  tracks
ORDER BY
  Composer NULLS LAST;

/*
The following example uses the NULLS LAST option to place NULLs after other values:
 */
SELECT
  TrackId,
  Name,
  Composer
FROM
  tracks
ORDER BY
  Composer NULLS LAST;

/*
Use the SQLite ORDER BY clause to sort rows by one or more columns in ascending and descending orders.
Use ASC to sort rows in ascending order.
Use DESC to sort rows in descending order.
Use the NULLS FIRST option to place NULLs before other non-null values.
Use the NULLS LAST option to place NULL after other non-null values.
 */