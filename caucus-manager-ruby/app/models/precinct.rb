class Precinct < ActiveRecord::Base
    has_many :citizens
    belongs_to :legislative_district
    belongs_to :congressional_district
end
