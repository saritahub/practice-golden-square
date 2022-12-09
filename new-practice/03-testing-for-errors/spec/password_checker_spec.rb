require 'password_checker'

RSpec.describe "PasswordChecker" do 
    it "Returns true if the password length is 8" do 
        password = PasswordChecker.new
        expect(password.check("password")).to eq(true)
    end 

    it "Fails if the password length is less than 8 characters" do
        password = PasswordChecker.new
        expect { password.check("Hey") }.to raise_error "Invalid password, must be 8+ characters."
    end 

end 