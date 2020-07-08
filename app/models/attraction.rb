class Attraction < ApplicationRecord
    has_many :highlights
    has_many :attractions, through: :highlights

    # def self.magic_kingdom
    #     self.where(park: 'Magic Kingdom')
    # end
end
