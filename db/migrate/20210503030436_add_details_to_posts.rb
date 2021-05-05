class AddDetailsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :start, :date
    add_column :posts, :end, :date
    add_column :posts, :allday, :boolean
    add_column :posts, :memo, :string
  end
end
