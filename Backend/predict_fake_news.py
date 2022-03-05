import numpy as np
import re
import pickle
import tensorflow
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing.sequence import pad_sequences
import nltk
from nltk.tokenize import sent_tokenize
nltk.download('punkt')

misinformation_model = load_model('../DataSamples/misinformation_model_LSTM.h5')
with open("../DataSamples/one_hot_encoder", "rb") as f: 
    one_hot = pickle.load(f)

def fake_news_detection(data): 
    detect_sentences = 5 #Maximum number of detections given to the user.  
    words_to_show = 8 #The length of the sentence snippet shown of a detected sentence.  
    sentences = np.asarray(sent_tokenize(data)) #Split data into sentences. 
    one_hot_representations = [one_hot(s, 200000) for s in sentences] 
    #Splits up the words in each sentence and converts them into a unique numerical representation 
    #as the ML model used only operates on numerics. (voc_size = 200000)
    embedded_sentences = pad_sequences(one_hot_representations, padding = 'post', maxlen = 30)
    #Padds or truncates a sentence's one-hot to a length of 30 as the LSTM model created operates on fixed-size data points.
    predictions = np.concatenate(np.asarray(misinformation_model.predict(embedded_sentences)), axis = 0)
    print(predictions)
    #Make a misinformation prediction for each sentence and then combine these into an numpy array.
    detect_sent_index = np.argsort(predictions)[:detect_sentences] #Indicies
    #The sentences selected for detection are those which, according to the model, are most likely to relate to misinfotmation. 
    to_delete = []
    for i in range (0, len(detect_sent_index)): 
        if predictions[detect_sent_index[i]] >= 0.5: #Check whether the detected sentences should actually be flagged (i.e. if they appear to contain misinformation)
            to_delete.append(i)
    detect_sent_index = np.delete(detect_sent_index, to_delete) #Don't flag any sentences which aren't expected to contain misinformation. 
    detected = np.take(sentences, detect_sent_index) #Find the sentences that relate to the flagged misinformation predictions. 
    detected = [((" ".join(s.split()[:words_to_show])) + " ...") for s in detected] #Truncate the detected sentences for ease of printing.
    if len(detected) == 0:
        detected_message = []
    else:
        detected_message = ["These sentences may contain misinformation: "]
        for i in range(0, len(detected)):
            detected_message.append(str(i + 1) + ". " + str(detected[i]))
    return detected_message #An array of sentences to be displayed to the user in the GUI. 