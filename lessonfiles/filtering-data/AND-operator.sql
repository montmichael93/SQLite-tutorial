/*
the `AND` operator allows you to combine two conditions in a `[WHERE](https://www.sqlitetutorial.net/sqlite-where/)` clause to filter rows if all conditions are `true`.
 */

 /*example*/

 SELECT
  BillingAddress,
  BillingCity,
  Total
FROM
  invoices
WHERE
  BillingCity = 'New York'
  AND Total > 5
ORDER BY
  Total;


