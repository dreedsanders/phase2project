class CreateFitnessCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :fitness_coaches do |t|
      t.string :name
      t.integer :age
      t.integer :gym_id

      t.timestamps
    end
  end
end
