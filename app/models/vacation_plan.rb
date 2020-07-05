class VacationPlan < ApplicationRecord
    has_many :highlights
    has_many :attractions, through: :highlights
    validates_presence_of :name
end
