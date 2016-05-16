
puts "==== Create HeatMap ===="
LocationMap.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE heat_maps_id_seq RESTART WITH 1"
)

LocationMap.create!([
  {
    name: 'North', latitude: '37.782551', longitude: '-122.445368'
  },
  {
    name: 'North', latitude: '37.782745', longitude: '-122.444586'
  },
  {
    name: 'North', latitude: '37.782842', longitude: '-122.443688'
  },
  {
    name: 'North', latitude: '37.782919', longitude: '-122.442815'
  },
  {
    name: 'North', latitude: '37.782992', longitude: '-122.442112'
  },
  {
    name: 'North', latitude: '37.783100', longitude: '-122.441461'
  },
  {
    name: 'North', latitude: '37.783206', longitude: '-122.440829'
    },
  {
    name: 'North', latitude: '37.783273', longitude: '-122.440324'
  },
  {
    name: 'North', latitude: '37.783316', longitude: '-122.440023'
  },
  {
    name: 'North', latitude: '37.783357', longitude: '-122.439794'
    },
  {
    name: 'North', latitude: '37.783371', longitude: '-122.439687'
  }
])

puts "==== End ===="