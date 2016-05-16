module Gmaps
  class HeatmapMarker
    def initialize(heatmap)
      raise ArgumentError if !heatmap.is_a? LocationMap
      @heatmap = heatmap
    end

    def build(description)
      {
        lat:         @heatmap.latitude,
        lng:         @heatmap.longitude,
        description: description
      }
    end
  end
end