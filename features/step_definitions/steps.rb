# frozen_string_literal: true

Given(/^I (?:add|ask|create|filter|have|request) .+? "(.+?)"$/) do |code|
  @result = eval("@#{code}")
end

Then(/^Mortadella returns/) do |table|
  table.diff!(@result)
end

Then(/^it responds with (.+?)$/) do |code|
  @result = eval("@#{code}")
end
