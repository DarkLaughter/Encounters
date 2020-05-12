class CreateEncounters < ActiveRecord::Migration[6.0]
  def change
    create_table :encounters do |t|
      t.string :location
      t.date :date
      t.text :story
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :cryptid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
