# -----------------------------------------------------------------------------
#
# Tests for the simple cartesian line string implementation
#
# -----------------------------------------------------------------------------

require "test_helper"

module RGeo
  module Tests # :nodoc:
    module SimpleCartesian # :nodoc:
      class TestLineString < ::Test::Unit::TestCase # :nodoc:
        def setup
          @factory = ::RGeo::Cartesian.simple_factory
        end

        include ::RGeo::Tests::Common::LineStringTests

        undef_method :test_fully_equal
        undef_method :test_geometrically_equal_but_different_type
        undef_method :test_geometrically_equal_but_different_type2
        undef_method :test_geometrically_equal_but_different_overlap
        undef_method :test_empty_equal
        undef_method :test_not_equal
      end
    end
  end
end
