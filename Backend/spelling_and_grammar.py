import language_tool_python
import re

# input is a string of text
# output is a list indicating any problems (if length is 0 then no problems detected)

tool = None

def init_tool():
    global tool
    tool = language_tool_python.LanguageTool('en-GB')

def spelling_and_grammar(text):

    matches = tool.check(text)
    
    is_bad_rule = lambda rule: rule.message == 'Possible spelling mistake found.' and len(rule.replacements) and rule.replacements[0][0].isupper()
    
    matches = [str(rule) for rule in matches if not is_bad_rule(rule)]
    
    matches = [re.sub("Offset \d+, ", "", m) for m in matches]
    matches = [re.sub("length \d+, ", "", m) for m in matches]
    matches = [re.sub("Rule ID: .*\n", "", m) for m in matches]
    matches = [re.sub("\^+", "", m) for m in matches]
    matches = [re.sub("\s\s+", " ", m) for m in matches]
    matches = [m + "\n\n" for m in matches]

    return matches