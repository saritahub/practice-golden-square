def todo_check(text)
    fail "Please enter a string!" if text.empty? 

    if text.include?("#TODO")
        true
    end 
end 