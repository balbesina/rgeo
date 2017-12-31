# -----------------------------------------------------------------------------
#
# Tests for the simple cartesian polygon implementation
#
# -----------------------------------------------------------------------------

require "test_helper"

module RGeo
  module Tests # :nodoc:
    module SimpleCartesian # :nodoc:
      class TestPolygon < ::Test::Unit::TestCase # :nodoc:
        include RGeo::Tests::Common::PolygonTests

        def setup
          @factory = ::RGeo::Cartesian.simple_factory
        end

        undef_method :test_fully_equal
        undef_method :test_geometrically_equal_but_ordered_different
        undef_method :test_geometrically_equal_but_different_directions
      end
    end
  end
end
