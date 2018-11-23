json.extract! uniq_volcano, :id, :Name, :Location, :Country, :Latitude, :Longitude, :Elevation, :Type, :Status, :Time, :created_at, :updated_at
json.url uniq_volcano_url(uniq_volcano, format: :json)
