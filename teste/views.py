from django.shortcuts import render
from .models import People


def teste_sanit_kubernetes(request):

    people = People.objects.all()

    context = {
        'people': people
    }
    return render(request, 'teste.html', context)