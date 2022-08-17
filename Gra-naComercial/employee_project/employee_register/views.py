from cgitb import text
from msilib.schema import File
from django.shortcuts import render, redirect, HttpResponseRedirect, get_object_or_404
from .forms import EmployeeForm, CotacaoForm, NcmForm
from django.template import loader
from .models import Employee, Empresa, Position, Cotacao, Ncm
from django.contrib import messages
import pdb
from django.views.generic import ListView, CreateView, UpdateView
from django.core.paginator import Paginator
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.pdfbase import pdfmetrics
from django.db.models import Q
from django.http import FileResponse
import io
from reportlab.pdfgen import canvas
from reportlab.lib.units import inch
from reportlab.lib.pagesizes import letter

# Create your views here.
def informe_pdf(request):
    buf = io.BytesIO()
    c = canvas.Canvas(buf, pagesize=letter, bottomup=0)
    textob = c.beginText()
    textob.setTextOrigin(inch, inch)
    textob.setFont('Helvetica', 12)

    
    employee = Employee.objects.all()
    cotacao = Cotacao.objects.all()
    for employee in employee:
        lines = ['Informe', '________________________________________________________', '', 'Cotação:   ' + employee.fullname + '               PN:    ' + employee.mobile + '      REV:    ' + employee.rev,
                 'Cliente:    ' + str(employee.empresa) + '          Contato:   '  + str(employee.position), 'Matéria Prima:   ' + str(employee.materia), 
                 'Data:   ' + str(employee.data_atual) + '       Qtd:    ' + str(employee.quantidade),
                 '________________________________________________________',     
                 ]
    
    
    for cotacao in cotacao:
        liness = ['',
             'Matéria-Prima:      ' + '                 R$ ' + str(cotacao.mp),
             'Tratamento Superficial:        ' +'R$ ' + str(cotacao.t_superf),
             'Tratamento Térmico:          '+'   R$ ' +  str(cotacao.t_term),
             'Transporte:        '+'                    R$ ' + str(cotacao.transp),
             'Não Recorrente:       '+'          R$ ' + str(cotacao.n_recorr),
             '________________________________________________________',
             'TECNOLOGIA' + '                                            HR FABRICAÇÃO',
             '________________________________________________________',
             'FRESA CNC ROMI - 1250:' + '' + '                                  1',
             'FRESA CNC ROMI - 560 e 760:' + '' + '                          0',
             'FRESA CNC HIGH SPEED:' + ''+ '                                0',
             'FRESA CNC HARD METAL:' + ''+ '                               0',
             'FRESA CNC FC39 + WOTAN:' + ''+ '                            0',
             'FRESA CNC 4 EIXOS - 560:' + ''+ '                               0',
             'FRESA CNC 4 EIXOS - 560 HARD METAL:' + ''+ '       0',
             'FRESA CNC HORIZ. MAZAK AÇO e TIT:' + ''+ '           0',
             'FRESA CNC HORIZ. MAZAK ALUMINIO:' + ''+ '           0',
             'AJUSTAGEM DIRETOS:' + ''+ '                                      0',
             'USINAGEM CONVENCIONAL:' + ''+ '                            0',
             'CORTE MP ALUMÍNIO:' + ''+ '                                        0',
             'CORTE MP AÇO E TIT:' + ''+ '                                        0',
             'MONTAGEM E SELAGEM:' + ''+ '                                  0',
             'RETÍFICA CNC:' + ''+ '                                                    0',
             'RETÍFICA CONVENCIONAL:' + ''+ '                               0',
             'INTEGREX AÇO e TITÂNIO:' + ''+ '                                0',
             'INTEGREX ALUMINIO:' + ''+ '                                         0',
             'TORNO CNC G240:' + ''+ '                                              0',
             'TORNO CNC G30:' + ''+ '                                                0',
             'CQ CNC/CONV. DIRETOS:' + ''+ '                                  0',
             '________________________________________________________',
             'TRATAMENTOS SUPERFICIAIS REALIZADOS',
             str('ALODINE  -  LIQUIDO PENETRANTE'),
             '________________________________________________________',
             'TRATAMENTOS TÉRMICOS REALIZADOS',
             '',
             '________________________________________________________',
             'OBSERVAÇÕES DO CLIENTE',
             'Obs.'
        ]
        
    
    
        
       
    for line in lines:
        textob.textLine(line)
        
    for line in liness:
        textob.textLine(line)
        
    c.drawText(textob)
    c.showPage()
    c.save()
    buf.seek(0)
    
    response = FileResponse(buf, content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="informe.pdf"'
    
    return response

        
def create_cotacao(request):
    
    form = CotacaoForm(request.POST or None, request.FILES or None)
    if request.method == 'POST':
        if form.is_valid():
            form.save()
            return redirect('/employee/list')
        else: 
            form = CotacaoForm()
    return render(request, 'employee_register/employee_cotacao.html', {'cotacao': form})


#def employeee_list(request):
    q = request.GET['q']
    query = ("SELECT fullname, mobile, data_final from employee_register_employee where fullname", q)
    #return render(request, 'employee_register/employee_list.html', data)

def employee_list(request):
    if 'q' in request.GET:
        q = request.GET['q']
        multiple_q = Q(Q(fullname__icontains=q) | Q(mobile__icontains=q))
        data = Employee.objects.filter(multiple_q)
    else:    
        data = Employee.objects.all()
        context = {
            'data': data
        }
    return render(request, "employee_register/employee_list.html", {'employee_list':data})
def informe(request, id):
    employee = Employee.objects.get(pk = id)
    form = EmployeeForm(request.POST or None, instance=employee)
    
    return render(request, 'employee_register/informe.html', {'form': form})

def ncm_list(request):
    context = {'ncm': Ncm.objects.all()}
    return render(request, 'employee_register/ncm.html', context)


def new_ncm(request):
    form = NcmForm(request.POST or None, request.FILES or None)
    
    if request.method == 'POST':
        if form.is_valid():
            form.save(commit=False)
            return redirect('/employee/ncm/')
        else:
            form = NcmForm
    return render(request, 'employee_register/ncm_form.html', {'form': form})

def edit_ncm(request, id): 
    employee = Ncm.objects.get(pk = id)
    form = NcmForm(request.POST or None, instance=employee)
    
    if(form.is_valid()):
        form.save()
        return redirect('/employee/ncm', id=employee.id)
    
    return render (request, 'employee_register/ncm_form.html', {'form': form, 'employee': employee})


    
def new_employee(request):
    form = EmployeeForm(request.POST or None, request.FILES or None)
    if request.method == 'POST':
        if form.is_valid():
            employee = form.save(commit=False)
            employee.done = 'doing'
            employee.save()
            return redirect('/employee/list')
    else: 
        form = EmployeeForm()
    return render(request, "employee_register/employee_form.html", {'form': form})

def edit_employee(request, id): 
    employee = Employee.objects.get(pk = id)
    form = EmployeeForm(request.POST or None, instance=employee)
    
    if(form.is_valid()):
        form.save()
        return redirect('/employee/list')
    
    return render (request, 'employee_register/employee_form.html', {'form': form, 'employee': employee})
    
def editt_employee(request, id): 
    employee = Employee.objects.get(id = id)
    form = EmployeeForm(request.POST, instance=employee)
    if (request.method == 'POST'):
        if form.is_valid():
            form.save()
            return redirect('/employees/list')
    return render (request, 'employee_register/employee_form.html', {'form': form, 'employee': employee})

def employee_delete(request,id):
    employee = Employee.objects.get(pk=id)
    employee.delete()
    return redirect('/employee/list')

def view_index(request):
    cotacao = Employee.objects.all()
    return render(request, 'employee_register/index.html', {'cotacao': cotacao})

