require 'add_five'

RSpec.describe "add_five" do
  it "adds five to 2, and returns 7" do
    expect(add_five(2)).to eq(7)
  end
  it "adds five to 6, and returns 11" do
    expect(add_five(6)).to eq(11)
  end
end