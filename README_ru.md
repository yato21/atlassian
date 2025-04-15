Запуск сборки на машине с docker: sh docker_run_all_using_atlassian_build_agent.sh

Jira
На UI указываем (http://localhost:8080)
Тип базы: PostgreSQL
Хост: atlassian-db-container
Порт: 5432
БД: jira_db
Пользователь БД: jira_db_user
Пароль БД: jira_db_password

Получив id сервера выполняем в консоли
Подключение к docker контейнеру с jira: docker exec -it atlassian-jira-container bash
Переключение в каталог с кодогенератором: cd /opt/atlassian/jira/
Генерация ключа (шаблон): java -jar atlassian-agent.jar -d -m [Email] -n BAT -p jira -o http://[serverip-or-domain] -s [serverId]
Генерация ключа (пример): java -jar atlassian-agent.jar -d -m test@mail.com -n BAT -p jira -o http://localhost:8080 -s BPOR-TE5L-YY7Z-U3IW
Генерация ключа к плагину (шаблон): java -jar atlassian-agent.jar -d -m [Email] -n BAT -p [plugin code] -o http://[serverip-or-domain] -s [serverId]
Генерация ключа к плагину (пример): java -jar atlassian-agent.jar -d -m test@mail.com -n BAT -p com.mxgraph.jira.plugins.drawio -o http://localhost:8080 -s BPOR-TE5L-YY7Z-U3IW

Confluence
На UI указываем (http://localhost:8090)
Тип базы: PostgreSQL
Хост: atlassian-db-container
Порт: 5432
БД: confluence_db
Пользователь БД: confluence_db_user
Пароль БД: confluence_db_password

Получив id сервера выполняем в консоли
Подключение к docker контейнеру с confluence: docker exec -it atlassian-confluence-container bash
Переключение в каталог с кодогенератором: cd /opt/atlassian/confluence/
Генерация ключа (шаблон): java -jar atlassian-agent.jar -d -m [Email] -n BAT -p conf -o http://[serverip-or-domain] -s [serverId]
Генерация ключа (пример): java -jar atlassian-agent.jar -d -m test@mail.com -n BAT -p conf -o http://localhost:8090 -s BPOR-TE5L-YY7Z-U3IW
Генерация ключа к плагину (шаблон): java -jar atlassian-agent.jar -d -m [Email] -n BAT -p [plugin code] -o http://[serverip-or-domain] -s [serverId]
Генерация ключа к плагину (пример): java -jar atlassian-agent.jar -d -m test@mail.com -n BAT -p com.mxgraph.confluence.plugins.drawio -o http://localhost:8090 -s BPOR-TE5L-YY7Z-U3IW

Bitbucket
На UI указываем (http://localhost:7990)
Тип базы: PostgreSQL
Хост: atlassian-db-container
Порт: 5432
БД: bitbucket_db
Пользователь БД: bitbucket_db_user
Пароль БД: bitbucket_db_password

Получив id сервера выполняем в консоли
Подключение к docker контейнеру с bitbucket: docker exec -it atlassian-bitbucket-container bash
Переключение в каталог с кодогенератором: cd /opt/atlassian/bitbucket/
Генерация ключа (шаблон): java -jar atlassian-agent.jar -d -m [Email] -n BAT -p bitbucket -o http://[serverip-or-domain] -s [serverId]
Генерация ключа (пример): java -jar atlassian-agent.jar -d -m test@mail.com -n BAT -p bitbucket -o http://localhost:7990 -s BPOR-TE5L-YY7Z-U3IW
Генерация ключа к плагину (шаблон): java -jar atlassian-agent.jar -d -m [Email] -n BAT -p [plugin code] -o http://[serverip-or-domain] -s [serverId]
Генерация ключа к плагину (пример): java -jar atlassian-agent.jar -d -m test@mail.com -n BAT -p com.mxgraph.bitbucket.plugins.drawio -o http://localhost:7990 -s BPOR-TE5L-YY7Z-U3IW

Bamboo
На UI указываем (http://localhost:8085)
Тип базы: PostgreSQL
Хост: atlassian-db-container
Порт: 5432
БД: bamboo_db
Пользователь БД: bamboo_db_user
Пароль БД: bamboo_db_password

Получив id сервера выполняем в консоли
Подключение к docker контейнеру с bamboo: docker exec -it atlassian-bamboo-container bash
Переключение в каталог с кодогенератором: cd /opt/atlassian/bamboo/
Генерация ключа (шаблон): java -jar atlassian-agent.jar -d -m [Email] -n BAT -p bamboo -o http://[serverip-or-domain] -s [serverId]
Генерация ключа (пример): java -jar atlassian-agent.jar -d -m test@mail.com -n BAT -p bamboo -o http://localhost:7990 -s BPOR-TE5L-YY7Z-U3IW
Генерация ключа к плагину (шаблон): java -jar atlassian-agent.jar -d -m [Email] -n BAT -p [plugin code] -o http://[serverip-or-domain] -s [serverId]
Генерация ключа к плагину (пример): java -jar atlassian-agent.jar -d -m test@mail.com -n BAT -p com.mxgraph.bamboo.plugins.drawio -o http://localhost:7990 -s BPOR-TE5L-YY7Z-U3IW