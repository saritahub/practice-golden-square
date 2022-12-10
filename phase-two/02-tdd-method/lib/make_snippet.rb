def make_snippet(sentence)
    if sentence.split(" ").length <= 5
        return sentence
    else 
        snippet = sentence.split(" ")[0..4].join(" ")
        return "#{snippet}..."
    end 
end 