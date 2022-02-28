import re
import nltk
nltk.download('stopwords', quiet = True)
from nltk.corpus import stopwords as stop
nltk.download('punkt', quiet = True)


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
    text = sample[1]
    sentences = nltk.tokenize.sent_tokenize(text)
    return sentences

# preprocess prediction text
def preprocess_prediction(text):
    sentences = sentence_split(text)
    processed_sentences = [preprocess_training(sentence) for sentence in sentences]
    return processed_sentences, sentences