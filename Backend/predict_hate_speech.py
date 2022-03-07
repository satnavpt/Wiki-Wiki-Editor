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

#global profanity checker
bad_words = {}

# load model
def load_model():
    global model
    opt = tf.saved_model.LoadOptions(experimental_io_device='/job:localhost')
    model = tf.keras.models.load_model('../DataSamples/model/', options=opt)

def rot_13_convert(character):
    chars = "abcdefghijklmnopqrstuvwxyz"
    old_index = chars.find(character)
    if old_index == -1:
        return character

    new_index = (old_index + 13) % 26
    return chars[new_index]

def rot_13_convert_word(word):
    chars = [rot_13_convert(char) for char in word]
    return ''.join(chars)

def load_bad_words():
    global bad_words
    with open("../DataSamples/HateSpeechStage/encoded_bad_words.txt", "r") as f:
        for line in f.readlines():
            word = rot_13_convert_word(word)
            bad_words.add(word)

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
    return [f'{error_message} "{prediction[1]} "\n\n' for prediction in predictions if prediction[0] > cutoff]
