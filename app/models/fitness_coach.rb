class FitnessCoach < ApplicationRecord
    has_many :training_sessions
    has_many :members, through: :training_sessions
    belongs_to :gym

    def most_liked
        #coach with most clients
    end

    def strong_arm
        #coach with most arm sessions
    end

    def bug_squasher
        #coach with most legs session
    end

    def mvp 
        #coach with most workout types in sessions
    end






end
