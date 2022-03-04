from joblib import dump, load
import pandas as pd


tfidf = None
nmf_model = None

def load_model():
    global tfidf
    global nmf_model
    tfidf = load('../DataSamples/tfidf_60.pkl')
    nmf_model = load('../DataSamples/nmf_60.pkl')

def check_topic_change(original_text, changed_text):
    original = tfidf.transform([original_text])
    orginal_topic = pd.DataFrame(nmf_model.transform(original)).idxmax(axis=1)
    changed = tfidf.transform([changed_text])
    changed_topic = pd.DataFrame(nmf_model.transform(changed)).idxmax(axis=1)

    if orginal_topic[0] != changed_topic[0]:
        return ["It appears the modified article has changed topic in comparison to the original\n\n"]
    return []