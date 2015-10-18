module Mortadella

  # Makes it easy to build DRY horizontal Cucumber-compatible tables
  class Vertical

    attr_reader :table


    def initialize
      @table = []
    end


    # Adds the given row to the table
    def []= header, row
      @table << [header, row]
    end


    def empty?
      @table.size == 1
    end

  end

end
