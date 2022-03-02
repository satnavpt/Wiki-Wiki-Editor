from pip import main
import spelling_and_grammar as stage1
import sentence_coherence as stage2
import sentiment_analysis as stage3
import spacy

main_bigram_dict = {}
nlp = None

def init_pipeline():
    global main_bigram_dict 
    stage1.init_tool()
    main_bigram_dict = stage2.init_bigram_dict()
    global nlp
    nlp = spacy.load('en_core_web_sm')
    

# text is the user input and force_down_pipeline is a setting that should be off by default
# when on it will push the text down the pipeline regardless if errors are detected
def run_pipeline(changed_text, original_text):

    problems_detected = []

    # stage 1 is spelling and grammar
    problems_detected.extend(stage1.spelling_and_grammar(changed_text))

    # stage 2 is sentence coherence
    unknown_words = stage2.init_coherence(original_text, main_bigram_dict) # words that are not in the bigram dictionary of the original article
    problems_detected.extend(stage2.check_coherence(changed_text, unknown_words, main_bigram_dict)) # check the new edits!
    
    # stage 3 is sentiment analysis
    problems_detected.extend(stage3.check_sentiment(changed_text, nlp))

    # stage 4 is topic modelling


    return problems_detected
