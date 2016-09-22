class CreateOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :ownerships do |t|
      t.references :user, foreign_key: true
      t.string :unit_number
      t.text :note
      t.integer :edited_by

      t.timestamps
    end
  end
end
