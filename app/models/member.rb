class Member < ApplicationRecord
    has_many :training_sessions
    has_many :fitness_coaches, through: :training_sessions
    belongs_to :gym 

    
end
