/*
DELETE from Users where account_no = 211001001;
COMMIT;
INSERT INTO public.Users(account_no,balance,branch) values(211001001,0,'NBFC');*/
INSERT INTO Users(account_no, balance, branch) 
SELECT 211001000, 0, 'NBFC' 
WHERE NOT EXISTS (SELECT 1 FROM Users WHERE account_no = 211001000);

INSERT INTO admin_login(aid, aemail, apass) 
SELECT 1, 'admin@nbfc.com', 'admin'
WHERE NOT EXISTS (SELECT 1 FROM admin_login WHERE aid = 1);

INSERT INTO NBFC(id, wallet_Balance, total_Repayments, total_Disbursed, total_Loans, total_Users)
SELECT 1, 5000000, 0, 0, 0, 0
WHERE NOT EXISTS (SELECT 1 FROM NBFC WHERE id = 1);

