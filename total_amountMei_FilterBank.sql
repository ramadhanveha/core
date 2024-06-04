SELECT 
    bank.bank_code, 
    bank.name, 
    SUM(transaction.amount) AS total_amount
FROM 
    transaction
INNER JOIN 
    bank ON transaction.bank_id = bank.bank_code
WHERE 
    EXTRACT(MONTH FROM transaction.transaction_date) = 5
GROUP BY 
    bank.bank_code, bank.name;