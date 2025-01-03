json.extract! reservation, :id, :establishment_id, :customer_name, :customer_phone, :date, :time, :people_count, :status, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
