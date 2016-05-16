class CreateLocationMaps < ActiveRecord::Migration
  def change
    create_table :location_maps do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
    end
  end
end
