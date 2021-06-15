SELECT Users.name AS NAME, SUM(Transactions.amount) AS BALANCE
FROM Users JOIN Transactions
ON Users.account = Transactions.account
GROUP BY NAME
HAVING balance > 10000