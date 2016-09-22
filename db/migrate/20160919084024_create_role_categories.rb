class CreateRoleCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :role_categories do |t|
      t.string :name
      t.text :note
      t.integer :edited_by

      t.timestamps
    end
  end
end
