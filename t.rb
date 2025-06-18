class T
  attr_reader :a, :b

  def initialize(a:, b:)
    @a = a
    @b = b
  end

  def c
    a ** 2 - b ** 2
  end
end
