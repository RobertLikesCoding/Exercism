class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    221 * @speed * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end

  private

  def success_rate
    case @speed
    when 5..8 then 0.9
    when 9 then 0.8
    when 10 then 0.77
    else 1
    end
  end
end
