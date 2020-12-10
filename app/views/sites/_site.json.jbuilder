json.extract! site, :id, :name, :address, :phone, :sitepoc, :sitepocphone, :notes, :created_at, :updated_at
json.url site_url(site, format: :json)
