Задача
Ключевая задача — разработать отказоустойчивую инфраструктуру для сайта, включающую мониторинг, сбор логов и резервное копирование основных данных. Инфраструктура должна размещаться в Yandex Cloud.

Инфраструктура
Для развёртки инфраструктуры используйте Terraform и Ansible.

Параметры виртуальной машины (ВМ) подбирайте по потребностям сервисов, которые будут на ней работать.

Ознакомьтесь со всеми пунктами из этой секции, не беритесь сразу выполнять задание, не дочитав до конца. Пункты взаимосвязаны и могут влиять друг на друга.

Сайт
<br>
<br>
Создайте две ВМ в разных зонах, установите на них сервер nginx, если его там нет. ОС и содержимое ВМ должно быть идентичным, это будут наши веб-сервера.

![Task1](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D1%83%D1%80%D1%81%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%B8%20%22DevOps-%D0%B8%D0%BD%D0%B6%D0%B5%D0%BD%D0%B5%D1%80%20%D1%81%20%D0%BD%D1%83%D0%BB%D1%8F%22/screen/Task1_2.png)


Используйте набор статичных файлов для сайта. Можно переиспользовать сайт из домашнего задания.

Создайте Target Group, включите в неё две созданных ВМ.

Создайте Backend Group, настройте backends на target group, ранее созданную. Настройте healthcheck на корень (/) и порт 80, протокол HTTP.

Создайте HTTP router. Путь укажите — /, backend group — созданную ранее.

Создайте Application load balancer для распределения трафика на веб-сервера, созданные ранее. Укажите HTTP router, созданный ранее, задайте listener тип auto, порт 80.

Протестируйте сайт curl -v <публичный IP балансера>:80

![Task1](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D1%83%D1%80%D1%81%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%B8%20%22DevOps-%D0%B8%D0%BD%D0%B6%D0%B5%D0%BD%D0%B5%D1%80%20%D1%81%20%D0%BD%D1%83%D0%BB%D1%8F%22/screen/Task1.png)

Мониторинг

Создайте ВМ, разверните на ней Zabbix. 

![Task1](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D1%83%D1%80%D1%81%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%B8%20%22DevOps-%D0%B8%D0%BD%D0%B6%D0%B5%D0%BD%D0%B5%D1%80%20%D1%81%20%D0%BD%D1%83%D0%BB%D1%8F%22/screen/Task2.png)

На каждую ВМ установите Zabbix Agent, настройте агенты на отправление метрик в Zabbix.

![Task2](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D1%83%D1%80%D1%81%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%B8%20%22DevOps-%D0%B8%D0%BD%D0%B6%D0%B5%D0%BD%D0%B5%D1%80%20%D1%81%20%D0%BD%D1%83%D0%BB%D1%8F%22/screen/Task2_2.png)


Настройте дешборды с отображением метрик, минимальный набор — по принципу USE (Utilization, Saturation, Errors) для CPU, RAM, диски, сеть, http запросов к веб-серверам. Добавьте необходимые tresholds на соответствующие графики.

![Task2.1](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D1%83%D1%80%D1%81%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%B8%20%22DevOps-%D0%B8%D0%BD%D0%B6%D0%B5%D0%BD%D0%B5%D1%80%20%D1%81%20%D0%BD%D1%83%D0%BB%D1%8F%22/screen/Task2_1.png)


Логи

Cоздайте ВМ, разверните на ней Elasticsearch. Установите filebeat в ВМ к веб-серверам, настройте на отправку access.log, error.log nginx в Elasticsearch.


![Task3](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/
%D0%9A%D1%83%D1%80%D1%81%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%B8%20%22DevOps-%D0%B8%D0%BD%D0%B6%D0%B5%D0%BD%D0%B5%D1%80%20%D1%81%20%D0%BD%D1%83%D0%BB%D1%8F%22/screen/Task3.png)


![Task3_1](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D1%83%D1%80%D1%81%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%B8%20%22DevOps-%D0%B8%D0%BD%D0%B6%D0%B5%D0%BD%D0%B5%D1%80%20%D1%81%20%D0%BD%D1%83%D0%BB%D1%8F%22/screen/Task3_1.png)

Создайте ВМ, разверните на ней Kibana, сконфигурируйте соединение с Elasticsearch.

![Task3_2](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%9A%D1%83%D1%80%D1%81%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%B8%20%22DevOps-%D0%B8%D0%BD%D0%B6%D0%B5%D0%BD%D0%B5%D1%80%20%D1%81%20%D0%BD%D1%83%D0%BB%D1%8F%22/screen/Task3_2.png)

Сеть

Разверните один VPC. Сервера web, Elasticsearch поместите в приватные подсети. Сервера Zabbix, Kibana, application load balancer определите в публичную подсеть.

Настройте Security Groups соответствующих сервисов на входящий трафик только к нужным портам.

Настройте ВМ с публичным адресом, в которой будет открыт только один порт — ssh. Настройте все security groups на разрешение входящего ssh из этой security group. Эта вм будет реализовывать концепцию bastion host. Потом можно будет подключаться по ssh ко всем хостам через этот хост.

Резервное копирование
Создайте snapshot дисков всех ВМ. Ограничьте время жизни snaphot в неделю. Сами snaphot настройте на ежедневное копирование.







Дополнительно
Не входит в минимальные требования.

Для Zabbix можно реализовать разделение компонент - frontend, server, database. Frontend отдельной ВМ поместите в публичную подсеть, назначте публичный IP. Server поместите в приватную подсеть, настройте security group на разрешение трафика между frontend и server. Для Database используйте Yandex Managed Service for PostgreSQL. Разверните кластер из двух нод с автоматическим failover.

Вместо конкретных ВМ, которые входят в target group, можно создать Instance Group, для которой настройте следующие правила автоматического горизонтального масштабирования: минимальное количество ВМ на зону — 1, максимальный размер группы — 3.
В Elasticsearch добавьте мониторинг логов самого себя, Kibana, Zabbix, через filebeat. Можно использовать logstash тоже.
Воспользуйтесь Yandex Certificate Manager, выпустите сертификат для сайта, если есть доменное имя. Перенастройте работу балансера на HTTPS, при этом нацелен он будет на HTTP веб-серверов.