class CreateCoffeeShops < ActiveRecord::Migration
  def change
    create_table :coffee_shops do |t|
      t.string  :name
      t.string  :address
      t.string  :city
      t.string  :state
      t.integer :outlets

      t.timestamps
    end
  end
end
