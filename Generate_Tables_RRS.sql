CREATE TABLE RRS_OracleOrg_Xref(
	Organization_ID int PRIMARY KEY,
	RRS_Unit nvarchar(6),
	RRS_Unit_DESC nvarchar(50),
	Org_Nm nvarchar(50),
	Org_Num nvarchar(50)
);

CREATE TABLE RRS_Role_Xref (
	ACS1_Role nvarchar(50),
	RRS_Role nvarchar(3),
	Role_Nm nvarchar(50),
	RRS_Include nvarchar(1)
);

CREATE TABLE RRS_School_Xref (
	Ban_SchCode nvarchar(2) PRIMARY KEY,
	RRS_Sch_Nm nvarchar(50),
	RRS_Unit nvarchar(50),
	RRS_Include nvarchar(1)
);

CREATE TABLE RRS_GradDept_Xref (
	Ban_GradDept nvarchar(4) PRIMARY KEY,
	Ban_GradDept_Nm nvarchar(50),
	RRS_Unit nvarchar(50)
);

CREATE TABLE RRS_EMS_Role_WPT_Xref (
	EMS_Dept nvarchar(50),
	WPT_ID nvarchar(50)
);

CREATE TABLE RRS_Pre_Staging (
	PersonnelNumber nvarchar(20),
    FirstName nvarchar(50),
    LastName nvarchar(50),
    MiddleInitial nvarchar(10),
    EMailAddress nvarchar(75),
    Phone nvarchar(50),
	Fax nvarchar(50),
	Address1 nvarchar(50),
	Address2 nvarchar(50),
	EMS_Role nvarchar(50),
	City nvarchar(50),
	State nvarchar(50),
	ZipCode nvarchar(10),
	Country nvarchar(50),  
	BillingReference nvarchar(50),
	NetworkID nvarchar(50)
);

CREATE TABLE RRS_Staging (
	PersonnelNumber nvarchar(20) PRIMARY KEY,
    FirstName nvarchar(50),
    LastName nvarchar(50),
    MiddleInitial nvarchar(10),
    EMailAddress nvarchar(75),
    Phone nvarchar(50),
	Fax nvarchar(50),
	Address1 nvarchar(50),
	Address2 nvarchar(50),
	City nvarchar(50),
	State nvarchar(50),
	ZipCode nvarchar(10),
	Country nvarchar(50),  
	BillingReference nvarchar(50),
	NetworkID nvarchar(50)
);