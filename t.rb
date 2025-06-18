class T
  attr_reader :a, :b

  def initialize(a:, b:)
    @a = a
    @b = b
  end

  def c
    Math.sqrt(a ** 2 - b ** 2)
  end
end
