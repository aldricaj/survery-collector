from flask import Flask

app = Flask(__name__)

@app.route('/<collection>/', methods=['GET', 'POST'])
def home(collection):
    if request.method == 'POST':
        pass 
    else:
        pass

@app.route('/')
def root():
    return 'hello'