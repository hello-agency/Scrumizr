class Money
  
  def mongoize
    self * 100
  end

  class << self
    def demongoize(object)
      object ? (::BigDecimal.new(object.to_s) / 100) : object
    end

    def mongoize(object)
      object ? ((object.is_a?(::BigDecimal) ? object : ::BigDecimal.new(object.to_s)).round(2) * 100).to_i : object
    end

    def evolve(object)
      object ? ((object.is_a?(::BigDecimal) ? object : ::BigDecimal.new(object.to_s)).round(2) * 100).to_i : object
    end
  end
end
