class CreateBodies < ActiveRecord::Migration[5.0]
  def change
    create_table :bodies do |t|
      t.string :name
      t.integer :body_number
      t.string :cause_of_death
      t.date :date_of_birth
      t.date :date_of_death
      t.string :deceased_prior_address
      t.string :health_history

      t.timestamps
    end
  end
end
