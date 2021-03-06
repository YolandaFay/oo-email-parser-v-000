require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser 
  
  attr_accessor :emails 
  
  def initialize(emails)
    @emails = emails 
  end
  
  def parse 
    split_array = @emails.split(/\s|\,/)
    split_array.delete("")
    split_array.delete(" ")
    
    split_array.uniq 
  end
  
end