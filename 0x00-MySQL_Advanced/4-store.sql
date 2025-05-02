-- 4. Buy buy buy
-- Create a trigger to decrease item quantity after each new order

DELIMITER $$

DROP TRIGGER IF EXISTS update_item_quantity$$

CREATE TRIGGER update_item_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  UPDATE items
  SET quantity = quantity - NEW.number
  WHERE name = NEW.item_name;
END$$

DELIMITER ;

