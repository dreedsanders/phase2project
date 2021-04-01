class FitnessCoach < ApplicationRecord
    has_many :training_sessions
    has_many :members, through: :training_sessions
    belongs_to :gym

    validates :name, uniqueness: { scope: :gym, message: "Error: You already belong to this gym!"}

    def num_arms
        ###on each coaches show page have a place for number of arm workouts ###
        self.training_sessions.select {|session| session.workout_type.name == "Arms"}.length
    end

    def self.strong_arm
        #### include on the Fitness Coach index page ####
        FitnessCoach.all.max_by {|coach| coach.num_arms}
    end

    def num_legs
                ###on each coaches show page have a place for number of legs workouts ###

        self.training_sessions.select {|session| session.workout_type.name == "Legs"}.length
    end

    def self.bug_squasher 
        #### include on Fitness Coach inde page ###
        FitnessCoach.all.max_by {|coach| coach.num_legs}
    end

    def sess_coach
        #### on coaches show page shows how many session they have ###
        self.training_sessions.count
    end

    def self.mvp
        ##### should go on Fitness Coach index
        FitnessCoach.all.max_by {|coach| coach.sess_coach}

        #coach with most sessions
    end

    def self.oldest_muscle 
        #### can go on gyms index ####
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
        #### can go on gyms index ####
        buck = FitnessCoach.all.each{|coach| coach.age}.min
        "#{buck.name} is our yute with some muscle!"
    end
    
end
