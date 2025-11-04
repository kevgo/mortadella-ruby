# frozen_string_literal: true

require "mortadella/horizontal"
require "mortadella/vertical"

# Mortadella makes it easy to programmatically build data tables for Cucumber testing.
#
# This module provides two main classes:
# - {Horizontal}: Build horizontal tables with column headers and data rows
# - {Vertical}: Build vertical tables with key-value pairs
#
# @example Using Horizontal tables
#   table = Mortadella::Horizontal.new(headers: ['NAME', 'AGE'])
#   table << ['Alice', '30']
#   table << ['Bob', '25']
#
# @example Using Vertical tables
#   table = Mortadella::Vertical.new
#   table['NAME'] = 'Alice'
#   table['AGE'] = '30'
module Mortadella
end
