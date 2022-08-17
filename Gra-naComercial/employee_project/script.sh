#!/bin/bash

echo "Content-Type: text/plain"
echo "Hi $USER"
python manage.py runserver 192.168.1.229:8000
firefox http://192.168.1.229:8000/employee/list &
echo "Rodando..."