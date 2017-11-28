class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price_in_cents
      t.string :url

      t.timestamps
    end
  end
end
