class Phrase
  def initialize(input)
    @input = input
  end

  def word_count
    words = @input.scan(/\b[\w']+\b/)
    hash = Hash.new(0)
    words.each do |w|
      hash[w.downcase] += 1
    end

    hash
  end
end