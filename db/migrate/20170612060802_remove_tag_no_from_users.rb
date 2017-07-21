class RemoveTagNoFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :tag_NO, :integer
  end
end
