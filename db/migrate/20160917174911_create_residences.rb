class CreateResidences < ActiveRecord::Migration[5.0]
  def change
    create_table :residences do |t|
      t.references :user, foreign_key: true
      t.references :xiaoqu, foreign_key: true
      t.string :unit_number
      t.integer :area
      t.references :approving_status, foreign_key: true, default: 1
      t.text :note
      t.integer :edited_by

      t.timestamps
    end
  end
end
