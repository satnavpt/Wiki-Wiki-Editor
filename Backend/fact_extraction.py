import spacy


# given a doc, returns a list of the start and end indices for all noun chunks
def get_chunk_indices(doc_for_chunking):
    start_end_indices = [[chunk.start, chunk.end] for chunk in doc_for_chunking.noun_chunks]
    return start_end_indices


# given a text and list of start and end indices of noun chunks in it,
# combines and filters these to form a list of probable facts in the text
def generate_facts_from_indices(doc_for_facts, indices):
    # initialise list for filtered facts
    found_facts = []
    # iterate through each pair of consecutive noun chunks
    for noun_chunk in range(0, len(indices) - 1):
        # isolate noun chunks and text between
        phrase = doc_for_facts[indices[noun_chunk][0]:indices[noun_chunk + 1][1]]
        # initialise flags for testing
        double_sentence = False
        verb_present = False
        # check each token within the phrase
        for token in phrase:
            # if it marks the end of sentence, phrase most likely not fact
            if token.is_sent_end:
                double_sentence = True
            # if verb then relationship between chunks so possible fact
            if token.pos_ == "VERB" or token.pos_ == "AUX":
                verb_present = True
        # if phrase passes both tests then add to list
        if not double_sentence and verb_present:
            found_facts.append(phrase)
    # return list of found facts
    return found_facts


# given text as a string, returns a list of strings that may be facts within it
def extract_facts(text_data, nlp):
    # apply pipeline to text
    text_doc = nlp(text_data)
    # get list of start and end indices of all noun chunks in text
    noun_chunk_indices = get_chunk_indices(text_doc)
    # get potential facts from text
    facts = generate_facts_from_indices(text_doc, noun_chunk_indices)
    # format facts and return results
    if len(facts) == 0:
        facts_output = []
    else:
        facts_output = ["The following phrases may be facts to be verified: "]
        facts_output.extend(facts)
    return facts_output
