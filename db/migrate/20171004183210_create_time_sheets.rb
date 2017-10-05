class CreateTimeSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :time_sheets do |t|
      t.date :start_date
      t.references :user
      t.timestamps
    end
  end
end
