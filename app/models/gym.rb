class Gym < ApplicationRecord
    has_many :fitness_coaches
    has_many :workout_types
    has_many :members
    has_many :training_sessions

    def oldie
        #oldest signed up member
        #add age to member creation
    end

    def gains_bro
        #member who has biggest gains
        #do a counter like we saw in rauls lecture but for pushing a workout button and not say her name
    end

    def youngsta 
        #youngest member
    end

    def best_pair
        #coach and member with most sessions together
    end






end
