# Makes it easy to build DRY Cucumber-compatible tables
class Mortadella

  attr_reader :table


  def initialize headers:, dry_headers: []
    @headers = headers

    @dry_headers = dry_headers

    # The resulting Cucumber-compatible table structure
    @table = [headers]

    # The previously added row of values
    @previous_values = nil
  end


  # Adds the given row of values to the table
  def add_row values
    @table << dry_up(values)
    @previous_values = values
  end


  # Returns a dried up version of the given values
  # based on the row that came before in the table
  #
  # rubocop:disable MethodLength
  def dry_up values
    return values unless @previous_values
    result = []
    previous_column_empty = true   # indicates whether the data at the previous value of i was
    @previous_values.each_with_index do |previous_value, i|
      if @dry_headers.include? @headers[i] &&
         values[i] == previous_value &&
         previous_column_empty
        result << ''
        previous_column_empty = true
      else
        result << values[i]
        previous_column_empty = false
      end
    end
    result
  end
  # rubocop:enable MethodLength

end
