class CongressionalDistrict < ActiveRecord::Base
    has_many :precincts
end
