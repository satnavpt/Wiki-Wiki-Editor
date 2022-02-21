# import standard libraries
import numpy as np
import pandas as pd
import pickle

# import preprocessing libraries
import datasets
import preprocessing as pp

# import data modeling libraries
import tensorflow as tf
from tensorflow.keras import layers
from tensorflow.keras import losses
from keras.preprocessing.text import Tokenizer
from keras.preprocessing.sequence import pad_sequences
from sklearn.model_selection import train_test_split

# program constants
    ### NEEDS FINE TUNING ###
MAX_FEATURES = 10000
SEQUENCE_LENGTH = 200
EMBEDDING_DIM = 32

# global vectorizer
vectorizer = None

def main():
    generate_model()
    return 0

# train data vectorizer
def get_vectorizer(training_data):
    temp_vectorizer = layers.TextVectorization(
        max_tokens = MAX_FEATURES,
        output_mode = 'int',
        output_sequence_length = SEQUENCE_LENGTH
    )   
    temp_vectorizer.adapt(training_data['text'])
    return temp_vectorizer

# apply vectorization data
def vectorize_text(data):
    global vectorizer
    text = data[0]
    label = data[1]
    text = tf.expand_dims(text, -1)
    return vectorizer(text), tf.convert_to_tensor(label, dtype = 'int32')

# create NNM 
    ### NEEDS FINE TUNING ###
    # this is just a basic model, more extensive / useful layers may need to be added.
def get_model():
    model = tf.keras.Sequential([
        layers.Embedding(MAX_FEATURES + 1, EMBEDDING_DIM),
        layers.Dropout(0.2),
        layers.GlobalAveragePooling1D(),
        layers.Dropout(0.2),
        layers.Dense(1)
    ])
    
    model.compile(loss=losses.BinaryCrossentropy(from_logits=True),
        optimizer='adam',
        metrics=tf.metrics.BinaryAccuracy(threshold=0.0)
    )

    return model

# generate NNM form dataset
def generate_model():
    global vectorizer

    # get data
    dataset = datasets.load_dataset('ucberkeley-dlab/measuring-hate-speech', 'binary')
    df = dataset['train'].to_pandas()

    # clean up dataset
    data = df[['text', 'hate_speech_score']]

    # set cut-off point
        ### NEEDS FINE TUNING ###
        # data['hate_speech_score'] is initially a continuous value about 0 with: positive = hate speech, negative = not hate speech
        # need to choose theshold that gives good prediction results 
    data['hate_speech_score']  = (data['hate_speech_score'] > 0).astype(int)

    # applying preprocessing
    data['text'] = data['text'].apply(lambda x : pp.preprocess(x))

    # split into training and testing sets
    data_train, data_test = train_test_split(data, test_size = 0.2, random_state = 1)

    # get vectorizer
    vectorizer = get_vectorizer(data_train)

    # apply vectorization
    data_train2 = np.array(data_train.apply(vectorize_text, axis = 1))
    data_test2 = np.array(data_test.apply(vectorize_text, axis = 1))

    # split into training and testing data and lebels
    train_x = tf.squeeze(np.array([data[0] for data in data_train2]))
    train_y = tf.squeeze(np.array([data[1] for data in data_train2]))
    test_x = tf.squeeze(np.array([data[0] for data in data_test2]))
    test_y = tf.squeeze(np.array([data[1] for data in data_test2]))

    # get model
    model = get_model()

    # train model
    history = model.fit(train_x, train_y, validation_data = (test_x, test_y), epochs = 10)

    # create prediction model
    prediction_model = tf.keras.Sequential([
        tf.keras.Input(shape=(1,), dtype=tf.string),
        vectorizer,
        model,
        layers.Activation('sigmoid')
    ])

    # compile prediction model
    prediction_model.compile(
        loss=losses.BinaryCrossentropy(from_logits=False), optimizer="adam", metrics=['accuracy']
    )

    # save model
    model_filename = 'hate_speech_model.sav'
    pickle.dump(prediction_model, open(model_filename, 'wb'))



# return prediction on data using model
def get_prediction(input_data, model):
    input_data = preprocess(input_data)
    input_data = tf.expand_dims(input_data, -1)
    return model.predict(input_data)

def predict(input_data):

    # load model
    model = pickle.load(open('hate_speech_model.sav', 'rb'))

    # return prediction
    return get_prediction(input_data, model)


# start
if __name__ == "__main__":
    main()