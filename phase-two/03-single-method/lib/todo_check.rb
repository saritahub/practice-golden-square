def todo_check(text)
    fail "Please enter a string!" if text.class != String || text.empty?

    text.upcase.include?("#TODO") ? true : false 
end 