#  make_snippet takes a string argument
#  and returns the first five words and then a '...' 
#  if there are more than that.

def make_snippet(sentence)
    if sentence.split(" ").length <= 5
        return sentence
    else 
        snippet = sentence.split(" ")[0..4].join(" ")
        return snippet + "..."
    end 
end 