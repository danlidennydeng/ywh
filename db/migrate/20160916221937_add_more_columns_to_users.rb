class AddMoreColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fullname, :string
    add_column :users, :birth_year, :integer
    add_column :users, :birth_month, :integer
    add_column :users, :birth_day, :integer
    add_reference :users, :sex, foreign_key: true, default: 1
    add_reference :users, :security, foreign_key: true, default: 1
    add_reference :users, :role, foreign_key: true, default: 1
    add_column :users, :note, :text
    add_column :users, :edited_by, :integer
  end
end
