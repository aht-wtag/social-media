class ChangeUsernameToBeCitextInUsers < ActiveRecord::Migration[7.1]
  def up
    enable_extension("citext")
    change_column :users, :username, :citext
  end

  def down
    enable_extension("citext")
    change_column :users, :username, :string
  end
end
