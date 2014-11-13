class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, null: false
      t.references :location, null: false
      t.references :category, null: false
      t.string :content, null: false
      t.string :title, null: false
      t.timestamps
    end
  end
end
