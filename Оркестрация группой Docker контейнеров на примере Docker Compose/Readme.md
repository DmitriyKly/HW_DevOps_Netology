
# Домашнее задание к занятию 4 «Оркестрация группой Docker контейнеров на примере Docker Compose»

## Задача 1

Сценарий выполнения задачи:
- Установите docker и docker compose plugin на свою linux рабочую станцию или ВМ.

- Если dockerhub недоступен создайте файл /etc/docker/daemon.json с содержимым: ```{"registry-mirrors": ["https://mirror.gcr.io", "https://daocloud.io", "https://c.163.com/", "https://registry.docker-cn.com"]}```

![Task1_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task1_1.png)

- Зарегистрируйтесь и создайте публичный репозиторий  с именем "custom-nginx" на https://hub.docker.com (ТОЛЬКО ЕСЛИ У ВАС ЕСТЬ ДОСТУП);

![Task1_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task1_3.png)

- скачайте образ nginx:1.21.1;


- Создайте Dockerfile и реализуйте в нем замену дефолтной индекс-страницы(/usr/share/nginx/html/index.html), на файл index.html с содержимым:
```
<html>
<head>
Hey, Netology 
</head>
<body>
<h1>I will be DevOps Engineer!</h1>
</body>
</html>
```
- Соберите и отправьте созданный образ в свой dockerhub-репозитории c tag 1.0.0 (ТОЛЬКО ЕСЛИ ЕСТЬ ДОСТУП). 

![Task1_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task1_4.png)

![Task1_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task1_5.png)

- Предоставьте ответ в виде ссылки на https://hub.docker.com/<username_repo>/custom-nginx/general .

https://hub.docker.com/repository/docker/mafik01/custom-nginx/general

## Задача 2
1. Запустите ваш образ custom-nginx:1.0.0 командой docker run в соответвии с требованиями:
- имя контейнера "ФИО-custom-nginx-t2"
- контейнер работает в фоне
- контейнер опубликован на порту хост системы 127.0.0.1:8080

![Task2_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task2_1.png)

2. Не удаляя, переименуйте контейнер в "custom-nginx-t2"

![Task2_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task2_2.png)

3. Выполните команду ```date +"%d-%m-%Y %T.%N %Z" ; sleep 0.150 ; docker ps ; ss -tlpn | grep 127.0.0.1:8080  ; docker logs custom-nginx-t2 -n1 ; docker exec -it custom-nginx-t2 base64 /usr/share/nginx/html/index.html```

![Task2_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task2_3.png)

4. Убедитесь с помощью curl или веб браузера, что индекс-страница доступна.

![Task2_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task2_4.png)

В качестве ответа приложите скриншоты консоли, где видно все введенные команды и их вывод.


## Задача 3
1. Воспользуйтесь docker help или google, чтобы узнать как подключиться к стандартному потоку ввода/вывода/ошибок контейнера "custom-nginx-t2".

![Task3_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task3_1.png)

2. Подключитесь к контейнеру и нажмите комбинацию Ctrl-C.
3. Выполните ```docker ps -a``` и объясните своими словами почему контейнер остановился. - Нажатие комбинации Ctrl-C отправляет сигнал прерывания (SIGINT) текущему процессу контейнера. В случае с Nginx это приведёт к остановке веб-сервера, который был запущен в контейнере.

4. Перезапустите контейнер
5. Зайдите в интерактивный терминал контейнера "custom-nginx-t2" с оболочкой bash.

![Task3_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task3_4.png)

6. Установите любимый текстовый редактор(vim, nano итд) с помощью apt-get.

![Task3_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task3_5.png)

7. Отредактируйте файл "/etc/nginx/conf.d/default.conf", заменив порт "listen 80" на "listen 81".

![Task3_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task3_6.png)

8. Запомните(!) и выполните команду ```nginx -s reload```, а затем внутри контейнера ```curl http://127.0.0.1:80 ; curl http://127.0.0.1:81```.

![Task3_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task3_7.png)

