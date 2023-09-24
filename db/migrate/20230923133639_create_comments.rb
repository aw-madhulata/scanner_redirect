class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :text
      # t.bigint :commentable_id
      # t.string :commentable_type
      t.references :commentable, polymorphic: true
      t.timestamps
    end
  end
end
