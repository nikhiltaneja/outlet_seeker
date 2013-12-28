class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :coffee_shop, index: true

      t.timestamps
    end
  end
end
