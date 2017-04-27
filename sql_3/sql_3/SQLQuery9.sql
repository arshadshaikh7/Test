SELECT Customer.FirstName, Order.Id
FROM Customer
LEFT JOIN Order
ON Customer.CustomerID=Orders.Id
ORDER BY Customer.FirstName;

        