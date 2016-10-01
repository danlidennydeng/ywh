class AddThumbToPainting < ActiveRecord::Migration[5.0]
  def change
    add_column :paintings, :thumb, :string
  end
end
