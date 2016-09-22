class CreateXiaoqus < ActiveRecord::Migration[5.0]
  def change
    create_table :xiaoqus do |t|
      t.string :name
      t.string :address
      t.integer :total_units
      t.integer :populations
      t.integer :starting_year
      t.integer :starting_month
      t.text :note
      t.integer :edited_by

      t.timestamps
    end
  end
end
