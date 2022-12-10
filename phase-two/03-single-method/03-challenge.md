# To Do checker Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.
## 2. Design the Method Signature

```ruby
def todo_check(text)
    # Checks if text includes the string '#TODO' => returns true, then refactor to return the text + contains TODO

    # Else returns false / message doesn't contain a todo 

    # EDGE CASES
    # Non-string
    # Todo variations such as #todo #toDo #to-do
end 

```

## 3. Create Examples as Tests
```ruby
#1 - Empty string, raises error message "Please enter a string!"
expect { todo_check("") }.to raise_error "Please enter a string!"

#2 - String with #TODO
expect(todo_check("#TODO")).to eq(true)

#3 - String with the word #TODO
expect(todo_check("#TODO: Go for a walk")).to eq(true)

#4 - String without the word #TODO
expect(todo_check("Go for a run")).to eq(false)


# EDGE CASES - not a string
# Fails if text is an array input
expect { todo_check([]) }.to raise_error "Please enter a string!"


# Fails if text is an integer input
expect { todo_check(123) }.to raise_error "Please enter a string!"

# Checks for alternate cases, such as toDo
expect(todo_check("#toDo: Pick up car")).to eq(true)

# Checks for alternate cases, such as ToDo
expect(todo_check("#ToDo: Grocery shopping")).to eq(true)

```


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._