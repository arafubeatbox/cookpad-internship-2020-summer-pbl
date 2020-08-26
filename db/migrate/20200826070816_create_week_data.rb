class CreateWeekData < ActiveRecord::Migration[6.0]
  def change
    create_table :week_data do |t|
      t.string :week, null: false
      t.references :user, foreign_key: { on_delete: :cascade }, null: false
      t.timestamps
    end
  end
end
