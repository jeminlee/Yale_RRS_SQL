SELECT DISTINCT PersonnelNumber,
	(SELECT Address2 + ',' AS 'data()'
	FROM   RRS_Pre_Staging
	WHERE  RRS_Pre_Staging.PersonnelNumber = RPS.PersonnelNumber
	FOR XML PATH('')) AS EMS_ROLE
FROM   RRS_Pre_Staging RPS