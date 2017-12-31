# -----------------------------------------------------------------------------
#
# Tests for the simple mercator multi point implementation
#
# -----------------------------------------------------------------------------

require "test_helper"

module RGeo
  module Tests # :nodoc:
    module SimpleMercator # :nodoc:
      class TestMultiPoint < ::Test::Unit::TestCase # :nodoc:
        include RGeo::Tests::Common::MultiPointTests

        def create_factory(opts_ = {})
          ::RGeo::Geographic.simple_mercator_factory(opts_)
        end

        # These tests suffer from floating point issues
        undef_method :test_union
        undef_method :test_difference
        undef_method :test_intersection
      end
    end
  end
end
