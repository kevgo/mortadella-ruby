# frozen_string_literal: true

module Mortadella
  # Vertical makes it easy to build vertical Cucumber-compatible tables.
  # Vertical tables display data as key-value pairs, with headers in the first column
  # and corresponding values in the second column.
  class Vertical
    # @return [Array<Array<String>>] The Cucumber-compatible table.
    attr_reader :table

    # Creates a new empty vertical table.
    # @return [void]
    def initialize
      @table = []
    end

    # Adds a new row to the table with the given header and value.
    # @param header [String] The header (key) for the row.
    # @param row [String] The data (value) for the given header.
    # @return [void]
    def []=(header, row)
      @table << [header, row]
    end

    # Indicates whether the table contains no rows.
    # @return [Boolean]
    def empty?
      @table.empty?
    end
  end
end
