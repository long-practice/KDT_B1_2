import os

from django.shortcuts import render
from .models import Titles
from .models import Contents

voice_to_num = {'m1': 0, 'm2': 1, 'm3': 2, 'm4' : 3, 'm5': 4, 'm6': 5,
                'w1': 6, 'w2': 7, 'w3': 8, 'w4': 9, 'w5': 10}

# Create your views here.
def index(request):
    print('session:', request.session.session_key)
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
    # create session_id
    if not request.session.session_key:
        request.session.create()
    client_session_id = request.session.session_key

    audio = None

    if request.method == "POST":
        # wav file directory
        cwd = os.getcwd()
        audio_dir = os.path.join(cwd, 'static', 'file_audio', f'{client_session_id}')

        form = request.POST
        if len(form['text']) and form['voice'] != 'None':
            for file in os.listdir(audio_dir):
                os.remove(audio_dir + file)

            text, voice = form['text'], form['voice']

            # command input "python synthesizer"
            # out directory: ....../static/file_audio/{client_session_id}
            synthesizer = '/home/workspace/model/KDT_B1/Tacotron2-Wavenet-Korean/synthesizer.py'
            cmd = f'python {synthesizer} --sample_path {audio_dir} --text "{text}" --speaker_id {voice_to_num[voice]}'
            os.system(cmd)

            # waiting making the wav file
            # wav file is made only one file
            while len(os.listdir(audio_dir)):
                pass

            # get one wav file
            audio = os.listdir(audio_dir)[0]
        else:
            print('wrong form')

        return render(request, 'voicetest.html', audio, client_session_id)

    return render(request, 'voicetest.html')
