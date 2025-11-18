sql
-- ============================================
-- Question 1
-- Show the total payment amount for each payment date
-- Display paymentDate and total amount
-- Sort by paymentDate DESC and show top 5 latest dates
-- ============================================
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- ============================================
-- Question 2
-- Find the average credit limit of each customer
-- Display customerName, country, and average credit limit
-- Group by customerName and country
-- ============================================
SELECT customerName, country, AVG(creditLimit) AS avgCreditLimit
FROM customers
GROUP BY customerName, country;

-- ============================================
-- Question 3
-- Find the total price of products ordered
-- Display productCode, quantityOrdered, and total price
-- Group by productCode and quantityOrdered
-- ============================================
SELECT productCode, quantityOrdered, (quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;

-- ============================================
-- Question 4
-- Find the highest payment amount for each check number
-- Display checkNumber and highest amount
-- Group by checkNumber
-- ============================================
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
