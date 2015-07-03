# Delicious Mock Ruby Tables

[![Build Status](https://circleci.com/gh/Originate/mortadella/tree/master.svg?style=shield)](https://circleci.com/gh/Originate/mortadella)
[![Dependency Status](https://gemnasium.com/Originate/mortadella.svg)](https://gemnasium.com/Originate/mortadella)
[![License](http://img.shields.io/:license-MIT-blue.svg?style=flat)](LICENSE.txt)


Mortadella makes it easy to programmatically build data tables
that can be compared to Cucumber tables
through `cucumber_table.diff! mortadella_table`.

You want to do this as much as possible.
Cucumber has very powerful built-in facilities
to visualize where and how two tables differ.

<img src="http://blog.originate.com/mortadella/ingredients2.png" >
_Oh no, our algorithm selected too many apples!_


## Installation

* add `gem 'mortadella'` to your `Gemfile`
* run `bundle`


## Usage

* In your cucumber spec, define the expected data in table form

  ```cucumber
  Then I have these ingredients
    | INGREDIENT | AMOUNT |
    | flour      | 12 oz  |
    | butter     | 2 oz   |
  ```

* in the step definition for this, build an equivalent Mortadella table with the actual data,
  and diff the Cucumber table with the expected data against it.

  ```ruby
  Then /^I have these ingredients$/ do |expected_ingredients|
    actual_ingredients = Mortadella.new headers: ['INGREDIENT', 'AMOUNT']
    actual_ingredients << ['flour', '12 oz']   # This data should come from your app
    actual_ingredients << ['butter', '2 oz']   # This data should come from your app
    expected_ingredients.diff! actual_ingredients.table
  end
  ```

* you can also [dry up repetitive fields](https://github.com/Originate/mortadella/blob/master/features/drying_up_fields.feature) for better readability


## Development

* set up local environment: `bundle install`
* run all tests: `bundle exec rake`
  * run linter only: `rake lint`
  * run tests only: `rake features`
* publish a new gem:
  * update the version in [mortadella.gemspec](mortadella.gemspec)
  * `rake release`
