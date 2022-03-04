import nltk
import pickle
import glob

def add_new_dict(bigram_path, main_bigram_dict):
    with open(bigram_path, "rb") as to_add:
        to_add_dict = pickle.load(to_add)
        for key in to_add_dict.keys():
            if main_bigram_dict.get(key) == None:
                main_bigram_dict.update({key : to_add_dict.get(key)})
            else:
                main_bigram_dict.update({key : main_bigram_dict.get(key) + to_add_dict.get(key)})

def init_bigram_dict():
    main_bigram_dict = {}
    paths = glob.glob("../DataSamples/Bigrams/*")
    for p in paths:
        print("Adding ", p)
        add_new_dict(p, main_bigram_dict)
    print(len(main_bigram_dict))
    return main_bigram_dict

def init_coherence(initial_text, main_bigram_dict):

    tokens = nltk.word_tokenize(initial_text)
    
    # assume what is on wikipedia is already valid
    bigrams = nltk.bigrams(tokens)
    
    unknown_words = set()
    
    for bigram in bigrams:
        # add words to the set of words that are not in the bigrams dictionary
        if (main_bigram_dict.get(bigram) == None or main_bigram_dict.get(bigram) < 25) and bigram[0].isalnum() and bigram[1].isalnum() and \
            not bigram[0].isnumeric() and not bigram[1].isnumeric():
            unknown_words.update(bigram)
    
    return unknown_words

def check_coherence(text, unknown_words, main_bigram_dict):
    tokens = nltk.word_tokenize(text)
    
    bigrams = nltk.bigrams(tokens)
    
    bigrams_with_index = []
    count = 0
    for bigram in bigrams:
        bigrams_with_index.append((bigram, count))
        count += 1
        
    new_bigrams = []
    
    # index associated with every bigram is index of the first word
    for bigram in bigrams_with_index:
        if bigram[0][0].isalnum() and bigram[0][1].isalnum():
            new_bigrams.append(bigram)

    unknown_bigrams = []
            
    for bigram in new_bigrams:
        if (main_bigram_dict.get(bigram[0]) == None or main_bigram_dict.get(bigram[0]) < 25) and not bigram[0][0].isnumeric() and not bigram[0][1].isnumeric():
            if not (bigram[0][0] in unknown_words or bigram[0][1] in unknown_words):
                unknown_bigrams.append("Rarely seen pair used: " + str(bigram[0]) + "\n\n")
                
    return unknown_bigrams