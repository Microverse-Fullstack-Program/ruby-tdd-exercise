# frozen_string_literal: true

require_relative '../solver'

describe Solver do
  before :all do # to run it once before all tests
    @solver = Solver.new
  end
end

describe 'Solver#factorial' do
  context 'when given 0' do
    it 'should return 1' do
      @solver.factorial(0).should eql 1
    end
  end

  context 'when given integer > 0' do
    it 'should return 120 when given 5' do
      @solver.factorial(5).should eql 120
    end
  end

  context 'when given integer < 0' do
    it 'should raise an error when given a negative number' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end
end
