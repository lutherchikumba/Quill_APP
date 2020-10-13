json.extract! private_infomation, :id, :email, :phone, :gender, :created_at, :updated_at
json.url private_infomation_url(private_infomation, format: :json)
