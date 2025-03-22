# Домашнее задание к занятию «Сетевое взаимодействие в K8S. Часть 2»

### Цель задания

В тестовой среде Kubernetes необходимо обеспечить доступ к двум приложениям снаружи кластера по разным путям.

------

### Чеклист готовности к домашнему заданию

1. Установленное k8s-решение (например, MicroK8S).
2. Установленный локальный kubectl.
3. Редактор YAML-файлов с подключённым Git-репозиторием.

------

### Инструменты и дополнительные материалы, которые пригодятся для выполнения задания

1. [Инструкция](https://microk8s.io/docs/getting-started) по установке MicroK8S.
2. [Описание](https://kubernetes.io/docs/concepts/services-networking/service/) Service.
3. [Описание](https://kubernetes.io/docs/concepts/services-networking/ingress/) Ingress.
4. [Описание](https://github.com/wbitt/Network-MultiTool) Multitool.

------

### Задание 1. Создать Deployment приложений backend и frontend

1. Создать Deployment приложения _frontend_ из образа nginx с количеством реплик 3 шт.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B5%20%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D0%B2%20K8S.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1/1.1.png)

2. Создать Deployment приложения _backend_ из образа multitool. 

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B5%20%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D0%B2%20K8S.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1/1.2.png)

3. Добавить Service, которые обеспечат доступ к обоим приложениям внутри кластера. 

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B5%20%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D0%B2%20K8S.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1/Task1.3_front.png)

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B5%20%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D0%B2%20K8S.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1/Task1.3_back.png)

4. Продемонстрировать, что приложения видят друг друга с помощью Service.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A1%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B5%20%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D0%B2%20K8S.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1/Task1.4.png)

5. Предоставить манифесты Deployment и Service в решении, а также скриншоты или вывод команды п.4.

https://github.com/DmitriyKly/HW_DevOps_Netology/tree/GitHub_Netology_Devops/%D0%A1%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B5%20%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D0%B2%20K8S.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/Task1

------

### Задание 2. Создать Ingress и обеспечить доступ к приложениям снаружи кластера

1. Включить Ingress-controller в MicroK8S.
2. Создать Ingress, обеспечивающий доступ снаружи по IP-адресу кластера MicroK8S так, чтобы при запросе только по адресу открывался _frontend_ а при добавлении /api - _backend_.
3. Продемонстрировать доступ с помощью браузера или `curl` с локального компьютера.
4. Предоставить манифесты и скриншоты или вывод команды п.2.

------

### Правила приема работы

1. Домашняя работа оформляется в своем Git-репозитории в файле README.md. Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
2. Файл README.md должен содержать скриншоты вывода необходимых команд `kubectl` и скриншоты результатов.
3. Репозиторий должен содержать тексты манифестов или ссылки на них в файле README.md.

------