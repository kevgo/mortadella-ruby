Given(/^I (?:add|create|request) .+? "(.+?)"$/) do |code|
  @result = eval "@#{code}"
end


Then(/^I receive/) do |table|
  table.diff! @result
end

