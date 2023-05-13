-- Используя операторы языка SQL, создайте таблицу “sales”. 

DROP DATABASE IF EXISTS hw_2;
CREATE DATABASE hw_2;
USE hw_2;

DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
	id SERIAL PRIMARY KEY,
	order_date DATE NOT NULL,
	count_product INT NOT NULL
);


-- Заполните ее данными (см. презентацию слайд 28).
INSERT INTO sales (order_date, count_product)
VALUES
	('2022-01-01', 156),
    ('2022-01-02', 180),
    ('2022-01-03', 21),
    ('2022-01-04', 124),
    ('2022-01-05', 341);

/* Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва :
меньше 100 - Маленький заказ
от 100 до 300 - Средний заказ
больше 300 - Большой заказ */

ALTER TABLE sales
ADD COLUMN type_of_order VARCHAR(45);

SELECT 
	id AS 'id заказа', 
    IF (count_product < 100, 'Маленький заказ', 
		IF (count_product BETWEEN 100 AND 300, 'Средний заказ',
			IF (count_product > 300, 'Большой заказ', 'Не указано')
            )
		) AS 'Тип заказа'
	FROM sales;

-- Используя операторы языка SQL, создайте таблицу “orders”, заполните ее значениями (см. презентацию слайд 29). 

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
	id SERIAL PRIMARY KEY,
    employee_id VARCHAR(45),
    amount DECIMAL NOT NULL,
    order_status VARCHAR(45) NOT NULL
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES 
	('e03', '15.00', 'OPEN'),
    ('e01', '25.50', 'OPEN'),
    ('e05', '100.70', 'CLOSED'),
    ('e02', '22.18', 'OPEN'),
    ('e04', '9.50', 'CANCELLED');
    

/* Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
OPEN – «Order is in open state» ;
CLOSED - «Order is closed»;
CANCELLED - «Order is cancelled» */

ALTER TABLE orders
ADD COLUMN full_order_status VARCHAR(45);

SELECT 
	id AS 'Id of order',
    employee_id AS 'Id of employee',
    amount AS 'Amount',
    IF (order_status = 'OPEN', 'Order is in open state', 
		IF (order_status = 'CLOSED', 'Order is closed',
			IF (order_status = 'CANCELLED', 'Order is cancelled', 'Not indicated')
            )
		) AS 'Full order status'
	FROM orders;
