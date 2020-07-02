class VacationPlan < ApplicationRecord
    has_many :park_days
    has_many :attractions, through: :park_days
end
