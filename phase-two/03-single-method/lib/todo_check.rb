def todo_check(text)
    fail "Please enter a string!" if text.empty? || text.class != String

    if text.include?("#TODO")
        true
    else
        false
    end 
end 