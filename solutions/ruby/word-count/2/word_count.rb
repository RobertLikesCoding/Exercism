class Phrase
  def initialize(input)
    @input = input.downcase
  end

  def word_count
    @input.scan(/\b[\w']+\b/).tally
  end
end