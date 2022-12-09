require 'counter'

RSpec.describe 'counter' do 
    it "Adds 1, and returns a string confirming 1 has been added" do
        counter = Counter.new 
        counter.add(1)
        expect(counter.report).to eq("Counted to 1 so far.")
    end 

    it "Adds 55, and returns a string confirming 55 has been added" do
        counter = Counter.new 
        counter.add(55)
        expect(counter.report).to eq("Counted to 55 so far.")
    end 

end 