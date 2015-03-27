Given(/^I (?:add|ask|create|have|request) .+? "(.+?)"$/) do |code|
  @result = eval "@#{code}"
end




Then(/^I receive/) do |table|
  table.diff! @result
end


Then(/^it responds with (.+?)$/) do |code|
  @result = eval "@#{code}"
end
