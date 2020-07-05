class ParkDay < ApplicationRecord
    belongs_to :vacation_plan
    belongs_to :attractions
end
