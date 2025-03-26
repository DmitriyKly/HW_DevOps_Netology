# Домашнее задание к занятию «Хранение в K8s. Часть 2»

### Цель задания

В тестовой среде Kubernetes нужно создать PV и продемострировать запись и хранение файлов.

------

### Чеклист готовности к домашнему заданию

1. Установленное K8s-решение (например, MicroK8S).
2. Установленный локальный kubectl.
3. Редактор YAML-файлов с подключенным GitHub-репозиторием.

------

### Дополнительные материалы для выполнения задания

1. [Инструкция по установке NFS в MicroK8S](https://microk8s.io/docs/nfs). 
2. [Описание Persistent Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/). 
3. [Описание динамического провижининга](https://kubernetes.io/docs/concepts/storage/dynamic-provisioning/). 
4. [Описание Multitool](https://github.com/wbitt/Network-MultiTool).

------

### Задание 1

**Что нужно сделать**

Создать Deployment приложения, использующего локальный PV, созданный вручную.

1. Создать Deployment приложения, состоящего из контейнеров busybox и multitool.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1_1.png)

2. Создать PV и PVC для подключения папки на локальной ноде, которая будет использована в поде.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1_2_1.png)

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1_2_2.png)

3. Продемонстрировать, что multitool может читать файл, в который busybox пишет каждые пять секунд в общей директории. 

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1_3.png)

4. Удалить Deployment и PVC. Продемонстрировать, что после этого произошло с PV. Пояснить, почему.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1_4_1.png)


![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1_4_2.png)


5. Продемонстрировать, что файл сохранился на локальном диске ноды. Удалить PV.  Продемонстрировать что произошло с файлом после удаления PV. Пояснить, почему.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task1_5.png)


5. Предоставить манифесты, а также скриншоты или вывод необходимых команд.

https://github.com/DmitriyKly/HW_DevOps_Netology/tree/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/src/Task1

------

### Задание 2

**Что нужно сделать**

Создать Deployment приложения, которое может хранить файлы на NFS с динамическим созданием PV.

1. Включить и настроить NFS-сервер на MicroK8S.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task2_1.png)

2. Создать Deployment приложения состоящего из multitool, и подключить к нему PV, созданный автоматически на сервере NFS.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task2_2.png)

3. Продемонстрировать возможность чтения и записи файла изнутри пода. 

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/screen/Task2_3.png)

4. Предоставить манифесты, а также скриншоты или вывод необходимых команд.

https://github.com/DmitriyKly/HW_DevOps_Netology/tree/GitHub_Netology_Devops/%D0%A5%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20K8s.%20%D0%A7%D0%B0%D1%81%D1%82%D1%8C%202/src/Task2

------

### Правила приёма работы

1. Домашняя работа оформляется в своём Git-репозитории в файле README.md. Выполненное задание пришлите ссылкой на .md-файл в вашем репозитории.
2. Файл README.md должен содержать скриншоты вывода необходимых команд `kubectl`, а также скриншоты результатов.
3. Репозиторий должен содержать тексты манифестов или ссылки на них в файле README.md.