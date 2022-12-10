# Reading time Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

```ruby
# `reading_time` extracts the reading time for a text 

#1, empty string
reading_estimate = reading_time(" ")
# Returns 0

#2
reading_estimate = reading_time("Hello" * 200)
# Returns 1 

#3
reading_estimate = reading_time("Hello" * 400)
# Returns 2

#4, rounds number up to nearest integer
reading_estimate = reading_time("Hello" * 500)
# Returns 3 => (500.to_f / 200).ceil

#5, rounds number up to nearest integer
reading_estimate = reading_time("Hello" * 1500)
# Returns 8

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
#1 Empty string
expect(reading_estimate = reading_time(" ")).to eq(0)

#2 Returns 1, as the user can read 200 wpm and there are 200 words
expect(reading_estimate = reading_time("Hello" * 200)).to eq(1)

#2 Returns 2, as the user can read 200 wpm and there are 400 words
expect(reading_estimate = reading_time("Hello" * 400)).to eq(2)

#3 Rounds up to the nearest integer. Returns 3, as the user can read 200 wpm and there are 500 words
expect(reading_estimate = reading_time("Hello" * 500)).to eq(2)

#4 Rounds up to the nearest integer. Returns 8, as the user can read 200 wpm and there are 1500 words
expect(reading_estimate = reading_time("Hello" * 1500)).to eq(8)

# EDGE CASES - not a string
#5 Fails if the input is an array
expect {reading_estimate = reading_time([])}.to raise_error("Please input a string.")

#6 Fails if the input is made up of integers
expect {reading_estimate = reading_time(123))}.to raise_error("Please input a string.")

```


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._