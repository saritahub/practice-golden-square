# File: spec/greeter_spec.rb

require 'greeter'

RSpec.describe 'Greeter' do 
    it 'Greets the user' do 
        io = double :io
        expect(io).to receive(:puts).with('What is your name?')
        expect(io).to receive(:gets).and_return('Coco')
        expect(io).to receive(:puts).with('Hello, Coco!')

        greeter = Greeter.new(io)
        greeter.greet 

    end 

end 