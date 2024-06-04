SELECT 
    account.account_id, 
    account.name, 
    SUM(transaction.amount) AS total_amount
FROM 
    transaction
INNER JOIN 
    account ON transaction.account_id = account.account_id
WHERE 
    EXTRACT(MONTH FROM transaction.transaction_date) = 5
GROUP BY 
    account.account_id, account.name;