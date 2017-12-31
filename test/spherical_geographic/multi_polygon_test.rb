# -----------------------------------------------------------------------------
#
# Tests for the simple spherical multi polygon implementation
#
# -----------------------------------------------------------------------------

require "test_helper"

module RGeo
  module Tests # :nodoc:
    module SphericalGeographic # :nodoc:
      class TestMultiPolygon < ::Test::Unit::TestCase # :nodoc:
        include RGeo::Tests::Common::MultiPolygonTests

        def create_factories
          @factory = ::RGeo::Geographic.spherical_factory
          @lenient_factory = ::RGeo::Geographic.spherical_factory(lenient_multi_polygon_assertions: true)
        end

        undef_method :test_creation_wrong_type
        undef_method :test_creation_overlapping
        undef_method :test_creation_connected
        undef_method :test_equal
        undef_method :test_not_equal
      end
    end
  end
end
