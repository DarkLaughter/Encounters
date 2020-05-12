class CreateAppearances < ActiveRecord::Migration[6.0]
  def change
    create_table :appearances do |t|
      t.string :movie
      t.string :tv_show
      t.string :fiction
      t.string :non_fiction
      t.belongs_to :cryptid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
