# frozen_string_literal: true

module Mortadella
  # Makes it easy to build DRY vertical Cucumber-compatible tables.
  class Vertical
    # @return [Array<(String, Array<String>)>] The table as an array of [header, row] pairs.
    attr_reader :table

    # @return [void]
    def initialize
      @table = []
    end

    # Adds the given row to the table.
    # @param header [String] The header for the row.
    # @param row [String] The data field for the given header.
    # @return [void]
    # @raise [ArgumentError] If header or row is nil.
    def []=(header, row)
      raise ArgumentError, "Header cannot be nil" if header.nil?
      raise ArgumentError, "Row value cannot be nil" if row.nil?

      @table << [header, row]
    end

    # @return [Boolean] Indicates whether this table is empty.
    def empty?
      @table.empty?
    end
  end
end
