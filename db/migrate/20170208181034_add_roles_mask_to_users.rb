class AddRolesMaskToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :roles_mark, :integer
  end
end
