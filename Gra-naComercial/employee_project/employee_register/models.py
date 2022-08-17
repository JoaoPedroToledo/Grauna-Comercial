from django.db import models
from datetime import date

# Create your models here.



class Position(models.Model):
    title = models.CharField(max_length=50, default="")

    def __str__(self):
        return self.title
    
class Empresa(models.Model):
    nome = models.CharField(max_length=50, default="")
    

    def __str__(self):
        return self.nome
    
class Material(models.Model):
    materia = models.CharField(max_length=50)

    def __str__(self):
        return self.materia
    
    class Meta:
        db_table = "employee_register_material"
    
class Ncm(models.Model):
    codigo = models.IntegerField(default=0)
    aliquota = models.IntegerField(default=0)
    icms = models.CharField(max_length=20, default="")
    
    def __str__(self):
        return self.codigo
    
    class Meta:
        db_table = "employee_register_ncm"    
    
class Dimensao(models.Model):   
    classe = models.CharField(max_length=1)
    
class Senha(models.Model): 
    senha = models.CharField(max_length=20)
    
    def __str__(self):
        return self.senha

class Employee(models.Model):

    data = date.today()
    dataFormatada = data.strftime("%Y-%m-%d")
    fullname = models.CharField(max_length=100)
    mobile= models.CharField(max_length=15)
    cotacao = models.CharField(max_length=40)

    rev = models.CharField(max_length=30, default="")
    position= models.ForeignKey(Position,on_delete=models.CASCADE, default="")
    empresa= models.ForeignKey(Empresa,on_delete=models.CASCADE, default="")
    materia= models.ForeignKey(Material,on_delete=models.CASCADE, default="")
    descricao = models.CharField(max_length=110, default="")
    quantidade = models.PositiveIntegerField(null=False, default=0)
    data_atual = models.DateField(max_length=110, default=dataFormatada)
    data_final = models.DateTimeField(default="")

    senha = models.ForeignKey(Senha, default="", on_delete=models.CASCADE)
    assinatura = models.CharField(max_length=30, default="")
    cotacao = models.CharField(max_length=40, default="")
    risco_nt = models.BooleanField(default=False)
    det_risco_nt = models.CharField(max_length=255, default="")
    risco_pe = models.BooleanField(default=False)
    det_risco_pe = models.CharField(max_length=255, default="")
    risco_fin = models.BooleanField(default=False)
    det_risco_fin = models.CharField(max_length=255, default="")
    rec_disp = models.BooleanField(default=False)
    det_rec_disp = models.CharField(max_length=255, default="")
    tol = models.BooleanField(default=False)
    det_tol = models.CharField(max_length=255, default="")
    risco_trat = models.BooleanField(default=False)
    det_risco_trat = models.CharField(max_length=255, default="")
    anot_risco = models.BooleanField(default=False)
    det_anot_risco= models.CharField(max_length=255, default="")
    not_aplic = models.BooleanField(default=False)
    
    decline = models.BooleanField(default=False)
    av_cli = models.BooleanField(default=False)
    
    req_cert = models.CharField(max_length=10)

    det_req_cert = models.CharField(max_length=255, default="")
    proc_qual = models.CharField(max_length=10)
    det_proc_qual = models.CharField(max_length=255, default="")
    req_embal = models.CharField(max_length=10)
    det_req_embal = models.CharField(max_length=255, default="")

    alt_cli = models.CharField(max_length=10)
    det_alt_cli = models.CharField(max_length=255, default="")
    proc_terc = models.BooleanField(default=False)
    
    not_rec = models.BooleanField( default=False)
    use_device = models.BooleanField( default=False)
    
    obs = models.CharField(max_length=500, default="")
    
    dimensao = models.ForeignKey(Dimensao,on_delete=models.CASCADE, default=1)
    orcam = models.IntegerField(default=0)
    trat_superf = models.CharField(max_length=80, default="")
    trat_term = models.CharField(max_length=80, default="")
    
    class Meta:  
        db_table = "employee_register_employee"
        
class Cotacao(models.Model):
    id = models.AutoField(primary_key=True)
    fullname = models.ForeignKey(Employee, on_delete=models.CASCADE, related_name="fullname_id" ,default="")
    pn = models.ForeignKey(Employee, on_delete=models.CASCADE, related_name="pn_id", default="")
    cliente = models.ForeignKey(Position, on_delete=models.CASCADE, default="")
    contato = models.ForeignKey(Empresa, on_delete=models.CASCADE, default="")
    tipo = models.CharField(max_length=20, default="")
    valor_icms = models.FloatField(default=0)
    valor_iss = models.FloatField(default=0)
    valor_ipi = models.FloatField(default=0)
    valor_cofins = models.FloatField(default=0)
    valor_ir = models.FloatField(default=0)
    valor_csll = models.FloatField(default=0)
    class_fiscal = models.CharField(max_length=15, default='')
    entrega = models.CharField(max_length=40, default='')
    pagamento = models.CharField(max_length=45, default='')
    valid_prop = models.CharField(max_length=10, default='')
    hr_maq = models.FloatField(default=0)
    mp = models.IntegerField(default=0)
    t_superf = models.IntegerField(default=0)
    t_term = models.IntegerField(default=0)
    transp = models.IntegerField(default=0)
    n_recorr = models.IntegerField(default=0)
    preco_total = models.FloatField(default=0)
    preco_icms = models.FloatField(default=0)
    preco_ipi = models.FloatField(default=0)
    preco_venda = models.FloatField(default=0)
    bafo = models.FloatField(default="")
    f_1250 = models.FloatField(default=0)
        
    class Meta:  
        db_table = "employee_register_cotacao"
    
    




