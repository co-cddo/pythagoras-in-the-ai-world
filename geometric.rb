module Geometric
  class Shape
    def collection_of_lines_that_intersect
      [] # Array of lines
    end

    def number_of_sides
      collection_of_lines_that_intersect.size
    end
  end

  class Line
    def two_points_in_space
      [location_of_one_end, location_of_other_end]
    end

    def location_of_one_end
      # An object that defines a point in space
    end

    def location_of_other_end
      # An object that defines a point in space
    end

    def distance_between_ends
      # calculated from the positions of the two ends
    end

    def direction_from_one_to_other
      # calculated from the positions of the two ends
    end
  end

  class Triangle < Shape
    def number_of_lines
      3
    end
  end

  class RightAngledTriangle < Triangle
    def angle_between_shortest_sides
      90 # degrees : or some other reprensentation of one quarter of a complete revolutuion
    end

    attr_reader :hypotenuse, :other_side

    def initialize(hypotenuse:, other_side:)
      @hypotenuse = hypotenuse
      @other_side = other_side
    end

    def unknown_side
      Math.sqrt(hypotenuse ** 2 - other_side ** 2)
    end
  end
end



