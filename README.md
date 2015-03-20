# Delicious Mock Ruby Tables

[![Build Status](https://circleci.com/gh/Originate/mortadella/tree/master.svg?style=shield)](https://circleci.com/gh/Originate/mortadella)
[![License](http://img.shields.io/:license-MIT-blue.svg?style=flat)](LICENSE.txt)

Mortadella makes it easy to programmatically build data tables
that can be compared to Cucumber tables
through `cucumber_table.diff! mortadella_table`.

You want to do this as much as possible.
Cucumber has very powerful built-in facilities
to visualize where and how two tables differ.
This gives you very readable error messages when your
code behaves differently than what Cucumber expects,
for free.

* [basic usage](https://github.com/Originate/mortadella/blob/master/features/basic_usage.feature)
* you can also [dry up repetitive fields](https://github.com/Originate/mortadella/blob/master/features/drying_up_fields.feature) for better readability


## Installation

* add `gem 'mortadella'` to your `Gemfile`
* run `bundle`
