class Attraction < ApplicationRecord
    has_many :highlights
    has_many :attractions, through: :highlights
    scope :magic_kingdom, -> {where(park: 'Magic Kingdom')}
    scope :hollywood_studios, -> {where(park: "Disney's Hollywood Studios")}
    scope :epcot, -> {where(park: 'Epcot')}
    scope :animal_kingdom, -> {where(park: 'Animal Kingdom')}

    scope :filter_by_park, -> (park){where(park: park)}
 
end


#write blog post about how to access associations of models
# finish scope method for search and look up "like" in where method  also where to render.  should exist in model and render in controller
# be prepared to explain why I wrote what I wrote.