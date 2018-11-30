# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('app', 'assets', 'tables', 'volcanoes.csv'))
csvVolcanoes = CSV.parse(csv_text, :headers => true)
csvVolcanoes.each do |row|
    t = UniqVolcano.new
    t.Name = row['Name']
    t.Location = row['location']
    t.Country = row['Country']
    t.Latitude = row['Latitude']
    t.Longitude = row['Longitude']
    t.Elevation = row['Elevation']
    t.Type = row['Type']
    t.Status = row['Status']
    t.Price = row['Elevation'].to_i * 100 + 80000
    t.Time = row['Time']
    t.save
end

csv_text = File.read(Rails.root.join('app', 'assets', 'tables', 'eruptionsReal.csv'))
csvEruptions = CSV.parse(csv_text, :headers => true)
csvEruptions.each do |row|
    t = Eruption.new
    t.Year = row['Year']
    t.Month = row['Month']
    t.Day = row['Day']
    if row['TSU'] != ''
        t.Tsu = true
    else
        t.Tsu = false
    end
    if row['EQ'] != ''
        t.Tsu = true
    else
        t.Tsu = nil
    end
    t.Agent = row['Agent']
    t.Latitude = row['Latitude']
    t.Longitude = row['Longitude']
    t.save
end

volcanoes = UniqVolcano.all
eruptions = Eruption.all

volcanoes.each do |volcano|
    eruptions.each do |eruption|
        if (volcano.Latitude == eruption.Latitude) && (volcano.Longitude == eruption.Longitude)
            eruption.uniq_volcano_id = volcano.id
            eruption.save
        end
    end
end