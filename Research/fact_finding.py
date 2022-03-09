import spacy
import neuralcoref


# print doc split into sentences
def print_sentences(doc_for_sentence_printing):
    print("\n\n\nSENTENCES\n")
    for sentence in doc_for_sentence_printing.sents:
        print(sentence)


# go through text and find root verb
def find_sentence_root(doc):
    root_token = None
    for token in doc:
        if token.dep_ == "ROOT":
            root_token = token
    return root_token


# find all other verbs (not root) within text
def find_other_verbs(doc, root_token):
    other_verbs = []
    for token in doc:
        if (token.pos_ == "VERB" or token.pos_ == "AUX") and token.text != root_token.text:
            other_verbs.append(token)
    return other_verbs


# for a verb in doc, find span of clause and return edge indices
def get_clause_token_span_for_verb(verb, doc, all_verbs):
    first_token_index = len(doc)
    last_token_index = 0
    this_verb_children = list(verb.children)
    for child in this_verb_children:
        if child not in all_verbs:
            if child.i < first_token_index:
                first_token_index = child.i
            if child.i > last_token_index:
                last_token_index = child.i
    return first_token_index, last_token_index


# find clauses within a text
def find_clauses(doc):

    all_clauses = []

    # go through each sentence
    for sentence in doc.sents:
        sentence_doc = nlp(sentence.text)
        # find verbs
        root_token = find_sentence_root(sentence_doc)
        other_verbs = find_other_verbs(sentence_doc, root_token)
        # get spans for each potential clause
        token_spans = []
        all_verbs = [root_token] + other_verbs
        for other_verb in all_verbs:
            (first_token_index, last_token_index) = get_clause_token_span_for_verb(other_verb, sentence_doc, all_verbs)
            token_spans.append((first_token_index, last_token_index))
        # convert spans into text and return
        sentence_clauses = []
        for token_span in token_spans:
            start = token_span[0]
            end = token_span[1]
            if start < end:
                clause = sentence_doc[start:end + 1]
                sentence_clauses.append(clause)
        clauses_text = [clause.text for clause in sentence_clauses]
        all_clauses.extend(clauses_text)

    print("\n\nCLAUSES\n")
    for clause in all_clauses:
        print(clause)


# given a doc, returns start and end indices for all named indices
def get_entity_indices(doc_for_splitting):
    doc_entities = []
    start = -1
    end = -1
    for token in obama_doc:
        if token.ent_iob_ == "B":
            start = token.i
            end = token.i + 1
        elif token.ent_iob_ == "I":
            end += 1
        elif token.ent_iob_ == "O":
            if [start, end] not in doc_entities:
                doc_entities.append([start, end])
    return doc_entities


# return list of start and end indices for all noun chunks
def get_chunk_indices(doc_for_chunking):
    return [[chunk.start, chunk.end] for chunk in doc_for_chunking.noun_chunks]


# given text doc and list of indices, return potential facts
def generate_facts_from_indices(doc_for_facts, indices):
    for i in range(0, len(indices) - 1):
        double_sentence = False
        verb_present = False
        for token in doc_for_facts[indices[i][0]:indices[i + 1][1]]:
            if token.is_sent_end:
                double_sentence = True
            if token.pos_ == "VERB" or token.pos_ == "AUX":
                verb_present = True
        if not double_sentence and verb_present:
            print(doc_for_facts[indices[i][0]:indices[i + 1][1]])


# given a text doc, return potential facts using named entities
def find_facts_using_entities(entity_doc):
    print("\n\nFACTS USING NAMED ENTITIES\n")
    entity_indices = get_entity_indices(entity_doc)
    generate_facts_from_indices(entity_doc, entity_indices)


# given a text doc, return potential facts using noun chunks
def find_facts_using_noun_chunks(chunk_doc):
    print("\n\nFACTS USING NOUN CHUNKS\n")
    chunk_indices = get_chunk_indices(chunk_doc)
    generate_facts_from_indices(chunk_doc, chunk_indices)


# print results
def find_facts(doc):
    print_sentences(doc)
    find_clauses(doc)
    find_facts_using_entities(doc)
    find_facts_using_noun_chunks(doc)


# load pipeline
nlp = spacy.load("en_core_web_sm")
neuralcoref.add_to_pipe(nlp)


# texts for testing
anarchism = "Anarchism is a political philosophy and movement that is sceptical of authority and rejects all involuntary, coercive forms of hierarchy. Anarchism calls for the abolition of the state, which it holds to be unnecessary, undesirable, and harmful. As a historically left-wing movement, placed on the farthest left of the political spectrum, it is usually described alongside communalism and libertarian Marxism as the libertarian wing (libertarian socialism) of the socialist movement, and has a strong historical association with anti-capitalism and socialism."
obama = "Obama was born in Honolulu, Hawaii. After graduating from Columbia University in 1983, he worked as a community organizer in Chicago. In 1988, he enrolled in Harvard Law School, where he was the first black president of the Harvard Law Review. After graduating, he became a civil rights attorney and an academic, teaching constitutional law at the University of Chicago Law School from 1992 to 2004. Turning to elective politics, he represented the 13th district in the Illinois Senate from 1997 until 2004, when he ran for the U.S. Senate. Obama received national attention in 2004 with his March Senate primary win, his well-received July Democratic National Convention keynote address, and his landslide November election to the Senate. In 2008, a year after beginning his campaign, and after a close primary campaign against Hillary Clinton, he was nominated by the Democratic Party for president. Obama was elected over Republican nominee John McCain in the general election and was inaugurated alongside his running mate Joe Biden, on January 20, 2009. Nine months later, he was named the 2009 Nobel Peace Prize laureate, a decision that drew a mixture of praise and criticism."


# apply pipeline to texts
anarchism_doc = nlp(anarchism)
obama_doc = nlp(obama)


# run fact finding on texts
find_facts(obama_doc)
find_facts(anarchism_doc)


# co-reference resolution testing
print("\n\nCO-REFERENCE\n")
print(obama_doc._.has_coref)
print(obama_doc._.coref_clusters)
print(obama_doc)
print(obama_doc._.coref_resolved)
