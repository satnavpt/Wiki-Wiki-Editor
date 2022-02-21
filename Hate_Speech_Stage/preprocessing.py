import re
import nltk
nltk.download('stopwords')
from nltk.corpus import stopwords as stop


# preprocess input text
def preprocess(text):
    
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