9. Выйдите из контейнера, набрав в консоли  ```exit``` или Ctrl-D.
10. Проверьте вывод команд: ```ss -tlpn | grep 127.0.0.1:8080``` , ```docker port custom-nginx-t2```, ```curl http://127.0.0.1:8080```. Кратко объясните суть возникшей проблемы - Слушает только 81 порт
11. * Это дополнительное, необязательное задание. Попробуйте самостоятельно исправить конфигурацию контейнера, используя доступные источники в интернете. Не изменяйте конфигурацию nginx и не удаляйте контейнер. Останавливать контейнер можно. [пример источника](https://www.baeldung.com/linux/assign-port-docker-container)

В качестве ответа приложите скриншоты консоли, где видно все введенные команды и их вывод.

## Задача 4


- Запустите первый контейнер из образа ***centos*** c любым тегом в фоновом режиме, подключив папку  текущий рабочий каталог ```$(pwd)``` на хостовой машине в ```/data``` контейнера, используя ключ -v.

![Task4_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task4_1.png)

- Запустите второй контейнер из образа ***debian*** в фоновом режиме, подключив текущий рабочий каталог ```$(pwd)``` в ```/data``` контейнера. 
- Подключитесь к первому контейнеру с помощью ```docker exec``` и создайте текстовый файл любого содержания в ```/data```.
![Task4_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task4_2.png)
- Добавьте ещё один файл в текущий каталог ```$(pwd)``` на хостовой машине.

![Task4_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task4_4.png)

- Подключитесь во второй контейнер и отобразите листинг и содержание файлов в ```/data``` контейнера.

![Task4_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task4_5.png)

В качестве ответа приложите скриншоты консоли, где видно все введенные команды и их вывод.


## Задача 5

1. Создайте отдельную директорию(например /tmp/netology/docker/task5) и 2 файла внутри него.
"compose.yaml" с содержимым:
```
version: "3"
services:
  portainer:
    image: portainer/portainer-ce:latest
    network_mode: host
    ports:
      - "9000:9000"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
```
"docker-compose.yaml" с содержимым:
```
version: "3"
services:
  registry:
    image: registry:2
    network_mode: host
    ports:
    - "5000:5000"
```

И выполните команду "docker compose up -d". Какой из файлов был запущен и почему? (подсказка: https://docs.docker.com/compose/compose-application-model/#the-compose-file )

![Task5_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task5_1.png)

первый (portainer-ce) файл был запущен тк расширение compose считается более предпочтительным чем doсker-compose.yml


2. Отредактируйте файл compose.yaml так, чтобы были запущенны оба файла. (подсказка: https://docs.docker.com/compose/compose-file/14-include/)

для того чтобы docker-compose запустился необходимо включить его в compose

![Task5_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task5_2.png)

3. Выполните в консоли вашей хостовой ОС необходимые команды чтобы залить образ custom-nginx как custom-nginx:latest в запущенное вами, локальное registry. Дополнительная документация: https://distribution.github.io/distribution/about/deploying/

![Task5_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task5_3.png)


4. Откройте страницу "https://127.0.0.1:9000" и произведите начальную настройку portainer.(логин и пароль адмнистратора)

![Task5_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task5_4.png)

5. Откройте страницу "http://127.0.0.1:9000/#!/home", выберите ваше local  окружение. Перейдите на вкладку "stacks" и в "web editor" задеплойте следующий компоуз:

```
version: '3'

services:
  nginx:
    image: 127.0.0.1:5000/custom-nginx
    ports:
      - "9090:80"
```

![Task5_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task5_5.png)

6. Перейдите на страницу "http://127.0.0.1:9000/#!/2/docker/containers", выберите контейнер с nginx и нажмите на кнопку "inspect". В представлении <> Tree разверните поле "Config" и сделайте скриншот от поля "AppArmorProfile" до "Driver".

![Task5_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task5_6.png)

7. Удалите любой из манифестов компоуза(например compose.yaml).  Выполните команду "docker compose up -d". Прочитайте warning, объясните суть предупреждения и выполните предложенное действие. Погасите compose-проект ОДНОЙ(обязательно!!) командой.

![Task5_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task5_7.png)

![Task5_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task5_8.png)

![Task5_!](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%9E%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B9%20Docker%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%D0%B5%20Docker%20Compose/screen/Task5_9.png)

В качестве ответа приложите скриншоты консоли, где видно все введенные команды и их вывод, файл compose.yaml , скриншот portainer c задеплоенным компоузом.

---

### Правила приема

Домашнее задание выполните в файле readme.md в GitHub-репозитории. В личном кабинете отправьте на проверку ссылку на .md-файл в вашем репозитории.

