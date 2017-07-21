class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :cause_of_death
      t.string :health_history
      t.integer :tag_NO
      t.string :death_confirmed_by
      t.timestamps
    end
  end
end
