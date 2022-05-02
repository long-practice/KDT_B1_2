import os
from inspect import FrameInfo
from django.shortcuts import render
from .models import Titles
from .models import Contents
from .models import Talker
import json

voice_to_num = {'m1': 0, 'm2': 1, 'm3': 2, 'm4' : 3, 'm5': 4, 'm6': 5,
                'w1': 6, 'w2': 7, 'w3': 8, 'w4': 9, 'w5': 10}

# Create your views here.
def index(request):
    print('session:', request.session.session_key)
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

def voicetest(request):
    # create session_id
    if not request.session.session_key:
        request.session.create()
    client_session_id = request.session.session_key

    # wav file directory
    # make audio file directory
    cwd = os.getcwd()
    audio_dir = os.path.join(cwd, 'homepage', 'static', 'file_audio', f'{client_session_id}')
    if not os.path.isdir(audio_dir):
        os.mkdir(audio_dir)

    audio = None

    if request.method == "POST":
        form = request.POST
        if len(form['text']) and form['voice'] != 'None':
            if os.path.isdir(audio_dir):
                for file in os.listdir(audio_dir):
                    os.remove(audio_dir + file)

            text, voice = form['text'], form['voice']

            # command input "python synthesizer"
            # out directory: ....../static/file_audio/{client_session_id}
            synthesizer = '/home/model/KDT_B1/Tacotron2-Wavenet-Korean/synthesizer.py'
            load = 'logdir-tacotron2/++++++++++_2022-04-25_05-21-56'
            cmd = f'python {synthesizer} --load {load} --sample_path {audio_dir} --text "{text}" --speaker_id {voice_to_num[voice]} --num_speakers 11'
            os.system(cmd)

            # waiting making the wav file
            # wav file is made only one file
            while not len(os.listdir(audio_dir)):
                pass

            # get one wav file
            audio = os.listdir(audio_dir)[0]
        else:
            print('wrong form')

        return render(request, 'voicetest.html', audio, client_session_id)

    return render(request, 'voicetest.html')
