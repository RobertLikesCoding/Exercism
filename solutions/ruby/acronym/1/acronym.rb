=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def initialize(phrase)
    @phrase = phrase
  end
  
  def self.abbreviate(words)
    abbreviation = ""

    words.split(/[\s-]+/).each do |word|
      cleaned_word = word.gsub(/[^a-z]/i, "")
      abbreviation << cleaned_word[0].upcase unless cleaned_word.empty?
    end
    
    abbreviation
  end
end