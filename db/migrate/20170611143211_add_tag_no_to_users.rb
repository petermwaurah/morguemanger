class AddTagNoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tag_NO, :integer
  end
end
