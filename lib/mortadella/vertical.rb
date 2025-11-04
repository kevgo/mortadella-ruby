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
    # @raise [ArgumentError] If header or row is nil.
    def []=(header, row)
      raise ArgumentError, "Header cannot be nil" if header.nil?
      raise ArgumentError, "Row value cannot be nil" if row.nil?

      @table << [header, row]
    end

    # Indicates whether the table contains no rows.
    # @return [Boolean]
    def empty?
      @table.empty?
    end

    # Converts the table to a hash.
    # @return [Hash<String, String>] Hash representation of the table.
    def to_h
      @table.to_h
    end
  end
end
