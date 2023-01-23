# File: lib/string_repeater.rb

class StringRepeater
    def initialize(io)
        @io = io
    end

    def run 
        @io.puts "Hello. I will repeat a string many times.\nPlease enter a string"
        input_string = @io.gets.chomp 
        @io.puts 'Please enter a number of repeats'
        number_of_repeats = @io.gets.chomp
        @io.puts "Here is your result:\n #{input_string}"
    end 
end