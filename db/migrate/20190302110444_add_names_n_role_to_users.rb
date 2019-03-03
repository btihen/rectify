class AddNamesNRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name,  :string
    add_column :users, :relation,   :string
    add_column :users, :state,      :string
    add_column :users, :permission, :string
  end
end
