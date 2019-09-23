from flask import Flask
import sys
import optparse
import time

app = Flask(__name__)

@app.route("/")
def hello_world():

    return "This app has been containerized and is being run on a GKE cluster!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=False)