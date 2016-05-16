module GmapsHelper
  def heatmap_description(heatmap)
    render(partial: 'home/heatmap/marker', locals: {heatmap: heatmap})
  end

  def cluster_map_description(heatmap)
    render(partial: 'home/cluster_map/marker', locals: {cluster_map: cluster_map})
  end

  def build_markers(list)
    markers = list.inject([]) do |markers, item|
      case item
        when LocationMap then markers << Gmaps::HeatmapMarker.new(item).build(heatmap_description(item))
        when LocationMap then markers << Gmaps::ClusterMapMarker.new(item).build(cluster_map_description(item))
      end
    end
    markers.to_json if markers.present?
  end

  def render_heat_map_with_markers(markers, center_lat: 37.775, center_lng: -122.434, zoom: 12)
    render partial: 'maps/heat_map', locals: { markers: build_markers(markers), center_lat: center_lat, center_lng: center_lng, zoom: zoom }
  end

  def render_cluster_map_with_markers(markers, center_lat: 37.775, center_lng: -122.434, zoom: 12)
    render partial: 'maps/cluster_map', locals: { markers: build_markers(markers), center_lat: center_lat, center_lng: center_lng, zoom: zoom }
  end
end