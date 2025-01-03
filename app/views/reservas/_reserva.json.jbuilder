json.extract! reserva, :id, :estabelecimento_id, :nome_cliente, :telefone_cliente, :data, :hora, :quantidade_pessoas, :status, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
