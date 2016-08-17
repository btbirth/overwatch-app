class AddPlatformToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :platform, :string
  end
end
