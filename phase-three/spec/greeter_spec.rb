# File: spec/greeter_spec.rb

require 'greeter'

RSpec.describe 'Greeter' do 
    it 'Greets the user with their name (Max)' do 
        io = double :io
        expect(io).to receive(:puts).with('What is your name?')
        expect(io).to receive(:gets).and_return('Max')
        expect(io).to receive(:puts).with('Hello, Max!')

        greeter = Greeter.new(io)
        greeter.greet 
    end 

    it 'Greets the user with their name (Coco)' do 
        io = double :io
        expect(io).to receive(:puts).with('What is your name?')
        expect(io).to receive(:gets).and_return('Coco')
        expect(io).to receive(:puts).with('Hello, Coco!')

        greeter = Greeter.new(io)
        greeter.greet 
    end 

end 