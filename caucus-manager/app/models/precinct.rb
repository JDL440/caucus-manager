class Precinct < ActiveRecord::Base
    belongs_to :legislative_district
    belongs_to :congressional_district
end
