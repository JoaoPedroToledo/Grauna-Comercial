
@ECHO OFF
python manage.py runserver 
start C:\"Program Files (x86)"\Google\Chrome\Application\chrome.exe "http://127.0.0.1:8000/employee/list"