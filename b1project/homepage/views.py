from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'index.html')

def folktale1(request):
    return render(request, 'folktale1.html')