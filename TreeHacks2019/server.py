from flask import Flask, request, render_template, send_file
import os

app = Flask(__name__)

@app.route('/', methods=["GET"])
def home():
    return render_template('index.html', message="This is a walkie talkie.")

@app.route('/', methods=["POST"])
def buttons():
    print("Button pressed")
    if 'Spy Button' in request.form:
        record_LED()
        make_recording()
        return render_template('audio.html', audio_file="recording.wav")
        #print("In spy")
    elif 'Safety Button' in request.form:
        play_recording()
        #print("In safety")
        return render_template('index.html', message="Success!")


@app.route('/green', methods=["GET"])
def green():
    return render_template('green.html')

@app.route('/green', methods=["POST"])
def button_press():
    if request.form['Green Button'] == 'PUSH!':
        os.system('~/matrix-hal-examples/everloop/everloop_green &')
        return "Lights on!"
    else:
        return "whattt"

@app.route('/safety')
def safety_page():
    return render_template('safety.html')

@app.route('/sound/<file_name>')
def sound(file_name):
    return send_file("static/"+file_name)

@app.route('/record')
def record_page():
    return render_template('green.html')

@app.route('/record', methods=["POST"])
def record():
    os.system('arecord ~/TreeHacks2019/static/recording.wav -f S16_LE -r 16000 -d 5')
    return send_file("static/recording.wav")

def record_LED():
    os.system('~/matrix-hal-examples/everloop/everloop_rainbow &')

def make_recording():
    os.system('arecord ~/TreeHacks2019/static/recording.wav -f S16_LE -r 16000 -d 5')

def play_recording():
    os.system('aplay ~/TreeHacks2019/static/safety.wav')

if __name__ == "__main__":
    app.run(debug=True)
