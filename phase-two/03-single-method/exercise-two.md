# Grammar check Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

```ruby
def grammar_check(text)
    #Checks if text starts with a capital letter and ends with a punctuation mark
    # Returns true if the sentence starts with a capital letter and ends with a punctuation mark 

    # Returns error message if: 
        # It doesn't start with a capital letter AND/OR
        # It doesn't end with a punctuation mark
        # Not a string 
end 

```

## 3. Create Examples as Tests
```ruby
#1 - Checks if the sentence starts with a capital letter
expect(grammar_check("Hey")).to eq(true)

# 2 - Checks if the sentence ends with a punctuation mark 
expect(grammar_check("Hey!")).to eq(true)

# 2 - Checks if the sentence starts with a capital letter and ends with a punctuation mark 
expect(grammar_check("Hey there!")).to eq(true)

# 3 - Fails if the sentence does not start with a capital letter
expect(grammar_check("hey!")).to eq(false)

# 4 - Fails if the sentence does not end with a punctuation mark
expect(grammar_check("Hey")).to eq(false)

# 5 - Fails if the sentence does not start with a capital letter and end with a punctuation mark
expect(grammar_check("hey")).to eq(false)



# EDGE CASES - not a string
# Fails if empty string
expect {grammar_check("")}.to raise_error("Please enter a string with two or more characters!")

# Fails if array input
expect {grammar_check([])}.to raise_error("Please enter a string with two or more characters!")

# Fails if integer input
expect {grammar_check(123)}.to raise_error("Please enter a string with two or more characters!")

```


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._