Select Main.PersonnelNumber,
       Left(Main.RRS_Pre_Staging, Len(Main.RRS_Pre_Staging)-1) As "EMS_ROLE"
From
    (
        Select distinct ST2.PersonnelNumber, 
            (
                Select ST1.Address2 + ',' AS [text()]
                From RRS_Pre_Staging ST1
                Where ST1.PersonnelNumber = ST2.PersonnelNumber
                ORDER BY ST1.PersonnelNumber
                For XML PATH ('')
            ) [RRS_Pre_Staging]
        From RRS_Pre_Staging ST2
    ) [Main]