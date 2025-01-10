# Домашнее задание к занятию 3 «Использование Ansible»

## Подготовка к выполнению

1. Подготовьте в Yandex Cloud три хоста: для `clickhouse`, для `vector` и для `lighthouse`.
2. Репозиторий LightHouse находится [по ссылке](https://github.com/VKCOM/lighthouse).

## Основная часть

1. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает LightHouse.
2. При создании tasks рекомендую использовать модули: `get_url`, `template`, `yum`, `apt`.
3. Tasks должны: скачать статику LightHouse, установить Nginx или любой другой веб-сервер, настроить его конфиг для открытия LightHouse, запустить веб-сервер.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Ansible/screen/Task3_1.png)

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Ansible/screen/Task3_2.png)

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Ansible/screen/Task3_3.png)

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Ansible/screen/Task3_4.png)

4. Подготовьте свой inventory-файл `prod.yml`.
5. Запустите `ansible-lint site.yml` и исправьте ошибки, если они есть.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Ansible/screen/Task5.png)

6. Попробуйте запустить playbook на этом окружении с флагом `--check`.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Ansible/screen/Task6.png)

7. Запустите playbook на `prod.yml` окружении с флагом `--diff`. Убедитесь, что изменения на системе произведены.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Ansible/screen/Task7.png)

8. Повторно запустите playbook с флагом `--diff` и убедитесь, что playbook идемпотентен.

![Task](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Ansible/screen/Task8.png)

9. Подготовьте README.md-файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги.

https://github.com/DmitriyKly/HW_DevOps_Netology/blob/GitHub_Netology_Devops/%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20Ansible/src/playbook/README.md

10. Готовый playbook выложите в свой репозиторий, поставьте тег `08-ansible-03-yandex` на фиксирующий коммит, в ответ предоставьте ссылку на него.



---

### Как оформить решение задания

Выполненное домашнее задание пришлите в виде ссылки на .md-файл в вашем репозитории.

---