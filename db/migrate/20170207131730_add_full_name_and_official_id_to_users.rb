class AddFullNameAndOfficialIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fullname, :string
    add_column :users, :officialid, :integer
    add_index :users, :officialid, unique: true
  end
end
