/*
NULL is special. It indicates that a piece of information is unknown or not applicable.

For example, some songs may not have the songwriter information because we don’t know who wrote them.

To store these unknown songwriters along with the songs in a database table, we must use NULL.

NULL is not equal to anything even the number zero, an empty string, and so on.
 */

 /*The following statement attempts to find tracks whose composers are NULL:*/

 SELECT
    Name,
    Composer
FROM
    tracks
WHERE
    Composer = NULL;

/*
It returns an empty row without issuing any additional message.

This is because the last expression always evaluates to false
 */

SELECT
    Name,
    Composer
FROM
    tracks
WHERE
    Composer IS NULL
ORDER BY
    Name;


/*
## SQLite `IS NOT NULL` operator

- The `NOT` operator negates the `IS NULL` operator as follows:
- The `IS NOT NULL` operator returns 1 if the `expression` or `column` is not NULL, and 0 if the expression or column is NULL.

The following example finds `tracks` whose composers are not NULL:
 */



SELECT
    Name, 
    Composer
FROM
    tracks
WHERE
    Composer IS NOT NULL
ORDER BY 
    Name;       




 /*
check if values in a column or an expression is NULL or not by using the IS NULL and IS NOT NULL operators.
 */


















