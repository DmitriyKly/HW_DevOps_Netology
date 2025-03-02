# Домашнее задание к занятию 14 «Средство визуализации Grafana»

## Задание повышенной сложности

**При решении задания 1** не используйте директорию [help](./help) для сборки проекта. Самостоятельно разверните grafana, где в роли источника данных будет выступать prometheus, а сборщиком данных будет node-exporter:

- grafana;

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task0_Grafana.png)

- prometheus-server;

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task0_prometheus_server.png)

- prometheus node-exporter.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task0_prometheus_node_exporter.png)

За дополнительными материалами можете обратиться в официальную документацию grafana и prometheus.

В решении к домашнему заданию также приведите все конфигурации, скрипты, манифесты, которые вы 
использовали в процессе решения задания.

**При решении задания 3** вы должны самостоятельно завести удобный для вас канал нотификации, например, Telegram или email, и отправить туда тестовые события.

В решении приведите скриншоты тестовых событий из каналов нотификаций.

## Обязательные задания

### Задание 1

1. Используя директорию [help](./help) внутри этого домашнего задания, запустите связку prometheus-grafana.
1. Зайдите в веб-интерфейс grafana, используя авторизационные данные, указанные в манифесте docker-compose.
1. Подключите поднятый вами prometheus, как источник данных.
1. Решение домашнего задания — скриншот веб-интерфейса grafana со списком подключенных Datasource.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task1.png)

## Задание 2

Изучите самостоятельно ресурсы:

1. [PromQL tutorial for beginners and humans](https://valyala.medium.com/promql-tutorial-for-beginners-9ab455142085).
1. [Understanding Machine CPU usage](https://www.robustperception.io/understanding-machine-cpu-usage).
1. [Introduction to PromQL, the Prometheus query language](https://grafana.com/blog/2020/02/04/introduction-to-promql-the-prometheus-query-language/).

Создайте Dashboard и в ней создайте Panels:

- утилизация CPU для nodeexporter (в процентах, 100-idle);
100 - (avg by (instance) (rate(node_cpu_seconds_total{mode="idle"}[1m])) * 100)

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task2_1.png)

- CPULA 1/5/15;

node_load1
node_load5
node_load15

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task2_2.png)

- количество свободной оперативной памяти;

node_memory_MemFree_bytes

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task2_3.png)

- количество места на файловой системе.

node_filesystem_avail_bytes{mountpoint="/"}


![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task2_4.png)

Для решения этого задания приведите promql-запросы для выдачи этих метрик, а также скриншот получившейся Dashboard.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task2_5.png)

## Задание 3

1. Создайте для каждой Dashboard подходящее правило alert — можно обратиться к первой лекции в блоке «Мониторинг».
1. В качестве решения задания приведите скриншот вашей итоговой Dashboard.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task3_1.png)

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/screen/Task3_2.png)


## Задание 4

1. Сохраните ваш Dashboard.Для этого перейдите в настройки Dashboard, выберите в боковом меню «JSON MODEL». Далее скопируйте отображаемое json-содержимое в отдельный файл и сохраните его.
1. В качестве решения задания приведите листинг этого файла.

https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20Grafana/src/Netology-1740926201618.json

---

### Как оформить решение задания

Выполненное домашнее задание пришлите в виде ссылки на .md-файл в вашем репозитории.

---