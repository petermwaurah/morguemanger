class RemoveCauseOfDeathFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :cause_of_death, :string
  end
end
