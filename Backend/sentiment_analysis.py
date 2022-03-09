from nltk.sentiment.vader import SentimentIntensityAnalyzer
import spacy


def check_sentiment(text, nlp):
    sid = SentimentIntensityAnalyzer()

    doc = nlp(text)

    problems = []

    for sents in doc.sents:
        score = sid.polarity_scores(sents.text)
        if len(sents) > 10:
            if score['pos'] >= score['neg'] and score['pos'] >= score['neu']:
                problems.append("It appears this sentence is too positive: \"" + sents.text + "\"\n\n")
            elif score['neg'] >= score['pos'] and score['neg'] >= score['neu']:
                problems.append("It appears this article is too negative: \"" + sents.text + "\"\n\n")

    return problems