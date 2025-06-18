class RightAngledTriangle

  attr_reader :hypotenuse, :known_side

  def initialize(hypotenuse:, known_side:)
    @hypotenuse = hypotenuse
    @known_side = known_side
  end

  def unknown_side
    case
    when hypotenuse / 5.0 == known_side / 3.0
      hypotenuse / 4.0
    when hypotenuse / 5.0 == known_side / 4.0
      hypotenuse / 3.0
    else
      hypotenuse ** 2 - known_side ** 2
    end
  end
end

