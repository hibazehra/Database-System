Create Database HospitalManagementSystem;
Use HospitalManagementSystem;
Create table Patients(
Pat_ID int primary key,Pat_name varchar(30),Pat_DOB int,Pat_Gender varchar(10),Pat_contactInfo int
);
Create table Doctors(
Dr_ID int primary key,Dr_name varchar(30),Dr_Specialty varchar(40),Dr_Qualification varchar(60),Dr_Experience varchar(50)
);
Create table Appoinments(
App_ID int primary key,Pat_ID int,Dr_ID int,Date int,Time int,Status varchar(20)
);
Create table Departments(
Dept_ID int primary key,Name varchar(30),Description varchar(50)
);
Create table Wards(
War_ID int primary key,Dep_ID int,Name varchar(30),Capacity int
);
Create table Beds(
Bed_ID int primary key,War_ID int,Bed_Number int,Status varchar(20)
);
Create table Medicines(
Med_ID int primary key,Name varchar(30),Description varchar(50),Price int
);
Create table Prescriptions(
Prescript_ID int primary key,App_ID int,Med_ID int,Dosage varchar(20),Duration int
);
Create table LabTests(
LabTest_ID int primary key,Name varchar(30),Description varchar(50),Price int
);
Create table LabResults(
LabResult_ID int primary key,App_ID int,LabTest_ID int,Result varchar(40),Date int
);