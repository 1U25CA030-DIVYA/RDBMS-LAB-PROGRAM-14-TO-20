DELIMITER //
CREATE TRIGGER After_Employee_Insert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
INSERT INTO Employee_Log(EmployeeID, Message)
VALUES (
NEW.EmployeeID,
'New employee inserted successfully'
);
END //
DELIMITER ;
INSERT INTO Employee
VALUES (2, 'Priya', 35000);
SELECT * FROM Employee_Log;
