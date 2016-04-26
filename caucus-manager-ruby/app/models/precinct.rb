class Precinct < ActiveRecord::Base
    has_many :citizens
    belongs_to :congressional_district, class_name: "CongressionalDistrict", foreign_key: "congressionaldistrict_id"
end
