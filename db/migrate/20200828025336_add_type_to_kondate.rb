class AddTypeToKondate < ActiveRecord::Migration[6.0]
  def change
    add_column :kondates, :kondate_type, :integer, null: false
  end
end
