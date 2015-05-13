# -----------------------------------------------------------------------------
#
# Tests for the simple mercator line string implementation
#
# -----------------------------------------------------------------------------

require 'test/unit'
require 'rgeo'

require ::File.expand_path('../common/line_string_tests.rb', ::File.dirname(__FILE__))


module RGeo
  module Tests  # :nodoc:
    module ProjectedGeographic  # :nodoc:

      class TestLineString < ::Test::Unit::TestCase  # :nodoc:


        def setup
          @factory = ::RGeo::Geographic.projected_factory(:projection_proj4 => '+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext +no_defs', :projection_srid => 3857)
        end


        include ::RGeo::Tests::Common::LineStringTests


      end

    end
  end
end if ::RGeo::CoordSys::Proj4.supported?
