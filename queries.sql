-- gastos por usuario 1
SELECT *
FROM "expense"
WHERE user_id = 1
order by price desc

-- listado gastos y usuarios
SELECT price, user_id
from expense
ORDER BY user_id

-- suma de gastos por nombre de usuario
SELECT sum(expense.price), expense.user_id, user.name
from expense, user
where expense.user_id == user.id
group by expense.user_id

--listado gastos hechos en el mes de diciembre
SELECT price, created_date
from expense
where created_date between '2019-12-01' and '2019-12-30';


-- suma de gastos por mes diciembre
SELECT sum(price), created_date
from expense
where created_date between '2019-12-01' and '2019-12-30';


-- suma de gastos por mes por usuario
SELECT sum(price), created_date
from expense
group by strftime("%m-%Y", created_date)

-- mostrar los nombres de los usuarios ordenados alfabeticamente
SELECT user.name
from user
order by user.name desc

