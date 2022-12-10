def reading_time(text)
    text_length = text.split(" ").length 

    return (text_length.to_f / 200).ceil
end 