INSERT INTO RRS_Pre_Staging (PersonnelNumber, FirstName, LastName, MiddleInitial, EMailAddress, Phone, Fax, Address1, Address2)
SELECT [RRS_oracle_import].[NETID], MAX(RRS_oracle_import.FIRST_NAME) AS FIRST_NAME, MAX(RRS_oracle_import.LAST_NAME) AS LAST_NAME,
		MAX(SUBSTRING(RRS_oracle_import.MIDDLE_NAME,1,10)) AS MIDDLE_NAME, MAX(RRS_oracle_import.EMAIL_ALIAS) AS EMAIL_ALIAS, MAX(RRS_oracle_import.WORK_PHONE) AS WORK_PHONE,
		MAX('') AS FAX, 'Placeholder' AS ADDRESS1,
		ISNULL([RRS_OracleOrg_Xref].[RRS_Unit],[RRS_School_Xref].[RRS_Unit]) + '_' + [RRS_Role] AS EMS_ROLE
FROM RRS_oracle_import 
		LEFT JOIN RRS_School_Xref ON RRS_oracle_import.School = RRS_School_Xref.Ban_SchCode
		LEFT JOIN RRS_Role_Xref ON RRS_oracle_import.Role = RRS_Role_Xref.[ACS1_Role] 
		LEFT JOIN RRS_OracleOrg_Xref ON RRS_oracle_import.[Organization_Id] = RRS_OracleOrg_Xref.[Organization_Id]
WHERE (ISNULL(RRS_School_Xref.RRS_Include,'I') <> 'X' AND ISNULL(RRS_ROLE_Xref.RRS_Include,'I') <> 'X')
GROUP BY NETID, ISNULL([RRS_OracleOrg_Xref].[RRS_Unit],[RRS_School_Xref].[RRS_Unit]) + '_' + [RRS_Role]
ORDER BY RRS_oracle_import.NETID;