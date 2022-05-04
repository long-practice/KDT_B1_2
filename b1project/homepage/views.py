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
    no_voice_titles = [4, 8, 9, 11, 13, 14, 15, 16, 17]
    titles = Titles.objects.all()
    titles_with_voice = []
    for title in titles :
        if title.id not in no_voice_titles :
            titles_with_voice.append(title)

    context = {'titles': titles_with_voice}
    
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
    os.chdir('/home/app/KDT_B1_2/b1project')
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
                    os.remove(audio_dir + '/' +  file)

            text, voice = form['text'], form['voice']

            # command input "python synthesizer"
            # out directory: ....../static/file_audio/{client_session_id}
            synthesizer = '/home/model/KDT_B1/Tacotron2-Wavenet-Korean-TTS/synthesizer.py'
            load = 'logdir-tacotron2/50000steps'
            cmd = f'python {synthesizer} --load {load} --sample_path {audio_dir} --text "{text}" --speaker_id {voice_to_num[voice]} --num_speakers 11'
            os.chdir('/home/model/KDT_B1/Tacotron2-Wavenet-Korean-TTS/')
            os.system(cmd)
            #os.system(f'python /home/model/KDT_B1/Tacotron2-Wavenet-Korean-TTS/batch2.py --cmd "{cmd}"')
            
            # waiting making the wav file
            # wav file is made only one file
            #while not len(os.listdir(audio_dir)):
            #    pass

            # get one wav file
            print(os.listdir(audio_dir))
            for file_name in os.listdir(audio_dir) :
                if 'wav' in file_name :
                    audio = file_name
                    break
            print(audio)
            os.chdir(f'{cwd}')
        else:
            print('wrong form')
        
        context = {'audio_name': audio, 'client_session_id':client_session_id}

        return render(request, 'voicetest.html', context)

    return render(request, 'voicetest.html')
