class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    index_after_colon = @line.index(":") + 1
    return @line if index_after_colon.nil?

    message = @line.slice(index_after_colon..-1)
    message.strip
  end

  def log_level
    level = @line.slice(/[\[][A-Z]*[\]]/)
    return line if level.nil?

    formatted_level = level.slice(1...-1).downcase
    formatted_level
  end

  def reformat
    "#{message.capitalize} (#{log_level})"
  end
end
