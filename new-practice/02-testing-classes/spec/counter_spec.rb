require 'counter'

RSpec.describe 'counter' do 
    it "Returns 0 when nothing is added" do 
        counter = Counter.new 
        expect(counter.report).to eq("Counted to 0 so far.")
    end 

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

    context "Adds multiple numbers" do 
        it "Adds three numbers, and returns a string with the total" do 
            counter = Counter.new 
            counter.add(55)
            counter.add(100)
            counter.add(200)
            expect(counter.report).to eq("Counted to 355 so far.")
        end 
    end 
end 