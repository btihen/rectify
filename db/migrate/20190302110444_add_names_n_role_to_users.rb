class AddNamesNRoleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name,  :string
    add_column :users, :site_role,  :string
    add_column :users, :org_role,   :string
  end
end
