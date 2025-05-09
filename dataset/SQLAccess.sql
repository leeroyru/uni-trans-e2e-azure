CREATE LOGIN leeroy WITH PASSWORD = '123456789';

create user leeroy for login leeroy

USE AdventureWorksLT2017
GRANT SELECT ON SCHEMA:: SalesLT TO leeroy
