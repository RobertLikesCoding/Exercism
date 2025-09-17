class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError; end


  def self.calculate(first_operand, second_operand, operation)
    unknown_operator = !ALLOWED_OPERATIONS.include?(operation)
    argument_error = first_operand.class != Integer || 
      second_operand.class != Integer

    if unknown_operator
      raise UnsupportedOperation.new('Unsupported operation')
    elsif argument_error
      raise ArgumentError.new
      return 'Division by zero is not allowed.'
    end

    begin
      result = first_operand.public_send(operation, second_operand)
      return "#{first_operand} #{operation} #{second_operand} = #{result}" 
    rescue ZeroDivisionError
      "Division by zero is not allowed." 
    end
  end
end
