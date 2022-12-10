def grammar_check(text)
    fail "Please enter a string with two or more characters!" if text.class != String || text.length <= 2

    first_char = text[0] == text[0].upcase 
    last_char = text[-1] == "!"

    if first_char && last_char
        true
    elsif !last_char && !first_char
        "Sentence does not start with a capital letter and end in a puncutation mark!"
    elsif !last_char
        "Sentence does not end in a puncutation mark!"
    elsif !first_char
        "Sentence does not start with a capital letter!"
    end  
end 