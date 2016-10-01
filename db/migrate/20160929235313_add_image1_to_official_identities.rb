class AddImage1ToOfficialIdentities < ActiveRecord::Migration[5.0]
  def change
    add_column :official_identities, :image1, :string
  end
end
