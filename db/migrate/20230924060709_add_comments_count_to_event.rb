class AddCommentsCountToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :comments_count, :integer, default: 0
  end
end
