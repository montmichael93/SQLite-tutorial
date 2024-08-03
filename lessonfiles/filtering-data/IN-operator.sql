/*
The SQLite `IN` operator determines whether a value matches any value in a list or a [subquery](https://www.sqlitetutorial.net/sqlite-subquery/). The syntax of the `IN` operator is as follows:
 */

/*The following statement uses the `IN` operator to query the tracks whose media type id is 1 or 2.*/

SELECT
	TrackId,
	Name,
	Mediatypeid
FROM
	Tracks
WHERE
	MediaTypeId IN (1, 2)
ORDER BY
	Name ASC;

/*
This query uses the `OR` operator instead of the `IN` operator to return the same result set as the above query:
 */


SELECT
	TrackId,
	Name,
	MediaTypeId
FROM
	Tracks
WHERE
	MediaTypeId = 1 OR MediaTypeId = 2
ORDER BY
	Name ASC;

