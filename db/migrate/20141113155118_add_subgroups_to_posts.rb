class AddSubgroupsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :subgroups, :string
  end
end
