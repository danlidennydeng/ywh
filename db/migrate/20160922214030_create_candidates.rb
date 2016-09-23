class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.references :user, foreign_key: true
      t.string :fullname
      t.string :picture
      t.text :introduction
      t.text :speech
      t.string :sex
      t.integer :age
      t.string :profession
      t.string :education
      t.string :political
      t.string :unit_number
      t.integer :area
      t.text :note
      t.integer :edited_by

      t.timestamps
    end
  end
end
