class AddCauseOfDeathToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cause_of_death, :string
  end
end
