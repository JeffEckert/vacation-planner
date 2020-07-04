require 'json'
Attraction.destroy_all



# JSON.parse(File.read("disney_attractions.json")).each do |attraction_attributes|
#     Attraction.create(attraction_attributes)
# end

file = File.read('disney_attractions.json')
data_hash = JSON.parse(file)

data_hash.each do |attraction_attrs|
    Attraction.create(attraction_attrs)
end