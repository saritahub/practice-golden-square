require 'password_checker'

RSpec.describe "PasswordChecker" do 
    it "Returns true if the password length is 8" do 
        password = PasswordChecker.new
        expect(password.check("password")).to eq(true)
    end 


end 