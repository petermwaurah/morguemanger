class AddHealthHistoryToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :health_history, :string
  end
end
