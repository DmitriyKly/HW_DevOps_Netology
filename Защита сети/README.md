<br>Задание 1
<br>Проведите разведку системы и определите, какие сетевые службы запущены на защищаемой системе:
<br>sudo nmap -sA < ip-адрес >
<br>sudo nmap -sT < ip-адрес >
<br>sudo nmap -sS < ip-адрес >
<br>sudo nmap -sV < ip-адрес >
<br>
<br>По желанию можете поэкспериментировать с опциями: https://nmap.org/man/ru/man-briefoptions.html.
<br>В качестве ответа пришлите события, которые попали в логи Suricata и Fail2Ban, прокомментируйте результат.
<br>
<br>Suricata
<br>![Suricata](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%97%D0%B0%D1%89%D0%B8%D1%82%D0%B0%20%D1%81%D0%B5%D1%82%D0%B8/screen/Task1.png)
<br>При nmap, Suricata информировала что с ip субьекта были произведены запросы по портам
<br>![fail2ban](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%97%D0%B0%D1%89%D0%B8%D1%82%D0%B0%20%D1%81%D0%B5%D1%82%D0%B8/screen/Task1.png)
<br> Fail2ban заблокировал IP субьекта
<br>Задание 2
<br>Проведите атаку на подбор пароля для службы SSH:
<br>hydra -L users.txt -P pass.txt < ip-адрес > ssh
<br>Настройка hydra:
<br>создайте два файла: users.txt и pass.txt;
<br>в каждой строчке первого файла должны быть имена пользователей, второго — пароли. В нашем случае это могут быть случайные строки, но ради эксперимента можете добавить имя и пароль существующего пользователя.
Дополнительная информация по hydra: https://kali.tools/?p=1847.

<br>Включение защиты SSH для Fail2Ban:
<br>открыть файл /etc/fail2ban/jail.conf,
<br>найти секцию ssh,
<br>установить enabled в true.
