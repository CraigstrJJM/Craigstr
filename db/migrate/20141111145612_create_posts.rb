class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
<<<<<<< HEAD
      t.references :user, null: false
      t.references :location, null: false
      t.references :category, null: false
      t.string :content, null: false
      t.string :title, null: false
=======
      t.references :user
      t.references :location
      t.references :category
      t.string :content
      t.boolean :spam
      t.string :title
>>>>>>> created and integrated post methods and forms
      t.timestamps
    end
  end
end
