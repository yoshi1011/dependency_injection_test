class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :unit_price
      t.boolean :is_featured, default: false

      t.timestamps
    end
  end
end
