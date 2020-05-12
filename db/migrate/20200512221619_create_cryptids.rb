class CreateCryptids < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptids do |t|
      t.string :name
      t.string :category
      t.string :country
      t.text :lore
      t.string :img_url

      t.timestamps
    end
  end
end
