json.extract! account_status, :id, :name, :note, :created_at, :updated_at
json.url account_status_url(account_status, format: :json)