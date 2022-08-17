from django.urls import path,include
from . import views

urlpatterns = [
    path('', views.new_employee,name='employee_insert'), # get and post req. for insert operation
    path('<int:id>/', views.edit_employee,name='employee_update'), # get and post req. for update operation
    path('delete/<int:id>/',views.employee_delete,name='employee_delete'),
    path('list/',views.employee_list,name='employee_list'),
    path('cotacao/',views.create_cotacao,name='cotacao'),
    path('cotacao/<int:id>',views.create_cotacao,name='cotacao'),# get req. to retrieve and display all records
    path('indexx/', views.view_index, name="index"),
    path('cotacao/informe', views.informe_pdf, name="informe_pdf"),
    #path('cotacao/informe', views.informe_pdf, name="informe_pdf"),
    path('ncm/', views.ncm_list, name="ncm_list"),
    path('ncm/new', views.new_ncm, name="new_ncm"),
    path('ncm/edit/<int:id>', views.edit_ncm, name="edit_ncm"),

]