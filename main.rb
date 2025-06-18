require './geometric'
require './right_angled_triangle'
require './t'
require './three_sided_geometrical_shape_where_two_sides_intersect'

LONG_SIDE = 9
OTHER_SIDE = 3

triangle = ThreeSidedGeometricalShapeWhereTwoSidesIntersectAtNinetyDegrees.new(
    length_of_the_side_opposite_the_ninety_degree_intersection: LONG_SIDE,
    length_of_one_of_the_sides_that_ends_at_the_ninety_degree_intersection: OTHER_SIDE
  )
result = triangle.length_of_the_other_side_that_ends_at_the_ninety_degree_intersection
puts "---\n#{triangle.class}: #{result}"

triangle = RightAngledTriangle.new(
    hypotenuse: LONG_SIDE,
    known_side: OTHER_SIDE
  )
result = triangle.unknown_side
puts "---\n#{triangle.class}: #{result}"

triangle = Geometric::RightAngledTriangle.new(
    hypotenuse: LONG_SIDE,
    other_side: OTHER_SIDE
  )
result = triangle.unknown_side
puts "---\n#{triangle.class}: #{result}"

t = T.new(a: LONG_SIDE, b: OTHER_SIDE)
puts "---\n#{t.class}: #{t.c}"
