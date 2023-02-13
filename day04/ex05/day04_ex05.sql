CREATE VIEW v_price_with_discount AS
    SELECT person.name, pizza_name, price, (price - price * 0.1) AS discount_price
    FROM person_order
        JOIN person ON person_id = person.id
        JOIN menu ON menu_id = menu.id
ORDER BY person.name, pizza_name;

-- - The check script is below.

    -- SELECT *
    -- FROM v_price_with_discount

-- -The result below (raw ordering should be the same like on a screen below)

    -- "Andrey"  "cheese pizza"    "800"  "720"
    -- "Andrey"  "mashroom pizza"  "1100" "990"
    -- "Anna"    "cheese pizza"    "900"  "810"
    -- "Anna"    "pepperoni pizza" "1200" "1080"
    -- "Denis"   "cheese pizza"    "700"  "630"
    -- "Denis"   "pepperoni pizza" "800"  "720"
    -- "Denis"   "pepperoni pizza" "800"  "720"
    -- "Denis"   "sausage pizza"   "1000" "900"
    -- "Denis"   "sicilian pizza"  "900"  "810"
    -- "Denis"   "supreme pizza"   "850"  "765"
    -- "Dmitriy" "pepperoni pizza" "800"  "720"
    -- "Dmitriy" "sausage pizza"   "850"  "765"
    -- "Elvira"  "pepperoni pizza" "800"  "720"
    -- "Elvira"  "sausage pizza"   "1000" "900"
    -- "Irina"   "mashroom pizza"  "950"  "855"
    -- "Irina"   "sicilian pizza"  "900"  "810"
    -- "Kate"    "cheese pizza"    "700"  "630"
    -- "Nataly"  "cheese pizza"    "800"  "720"
    -- "Nataly"  "pepperoni pizza" "1000" "900"
    -- "Peter"   "mashroom pizza"  "1100" "990"
    -- "Peter"   "sausage pizza"   "1200" "1080"
    -- "Peter"   "supreme pizza"   "1200" "1080"
    