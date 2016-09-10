class CreateSexes < ActiveRecord::Migration[5.0]
  def change
    create_table :sexes do |t|
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
