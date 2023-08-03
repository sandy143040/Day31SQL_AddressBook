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


--UC3: Insert new Contacts to AddressBook
SELECT * FROM AddressBookDB;

INSERT INTO AddressBookDB(FirstName, LastName, Address, City,State, Zip, PhoneNumber, EmailID ) VALUES(
'Sandeep','Singh','Kashi','Varanasi','Uttarpradesh',834651,997642311,'sandeep@gmail.com'),
('Emros','Lohra','Kusumvihar','Ranchi','Jharkhand',834691,997242312,'emros@gmail.com'),
('Ravi','Yadav','Madhubani','Namkom','Jharkhand',834690,997242313,'ravi@gmail.com'),
('Rakesh','Mahto','Bariatu','Bootymore','Jharkhand',834690,997242314,'rakesh@gmail.com'),
('Pawan','Kumar','Khelgaon','Tatilswe','Jharkhand',834699,997242315,'pawan45@gmail.com');

--UC4 Ability to edit existing contact person using their name
UPDATE AddressBookDB SET City='Delhi' WHERE FirstName='Ravi';

--UC5 Ability to delete a person using a persons name
DELETE AddressBookDB WHERE FirstName='Pawan';
SELECT * FROM AddressBookDB;

--UC6 Ability to retrieve Person Belonging to a city or state from the AddressBook
		SELECT * FROM AddressBookDB WHERE City='Ranchi';
		SELECT * FROM AddressBookDB WHERE State='Jharkhand';

--UC7-Ability to understand the size of addressbook by city and state
SELECT COUNT(*) FROM AddressBookDB WHERE City='Ranchi';
SELECT COUNT(*) FROM AddressBookDB WHERE City='Jharkhand';

--UC8-Ability to retrieve entries sorted alphabatically by Person's name for a given 
SELECT * FROM AddressBookDB WHERE City='Ranchi' ORDER BY FirstName ASC;
SELECT * FROM AddressBookDB ORDER BY City DESC
SELECT * FROM AddressBookDB ORDER BY FirstName;

--UC9-Ability to identify each addressbook with name and type
        ALTER TABLE AddressBookDB ADD AddressBookType VARCHAR(50);
		ALTER TABLE AddressBookDB ADD AddressBookName VARCHAR(50);
		UPDATE AddressBookDB SET AddressBookType='Friends' ,AddressBookName='AJ' 
		WHERE PersonID='2'
		UPDATE AddressBookDB SET AddressBookType='Family' ,AddressBookName='CD' 
		WHERE PersonID='3'
		UPDATE AddressBookDB SET AddressBookType='Friends' ,AddressBookName='YD' 
		WHERE PersonID='4'
		UPDATE AddressBookDB SET AddressBookType='Profession' ,AddressBookName='UV' 
		WHERE PersonID='5'
		UPDATE AddressBookDB SET AddressBookType='Relatives' ,AddressBookName='MD' 
		WHERE PersonID='1'
		SELECT * FROM AddressBookDB;

		--UC10-Ability to get number of contact person i.e count type
        SELECT AddressBookType,COUNT(AddressBookType) AS Sandeep FROM AddressBookDB  
        GROUP BY AddressBookType;
		--here Sandeep is variable which will store AddressBook count

--UC11 Ability to add person to both Friend and Family
  INSERT INTO AddressBookDB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,EmailID,AddressBookType,AddressBookName)
  VALUES('Khagen','Munda','Katatoli','Bundu','Jharkhand',879420,9489614080,'khagen@gmail.com','Friends','TS');
  SELECT * FROM AddressBookDB;

		