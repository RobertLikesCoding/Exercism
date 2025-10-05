class Matrix
  def initialize(matrix)
    @matrix = format_matrix(matrix)
  end

  def row(row_number)
    @matrix[row_number - 1]
  end

  def column(column_number)
    @matrix.map { |row| row[column_number - 1] }
  end

  private

  def format_matrix(matrix)
    matrix.each_line.map do |row|
      row.split.map(&:to_i)
    end
  end
end
