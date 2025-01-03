json.extract! pedido, :id, :estabelecimento_id, :cliente_id, :total_preco, :status, :metodo_entrega, :endereco_entrega, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
