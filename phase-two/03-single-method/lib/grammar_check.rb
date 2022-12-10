def grammar_check(text)
    text_check = text[0] == text[0].upcase && text[-1] == "!"
    if text_check
        true
    else
        false
    end  
end 