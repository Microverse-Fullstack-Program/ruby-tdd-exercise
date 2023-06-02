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

describe 'Solver#reverse' do
  it 'should return the reverse of a string' do
    @solver.reverse('chere').should == 'erehc'
  end
end

describe 'Solver#fizzbuzz' do
  context 'when passing number divisible by 3' do
    it "should return 'fizz' when given 3" do
      @solver.fizzbuzz(3).should == 'fizz'
    end
  end

  context 'when passing number divisible by 5' do
    it "should return 'buzz' when given 5" do
      @solver.fizzbuzz(5).should == 'buzz'
    end
  end

  context 'when passing number divisible by both 3 and 5' do
    it "should return 'fizzbuzz' when given 15" do
      @solver.fizzbuzz(15).should == 'fizzbuzz'
    end
    it "should return 'fizzbuzz' when given 30" do
      @solver.fizzbuzz(30).should == 'fizzbuzz'
    end
  end

  context 'when passing number not divisible by either 3 or 5' do
    it "should return '17' when given 17" do
      @solver.fizzbuzz(17).should == '17'
    end
  end
end  