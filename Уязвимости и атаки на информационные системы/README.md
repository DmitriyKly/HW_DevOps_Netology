Задание 1
Скачайте и установите виртуальную машину Metasploitable: https://sourceforge.net/projects/metasploitable/.

Это типовая ОС для экспериментов в области информационной безопасности, с которой следует начать при анализе уязвимостей.

Просканируйте эту виртуальную машину, используя nmap.

Попробуйте найти уязвимости, которым подвержена эта виртуальная машина.

Сами уязвимости можно поискать на сайте https://www.exploit-db.com/.

Для этого нужно в поиске ввести название сетевой службы, обнаруженной на атакуемой машине, и выбрать подходящие по версии уязвимости.

<br>Ответьте на следующие вопросы:
<br>
<br>Какие сетевые службы в ней разрешены?
<br>
<br>139/tcp  open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
<br>445/tcp  open  netbios-ssn Samba smbd 3.0.20-Debian (workgroup: WORKGROUP)
<br>512/tcp  open  exec        netkit-rsh rexecd
<br>513/tcp  open  login
<br>514/tcp  open  tcpwrapped
<br>1099/tcp open  java-rmi    GNU Classpath grmiregistry
<br>1524/tcp open  bindshell   Metasploitable root shell
<br>2049/tcp open  nfs         2-4 (RPC #100003)
<br>2121/tcp open  ftp         ProFTPD 1.3.1
<br>3306/tcp open  mysql       MySQL 5.0.51a-3ubuntu5

<br>Какие уязвимости были вами обнаружены? (список со ссылками: достаточно трёх уязвимостей)
<br>Приведите ответ в свободной форме.
<br>https://www.exploit-db.com/exploits/32798
<br>https://www.exploit-db.com/exploits/30020
<br>https://www.exploit-db.com/exploits/42060

<br>Задание 2
<br>Проведите сканирование Metasploitable в режимах SYN, FIN, Xmas, UDP.
<br>
<br>Запишите сеансы сканирования в Wireshark.
<br>
SYN
<br>
![SYN](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%A3%D1%8F%D0%B7%D0%B2%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8%20%D0%B8%20%D0%B0%D1%82%D0%B0%D0%BA%D0%B8%20%D0%BD%D0%B0%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B/Wireshark/Syn.png)
<br>
FIN
<br>
![FIN](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%A3%D1%8F%D0%B7%D0%B2%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8%20%D0%B8%20%D0%B0%D1%82%D0%B0%D0%BA%D0%B8%20%D0%BD%D0%B0%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B/Wireshark/Fin.png)
<br>
Xmas
<br>
![Xmas](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%A3%D1%8F%D0%B7%D0%B2%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8%20%D0%B8%20%D0%B0%D1%82%D0%B0%D0%BA%D0%B8%20%D0%BD%D0%B0%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B/Wireshark/Xmas1.png)
<br>
UDP
<br>
![UDP](https://github.com/DmitriyKly/HW_DevOps_Netology/blob/main/%D0%A3%D1%8F%D0%B7%D0%B2%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8%20%D0%B8%20%D0%B0%D1%82%D0%B0%D0%BA%D0%B8%20%D0%BD%D0%B0%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B/Wireshark/UDP.png)

<br>
<br>Ответьте на следующие вопросы:
<br>
<br>Чем отличаются эти режимы сканирования с точки зрения сетевого трафика?
 <br>SYN-сканирование: Отправляет пакеты SYN для указанных портов. Ответ сервера указывает на состояние порта (открыт, закрыт, отфильтрован).
 <br>FIN-сканирование: Отправляет пакеты FIN для указанных портов. Сервер обычно не отвечает на пакеты FIN, но открытые порты могут генерировать сбросы (RST).
 <br>Xmas-сканирование: Отправляет пакеты с установленными битами FIN, PSH, URG и т. д., но без бита SYN.
 <br>UDP-сканирование: Отправляет UDP-пакеты для указанных портов. Ответ сервера указывает на состояние порта (открыт, закрыт).

<br>Как отвечает сервер?
<br>Приведите ответ в свободной форме: 
 
 <br>SYN-сканирование: Отвечает пакетами SYN-ACK для открытых портов и пакетами RST для закрытых портов.
 <br>FIN-сканирование: Обычно не отвечает (если только порт не отфильтрован).
 <br>Xmas-сканирование: Обычно не отвечает.
 <br>UDP-сканирование: Отвечает пакетами ICMP для закрытых портов и может отвечать данными для открытых портов.