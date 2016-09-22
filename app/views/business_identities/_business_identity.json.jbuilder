json.extract! business_identity, :id, :user_id, :name, :note, :edited_by, :created_at, :updated_at
json.url business_identity_url(business_identity, format: :json)