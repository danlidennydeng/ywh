class CreateOfficialIdentities < ActiveRecord::Migration[5.0]
  def change
    create_table :official_identities do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :note
      t.integer :edited_by

      t.timestamps
    end
  end
end
