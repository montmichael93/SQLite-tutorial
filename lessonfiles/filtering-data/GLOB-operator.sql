/*
The GLOB operator is similar to the LIKE operator. The GLOB operator determines whether a string matches a specific pattern.

Unlike the LIKE operator, the GLOB operator is case sensitive and uses the UNIX wildcards. In addition, the GLOB patterns do not have escape characters.

The following shows the wildcards used with the GLOB  operator:

The asterisk (*) wildcard matches any number of characters.
The question mark (?) wildcard matches exactly one character.
 */

 /*
SQLite GLOB examples
The following statement finds tracks whose names start with the string Man. The pattern Man* matches any string that starts with Man.
 */


 SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name GLOB 'Man*';

/*
The following statement gets the tracks whose names end with Man. The pattern *Man matches any string that ends with Man.
 */

 SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name GLOB '*Man';

/*The following query finds the tracks whose names start with any single character (?), followed by the string ere and then any number of character (*).*/

SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name GLOB '?ere*';

/*
To find the tracks whose names contain numbers, you can use the list wildcard [0-9] as follows:
 */

 SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name GLOB '*[1-9]*';

/*
Or to find the tracks whose name does not contain any number, you place the character ^ at the beginning of the list:
 */

 SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name GLOB '*[^1-9]*';

/*
The following statement finds the tracks whose names end with a number.
 */


SELECT
	trackid,
	name
FROM
	tracks
WHERE
	name GLOB '*[1-9]';
