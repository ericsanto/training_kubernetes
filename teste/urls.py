from django.urls import path
from .views import teste_sanit_kubernetes


urlpatterns = [
    path('teste-kubernetes/', teste_sanit_kubernetes, name='teste_kubernetes')
]