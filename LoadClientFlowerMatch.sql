
USE [veronicas]
GO


BULK 
INSERT ClientFlowerMatch
        FROM 'c:\coursefiles\video05\ClientFlowerMatchData.csv'
            WITH
    (
                FIELDTERMINATOR = ',',
                ROWTERMINATOR = '\n'
    )
GO