SELECT * FROM menu_items;

SELECT * FROM order_details;

-- What were the least and most ordered items? What categories were they in

SELECT item_name, category, COUNT(item_id) AS OrderCount
FROM order_details
LEFT JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
WHERE item_name IS NOT NULL
GROUP BY item_id
ORDER BY COUNT(item_id);

-- Which cuisines should we focus on developing more menu items for based on the data? -- Korean Beef Bowl has the highest sale income
SELECT item_name, item_id, count(item_id) AS OrderCount, (count(item_id) * price) AS TotalIncome
from order_details
LEFT JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
WHERE item_id IS NOT NULL
GROUP BY item_id
ORDER BY TotalIncome DESC;

-- Hamburger is the most popular chicken Tacos is the least popular menu item
SELECT item_name, item_id, count(item_id) AS OrderCount, (count(item_id) * price) AS TotalIncome
from order_details
LEFT JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
WHERE item_id IS NOT NULL
GROUP BY item_id
ORDER BY OrderCount DESC;


