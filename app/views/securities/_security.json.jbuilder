json.extract! security, :id, :name, :level, :note, :edited_by, :created_at, :updated_at
json.url security_url(security, format: :json)