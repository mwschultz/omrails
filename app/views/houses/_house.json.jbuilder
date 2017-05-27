json.extract! house, :id, :owner, :st_address, :house_id, :price, :state, :zip, :county, :created_at, :updated_at
json.url house_url(house, format: :json)
