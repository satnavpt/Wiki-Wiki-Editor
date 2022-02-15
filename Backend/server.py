from flask import Flask
from flask import request

app = Flask(__name__)

@app.route("/", methods=["POST"])
def json_example():
    if request.is_json:
        req = request.get_json()
        responseData = getResponse(req)
        return {"feedback": responseData}, 200
    else:
        return "Request was not JSON", 400

def getResponse(data):
    return getCharCount(data["text"])

# example processing of article data
def getCharCount(data):
    return "received " + str(len(data)) + " characters"