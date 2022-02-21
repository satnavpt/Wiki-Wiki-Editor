import tensorflow as tf
import preprocessing as pp
import pickle


# get and return prediction
def predict(input_data):

    # load model
    model = pickle.load(open('hate_speech_model.sav', 'rb'))

    # apply preprocessing
    input_data = pp.preprocess(input_data)
    input_data = tf.expand_dims(input_data, -1)

    # get prediction
    prediction = predict(input_data)

    # return prediction
    return prediction