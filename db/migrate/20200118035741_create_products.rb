class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.integer :stock, default: 0
      t.integer :status, default: 0

      t.timestamps
    end

    create_table :product_images do |t|
      t.references :product
      t.text :image
      t.string :note
    end
  end
end