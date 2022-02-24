import re
import nltk
nltk.download('stopwords')
from nltk.corpus import stopwords as stop


# preprocess training text
def preprocess_training(text):
    
    # set all characters to lower case
    text = text.lower()

    # remove all punctuation
    text = re.sub('[^a-zA-Z]', ' ', text)

    # remove all 1 letter words
    text = re.sub('\s+[a-zA-Z]\s+', ' ', text)

    # remove excess whitespace
    text = re.sub('\s+', ' ', text)

    # remove stop words
    stop_list = stop.words('english')
    for word in text.split(' '):
        if (word in stop_list):
            word = ' ' + word + ' '
            text = text.replace(word, ' ')

    # remove new excess whitespace
    text = re.sub('\s+', ' ', text)

    return text


# split input into sentences (needs work)
def sentence_split(sample):
    sentences = []
    text = sample[1]
    if len(text) > 100:
        for i in range(0, len(text), 100):
            sentences.append(text[i:i+100])
    return sentences

# preprocess prediction text
def preprocess_prediction(text):
    sentences = sentence_split(text)
    sentences = [preprocess_training(sentence) for sentence in sentences]
    return sentences
