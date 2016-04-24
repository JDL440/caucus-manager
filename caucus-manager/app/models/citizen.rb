class Citizen < ActiveRecord::Base
    #validates :firstname, presense: true,
    #                      length: {minimum: 1}
    belongs_to :precinct
end
