Attraction.destroy_all



JSON.parse(File.read("disney_attractions.json")).each do |attraction_attrs|
    Attraction.create(attraction_attrs)
end