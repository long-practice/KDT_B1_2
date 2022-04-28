from inspect import FrameInfo
from django.shortcuts import render
from .models import Titles
from .models import Contents
from .models import Talker
import json

# Create your views here.
def index(request):
    titles = Titles.objects.all()
    context = {'titles': titles}

    return render(request, 'index.html', context)

def folktale1(request, id):
    title = Titles.objects.get(pk=id)
    unordered_contents = title.contents_set.all()
    line_index_list = []
    for i in unordered_contents:
        line_index_list.append(i.line_index)
    
    characters = title.characters.split(',')
    line_index_list_json = json.dumps(line_index_list)

    context = {'contents': unordered_contents, 'title': title, 'characters' : characters , 'line_index_list': line_index_list_json}
    
    return render(request, 'folktale1.html', context)
