create table test.inventory (
product_id int primary key,
warehouse_id int,
date datetime,
quantity int
);


select * from test.inventory;

-- To find the total quantity of each product in each warehouse for the latest available date.
SELECT
  product_id,
  warehouse_id,
  MAX(date) AS latest_date,
  SUM(quantity) AS total_quantity
FROM
  inventory
GROUP BY
  product_id, warehouse_id;

