class CreateTrainingSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :training_sessions do |t|
      t.integer :member_id
      t.integer :fitness_coach_id
      t.integer :workout_type_id 
      t.integer :gym_id

      t.timestamps
    end
  end
end
