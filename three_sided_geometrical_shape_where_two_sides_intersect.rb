class ThreeSidedGeometricalShapeWhereTwoSidesIntersectAtNinetyDegrees

  attr_reader(
    :length_of_the_side_opposite_the_ninety_degree_intersection,
    :length_of_one_of_the_sides_that_ends_at_the_ninety_degree_intersection
  )

  def initialize(
    length_of_the_side_opposite_the_ninety_degree_intersection:,
    length_of_one_of_the_sides_that_ends_at_the_ninety_degree_intersection:
  )
    @length_of_the_side_opposite_the_ninety_degree_intersection = length_of_the_side_opposite_the_ninety_degree_intersection
    @length_of_one_of_the_sides_that_ends_at_the_ninety_degree_intersection =
    length_of_one_of_the_sides_that_ends_at_the_ninety_degree_intersection
  end

  def length_of_the_other_side_that_ends_at_the_ninety_degree_intersection
    Math.sqrt(
      (
        length_of_the_side_opposite_the_ninety_degree_intersection ** 2
      ) - (
        length_of_one_of_the_sides_that_ends_at_the_ninety_degree_intersection ** 2
      )
    )
  end
end
