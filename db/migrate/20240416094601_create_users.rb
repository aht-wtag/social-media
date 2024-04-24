class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    enable_extension("citext")
    create_table :users do |t|
      t.citext :username
      t.citext :email
      t.string :password_digest
      t.text :bio
      t.text :location

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
