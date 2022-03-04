from flask import Flask
from flask import request
from flask_cors import CORS
import main_pipeline

app = Flask(__name__)
CORS(app)

@app.before_first_request
def init_pipeline():
    main_pipeline.init_pipeline()

@app.route("/", methods=["POST"])
def json_example():
    if request.is_json:
        req = request.get_json()
        responseData = getResponse(req)
        return {"feedback": responseData}, 200
    else:
        return "Request was not JSON", 400

def getResponse(data):
    if len(data['text']) == 0:
        return []
    return getPipeline(data)

# example processing of article data
def getCharCount(data):
    return "received " + str(len(data)) + " characters"

def getPipeline(data):
    return main_pipeline.run_pipeline(data['text'], data['original_text'])