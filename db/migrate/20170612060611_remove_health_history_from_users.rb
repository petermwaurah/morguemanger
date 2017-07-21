class RemoveHealthHistoryFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :health_history, :string
  end
end
