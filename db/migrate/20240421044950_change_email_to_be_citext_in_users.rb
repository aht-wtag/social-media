class ChangeEmailToBeCitextInUsers < ActiveRecord::Migration[7.1]
  def up
    enable_extension("citext")
    change_column :users, :email, :citext
  end

  def down
    enable_extension("citext")
    change_column :users, :email, :string
  end
end
