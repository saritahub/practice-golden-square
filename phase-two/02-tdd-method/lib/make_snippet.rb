def make_snippet(sentence)
    words = sentence.split(" ")
    
    if words.length <= 5
        return sentence
    else 
        snippet = words[0..4].join(" ")
        return "#{snippet}..."
    end 
end 