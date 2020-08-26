class CreateDayData < ActiveRecord::Migration[6.0]
  def change
    create_table :day_data do |t|
      t.string :date, null: false
      t.timestamps
    end
  end
end
