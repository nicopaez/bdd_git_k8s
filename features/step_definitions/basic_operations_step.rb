Given('my preference is {string}') do |preference|
  @preference = preference
end

When('I ask for suggestion') do
  get "/suggestions?preference#{@preference}"
  expect(last_response.status).to eq 200
end

Then('I get {string}') do |recommendation|
  data = JSON.parse last_response.body
  expect(data['suggestion']).to eq recommendation
end

When('I ask for in Buenos Aires') do
  
end

Then('I get a temperate in Celcius between {int} and {int}') do |min_temp, max_temp|
  # Then('I get a temperate in Celcius between {int} and {float}') do |int, float|
  # Then('I get a temperate in Celcius between {float} and {int}') do |float, int|
  # Then('I get a temperate in Celcius between {float} and {float}') do |float, float2|
end