class Vector2
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  # refine Numeric do
  #   def *(other)
  #     return [self * other.x, self * other.y] if other.is_a?(Vector)

  #     super
  #   end
  # end

  def *(other)
    if other.is_a?(Numeric)
      [x * other, y * other]
    elsif other.is_a?(Vector2)
      x * other.x + y * other.y
    else
      raise ArgumentError, 'Multiplication with other classes not implemented'
    end
  end

  def coerce(other)
    [self, other]
  end
end
