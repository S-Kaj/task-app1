class AddDetails2ToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :start_day, :date
    add_column :posts, :end_day, :date
  end
end
