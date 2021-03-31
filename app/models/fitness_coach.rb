class FitnessCoach < ApplicationRecord
    has_many :training_sessions
    has_many :members, through: :training_sessions
    belongs_to :gym

    def num_arms
        self.training_sessions.select {|session| session.workout_type.name == "Arms"}.length
    end
    def self.strong_arm
        FitnessCoach.all.max_by {|coach| coach.num_arms}
    end


    
    def num_legs
        self.training_sessions.select {|session| session.workout_type.name == "Legs"}.length

    end
    def self.bug_squasher 
        FitnessCoach.all.max_by {|coach| coach.num_legs}
    end

    def sess_coach
        self.training_sessions.count
    end
    def self.mvp
        FitnessCoach.all.max_by {|coach| coach.sess_coach}

        #coach with most sessions
    end

    def self.oldest_muscle 
        count = 0
        oldest =[]
        FitnessCoach.all.each do |coach|
            if coach.age > count 
                count = coach.age
                oldest = coach
            end
        end
     "#{oldest.name}'s got our oldest muscle here!"
    end

    def self.yute_buck
        buck = FitnessCoach.all.each{|coach| coach.age}.min
        "#{buck.name} is our yute with some muscle!"
     end

   







end
