#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#---
module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
  
  module InstanceMethods

    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end
    
    attr_accessor :headers, :csv_contents

    def initialize
      read 
    end
      

  end

  # adding CsvRow object 
  class CsvRow

    attr_accessor :rowHeading, :rowContent

    def initialize(rowHeading, rowContent) # constructor
      @rowHeading = rowHeading
      @rowContent = rowContent
    end

    # adding method_missing in CsvRow object to return the value of the column of a given heading
    def method_missing (method_name, *args)
      content_index = @rowHeading.index(method_name.to_s)
      return @rowContent[content_index]
    end
  end
end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect

#m.each {|rowHeading| puts row.fuzzy} # should print "Moko"