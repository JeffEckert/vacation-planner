require 'json'
Attraction.destroy_all
Highlight.destroy_all
VacationPlan.destroy_all



# JSON.parse(File.read("disney_attractions.json")).each do |attraction_attributes|
#     Attraction.create(attraction_attributes)
# end

file = File.read('disney_attractions.json')
# binding.pry
json = JSON.parse(file)

binding.pry
json.each do |attractions_hash|
    Attraction.create(attractions_hash = {})
end