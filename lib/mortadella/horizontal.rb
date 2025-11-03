# frozen_string_literal: true

module Mortadella
  # Horizontal makes it easy to build horizontal Cucumber-compatible tables.
  class Horizontal
    # @return [Array<Array<String>>] The resulting Cucumber-compatible table structure.
    attr_reader :table

    # @param headers [Array<String>] The column headers for the table.
    # @param dry [Array<String>] Column names for which repeated values can be removed.
    # @return [void]
    def initialize(headers:, dry: [])
      @headers = headers
      @dry = dry

      # The resulting Cucumber-compatible table structure.
      @table = [headers]

      # The previously added row
      @previous_row = nil
    end

    # Adds the given row to the table.
    # @param row [Array<String>] The row data to add.
    # @return [void]
    def <<(row)
      validate_row_length!(row)
      @table << dry_up(row)
      @previous_row = row
    end

    # Indicates whether the table contains no data rows (only a header row).
    # @return [Boolean]
    def empty?
      @table.size == 1
    end

    # Filters the table to keep only the specified columns.
    # @param columns [Array<String>] Names of the columns to keep.
    # @return [void]
    def keep_matching_columns(columns)
      column_indices_to_drop(columns).sort.reverse_each do |column_index|
        @table.each do |row|
          row.delete_at column_index
        end
      end
    end

    private

    # Returns whether the column with the given name can be dried up.
    # @param column_name [String]
    # @return [Boolean]
    def can_dry?(column_name)
      @dry.include? column_name
    end

    # Returns the column indices to drop to make this table have the given columns.
    # @param columns [Array<String>] The column names to keep.
    # @return [Array<Integer>] Indices of columns to drop.
    def column_indices_to_drop(columns)
      result = []
      headers = @table[0]
      headers.each_with_index do |header, i|
        result << i unless columns.include? header
      end
      result
    end

    # Returns a dried up version of the given row based on the row that came before.
    # In a dried up row, any values that match the previous row are removed,
    # stopping on the first difference. Only columns marked as "dry" are affected.
    # @param row [Array<String>] The row to dry up.
    # @return [Array<String>] The dried up row.
    def dry_up(row)
      result = row.clone
      return result unless @previous_row

      result.length.times do |i|
        break unless can_dry?(@headers[i]) && result[i] == @previous_row[i]

        result[i] = ""
      end
      result
    end

    # Validates that the row has the correct number of elements.
    # @param row [Array<String>] The row to validate.
    # @return [void]
    # @raise [ArgumentError] If the row length doesn't match the headers length.
    def validate_row_length!(row)
      return if row.length == @headers.length

      raise ArgumentError, "Row length (#{row.length}) doesn't match headers (#{@headers.length})"
    end
  end
end
