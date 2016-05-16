class HomeController < ApplicationController
  def index
    @heat_maps = LocationMap.all
  end

  def clusterer
    @clusters = LocationMap.all
  end
end