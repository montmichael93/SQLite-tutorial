/*
The following example uses the OR operator to retrieve the invoices with the billing city is New York or Chicago:
 */

 SELECT
  BillingAddress,
  BillingCity,
  Total
FROM
  invoices
WHERE
  BillingCity = 'New York'
  OR BillingCity = 'Chicago'
ORDER BY
  BillingCity;

/*
The following statement uses the OR operator with the AND operator to retrieve the invoices with the billing city is either New York or Chicago and the Total is greater than 10:
 */


SELECT
  BillingAddress,
  BillingCity,
  Total
FROM
  invoices
WHERE
  (BillingCity = 'New York' OR BillingCity = 'Chicago') AND
  Total > 10
ORDER BY
  Total;


/*
Use the OR operator to combine multiple conditions in a WHERE clause to filter rows based on at least one condition is true.
 */













