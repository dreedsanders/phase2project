class TrainingSession < ApplicationRecord
    belongs_to :member 
    belongs_to :fitness_coach
    belongs_to :gym 
    belongs_to :workout_type


    def name
        self.member.name + (" & ") + self.fitness_coach.name
    end



end
