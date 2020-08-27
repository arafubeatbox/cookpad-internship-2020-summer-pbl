class AddMissingReference < ActiveRecord::Migration[6.0]
  def change
    add_reference :day_data, :week_datum, foreign_key: { on_delete: :cascade }
  end
end
