Given(/^I set up a Mortadella object "(.+?)" through `(.+?)`$/) do |object_name, code|
  eval "@#{object_name} = #{code}"
end


Given(/^I add a data row through `(.+?)`$/) do |code|
  eval "@#{code}"
end


When(/^I request the data table through `(.+?)`$/) do |code|
  @data_table = eval "@#{code}"
end


Then(/^I receive a Ruby object that looks like$/) do |object|
  expected = eval object
  expect(@data_table).to eql expected
end
