module Gmaps
  class ClusterMapMarker
    def initialize(cluster)
      raise ArgumentError if !cluster.is_a? LocationMap
      @cluster = cluster
    end

    def build(description)
      {
        lat:         @cluster.latitude,
        lng:         @cluster.longitude,
        description: description
      }
    end
  end
end