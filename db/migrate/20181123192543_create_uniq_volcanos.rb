class CreateUniqVolcanos < ActiveRecord::Migration[5.2]
  def change
    create_table :uniq_volcanos do |t|
      t.text :Name
      t.text :Location
      t.text :Country
      t.decimal :Latitude
      t.decimal :Longitude
      t.integer :Elevation
      t.text :Type
      t.text :Status
      t.text :Time

      t.timestamps
    end
  end
end
