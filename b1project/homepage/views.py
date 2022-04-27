from django.shortcuts import render
from .models import Titles
from .models import Contents

# Create your views here.
def index(request):
    titles = Titles.objects.all()
    context = {'titles': titles}

    return render(request, 'index.html', context)

def folktale1(request, id):
    print('forktale in' + str(request))
    title = Titles.objects.get(pk=id)
    print(title)
    print('forktale db select')
    unordered_contents = title.contents_set.all()
    unordered_contents_only = []
    for i in unordered_contents :
        unordered_contents_only.append(i.contents)
    contents = ' '.join(unordered_contents_only)
    context = {'contents': contents, 'title': title}
    print(contents)

    return render(request, 'folktale1.html', context)

def voicetest(request):
    print('voicetest in' + str(request))
    print('voicetest db select')
    # unordered_contents = title.contents_set.all()
    # unordered_contents_only = []
    # for i in unordered_contents :
    #     unordered_contents_only.append(i.contents)
    # contents = ''.join(unordered_contents_only)
    # context = {'contents': contents, 'title': title}
    # print(contents)
    if request.method == "POST":
        print(request.POST)
        form = request.POST
        if form.is_valid():
            text = request.POST['text']

    return render(request, 'voicetest.html')
