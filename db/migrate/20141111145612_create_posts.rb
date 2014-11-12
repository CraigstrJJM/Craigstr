class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user
      t.references :location
      t.references :category
      t.string :content
      t.string :title, null: false
      t.timestamps
    end
  end
end
