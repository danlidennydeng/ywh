class CreatePaintings < ActiveRecord::Migration[5.0]
  def change
    create_table :paintings do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
