require 'calculator'

RSpec.describe Calculator do
  context '#add' do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(3, 4)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(3, 4, 1)).to eql(8)
      expect(calculator.add(1, 1, 2, 1)).to eql(5)
      expect(calculator.add(1, 1, 2, 1, 1)).to eql(6)
    end
  end
end