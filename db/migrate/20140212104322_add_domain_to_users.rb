class AddDomainToUsers < ActiveRecord::Migration
  def change
    add_column :users, :domaine, :string
  end
end
