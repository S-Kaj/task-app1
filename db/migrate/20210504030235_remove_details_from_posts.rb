class RemoveDetailsFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :start, :date
    remove_column :posts, :end, :date
  end
end
