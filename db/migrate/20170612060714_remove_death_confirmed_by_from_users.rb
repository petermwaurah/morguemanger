class RemoveDeathConfirmedByFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :death_confirmed_by, :string
  end
end
