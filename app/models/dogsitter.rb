class Dogsitter < ApplicationRecord
    has_many :stroll
    has_many :dog, through: :strolls 
    belongs_to :city 

end
