Playbook
---
Playbook устанавливает и конфигурирует `clickhouse` , `vector` и `lighthouse`
#### Clickhouse
- установка
- создание БД
#### Vector
- установка
- Добавление и измение конфигурации
#### LightHouse
- установка
- добавление конфигурации в nginx
#### Действия
Разворачивает Clickhouse, создает БД 
Разворачивает Vector, добавляет конфигурацию
Устанавливает LightHouse, добавляет конфигурацию в nginx
#### Переменные 
`clickhouse/vars_yml`. Можно изменить параметры: `clickhouse_version`
`lighthouse/vars_yml`. Можно изменить параметры: `lighthouse_home_dir` , `nginx_config_dir`
#### Тэги:
- `clickhouse` - установка и конфигурирование `clickhouse` 
- `vector` - установка `vector`
- `lighthouse` - установка и добавление конфигурации lighthouse.conf.j2 в nginx