class AddSecurityRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :security, foreign_key: true, default: 1
    add_reference :users, :role, foreign_key: true, default: 1
    add_column :users, :note, :text
    add_column :users, :edited_by, :integer
  end
end
