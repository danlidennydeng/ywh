class CreateAccountStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :account_statuses do |t|
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
