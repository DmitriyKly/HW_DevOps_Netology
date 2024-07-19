Задание 1
Напишите запрос к учебной базе данных, который вернёт процентное отношение общего размера всех индексов к общему размеру всех таблиц.

![Task1](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ/screen/task3_2.png)

Задание 2
Выполните explain analyze следующего запроса:

select distinct concat(c.last_name, ' ', c.first_name), sum(p.amount) over (partition by c.customer_id, f.title)
from payment p, rental r, customer c, inventory i, film f
where date(p.payment_date) = '2005-07-30' and p.payment_date = r.rental_date and r.customer_id = c.customer_id and i.inventory_id = r.inventory_id

![Task2](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ/screen/task3_2.png)

перечислите узкие места;
оптимизируйте запрос: внесите корректировки по использованию операторов, при необходимости добавьте индексы.

Добавил индексы

![Task2_2](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ/screen/task3_2.png)

Задание 3*
Самостоятельно изучите, какие типы индексов используются в PostgreSQL. Перечислите те индексы, которые используются в PostgreSQL, а в MySQL — нет.

Приведите ответ в свободной форме.

1. GIN (Generalized Inverted Index): Этот тип индекса позволяет эффективно искать по внешним структурам данных, таким как массивы или JSON. В MySQL поддерживается только для полнотекстового поиска.
2. GiST (Generalized Search Tree): GiST позволяет определять пользовательские методы индексации для различных типов данных. В MySQL поддержки GiST нет.
3. BRIN (Block Range INdexes): BRIN индексы создают краткий свод данных о диапазонах значений и могут быть полезны для очень больших таблиц. MySQL не имеет поддержки BRIN