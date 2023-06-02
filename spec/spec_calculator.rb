require './calculator'

describe Calculator do
  before :all do
    @calc = Calculator.new
  end

  context 'Given two numbers' do
    it 'can add the numbers using the add method' do
      expect(@calc.add(13, 5)).to eq(18)
    end

    it 'can subtract the numbers using the subtract method' do
      calc = Calculator.new
      expect(calc.subtract(13, 5)).to eq(8)
    end

    it 'can multiply the numbers using the multiply method' do
      calc = Calculator.new
      expect(calc.multiply(13, 5)).to eq(65)
    end

    it 'can divide the numbers using the divide method' do
      calc = Calculator.new
      expect(calc.divide(13, 5)).to eq(2)
    end

    it 'can provide the remainder when dividing two numbers using the modulo method' do
      calc = Calculator.new
      expect(calc.modulo(13, 5)).to eq(3)
    end
  end
end
