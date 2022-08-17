from django.apps import AppConfig


class EmployeeRegisterConfig(AppConfig):
    name = 'employee_register'
    
class ReversionConfig(AppConfig):
    name = 'reversion'
    default_auto_field = 'django.db.models.BigAutoField'