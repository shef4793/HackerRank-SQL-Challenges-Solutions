-- Draw The Triangle 2
-- Author: Shefali Kolge

DECLARE @n INT = 1
WHILE @n < 21
BEGIN
    PRINT REPLICATE ('* ', @n)
    SET @n = @n + 1
END;