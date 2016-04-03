ActiveRecord::Schema.define(version: 20_160_403_175_409) do
  create_table 'users', force: :cascade do |t|
    t.string   'name'
    t.string   'email'
    t.datetime 'created_at',      null: false
    t.datetime 'updated_at',      null: false
    t.string   'password_digest'
  end

  add_index 'users', ['email'], name: 'index_users_on_email', unique: true
end
