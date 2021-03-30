class WorkoutType < ApplicationRecord
    belongs_to :gym
    has_many :training_sessions

    
end
