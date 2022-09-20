/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

select products.Name as Product_Name,categories.Name As Categories_Name from products 
inner join categories on products.CategoryID = categories.CategoryID;

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

select products.Name,products.Price, reviews.Rating  from products
inner join reviews on reviews.ProductID= products.ProductID
where Rating=5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

select concat(employees.FirstName," ",employees.LastName) as Employees_Name ,sum(Quantity*PricePerUnit) as Gross_Revenue ,sum(quantity)as Total_Quantity_sold from employees 
inner JOin sales on sales.EmployeeID=employees.EmployeeID
group by sales.ProductID
order by total_quantity_sold desc ;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select departments.Name as Department_Name, categories.Name as Category_Name from departments inner join categories on departments.DepartmentID=categories.DepartmentID; 

/* joins: find the product name, total # sold, and total price sold,

 for Eagles: Hotel California --You may need to use SUM() */
 select products.Name as Product_Name, sum(sales.Quantity) as Sold, sum(sales.quantity * sales.PricePerUnit) as Total_Price_sold from products
 inner join sales on sales.ProductID=products.ProductID
 group by sales.ProductID;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select products.Name as product,reviews.Reviewer as Reviewer ,reviews.Comment as Comment from products
inner join reviews on reviews.ProductID=products.ProductID
where products.Name like "%Visio Tv%";
-- ------------------------------------------ Extra - May be difficult

/* Your goal is to write a query that serves as an employee sales report.

This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
select employees.EmployeeID as EmployeeId, employees.FirstName ,employees.LastName,products.Name as Product, sum(sales.Quantity) as Total_Ssalesales
from employees
inner join sales on sales.EmployeeID=employees.employeeID
inner join products on products.productID=sales.ProductID
group by products.ProductID;
