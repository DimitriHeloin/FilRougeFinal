class AddProfileCompletedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_completed, :boolean
  end
end
