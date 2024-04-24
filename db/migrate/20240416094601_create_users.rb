class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    enable_extension("citext")
    create_table :users do |t|
      t.citext :username, null: false
      t.citext :email, null: false
      t.string :password_digest, null: false
      t.text :bio
      t.text :location

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
