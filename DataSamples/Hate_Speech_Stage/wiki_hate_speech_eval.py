import tensorflow as tf
import predict_hate_speech as phs
import preprocessing as pp

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

# evaluate wiki (on article sentences)
def evaluate_wiki_2(samples):
    hateCount = 0
    hateNames = []
    hatePredictions = []
    for sample in samples:
        sentences = pp.sentence_split(sample)
        for sentence in sentences:
            prediction = phs.predict(sentence)
            if prediction > 0.8:
                hateCount += 1
                hateNames.append((prediction, sentence))
            hatePredictions.append(prediction)
    return hateCount, hateNames, hatePredictions


