/*
Introduction to SQLite `LIKE` operator

Sometimes, you don’t know exactly the complete keyword that you want to query. For example, you may know that your most favorite song contains the word,`elevator` but you don’t know exactly the name.
 */

 SELECT
	column_list
FROM
	table_name
WHERE
	column_1 LIKE pattern;

/*
Note that you can also use the `LIKE` operator in the `WHERE` clause of other statements such as the `DELETE` and `UPDATE`.
 */

/*
SQLite provides two wildcards for constructing patterns. They are percent sign % and underscore _ :

The percent sign % wildcard matches any sequence of zero or more characters.
The underscore _ wildcard matches any single character.
 */


/*

The percent sign % wildcard examples
The s% pattern that uses the percent sign wildcard ( %) matches any string that starts with s e.g.,son and so.

The %er pattern matches any string that ends with er like peter, clever, etc.

And the %per% pattern matches any string that contains per such as percent and peeper.

The underscore _ wildcard examples
The h_nt pattern matches hunt, hint, etc. The __pple pattern matches topple, supple, tipple, etc.
Note that SQLite LIKE operator is case-insensitive. It means "A" LIKE "a" is true.

However, for Unicode characters that are not in the ASCII ranges, the LIKE operator is case sensitive e.g., "Ä" LIKE "ä" is false.
In case you want to make LIKE operator works case-sensitively, you need to use the following PRAGMA:
 */

PRAGMA case_sensitive_like = true;

/*
To find the tracks whose names start with the Wild literal string, you use the percent sign % wildcard at the end of the pattern.
 */


 SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name LIKE 'Wild%';

/*
To find the tracks whose names end with `Wild` word, you use `%` wildcard at the beginning of the pattern.
 */


 SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name LIKE '%Wild'

/*
To find the tracks whose names contain the Wild literal string, you use % wildcard at the beginning and end of the pattern:
 */

 SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name LIKE '%Wild%';

/*
The following statement finds the tracks whose names contain: zero or more characters (%), followed by Br, followed by a character ( _), followed by wn, and followed by zero or more characters ( %).
 */

 SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name LIKE '%Br_wn%';


/*
SQLite LIKE with ESCAPE clause
If the pattern that you want to match contains % or _, you must use an escape character in an optional ESCAPE clause as follows:
 */

 /*column_1 LIKE pattern ESCAPE expression*/

SELECT c 
FROM t 
WHERE c LIKE '%10\%%' ESCAPE '\';






