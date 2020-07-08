class Attraction < ApplicationRecord
    has_many :highlights
    has_many :attractions, through: :highlights
    scope :magic_kingdom, -> {where(park: 'Magic Kingdom')}
    scope :hollywood_studios, -> {where(park: "Disney's Hollywood Studios")}
    scope :epcot, -> {where(park: 'Epcot')}
    scope :animal_kingdom, -> {where(park: 'Animal Kingdom')}
 
end
