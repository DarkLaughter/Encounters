class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.date :date
      t.integer :user_id
      t.belongs_to :encounter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
