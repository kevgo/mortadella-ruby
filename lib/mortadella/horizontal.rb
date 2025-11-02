# frozen_string_literal: true

module Mortadella
  # Horizontal makes it easy to build horizontal Cucumber-compatible tables.
  class Horizontal
    attr_reader :table

    def initialize(headers:, dry: [])
      @headers = headers
      @dry = dry

      # The resulting Cucumber-compatible table structure
      @table = [headers]

      # The previously added row
      @previous_row = nil
    end

    # Adds the given row to the table
    def <<(row)
      @table << dry_up(row)
      @previous_row = row
    end

    def empty?
      @table.size == 1
    end

    def keep_matching_columns(columns)
      column_indices_to_drop(columns).sort.reverse_each do |column_number|
        @table.each do |row|
          row.delete_at column_number
        end
      end
    end

    private

    # Returns whether the column with the given name can be dried up
    def can_dry?(column_name)
      @dry.include? column_name
    end

    # Returns the column indices to drop to make this table have the given columns
    def column_indices_to_drop(columns)
      result = []
      headers = @table[0]
      headers.each_with_index do |header, i|
        result << i unless columns.include? header
      end
      result
    end

    # Returns a dried up version of the given row
    # based on the row that came before in the table
    #
    # In a dried up row, any values that match the previous row are removed,
    # stopping on the first difference
    def dry_up(row)
      return row unless @previous_row

      row.clone.tap do |result|
        row.length.times do |i|
          break unless can_dry?(@headers[i]) && row[i] == @previous_row[i]

          result[i] = ""
        end
      end
    end
  end
end
