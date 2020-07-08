class VacationPlan < ApplicationRecord
    belongs_to :user
    has_many :highlights
    has_many :attractions, through: :highlights
    validates_presence_of :name
end
