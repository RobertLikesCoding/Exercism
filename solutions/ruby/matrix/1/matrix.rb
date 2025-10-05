class Matrix
  def initialize(matrix)
    @matrix = matrix.split("\n")
  end

  def row(row_number)
    @matrix[row_number - 1].split.map(&:to_i)
  end

  def column(column_number)
    @matrix.map do |row|
      row.split[column_number - 1].to_i
    end
  end
end
