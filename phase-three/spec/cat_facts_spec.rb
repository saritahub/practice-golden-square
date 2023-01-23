# File: cat_facts_spec.rb

require 'cat_facts'

RSpec.describe 'Cat Facts' do 
    it 'Returns a cat fact' do 
        requester_double = double :requester
        expect(requester_double).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Milk can give some cats diarrhea.","length":33}')
        
        cat_fact = CatFacts.new(requester_double)
        result = cat_fact.provide 
        expect(result).to eq('Cat fact: Milk can give some cats diarrhea.')
    
    end 
end 