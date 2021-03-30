class TrainingSession < ApplicationRecord
    belongs_to :member 
    belongs_to :fitness_coach
    belongs_to :gym 
    belongs_to :workout_type


    def name
        self.member.name + (" & ") + self.fitness_coach.name
    end

    def member_mvp
        #member with most sessions
    end

    def trainer_mvp
        #trainer with most sessions
    end

    def fav_workout
        #workout type with most sessions
    end



end
