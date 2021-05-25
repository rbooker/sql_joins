-- write your queries here
-- Q1
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;
-- Q2
SELECT first_name, last_name, COUNT(owner_id) AS count FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id ORDER BY first_name;
-- Q3
SELECT first_name, last_name, AVG(price)::numeric(10,0) AS average_price, COUNT(owner_id) AS count FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000 ORDER BY first_name desc;