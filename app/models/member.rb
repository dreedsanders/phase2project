class Member < ApplicationRecord
    has_many :training_sessions
    has_many :fitness_coaches, through: :training_sessions
    belongs_to :gym 
    has_secure_password

    validates :name, uniqueness: true

    def sess_mem
        #### on member show page, show number of sessions ####
        self.training_sessions.count
    end
    def self.most_liked_member
        ### on members index it shows who has most sessions ###
        Member.all.max_by {|member| member.sess_mem}
    end


    def liked_coach
        self.training_sessions.map {|session| session.fitness_coach.name}
        #array of coaches theyve worked out with
    end
    def self.best_pair
        ### on members and/or coaches index to show the most often paired group ###
        Member.all.max_by {|member| member.liked_coach}
     
    end

    def self.the_wisest 
        ### on member index this shows the oldest member of the gym ###
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
                ### on member index this shows the youngest member of the gym ###

       buck = Member.all.each{|member| member.age}.min
       "#{buck.name} is our youngest buck with some muscle to fill in!"
    end




end

# tried to make a form to push a button to keep score of workouts done
# <%= form_with url: "/games", method: "post" do %>
#     <%= label_tag :workout, "Type workout to complete a workout!" %><br><br>
#     <%= text_field_tag :workout,  %><br><br>
#     <% = submit_tag "Do Workout"  %>
#     <% end %>

