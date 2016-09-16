class CreateSecurities < ActiveRecord::Migration[5.0]
  def change
    create_table :securities do |t|
      t.string :name
      t.integer :level
      t.text :note
      t.integer :edited_by

      t.timestamps
    end
  end
end
