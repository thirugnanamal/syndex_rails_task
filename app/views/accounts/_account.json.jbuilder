json.extract! account, :id, :name, :verified, :email, :created_at, :updated_at
json.url account_url(account, format: :json)
