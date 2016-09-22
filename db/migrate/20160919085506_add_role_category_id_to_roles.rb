class AddRoleCategoryIdToRoles < ActiveRecord::Migration[5.0]
  def change
    add_reference :roles, :role_category, foreign_key: true, default: 1
  end
end
