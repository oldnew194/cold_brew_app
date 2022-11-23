class Map

  client = GooglePlaces::Client.new(ENV['GOOGLE_API_KEY'])

  data = client.spots(35.681318174002534, 139.76713519281384)
  data.each do |place|
    puts place.name
  end
end