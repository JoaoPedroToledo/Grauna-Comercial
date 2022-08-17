from attr import attr
from django import forms
from .models import Employee, Cotacao, Ncm
from datetime import date
from django.utils.safestring import mark_safe


CHOICES_RADIO=[('truee', 'SIM  (YES)'),
        ('false','NÃO  (NO)')]

CHOICES=[('Cotação em Aberto','Cotação em Aberto'),
         ('Enviado para o Cliente','Enviado para o Cliente'),
         ('BAFO','BAFO'),
         ('Item Ganho','Item Ganho')]

TRATAMENTOS_SUPERF=[('Alodine','Alodine'),
('Anodização Crômica','Anodização Crômica'),('Líquido Penetrante','Líquido Penetrante'),('Antibiológico','Antibiológico'),('Tinta Poliuterano','Tinta Poliuterano'),('Passivação','Passivação'),('Metalização | Isolamento Pontos:','Metalização | Isolamento Pontos:'),
('Anodização Sulfúrica Incolor','Anodização Sulfúrica Incolor'),('Anodização Sulfúrica Colorida','Anodização Sulfúrica Colorida'),('Anodização Dura','Anodização Dura'),('Partícula Magnética','Partícula Magnética'),('Shoot Peening','Shoot Peening'),
('Cádmio','Cádmio'),('Fosfatização','Fosfatização'),('Jateamento','Jateamento'),('Oxidação Negra','Oxidação Negra'),('Óleo Protetivo','Óleo Protetivo'), ('Zinco Níquel', 'Zinco Níquel'), ('Ataque Nital', 'Ataque Nital'), ('Cromo', 'Cromo'), ('Desidrogenização', 'Desidrogenização')]

TRATAMENTOS_TERM=[('Endur. Precipitação', 'Endur. Precipitação'),('Endur. Têmpera e Revenimento', 'Endur. Têmpera e Revenimento'),('Endur. Precipitação A286', 'Endur. Precipitação A286'),('Sub Zero', 'Sub Zero'),('Têmpera e Revenimento (AOG)', 'Têmpera e Revenimento (AOG)'),
('Endur. e Precipitação (AOG', 'Endur. e Precipitação (AOG)'),('Alívio de Tensão', 'Alívio de Tensão'),('Inspeção Metalográfica', 'Inspeção Metalográfica'), ('Ensaio de Tração', 'Ensaio de Tração') ]

class DateInput(forms.DateInput):  
    input_type = 'date'

class DateTimePickerInput(forms.DateTimeInput):
        input_type = 'datetime'

