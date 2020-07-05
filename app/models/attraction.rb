class Attraction < ApplicationRecord
    has_many :highlights
    has_many :attractions, through: :highlights
end
