class AddMoreColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :birth_date, :date
    add_reference :users, :sex, foreign_key: true
    add_reference :users, :security, foreign_key: true, default: 1
    add_reference :users, :role, foreign_key: true, default: 1
    add_reference :users, :education, foreign_key: true
    add_column :users, :edited_by, :integer
  end
end
