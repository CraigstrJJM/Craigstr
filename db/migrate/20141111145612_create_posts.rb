class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user
      t.references :location
      t.references :category
      t.string :content
      t.boolean :spam
      t.string :title
      t.timestamps
    end
  end
end
