class Highlight < ApplicationRecord
    belongs_to :vacation_plan
    belongs_to :attractions
    validates_presence_of :day_number
end
