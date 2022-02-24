import tensorflow as tf
import preprocessing as pp
import pickle


# get and return prediction
def predict(input_data):

    # load model
    model = pickle.load(open('hate_speech_model.sav', 'rb'))

    # apply preprocessing
    input_data_list = pp.preprocess_prediction(input_data)
    input_data_list = [tf.expand_dims(sentence, -1) for sentence in input_data_list]

    # get prediction
    output = []
    for data in input_data_list:
        prediction = model.predict(data)
        output.append((prediction, data))

    # return predictions and associated data
    return output