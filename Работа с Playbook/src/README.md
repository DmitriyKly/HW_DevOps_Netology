Playbook
---
Playbook устанавливает и конфигурирует `clickhouse` и `vector`
#### Clickhouse
- установка
- создание БД
#### Vector
- установка
- Добавление и измение конфигурации
#### Действия
Разворачивает Clickhouse, создает БД 
Разворачивает Vector, добавляет конфигурацию

Переменные 
---
`clickhouse/vars_yml`. Можно изменить параметры: `clickhouse_version`

Тэги:
---
- `clickhouse` - установка и конфигурирование `clickhouse` 
- `vector` - установка `vector`