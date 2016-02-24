class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :desc
      t.string :name
      t.integer :price
      t.string :image
      t.references :brand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
