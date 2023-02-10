CREATE VIEW v_price_with_discount AS
    SELECT person.name, pizza_name, price, (price - price * 0.1) AS discount_price
    FROM person_order
        JOIN person ON person_id = person.id
        JOIN menu ON menu_id = menu.id
ORDER BY person.name, pizza_name;