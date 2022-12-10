#  count_words string argument 
# returns the number of words in that string.

def count_words(sentence)
    delimiters = [' ,', /\s/, "'"]
    words = sentence.scan(/\w+/)

    return words.length 
end 