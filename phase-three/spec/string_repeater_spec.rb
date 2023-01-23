# File: spec/string_repeater_spec.rb

require 'string_repeater'

RSpec.describe StringRepeater do 
    it 'Returns the string once' do 
        io = double :io 
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string")
        expect(io).to receive(:gets).and_return('TWIX')
        expect(io).to receive(:puts).with('Please enter a number of repeats')
        expect(io).to receive(:gets).and_return('1')
        expect(io).to receive(:puts).with("Here is your result:\n TWIX")

        string_repeater = StringRepeater.new(io)
        string_repeater.run 
    end 

    it 'Returns the string twice' do 
        io = double :io 
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string")
        expect(io).to receive(:gets).and_return('Dogs')
        expect(io).to receive(:puts).with('Please enter a number of repeats')
        expect(io).to receive(:gets).and_return('2')
        expect(io).to receive(:puts).with("Here is your result:\n DogsDogs")

        string_repeater = StringRepeater.new(io)
        string_repeater.run 
    end 

    it 'Returns the string 10 times' do 
        io = double :io 
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string")
        expect(io).to receive(:gets).and_return('Hi')
        expect(io).to receive(:puts).with('Please enter a number of repeats')
        expect(io).to receive(:gets).and_return('10')
        expect(io).to receive(:puts).with("Here is your result:\n #{'Hi' * 10}")

        string_repeater = StringRepeater.new(io)
        string_repeater.run 
    end 

end 