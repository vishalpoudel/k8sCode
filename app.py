from flask import Flask
app = Flask(__name__)

@app.route('/')
def My_Kube():
    return "this is hosted by kubernetes: Second version "
