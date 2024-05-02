Задание 1
Что нужно сделать:

Установите себе jenkins по инструкции из лекции или любым другим способом из официальной документации. Использовать Docker в этом задании нежелательно.

![install_jenkins](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/Install_jenkins.png)
![install_jenkins_2](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/Install_jenkins2.png)
Установите на машину с jenkins golang.

![install_go](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/Install_go.png)

Используя свой аккаунт на GitHub, сделайте себе форк репозитория. В этом же репозитории находится дополнительный материал для выполнения ДЗ.

![Fork](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/fork.png)

Создайте в jenkins Freestyle Project, подключите получившийся репозиторий к нему и произведите запуск тестов и сборку проекта go test . и docker build ..

![Fork](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/build_task1.png)

Задание 2
Что нужно сделать:

Создайте новый проект pipeline.
Перепишите сборку из задания 1 на declarative в виде кода.
В качестве ответа пришлите скриншоты с настройками проекта и результатами выполнения сборки.

![Build2](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/build_task2_2.png)

![Build2_2](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/build_task2.png)

Задание 3
Что нужно сделать:

Установите на машину Nexus.
Создайте raw-hosted репозиторий.
Измените pipeline так, чтобы вместо Docker-образа собирался бинарный go-файл. Команду можно скопировать из Dockerfile.
Загрузите файл в репозиторий с помощью jenkins.
В качестве ответа пришлите скриншоты с настройками проекта и результатами выполнения сборки.

Дополнительные задания* (со звёздочкой)
Их выполнение необязательное и не влияет на получение зачёта по домашнему заданию. Можете их решить, если хотите лучше разобраться в материале.

![Build3](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/build_task3.png)

![Build3_3](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/build_task3_3.png)

Задание 4*
Придумайте способ версионировать приложение, чтобы каждый следующий запуск сборки присваивал имени файла новую версию. Таким образом, в репозитории Nexus будет храниться история релизов.

Подсказка: используйте переменную BUILD_NUMBER.

В качестве ответа пришлите скриншоты с настройками проекта и результатами выполнения сборки.

![Build3_3](https://github.com/DmitriyKly/8-03-hw/blob/main/Screen/task4.png)


