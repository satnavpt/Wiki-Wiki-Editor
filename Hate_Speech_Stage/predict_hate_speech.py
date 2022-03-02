import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
import preprocessing as pp
import pickle

# constants
cutoff = 0.6
error_message = "This sentence seems to contain hateful content, consider changing it: "

# global model
model = None

# load model
def load_model():
    global model
    model = pickle.load(open('hate_speech_model.sav', 'rb'))

# get and return prediction
def predict(input_data):
    global model

    # apply preprocessing
    input_data_list, sentences = pp.preprocess_prediction(input_data)
    input_data_list = [tf.expand_dims(sentence, -1) for sentence in input_data_list]
    input_data_list = zip(input_data_list, sentences)

    # get prediction
    output = map(lambda x: (model.predict(x[0]), x[1]), input_data_list)
    
    # return predictions and associated data
    return output    


# return any sentences with high predicted hate speech
def contains_hate_speech(input):
    predictions = predict(input)
    return [error_message + '"' + prediction[1] + '"' for prediction in predictions if prediction[0] > cutoff]
