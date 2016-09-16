class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.text :note
      t.integer :edited_by

      t.timestamps
    end
  end
end
