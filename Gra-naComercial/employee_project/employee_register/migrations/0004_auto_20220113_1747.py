# Generated by Django 2.0.5 on 2022-01-13 20:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('employee_register', '0003_auto_20220113_0954'),
    ]

    operations = [
        migrations.CreateModel(
            name='Dimensao',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('classe', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='Senha',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('senha', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='TratSuperficialMag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('limite', models.IntegerField(default='')),
                ('classe', models.CharField(max_length=70)),
            ],
        ),
        migrations.CreateModel(
            name='TratSuperficialMet',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('limite', models.IntegerField(default='')),
                ('classe', models.CharField(max_length=70)),
            ],
        ),
        migrations.RenameModel(
            old_name='Materiall',
            new_name='Material',
        ),
        migrations.RenameField(
            model_name='employee',
            old_name='material',
            new_name='materia',
        ),
        migrations.AddField(
            model_name='employee',
            name='alt_cli',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='anot_risco',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='assinatura',
            field=models.CharField(default='', max_length=30),
        ),
        migrations.AddField(
            model_name='employee',
            name='av_cli',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='cotacao',
            field=models.CharField(default='', max_length=40),
        ),
        migrations.AddField(
            model_name='employee',
            name='decline',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_anot_risco',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_proc_qual',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_rec_disp',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_req_cert',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_req_embal',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_risco_fin',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_risco_nt',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_risco_pe',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_risco_trat',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='det_tol',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='employee',
            name='not_aplic',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='not_rec',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='obs',
            field=models.CharField(default='', max_length=500),
        ),
        migrations.AddField(
            model_name='employee',
            name='proc_qual',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='proc_terc',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='rec_disp',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='req_cert',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='req_embal',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='rev',
            field=models.CharField(default='', max_length=30),
        ),
        migrations.AddField(
            model_name='employee',
            name='risco_fin',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='risco_nt',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='risco_pe',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='risco_trat',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='tol',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='employee',
            name='use_device',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='employee',
            name='data',
            field=models.DateTimeField(default=''),
        ),
        migrations.AddField(
            model_name='employee',
            name='senha',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='employee_register.Senha'),
        ),
    ]
