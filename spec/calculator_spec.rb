require 'rspec' 
require_relative '../model/calculator'

describe 'Calculator' do

  let(:calculator) { Calculator.new }  
   
  it 'add 1 and 2 should return 3' do
    expect(calculator.add(1,2)).to eq 3
  end

end
