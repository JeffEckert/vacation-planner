class Highlight < ApplicationRecord
    belongs_to :vacation_plan
    belongs_to :attraction
    validates_presence_of :day_number
end
