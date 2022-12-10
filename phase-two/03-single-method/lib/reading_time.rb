def reading_time(text)
    fail "Please input a string." if text.class != String 
    text_length = text.split(" ").length 

    return (text_length.to_f / 200).ceil
end 