json.extract! site, :id, :name, :address, :phone, :sitepoc, :sitepocphone, :notes, :created_at, :updated_at, :customer_id
json.url site_url(site, format: :json)
