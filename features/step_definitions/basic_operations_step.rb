Given(/^operand A is (\d+)$/) do |opA|
  @operandA = opA.to_i
end

Given(/^operand B is (\d+)$/) do |opB|
  @operandB = opB.to_i  
end

When(/^I add them$/) do
  body = {"a": @operandA, "b": @operandB } 
  post '/add', body.to_json, "CONTENT_TYPE" => "application/json"
end

Then(/^the result is (\d+)$/) do |r|
  expect(last_response.status).to be == 200
  expect(JSON.parse(last_response.body)["result"]).to eq r.to_i
end
