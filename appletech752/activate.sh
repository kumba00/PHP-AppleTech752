#!/usr/bin/bash

cd  "$(dirname $0)"

php -S localhost:7000 &

PHP_PID=$!

sleep 1

ideviceactivation activate -s http://localhost:7000/sliver.php

kill $PHP_PID

sleep 1
