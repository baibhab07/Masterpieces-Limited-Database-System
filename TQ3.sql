SQL> SELECT * FROM Customer
  2  WHERE customer_id = (SELECT PaintingLeased.customer_id
  3  FROM PaintingLeased GROUP BY PaintingLeased.customer_id
  4  HAVING COUNT(*)>4);

CUSTOMER_I STAFF_ID   CUSTOMER_CATEGORY    TRANSACTIO CUSTOMER_NAME        CUSTOMER_ADDRESS                                   CUSTOMER_MAIL_ADDRESS                              CUSTOMER_PHONE_NUMBE                                                                                                                                                                                                                                                                                                               
---------- ---------- -------------------- ---------- -------------------- -------------------------------------------------- -------------------------------------------------- --------------------                                                                                                                                                                                                                                                                                                               
C001       S02        Regular              T007       Baibhab Bhattarai    San Fransico,USA                                   baibhab@gmail.com                                  (555)557-1230                                                                                                                                                                                                                                                                                                                      

SQL> spool off
