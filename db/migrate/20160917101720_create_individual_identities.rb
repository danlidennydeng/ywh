class CreateIndividualIdentities < ActiveRecord::Migration[5.0]
  def change
    create_table :individual_identities do |t|
      t.references :user, foreign_key: true
      t.string :fullname
      t.references :sex, foreign_key: true

      t.timestamps
    end
  end
end
