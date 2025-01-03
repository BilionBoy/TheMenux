json.extract! sales_report, :id, :establishment_id, :report_date, :data, :created_at, :updated_at
json.url sales_report_url(sales_report, format: :json)
