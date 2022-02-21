import tensorflow as tf
import predict_hate_speech as phs
import pickle

# Use the following Wiki samples for evaluation
#wiki_file = open("./sample_data", "rb")
#wiki_samples = pickle.load(wiki_file)

# evaluate wiki (full articles)
def evaluate_wiki(samples):
    hateCount = 0
    hateNames = []
    hatePredictions = []
    for sample in samples:
        prediction = phs.predict(sample[1])
        if(prediction > 0.8):
            hateCount += 1
            hateNames.append((prediction, sample[0]))
        hatePredictions.append(prediction)
    
    return hateCount, hateNames, hatePredictions

# split input into sentences (needs work)
def sentence_split(sample):
    sentences = []
    text = sample[1]
    if len(text) > 100:
        for i in range(0, len(text), 100):
            sentences.append(text[i:i+100])
    return sentences

# evaluate wiki (on article sentences)
def evaluate_wiki_2(samples):
    hateCount = 0
    hateNames = []
    hatePredictions = []
    for sample in samples:
        sentences = sentence_split(sample)
        for sentence in sentences:
            prediction = phs.predict(sentence)
            if prediction > 0.8:
                hateCount += 1
                hateNames.append((prediction, sentence))
            hatePredictions.append(prediction)
    return hateCount, hateNames, hatePredictions


