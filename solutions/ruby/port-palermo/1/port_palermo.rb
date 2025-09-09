module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE
  
  def self.get_identifier(city)
    identifier = city.slice(0..3).upcase
    identifier.to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo = ship_identifier.slice(0..2)

    if cargo == "OIL" || cargo == "GAS"
      :A
    else
      :B
    end
  end
end
