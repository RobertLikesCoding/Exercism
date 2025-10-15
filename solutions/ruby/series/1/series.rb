class Series
  def initialize(number)
    raise ArgumentError, "Input cannot be empty" if number == ""
    @numbers = number.each_char.map(&:to_i)
  end

  def slices(slice)
    raise ArgumentError, "Slice size is too large for series length" if @numbers.count < slice
    @numbers.each_cons(slice).map { |slice| slice.join }
  end
end
