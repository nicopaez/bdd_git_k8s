require 'spec_helper'

describe 'Advisor' do

  it 'should suggest based on preferences ' do
    preference = 'WARM'
    suggestion = Advisor.new(nil).suggestion_for(preference)
    expect(suggestion).to eq 'BERMUDA'
  end

end
