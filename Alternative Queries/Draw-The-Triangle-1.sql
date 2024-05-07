-- Draw The Triangle 1
-- Author: Shefali Kolge

DECLARE @n INT = 20
WHILE @n > 0
BEGIN
    PRINT REPLICATE ('* ', @n)
    SET @n = @n - 1
END;