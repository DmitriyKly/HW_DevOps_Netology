Задание 1. Кеширование
Приведите примеры проблем, которые может решить кеширование.

Добавление информации в кэш для быстрого обращения к ней

Задание 2. Memcached
Установите и запустите memcached.
Приведите скриншот systemctl status memcached, где будет видно, что memcached запущен.
![Task2](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D0%B5%D1%88%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Redis.memcached/screen/Task2_1.png)

![Task2_1](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D0%B5%D1%88%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Redis.memcached/screen/Task2_2.png)

Задание 3. Удаление по TTL в Memcached
Запишите в memcached несколько ключей с любыми именами и значениями, для которых выставлен TTL 5.
Приведите скриншот, на котором видно, что спустя 5 секунд ключи удалились из базы.

![Task3_1](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D0%B5%D1%88%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Redis.memcached/screen/Task3_1.png)

Задание 4. Запись данных в Redis
Запишите в Redis несколько ключей с любыми именами и значениями.
Через redis-cli достаньте все записанные ключи и значения из базы, приведите скриншот этой операции.

![Task4_1](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D0%B5%D1%88%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Redis.memcached/screen/Task4_1.png)
![Task4_2](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D0%B5%D1%88%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Redis.memcached/screen/Task4_2.png)
Дополнительные задания (со звёздочкой*)
Эти задания дополнительные, то есть не обязательные к выполнению, и никак не повлияют на получение вами зачёта по этому домашнему заданию. Вы можете их выполнить, если хотите глубже разобраться в материале.

Задание 5*. Работа с числами
Запишите в Redis ключ key5 со значением типа "int" равным числу 5. Увеличьте его на 5, чтобы в итоге в значении лежало число 10.
Приведите скриншот, где будут проделаны все операции и будет видно, что значение key5 стало равно 10.

![Task5](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D0%B5%D1%88%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Redis.memcached/screen/Task5.png)