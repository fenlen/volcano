class CreateEruptions < ActiveRecord::Migration[5.2]
  def change
    create_table :eruptions do |t|
      t.integer :Year
      t.integer :Month
      t.integer :Day
      t.boolean :Tsu
      t.boolean :Eq
      t.text :Agent
      t.decimal :Latitude
      t.decimal :Longitude
      t.integer :Deaths
      t.references :uniq_volcano, foreign_key: true
      t.timestamps
    end
  end
end
