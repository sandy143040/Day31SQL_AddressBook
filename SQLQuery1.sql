--Ctrl+s
--SQL stands for structure query language.
--It is is used to communicate with data base.
--It is used to CURD operations (create,update,retrive,delete)
--SQL Commands are instructions used to perform a specific task. They are
--DLL-Data Defination language
      --CREATE
	  --ALTER
	  --DROP
	  --TRUNCATE
--DML-Data Manipulation Language
     --INSERT
	 --UPDATE
	 --DELETE
--DCL-Data Control Language
      --Revoke
	  --Grant
--DQL-Data Query Language
     --SELECT
--TCL-Transation Control Language
      --Commit
	  --RollBack
	  --SavePoint

--UC1-Create DB
CREATE DATABASE AddressBook_Service
USE AddressBook_Service;

--UC2: create a AddressBook Table with first and last names, address, city,state, zip, phone number and email as its attributes
CREATE TABLE AddressBookDB(PersonID INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR (30) NOT NULL,
LastName VARCHAR(30),
Address VARCHAR(100) NOT NULL,
City VARCHAR (20) NOT NULL,
State VARCHAR (20)NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
EmailID VARCHAR(50) NOT NULL)


