class CreateApprovingStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :approving_statuses do |t|
      t.string :name
      t.text :note
      t.integer :edited_by

      t.timestamps
    end
  end
end
