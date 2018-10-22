class Temperature
  def initialize(hash)
    @temperature = hash
  end

  def to_celsius
    if @temperature[:f]
      convert(@temperature)
    elsif @temperature[:c]
      return @temperature[:c]
    end
  end

  def to_fahrenheit
    if @temperature[:c]
      convert(@temperature)
    elsif @temperature[:f]
      return @temperature[:f]
    end
  end

  def convert(temp)
    if temp[:f]
      return (temp[:f] - 32) * 5 / 9
    elsif temp[:c]
      return (temp[:c] * 9) / 5 + 32
    end
  end
end