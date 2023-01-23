# File: spec/interactive_calc_spec.rb

require 'interactive_calc'

RSpec.describe 'Interactive Calc' do 
    it 'Requests two numbers, and returns the subtracted result as 0' do 
        io = double :io 
        expect(io).to receive(:puts).with('Hello. I will subtract two numbers.') 
        expect(io).to receive(:puts).with('Please enter a number') 
        expect(io).to receive(:gets).and_return('1')
        expect(io).to receive(:puts).with('Please enter another number') 
        expect(io).to receive(:gets).and_return('1')
        expect(io).to receive(:puts).with('Here is your result:') 
        expect(io).to receive(:puts).with('1 - 1 = 0') 

        interactive_calc = InteractiveCalculator.new(io)
        interactive_calc.run 
    end 

    it 'Requests two numbers, and returns the subtracted result as 5' do 
        io = double :io 
        expect(io).to receive(:puts).with('Hello. I will subtract two numbers.') 
        expect(io).to receive(:puts).with('Please enter a number') 
        expect(io).to receive(:gets).and_return('15')
        expect(io).to receive(:puts).with('Please enter another number') 
        expect(io).to receive(:gets).and_return('10')
        expect(io).to receive(:puts).with('Here is your result:') 
        expect(io).to receive(:puts).with('15 - 10 = 5') 

        interactive_calc = InteractiveCalculator.new(io)
        interactive_calc.run 
    end 

    it 'Requests two numbers, and returns the subtracted result as -2' do 
        io = double :io 
        expect(io).to receive(:puts).with('Hello. I will subtract two numbers.') 
        expect(io).to receive(:puts).with('Please enter a number') 
        expect(io).to receive(:gets).and_return('3')
        expect(io).to receive(:puts).with('Please enter another number') 
        expect(io).to receive(:gets).and_return('5')
        expect(io).to receive(:puts).with('Here is your result:') 
        expect(io).to receive(:puts).with('3 - 5 = -2') 

        interactive_calc = InteractiveCalculator.new(io)
        interactive_calc.run 
    end 
end 