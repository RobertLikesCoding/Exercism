class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    success_rate = 1

    if (5..8).include?(@speed)
      success_rate = 0.9
    elsif @speed == 9
      success_rate = 0.8
    elsif @speed == 10
      success_rate = 0.77
    end

    return (221 * @speed) * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour.floor / 60).floor
  end
end
