class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.string :name
      t.text :description
      t.decimal :list_price
      t.decimal :sale_price
      t.string :purchase_url
      t.string :image_url

      t.timestamps
    end
  end
end
