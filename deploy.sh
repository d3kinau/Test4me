#!/bin/bash
# Скрипт создает директорию и скачивает в нее исходник странички owa из фреймворка owa honeypots
# и необходимые файлы для работы докера в совместимости TPOT
# Затем происходит установка TPot Sensor после установки устройство перезагрузится
# После перезагрузки останется заменить конфигурационный файл docker-compose.yml в ~/tpotce и перезапустить TPot

sudo mkdir -p /opt/owa-template
sudo curl -sL -o /opt/owa-template/login.html https://raw.githubusercontent.com/joda32/owa-honeypot/master/templates/outlook_web.html
sudo touch /opt/owa-template/home.html /opt/owa-template/dummy_page.html
curl -sL https://github.com/telekom-security/tpotce/raw/master/install.sh | env bash -s -- -s -t s
