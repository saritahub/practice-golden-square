#  count_words string argument 
# returns the number of words in that string.

def count_words(sentence)
    words = sentence.split(/[\s,']/)

    return words.length 
end 