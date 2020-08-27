class CreateDayKondates < ActiveRecord::Migration[6.0]
  def change
    create_table :day_kondates do |t|
      t.references :day_datum, foreign_key: { on_delete: :cascade }, null: false
      t.references :kondate, foreign_key: { on_delete: :restrict }
      t.integer :period, null: false
      t.timestamps
    end
  end
end
