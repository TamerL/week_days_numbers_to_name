require 'rspec/autorun'
require './src/week_days_numbers_tostring'

describe 'week_days_numbers_tostring' do
  context "when the input is a valid expression" do
    it "returns the answer Mon-Sun when the input is 1,2,3,4,5,6,7" do
      result = to_s("1,2,3,4,5,6,7")
      expect(result).to eq("Mon-Sun")
    end
    # it "returns the answer Mon-Sun when the input is 1,2,3,6,7" do
    #   result = to_s("1,2,3,6,7")
    #   expect(result).to eq("Mon-Wed, Sat, Sun")
    # end
  end
end