class EmployeeForm(forms.ModelForm):
    req_cert = forms.ChoiceField(choices=CHOICES_RADIO, widget=forms.RadioSelect, label="Requisitos de Certificação da Qualidade conforme requerido? (Quality certification requirements as required?) :")
    proc_qual = forms.ChoiceField(choices=CHOICES_RADIO, widget=forms.RadioSelect, label="Existem requisitos ligados à normas e processos especiais não qualificados?(Are there requirements related to special unqualified standards and processes?):")
    req_embal = forms.ChoiceField(choices=CHOICES_RADIO, widget=forms.RadioSelect, label="Existem requisitos específicos de embalagem? (Are there specific packaging requirements?):")
    alt_cli = forms.ChoiceField(choices=CHOICES_RADIO, widget=forms.RadioSelect, label="Necessária alteração do processo do cliente? (Need to change the customers process?):")
    trat_superf = forms.MultipleChoiceField(label="Tratamentos Superficiais", choices=TRATAMENTOS_SUPERF, widget=forms.CheckboxSelectMultiple)
    trat_term = forms.MultipleChoiceField(label="Tratamentos Térmicos", choices=TRATAMENTOS_TERM, widget=forms.CheckboxSelectMultiple)
    data_final = forms.DateTimeField(widget=DateTimePickerInput)
    

    class Meta:
        model = Employee
        
        
        fields = ('fullname','mobile', 'rev','position', 'empresa', 'materia', 'descricao', 'quantidade', 'data_atual','data_final', 'senha', 'assinatura','cotacao', 'risco_nt','det_risco_nt',
                  'risco_pe', 'det_risco_pe', 'risco_fin', 'det_risco_fin', 'rec_disp', 'det_rec_disp', 'tol', 'det_tol', 'risco_trat', 'det_risco_trat', 
                  'anot_risco', 'det_anot_risco', 'not_aplic', 'decline', 'av_cli', 'req_cert', 'det_req_cert', 'proc_qual', 'det_proc_qual',
                  'req_embal', 'det_req_embal', 'alt_cli', 'det_alt_cli', 'proc_terc', 'not_rec', 'use_device', 'obs', 'trat_superf', 'trat_term', 'dimensao'    
                      )
        
        
        
        labels = {
            'fullname':'Nº da Cotação (Quote Number)',
            'mobile': 'PN',
            'rev': 'Rev',
            'quantidade':'Qtd.(Qty)',
            'data_atual': 'Data(Date)',
            'data_final': 'Data Final(Final Date)',
            'position': 'Cliente(Client)',
            'empresa': 'Contato(Contact)',
            'cotacao': '',
            'assinatura':'Senha(Password)',
            'senha': 'Ass. Eletronica (Sign Eletronic)',
            'materia': 'Materia Prima(Raw Material)',
            'descricao': 'Descrição(Description)',
            'risco_nt': 'Risco de Novas Tecnologias (New Technologies Risk):',
            'det_risco_nt': 'Detalhar(Detail):',
            'risco_pe':'Risco de Prazo de Entrega (Delivery Time Risk):',
            'det_risco_pe': 'Detalhar(Detail)',
            'risco_fin': 'Risco Financeiro (Financial Risk):',
            'det_risco_fin': 'Detalhar(Detail):',
            'rec_disp':'Existem recursos disponíveis (máquinas, ferramentas) para fabricação do item?(Are there resources available (machines, tools) to manufacture the item?):',
            'det_rec_disp': 'Detalhar(Detail):',
            'tol': 'Tolerâncias especificadas podem ser verificadas com os meios de medição disponíveis?(Can specified tolerances be checked with the available measuring instruments?):',
            'det_tol': 'Detalhar(Detail):',
            'risco_trat': 'Risco de Tratamento Térmico e/ou Superficial? (Risk of Heat and / or Surface Treatment?): ',
            'det_risco_trat': 'Detalhar(Detail):',
            'anot_risco': 'Outros riscos (Other risks):',
            'det_anot_risco': 'Detalhar(Detail):',
            'not_aplic': 'Não aplicável (Not applicable):',
            'decline': 'Declinar?(Decline?) ',
            'av_cli': 'Avisado cliente?(Customer Warned?)',
            'req_cert': 'Requisitos de Certificação da Qualidade conforme requerido? (Quality certification requirements as required?) :',
            'det_req_cert': 'Detalhar(Detail):',
            'proc_qual': 'Existem requisitos ligados à normas e processos especiais não qualificados?(Are there requirements related to special unqualified standards and processes?):',
            'det_proc_qual': 'Detalhar(Detail):',
            'req_embal': 'Existem requisitos específicos de embalagem? (Are there specific packaging requirements?):',
            'det_req_embal': 'Detalhar(Detail):',
            'alt_cli': 'Necessária alteração do processo do cliente? (Need to change the customers process?): ',
            'det_alt_cli': 'Detalhar(Detail):',
            'proc_terc': 'Existem processos de terceiros? (Are there any Sub-tier Supplier processes?): ',
            'not_rec': 'Não recorrente? (Not recurring?):',
            'use_device':'Utiliza Dispositivo? (Use Device?):',
            'obs': 'Obs.'
        }
        
        widgets = {
            'senha': forms.PasswordInput(attrs={'id': 'id_senha'}),
            'assinatura': forms.TextInput(attrs={'id': 'id_assinatura', 'disabled': 'disabled'}),
            'cotacao': forms.RadioSelect(choices=CHOICES, attrs={'style': 'display: inline-block'}),
            'data_atual': forms.DateInput(attrs={'disabled': 'disabled'}),
            'det_risco_nt': forms.HiddenInput(attrs={'id':'det_risco_nt'}),
            'det_risco_pe': forms.HiddenInput(attrs={'id':'det_risco_pe'}),
            'det_risco_fin': forms.HiddenInput(attrs={'id':'det_risco_fin'}),
            'det_rec_disp': forms.HiddenInput(attrs={'id':'det_rec_disp'}),
            'det_tol': forms.HiddenInput(attrs={'id':'det_tol'}),
            'det_risco_trat': forms.HiddenInput(attrs={'id':'det_risco_trat'}),
            'det_anot_risco': forms.HiddenInput(attrs={'id':'det_anot_risco'}),
            'av_cli': forms.HiddenInput(attrs={'id':'av_cli'}),
            'det_alt_cli': forms.HiddenInput(attrs={'id':'det_alt_cli'}),
            'det_req_cert': forms.HiddenInput(attrs={'id':'det_req_cert'}),
            'det_proc_qual': forms.HiddenInput(attrs={'id':'det_proc_qual'}),
            'det_req_embal': forms.HiddenInput(attrs={'id':'det_req_embal'}),
            'obs': forms.Textarea(attrs={'cols': 80, 'rows': 2})  
        }
        
        #cotacao = Employee.fullname + Employee.mobile
            
        

    def __init__(self, *args, **kwargs):
        super(EmployeeForm,self).__init__(*args, **kwargs)
        self.fields['position'].empty_label = "Selecione"
        self.fields['empresa'].empty_label = "Selecione"
        self.fields['materia'].empty_label = "Selecione"
        self.fields['det_risco_nt'].required = False
        self.fields['det_risco_pe'].required = False
        self.fields['det_risco_fin'].required = False
        self.fields['det_rec_disp'].required = False
        self.fields['det_tol'].required = False
        self.fields['det_risco_trat'].required = False
        self.fields['det_anot_risco'].required = False
        self.fields['det_req_cert'].required = False
        self.fields['det_proc_qual'].required = False
        self.fields['det_req_embal'].required = False
        self.fields['det_alt_cli'].required = False
        self.fields['obs'].required = False
        self.fields['cotacao'].required = False
        self.fields['data_atual'].required = False
        self.fields['trat_superf'].required = False
        self.fields['trat_term'].required = False
        self.fields['dimensao'].required = False
        self.fields['assinatura'].required = False           
            
            
class CotacaoForm(forms.ModelForm):
    class Meta:
        model = Cotacao
        
        
        fields = ('fullname','pn', 'cliente','contato', 'tipo', 'valor_icms', 'valor_iss', 'valor_ipi', 'valor_cofins','valor_ir', 'valor_csll','class_fiscal', 'entrega','pagamento',
                  'valid_prop', 'hr_maq', 'mp', 't_superf', 't_term', 'transp', 'n_recorr', 'preco_total', 'preco_icms', 'preco_ipi', 
                  'preco_venda', 'bafo', 'f_1250'    
                      )
        
        
        
class NcmForm(forms.ModelForm):
    class Meta:
        model = Ncm
        
        fields = ('codigo', 'aliquota', 'icms')
        
        labels = {
            'codigo':'CODIGO',
            'aliquota':'Aliquota (%)',
            'icms': 'ICMS (%)',
        }