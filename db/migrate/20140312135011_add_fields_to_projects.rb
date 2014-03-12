class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :memberscount, :integer
    add_column :projects, :membersmax, :integer
    add_reference :projects, :user, index: true
  end
end
