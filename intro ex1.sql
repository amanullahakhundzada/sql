

-- find all products
select * from products;

-- find all products that cost $1400
select * from products where Price = 1400;

-- find all products that cost $11.99 or $13.99
select * from products where Price = 11.99 or Price = 13.99 order by Price; 

-- find all products that do NOT cost 11.99 - using NOT
select * from products where  not price = 11.99;
-- find all products and sort them by price from greatest to least
select * FROM products order by price desc;

-- find all employees who don't have a middle initial
select * from employees where MiddleInitial is null; 
select * from employees ;

-- find distinct product prices
select distinct price from products order by Price;

-- find all employees whose first name starts with the letter ājā
select * from employees where FirstName like "j%";
-- find all Macbooks
select * from products where Name like "%Macbook%";
-- find all products that are on sale
select * from products where OnSale >0 and OnSale is not null  ;
select * from products where OnSale;
-- find the average price of all products
select round(avg(price),2) from products;
-- find all Geek Squad employees who don't have a middle initial
select * from employees where title like "%Geek Squad%" and MiddleInitial is null;
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest.
select * from products where StockLevel between 500 and 1200 order by Price;