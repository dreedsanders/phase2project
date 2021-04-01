class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :age
      t.string :password_digest
      t.integer :gym_id

      t.timestamps
    end
  end
end
