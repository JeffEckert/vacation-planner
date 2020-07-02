class ParkDay < ApplicationRecord
    belong_to :vacation_plan
    belong_to :attractions
end
