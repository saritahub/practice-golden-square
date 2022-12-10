def grammar_check(text)
    fail "Please enter a string with two or more characters!" if text.length <= 2

    first_char = text[0] == text[0].upcase 
    last_char = text[-1] == "!"

    if first_char && last_char
        true
    else
        false
    end  
end 