def todo_check(text)
    fail "Please enter a string!" if text.class != String || text.empty?

    if text.upcase.include?("#TODO")
        true
    else
        false
    end 
end 