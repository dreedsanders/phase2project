class Member < ApplicationRecord
    has_many :training_sessions
    has_many :fitness_coaches, through: :training_sessions
    belongs_to :gym 

    def sess_mem
        self.training_sessions.count
    end
    def self.most_liked_member
        Member.all.max_by {|member| member.sess_mem}

        #member with most sessions
    end


    def liked_coach
        self.training_sessions.map {|session| session.fitness_coach.name}
        #array of coaches theyve worked out with
    end
    def self.best_pair
        Member.all.max_by {|member| member.liked_coach}
     
    end

    def self.the_wisest 
        count = 0
        wisest =[]
        Member.all.each do |member|
            if member.age > count 
                count = member.age
                wisest = member
            end
        end
        "#{wisest.name} is our wisest member."
    end

    def self.young_buck
       buck = Member.all.each{|member| member.age}.min
       "#{buck.name} is our youngest buck with some muscle to fill in!"
    end




end
