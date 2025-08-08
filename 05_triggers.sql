DELIMITER $$

CREATE TRIGGER trg_prevent_negative_balance
BEFORE UPDATE ON Accounts
FOR EACH ROW
BEGIN
  IF NEW.balance < 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Balance cannot be negative!';
  END IF;
END$$

DELIMITER ;
