-- creates a trigger that decreases the quantity of an item after adding a new order.
DROP TRIGGER IF EXISTS decrease_quantity_items;
CREATE TRIGGER decrease_quantity_items
AFTER INSERT ON orders FOR EACH ROW
      UPDATE items
      SET items.quantity = items.quantity - (NEW.number)
      WHERE name = NEW.item_name;
