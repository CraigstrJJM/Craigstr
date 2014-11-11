

ActiveRecord::Schema.define(version: 20141110164944) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"



  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
