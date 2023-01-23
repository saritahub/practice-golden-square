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

end 