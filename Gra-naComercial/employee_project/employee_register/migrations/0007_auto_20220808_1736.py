# Generated by Django 2.0.5 on 2022-08-08 20:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('employee_register', '0006_auto_20220804_1825'),
    ]

    operations = [
        migrations.AlterField(
            model_name='employee',
            name='data_atual',
            field=models.DateField(default='2022-08-08', max_length=110),
        ),
    ]